//
//  Network.swift
//  GraphQL
//
//  Created by Shyam Kumar on 05/01/22.
//

import Foundation
import Apollo

struct Network {
    static func makeRequest(url: String, headers: [String:String]? = nil) -> ApolloClient {
        var apollo: ApolloClient {
            // The cache is necessary to set up the store, which we're going to hand to the provider
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = headers
        configuration.requestCachePolicy = .reloadIgnoringLocalCacheData
        let client = URLSessionClient(sessionConfiguration: configuration, callbackQueue: nil)
        let provider = NetworkInterceptorProvider(store: store, client: client)
        let endpointURL = URL(string: url)!// TODO: - "YOUR_ENDPOINT_URL"

        let requestChainTransport = RequestChainNetworkTransport(interceptorProvider: provider, endpointURL: endpointURL)

            // Remember to give the store you already created to the client so it
            // doesn't create one on its own
        return ApolloClient(networkTransport: requestChainTransport, store: store)
       }
        return apollo
    }
}

struct NetworkInterceptorProvider: InterceptorProvider {
    // These properties will remain the same throughout the life of the `InterceptorProvider`, even though they
    // will be handed to different interceptors.
    private let store: ApolloStore
    private let client: URLSessionClient

    init(store: ApolloStore,
        client: URLSessionClient) {
           self.store = store
           self.client = client
        }

func interceptors<Operation: GraphQLOperation>(for operation: Operation) -> [ApolloInterceptor] {
    return [
        MaxRetryInterceptor(),
        CacheReadInterceptor(store: self.store),
        NetworkFetchInterceptor(client: self.client),
        ResponseCodeInterceptor(),
        JSONResponseParsingInterceptor(cacheKeyForObject: self.store.cacheKeyForObject),
        AutomaticPersistedQueryInterceptor(),
        CacheWriteInterceptor(store: self.store)
      ]
  }
}


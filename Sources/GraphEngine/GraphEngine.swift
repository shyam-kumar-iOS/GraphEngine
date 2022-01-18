import UIKit
import Apollo

public class GraphEnginePlugin {
    public init(){}
    
    
    
    public func fetchPDPQuery(url: String, headers: [String:String]? = nil, pdpID: String,completion: @escaping((PdpDetailQuery.Data?, [GraphQLError]?) -> Void)) {
                
        Network.makeRequest(url: url, headers: headers).fetch(query: PdpDetailQuery(pdpDetailId: pdpID)) { result in
            switch result {
            case .success(let graphQLResult):
               // print("Success! Result: \(String(describing: graphQLResult.data))")
                completion(graphQLResult.data, nil)
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
    
    public func fetchCountriesQuery(url: String,completion: @escaping((GetCountriesQuery.Data?, [GraphQLError]?) -> Void)) {
        Network.makeRequest(url: url, headers: [:]).fetch(query: GetCountriesQuery()) { result in
            switch result {
            case .success(let graphQLResult):
               // print("Success! Result: \(String(describing: graphQLResult.data))")
                completion(graphQLResult.data, nil)
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
    
}


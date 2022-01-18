// @generated
//  This file was automatically generated and should not be edited.

//import Apollo
import Foundation
import Apollo

public final class PdpDetailQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Pdp_detail($pdpDetailId: String!) {
      pdp_detail(id: $pdpDetailId) {
        __typename
        version
        page_name
        store_id
        config {
          __typename
          bg_color
        }
        data {
          __typename
          product_id
        }
        header_widgets {
          __typename
          toolbar {
            __typename
            widget_name
            config {
              __typename
              show_back_icon
              show_cart_icon
              show_search_icon
              show_share_icon
            }
          }
        }
        scroll_widgets {
          __typename
          widgets
          media {
            __typename
            widget_name
            position
            config {
              __typename
              show_pagination_icon
              show_whislist_icon
              align_whislist_icon
              media_aspect_ratio
              image_content_mode
            }
            data {
              __typename
              urls {
                __typename
                media_id
                url
              }
            }
          }
          product_name {
            __typename
            widget_name
            position
            config {
              __typename
              font_type
              font_color
              font_size
              align
            }
            data {
              __typename
              product_name
            }
          }
          reviews {
            __typename
            widget_name
            position
            config {
              __typename
              align
              font_size
              font_color
              font_type
              star_color
              show_share_icon
              align_share_icon
            }
            data {
              __typename
              average_rating
              reviews_count
            }
          }
          product_price {
            __typename
            widget_name
            position
            config {
              __typename
              align
              show_selling_price
              show_price
              show_discount_price
              regular_price_font_color
              regular_price_font_size
              regular_price_font_type
              sale_price_font_size
              sale_price_font_color
              sale_price_font_type
              discount_percentage_font_size
              discount_percentage_font_color
              discount_percentage_font_type
            }
            data {
              __typename
              regular_price
              sale_price
              price_range
              inventory_quantity
              discount_percentage
            }
          }
          variant_horizontal {
            __typename
            widget_name
            position
            config {
              __typename
              show_title
              title_font_size
              title_font_color
              title_font_type
              show_value
              value_font_size
              value_font_color
              value_font_type
              show_size_chart
            }
            data {
              __typename
              options {
                __typename
                name
                option_values
              }
            }
          }
          product_description {
            __typename
            widget_name
            position
            config {
              __typename
              content_font_size
              readall {
                __typename
                readall_font_size
                readall_font_type
                readall_font_color
              }
              content_font_color
              content_font_type
              title {
                __typename
                show_title
                align_title
                title_font_size
                title_font_color
                title_font_type
              }
            }
            data {
              __typename
              product_description
              short_description
            }
          }
          recently_viewed {
            __typename
            widget_name
            position
            config {
              __typename
              regular_price_font_size
              regular_price_font_color
              regular_price_font_type
              sale_price_font_size
              sale_price_font_color
              sale_price_font_type
              discount_percentage_font_size
              discount_percentage_font_color
              discount_percentage_font_type
              product_name_font_color
              product_name_font_type
              product_name_font_size
              show_wishlist
              image_aspect_ratio
              image_content_mode
              display_no_of_product
              title {
                __typename
                align_title
                show_title
                title_font_size
                title_font_color
                title_font_type
              }
            }
          }
        }
        footer_widgets {
          __typename
          add_to_cart {
            __typename
            widget_name
            config {
              __typename
              align
              show_buynow_button
              show_addtocart_button
              buynow_button_color
              buynow_button_broder
              buynow_button_text_color
              addtocart_button_color
              addtocart_button_broder
              addtocart_button_text_color
              show_addtocart_increase_qty
              buynow_button_fontsize
              addtocart_button_fontsize
              buynow_button_font_type
              addtocart_button_font_type
            }
          }
        }
      }
    }
    """

  public let operationName: String = "Pdp_detail"

  public var pdpDetailId: String

  public init(pdpDetailId: String) {
    self.pdpDetailId = pdpDetailId
  }

  public var variables: GraphQLMap? {
    return ["pdpDetailId": pdpDetailId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("pdp_detail", arguments: ["id": GraphQLVariable("pdpDetailId")], type: .nonNull(.object(PdpDetail.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pdpDetail: PdpDetail) {
      self.init(unsafeResultMap: ["__typename": "Query", "pdp_detail": pdpDetail.resultMap])
    }

    public var pdpDetail: PdpDetail {
      get {
        return PdpDetail(unsafeResultMap: resultMap["pdp_detail"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pdp_detail")
      }
    }

    public struct PdpDetail: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PpdConfig"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("version", type: .nonNull(.scalar(String.self))),
          GraphQLField("page_name", type: .nonNull(.scalar(String.self))),
          GraphQLField("store_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("config", type: .nonNull(.object(Config.selections))),
          GraphQLField("data", type: .nonNull(.object(Datum.selections))),
          GraphQLField("header_widgets", type: .nonNull(.object(HeaderWidget.selections))),
          GraphQLField("scroll_widgets", type: .nonNull(.object(ScrollWidget.selections))),
          GraphQLField("footer_widgets", type: .nonNull(.object(FooterWidget.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(version: String, pageName: String, storeId: String, config: Config, data: Datum, headerWidgets: HeaderWidget, scrollWidgets: ScrollWidget, footerWidgets: FooterWidget) {
        self.init(unsafeResultMap: ["__typename": "PpdConfig", "version": version, "page_name": pageName, "store_id": storeId, "config": config.resultMap, "data": data.resultMap, "header_widgets": headerWidgets.resultMap, "scroll_widgets": scrollWidgets.resultMap, "footer_widgets": footerWidgets.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// Config version
      public var version: String {
        get {
          return resultMap["version"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "version")
        }
      }

      /// Page name
      public var pageName: String {
        get {
          return resultMap["page_name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "page_name")
        }
      }

      /// Store id
      public var storeId: String {
        get {
          return resultMap["store_id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "store_id")
        }
      }

      /// Config
      public var config: Config {
        get {
          return Config(unsafeResultMap: resultMap["config"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "config")
        }
      }

      /// Data
      public var data: Datum {
        get {
          return Datum(unsafeResultMap: resultMap["data"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "data")
        }
      }

      /// Header widgets
      public var headerWidgets: HeaderWidget {
        get {
          return HeaderWidget(unsafeResultMap: resultMap["header_widgets"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "header_widgets")
        }
      }

      /// Scroll Widgets
      public var scrollWidgets: ScrollWidget {
        get {
          return ScrollWidget(unsafeResultMap: resultMap["scroll_widgets"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "scroll_widgets")
        }
      }

      /// Footer widgets
      public var footerWidgets: FooterWidget {
        get {
          return FooterWidget(unsafeResultMap: resultMap["footer_widgets"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "footer_widgets")
        }
      }

      public struct Config: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Config"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("bg_color", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(bgColor: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Config", "bg_color": bgColor])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var bgColor: String? {
          get {
            return resultMap["bg_color"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "bg_color")
          }
        }
      }

      public struct Datum: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Data"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("product_id", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(productId: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Data", "product_id": productId])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Product id
        public var productId: String? {
          get {
            return resultMap["product_id"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "product_id")
          }
        }
      }

      public struct HeaderWidget: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["HeaderWidget"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("toolbar", type: .nonNull(.object(Toolbar.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(toolbar: Toolbar) {
          self.init(unsafeResultMap: ["__typename": "HeaderWidget", "toolbar": toolbar.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Toolbar widget
        public var toolbar: Toolbar {
          get {
            return Toolbar(unsafeResultMap: resultMap["toolbar"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "toolbar")
          }
        }

        public struct Toolbar: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ToolbarWidget"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("widget_name", type: .nonNull(.scalar(String.self))),
              GraphQLField("config", type: .nonNull(.object(Config.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(widgetName: String, config: Config) {
            self.init(unsafeResultMap: ["__typename": "ToolbarWidget", "widget_name": widgetName, "config": config.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Widget name
          public var widgetName: String {
            get {
              return resultMap["widget_name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "widget_name")
            }
          }

          /// Toolbar wiidget config
          public var config: Config {
            get {
              return Config(unsafeResultMap: resultMap["config"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "config")
            }
          }

          public struct Config: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ToolbarWidgetConfig"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("show_back_icon", type: .scalar(String.self)),
                GraphQLField("show_cart_icon", type: .scalar(String.self)),
                GraphQLField("show_search_icon", type: .scalar(String.self)),
                GraphQLField("show_share_icon", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(showBackIcon: String? = nil, showCartIcon: String? = nil, showSearchIcon: String? = nil, showShareIcon: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "ToolbarWidgetConfig", "show_back_icon": showBackIcon, "show_cart_icon": showCartIcon, "show_search_icon": showSearchIcon, "show_share_icon": showShareIcon])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var showBackIcon: String? {
              get {
                return resultMap["show_back_icon"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_back_icon")
              }
            }

            public var showCartIcon: String? {
              get {
                return resultMap["show_cart_icon"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_cart_icon")
              }
            }

            public var showSearchIcon: String? {
              get {
                return resultMap["show_search_icon"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_search_icon")
              }
            }

            public var showShareIcon: String? {
              get {
                return resultMap["show_share_icon"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_share_icon")
              }
            }
          }
        }
      }

      public struct ScrollWidget: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ScrollWidget"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("widgets", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
            GraphQLField("media", type: .nonNull(.object(Medium.selections))),
            GraphQLField("product_name", type: .nonNull(.object(ProductName.selections))),
            GraphQLField("reviews", type: .nonNull(.object(Review.selections))),
            GraphQLField("product_price", type: .nonNull(.object(ProductPrice.selections))),
            GraphQLField("variant_horizontal", type: .nonNull(.object(VariantHorizontal.selections))),
            GraphQLField("product_description", type: .nonNull(.object(ProductDescription.selections))),
            GraphQLField("recently_viewed", type: .nonNull(.object(RecentlyViewed.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(widgets: [String], media: Medium, productName: ProductName, reviews: Review, productPrice: ProductPrice, variantHorizontal: VariantHorizontal, productDescription: ProductDescription, recentlyViewed: RecentlyViewed) {
          self.init(unsafeResultMap: ["__typename": "ScrollWidget", "widgets": widgets, "media": media.resultMap, "product_name": productName.resultMap, "reviews": reviews.resultMap, "product_price": productPrice.resultMap, "variant_horizontal": variantHorizontal.resultMap, "product_description": productDescription.resultMap, "recently_viewed": recentlyViewed.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Scroll Widget Names
        public var widgets: [String] {
          get {
            return resultMap["widgets"]! as! [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "widgets")
          }
        }

        /// Media Widget
        public var media: Medium {
          get {
            return Medium(unsafeResultMap: resultMap["media"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "media")
          }
        }

        /// Product Name Widget
        public var productName: ProductName {
          get {
            return ProductName(unsafeResultMap: resultMap["product_name"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "product_name")
          }
        }

        /// Review Widget
        public var reviews: Review {
          get {
            return Review(unsafeResultMap: resultMap["reviews"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "reviews")
          }
        }

        /// Product Price Widget
        public var productPrice: ProductPrice {
          get {
            return ProductPrice(unsafeResultMap: resultMap["product_price"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "product_price")
          }
        }

        /// Variant Horizontal Widget
        public var variantHorizontal: VariantHorizontal {
          get {
            return VariantHorizontal(unsafeResultMap: resultMap["variant_horizontal"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "variant_horizontal")
          }
        }

        /// Product Description Widget
        public var productDescription: ProductDescription {
          get {
            return ProductDescription(unsafeResultMap: resultMap["product_description"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "product_description")
          }
        }

        /// Product Description Widget
        public var recentlyViewed: RecentlyViewed {
          get {
            return RecentlyViewed(unsafeResultMap: resultMap["recently_viewed"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "recently_viewed")
          }
        }

        public struct Medium: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaWidget"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("widget_name", type: .nonNull(.scalar(String.self))),
              GraphQLField("position", type: .nonNull(.scalar(Double.self))),
              GraphQLField("config", type: .nonNull(.object(Config.selections))),
              GraphQLField("data", type: .nonNull(.object(Datum.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(widgetName: String, position: Double, config: Config, data: Datum) {
            self.init(unsafeResultMap: ["__typename": "MediaWidget", "widget_name": widgetName, "position": position, "config": config.resultMap, "data": data.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Widget name
          public var widgetName: String {
            get {
              return resultMap["widget_name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "widget_name")
            }
          }

          /// Widget position
          public var position: Double {
            get {
              return resultMap["position"]! as! Double
            }
            set {
              resultMap.updateValue(newValue, forKey: "position")
            }
          }

          /// Media widget Config
          public var config: Config {
            get {
              return Config(unsafeResultMap: resultMap["config"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "config")
            }
          }

          /// Media widget Data
          public var data: Datum {
            get {
              return Datum(unsafeResultMap: resultMap["data"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "data")
            }
          }

          public struct Config: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["MediaWidgetConfig"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("show_pagination_icon", type: .scalar(Bool.self)),
                GraphQLField("show_whislist_icon", type: .scalar(Bool.self)),
                GraphQLField("align_whislist_icon", type: .scalar(String.self)),
                GraphQLField("media_aspect_ratio", type: .scalar(Double.self)),
                GraphQLField("image_content_mode", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(showPaginationIcon: Bool? = nil, showWhislistIcon: Bool? = nil, alignWhislistIcon: String? = nil, mediaAspectRatio: Double? = nil, imageContentMode: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "MediaWidgetConfig", "show_pagination_icon": showPaginationIcon, "show_whislist_icon": showWhislistIcon, "align_whislist_icon": alignWhislistIcon, "media_aspect_ratio": mediaAspectRatio, "image_content_mode": imageContentMode])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var showPaginationIcon: Bool? {
              get {
                return resultMap["show_pagination_icon"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_pagination_icon")
              }
            }

            public var showWhislistIcon: Bool? {
              get {
                return resultMap["show_whislist_icon"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_whislist_icon")
              }
            }

            public var alignWhislistIcon: String? {
              get {
                return resultMap["align_whislist_icon"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "align_whislist_icon")
              }
            }

            public var mediaAspectRatio: Double? {
              get {
                return resultMap["media_aspect_ratio"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "media_aspect_ratio")
              }
            }

            public var imageContentMode: String? {
              get {
                return resultMap["image_content_mode"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "image_content_mode")
              }
            }
          }

          public struct Datum: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["MediaWidgetData"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("urls", type: .list(.nonNull(.object(Url.selections)))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(urls: [Url]? = nil) {
              self.init(unsafeResultMap: ["__typename": "MediaWidgetData", "urls": urls.flatMap { (value: [Url]) -> [ResultMap] in value.map { (value: Url) -> ResultMap in value.resultMap } }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var urls: [Url]? {
              get {
                return (resultMap["urls"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Url] in value.map { (value: ResultMap) -> Url in Url(unsafeResultMap: value) } }
              }
              set {
                resultMap.updateValue(newValue.flatMap { (value: [Url]) -> [ResultMap] in value.map { (value: Url) -> ResultMap in value.resultMap } }, forKey: "urls")
              }
            }

            public struct Url: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["MediaWidgetDataUrl"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("media_id", type: .scalar(String.self)),
                  GraphQLField("url", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(mediaId: String? = nil, url: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "MediaWidgetDataUrl", "media_id": mediaId, "url": url])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var mediaId: String? {
                get {
                  return resultMap["media_id"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "media_id")
                }
              }

              public var url: String? {
                get {
                  return resultMap["url"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "url")
                }
              }
            }
          }
        }

        public struct ProductName: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ProductNameWidget"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("widget_name", type: .nonNull(.scalar(String.self))),
              GraphQLField("position", type: .nonNull(.scalar(Double.self))),
              GraphQLField("config", type: .nonNull(.object(Config.selections))),
              GraphQLField("data", type: .nonNull(.object(Datum.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(widgetName: String, position: Double, config: Config, data: Datum) {
            self.init(unsafeResultMap: ["__typename": "ProductNameWidget", "widget_name": widgetName, "position": position, "config": config.resultMap, "data": data.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Widget name
          public var widgetName: String {
            get {
              return resultMap["widget_name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "widget_name")
            }
          }

          /// Widget position
          public var position: Double {
            get {
              return resultMap["position"]! as! Double
            }
            set {
              resultMap.updateValue(newValue, forKey: "position")
            }
          }

          /// Product Name Config
          public var config: Config {
            get {
              return Config(unsafeResultMap: resultMap["config"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "config")
            }
          }

          /// Product Name Data
          public var data: Datum {
            get {
              return Datum(unsafeResultMap: resultMap["data"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "data")
            }
          }

          public struct Config: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ProductNameWidgetConfig"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("font_type", type: .scalar(String.self)),
                GraphQLField("font_color", type: .scalar(String.self)),
                GraphQLField("font_size", type: .scalar(Double.self)),
                GraphQLField("align", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(fontType: String? = nil, fontColor: String? = nil, fontSize: Double? = nil, align: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "ProductNameWidgetConfig", "font_type": fontType, "font_color": fontColor, "font_size": fontSize, "align": align])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var fontType: String? {
              get {
                return resultMap["font_type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "font_type")
              }
            }

            public var fontColor: String? {
              get {
                return resultMap["font_color"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "font_color")
              }
            }

            public var fontSize: Double? {
              get {
                return resultMap["font_size"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "font_size")
              }
            }

            public var align: String? {
              get {
                return resultMap["align"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "align")
              }
            }
          }

          public struct Datum: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ProductNameWidgetData"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("product_name", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(productName: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "ProductNameWidgetData", "product_name": productName])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// Product Name
            public var productName: String? {
              get {
                return resultMap["product_name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "product_name")
              }
            }
          }
        }

        public struct Review: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ReviewWidget"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("widget_name", type: .nonNull(.scalar(String.self))),
              GraphQLField("position", type: .nonNull(.scalar(Double.self))),
              GraphQLField("config", type: .nonNull(.object(Config.selections))),
              GraphQLField("data", type: .nonNull(.object(Datum.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(widgetName: String, position: Double, config: Config, data: Datum) {
            self.init(unsafeResultMap: ["__typename": "ReviewWidget", "widget_name": widgetName, "position": position, "config": config.resultMap, "data": data.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Widget name
          public var widgetName: String {
            get {
              return resultMap["widget_name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "widget_name")
            }
          }

          /// Widget position
          public var position: Double {
            get {
              return resultMap["position"]! as! Double
            }
            set {
              resultMap.updateValue(newValue, forKey: "position")
            }
          }

          /// Review widget Config
          public var config: Config {
            get {
              return Config(unsafeResultMap: resultMap["config"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "config")
            }
          }

          /// Review widget Data
          public var data: Datum {
            get {
              return Datum(unsafeResultMap: resultMap["data"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "data")
            }
          }

          public struct Config: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ReviewWidgetConfig"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("align", type: .scalar(String.self)),
                GraphQLField("font_size", type: .scalar(Double.self)),
                GraphQLField("font_color", type: .scalar(String.self)),
                GraphQLField("font_type", type: .scalar(String.self)),
                GraphQLField("star_color", type: .scalar(String.self)),
                GraphQLField("show_share_icon", type: .scalar(Bool.self)),
                GraphQLField("align_share_icon", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(align: String? = nil, fontSize: Double? = nil, fontColor: String? = nil, fontType: String? = nil, starColor: String? = nil, showShareIcon: Bool? = nil, alignShareIcon: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "ReviewWidgetConfig", "align": align, "font_size": fontSize, "font_color": fontColor, "font_type": fontType, "star_color": starColor, "show_share_icon": showShareIcon, "align_share_icon": alignShareIcon])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var align: String? {
              get {
                return resultMap["align"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "align")
              }
            }

            public var fontSize: Double? {
              get {
                return resultMap["font_size"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "font_size")
              }
            }

            public var fontColor: String? {
              get {
                return resultMap["font_color"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "font_color")
              }
            }

            public var fontType: String? {
              get {
                return resultMap["font_type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "font_type")
              }
            }

            public var starColor: String? {
              get {
                return resultMap["star_color"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "star_color")
              }
            }

            public var showShareIcon: Bool? {
              get {
                return resultMap["show_share_icon"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_share_icon")
              }
            }

            public var alignShareIcon: String? {
              get {
                return resultMap["align_share_icon"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "align_share_icon")
              }
            }
          }

          public struct Datum: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ReviewWidgetData"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("average_rating", type: .scalar(Double.self)),
                GraphQLField("reviews_count", type: .scalar(Double.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(averageRating: Double? = nil, reviewsCount: Double? = nil) {
              self.init(unsafeResultMap: ["__typename": "ReviewWidgetData", "average_rating": averageRating, "reviews_count": reviewsCount])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var averageRating: Double? {
              get {
                return resultMap["average_rating"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "average_rating")
              }
            }

            public var reviewsCount: Double? {
              get {
                return resultMap["reviews_count"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "reviews_count")
              }
            }
          }
        }

        public struct ProductPrice: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ProductPriceWidget"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("widget_name", type: .nonNull(.scalar(String.self))),
              GraphQLField("position", type: .nonNull(.scalar(Double.self))),
              GraphQLField("config", type: .nonNull(.object(Config.selections))),
              GraphQLField("data", type: .nonNull(.object(Datum.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(widgetName: String, position: Double, config: Config, data: Datum) {
            self.init(unsafeResultMap: ["__typename": "ProductPriceWidget", "widget_name": widgetName, "position": position, "config": config.resultMap, "data": data.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Widget name
          public var widgetName: String {
            get {
              return resultMap["widget_name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "widget_name")
            }
          }

          /// Widget position
          public var position: Double {
            get {
              return resultMap["position"]! as! Double
            }
            set {
              resultMap.updateValue(newValue, forKey: "position")
            }
          }

          /// Product Price Config
          public var config: Config {
            get {
              return Config(unsafeResultMap: resultMap["config"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "config")
            }
          }

          /// Product Price Data
          public var data: Datum {
            get {
              return Datum(unsafeResultMap: resultMap["data"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "data")
            }
          }

          public struct Config: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ProductPriceWidgetConfig"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("align", type: .scalar(String.self)),
                GraphQLField("show_selling_price", type: .scalar(Bool.self)),
                GraphQLField("show_price", type: .scalar(Bool.self)),
                GraphQLField("show_discount_price", type: .scalar(Bool.self)),
                GraphQLField("regular_price_font_color", type: .scalar(String.self)),
                GraphQLField("regular_price_font_size", type: .scalar(Double.self)),
                GraphQLField("regular_price_font_type", type: .scalar(String.self)),
                GraphQLField("sale_price_font_size", type: .scalar(Double.self)),
                GraphQLField("sale_price_font_color", type: .scalar(String.self)),
                GraphQLField("sale_price_font_type", type: .scalar(String.self)),
                GraphQLField("discount_percentage_font_size", type: .scalar(Double.self)),
                GraphQLField("discount_percentage_font_color", type: .nonNull(.scalar(String.self))),
                GraphQLField("discount_percentage_font_type", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(align: String? = nil, showSellingPrice: Bool? = nil, showPrice: Bool? = nil, showDiscountPrice: Bool? = nil, regularPriceFontColor: String? = nil, regularPriceFontSize: Double? = nil, regularPriceFontType: String? = nil, salePriceFontSize: Double? = nil, salePriceFontColor: String? = nil, salePriceFontType: String? = nil, discountPercentageFontSize: Double? = nil, discountPercentageFontColor: String, discountPercentageFontType: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "ProductPriceWidgetConfig", "align": align, "show_selling_price": showSellingPrice, "show_price": showPrice, "show_discount_price": showDiscountPrice, "regular_price_font_color": regularPriceFontColor, "regular_price_font_size": regularPriceFontSize, "regular_price_font_type": regularPriceFontType, "sale_price_font_size": salePriceFontSize, "sale_price_font_color": salePriceFontColor, "sale_price_font_type": salePriceFontType, "discount_percentage_font_size": discountPercentageFontSize, "discount_percentage_font_color": discountPercentageFontColor, "discount_percentage_font_type": discountPercentageFontType])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var align: String? {
              get {
                return resultMap["align"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "align")
              }
            }

            public var showSellingPrice: Bool? {
              get {
                return resultMap["show_selling_price"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_selling_price")
              }
            }

            public var showPrice: Bool? {
              get {
                return resultMap["show_price"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_price")
              }
            }

            public var showDiscountPrice: Bool? {
              get {
                return resultMap["show_discount_price"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_discount_price")
              }
            }

            public var regularPriceFontColor: String? {
              get {
                return resultMap["regular_price_font_color"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "regular_price_font_color")
              }
            }

            public var regularPriceFontSize: Double? {
              get {
                return resultMap["regular_price_font_size"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "regular_price_font_size")
              }
            }

            public var regularPriceFontType: String? {
              get {
                return resultMap["regular_price_font_type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "regular_price_font_type")
              }
            }

            public var salePriceFontSize: Double? {
              get {
                return resultMap["sale_price_font_size"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "sale_price_font_size")
              }
            }

            public var salePriceFontColor: String? {
              get {
                return resultMap["sale_price_font_color"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "sale_price_font_color")
              }
            }

            public var salePriceFontType: String? {
              get {
                return resultMap["sale_price_font_type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "sale_price_font_type")
              }
            }

            public var discountPercentageFontSize: Double? {
              get {
                return resultMap["discount_percentage_font_size"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "discount_percentage_font_size")
              }
            }

            public var discountPercentageFontColor: String {
              get {
                return resultMap["discount_percentage_font_color"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "discount_percentage_font_color")
              }
            }

            public var discountPercentageFontType: String? {
              get {
                return resultMap["discount_percentage_font_type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "discount_percentage_font_type")
              }
            }
          }

          public struct Datum: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ProductPriceWidgetData"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("regular_price", type: .scalar(String.self)),
                GraphQLField("sale_price", type: .scalar(String.self)),
                GraphQLField("price_range", type: .list(.nonNull(.scalar(Double.self)))),
                GraphQLField("inventory_quantity", type: .scalar(Double.self)),
                GraphQLField("discount_percentage", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(regularPrice: String? = nil, salePrice: String? = nil, priceRange: [Double]? = nil, inventoryQuantity: Double? = nil, discountPercentage: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "ProductPriceWidgetData", "regular_price": regularPrice, "sale_price": salePrice, "price_range": priceRange, "inventory_quantity": inventoryQuantity, "discount_percentage": discountPercentage])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var regularPrice: String? {
              get {
                return resultMap["regular_price"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "regular_price")
              }
            }

            public var salePrice: String? {
              get {
                return resultMap["sale_price"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "sale_price")
              }
            }

            public var priceRange: [Double]? {
              get {
                return resultMap["price_range"] as? [Double]
              }
              set {
                resultMap.updateValue(newValue, forKey: "price_range")
              }
            }

            public var inventoryQuantity: Double? {
              get {
                return resultMap["inventory_quantity"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "inventory_quantity")
              }
            }

            public var discountPercentage: String? {
              get {
                return resultMap["discount_percentage"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "discount_percentage")
              }
            }
          }
        }

        public struct VariantHorizontal: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["VariantHorizontalWidget"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("widget_name", type: .nonNull(.scalar(String.self))),
              GraphQLField("position", type: .nonNull(.scalar(Double.self))),
              GraphQLField("config", type: .nonNull(.object(Config.selections))),
              GraphQLField("data", type: .nonNull(.object(Datum.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(widgetName: String, position: Double, config: Config, data: Datum) {
            self.init(unsafeResultMap: ["__typename": "VariantHorizontalWidget", "widget_name": widgetName, "position": position, "config": config.resultMap, "data": data.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Widget name
          public var widgetName: String {
            get {
              return resultMap["widget_name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "widget_name")
            }
          }

          /// Widget position
          public var position: Double {
            get {
              return resultMap["position"]! as! Double
            }
            set {
              resultMap.updateValue(newValue, forKey: "position")
            }
          }

          /// Variant Horizontal widget Config
          public var config: Config {
            get {
              return Config(unsafeResultMap: resultMap["config"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "config")
            }
          }

          /// Variant Horizontal widget Data
          public var data: Datum {
            get {
              return Datum(unsafeResultMap: resultMap["data"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "data")
            }
          }

          public struct Config: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["VariantHorizontalWidgetConfig"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("show_title", type: .scalar(Bool.self)),
                GraphQLField("title_font_size", type: .scalar(Double.self)),
                GraphQLField("title_font_color", type: .scalar(String.self)),
                GraphQLField("title_font_type", type: .scalar(String.self)),
                GraphQLField("show_value", type: .scalar(Bool.self)),
                GraphQLField("value_font_size", type: .scalar(Double.self)),
                GraphQLField("value_font_color", type: .scalar(String.self)),
                GraphQLField("value_font_type", type: .scalar(String.self)),
                GraphQLField("show_size_chart", type: .scalar(Bool.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(showTitle: Bool? = nil, titleFontSize: Double? = nil, titleFontColor: String? = nil, titleFontType: String? = nil, showValue: Bool? = nil, valueFontSize: Double? = nil, valueFontColor: String? = nil, valueFontType: String? = nil, showSizeChart: Bool? = nil) {
              self.init(unsafeResultMap: ["__typename": "VariantHorizontalWidgetConfig", "show_title": showTitle, "title_font_size": titleFontSize, "title_font_color": titleFontColor, "title_font_type": titleFontType, "show_value": showValue, "value_font_size": valueFontSize, "value_font_color": valueFontColor, "value_font_type": valueFontType, "show_size_chart": showSizeChart])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var showTitle: Bool? {
              get {
                return resultMap["show_title"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_title")
              }
            }

            public var titleFontSize: Double? {
              get {
                return resultMap["title_font_size"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "title_font_size")
              }
            }

            public var titleFontColor: String? {
              get {
                return resultMap["title_font_color"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "title_font_color")
              }
            }

            public var titleFontType: String? {
              get {
                return resultMap["title_font_type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "title_font_type")
              }
            }

            public var showValue: Bool? {
              get {
                return resultMap["show_value"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_value")
              }
            }

            public var valueFontSize: Double? {
              get {
                return resultMap["value_font_size"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "value_font_size")
              }
            }

            public var valueFontColor: String? {
              get {
                return resultMap["value_font_color"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "value_font_color")
              }
            }

            public var valueFontType: String? {
              get {
                return resultMap["value_font_type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "value_font_type")
              }
            }

            public var showSizeChart: Bool? {
              get {
                return resultMap["show_size_chart"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_size_chart")
              }
            }
          }

          public struct Datum: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["VariantHorizontalWidgetData"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("options", type: .nonNull(.list(.nonNull(.object(Option.selections))))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(options: [Option]) {
              self.init(unsafeResultMap: ["__typename": "VariantHorizontalWidgetData", "options": options.map { (value: Option) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var options: [Option] {
              get {
                return (resultMap["options"] as! [ResultMap]).map { (value: ResultMap) -> Option in Option(unsafeResultMap: value) }
              }
              set {
                resultMap.updateValue(newValue.map { (value: Option) -> ResultMap in value.resultMap }, forKey: "options")
              }
            }

            public struct Option: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["VariantHorizontalWidgetDataOption"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("name", type: .scalar(String.self)),
                  GraphQLField("option_values", type: .list(.nonNull(.scalar(String.self)))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(name: String? = nil, optionValues: [String]? = nil) {
                self.init(unsafeResultMap: ["__typename": "VariantHorizontalWidgetDataOption", "name": name, "option_values": optionValues])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var name: String? {
                get {
                  return resultMap["name"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "name")
                }
              }

              public var optionValues: [String]? {
                get {
                  return resultMap["option_values"] as? [String]
                }
                set {
                  resultMap.updateValue(newValue, forKey: "option_values")
                }
              }
            }
          }
        }

        public struct ProductDescription: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ProductDescriptionWidget"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("widget_name", type: .nonNull(.scalar(String.self))),
              GraphQLField("position", type: .nonNull(.scalar(Double.self))),
              GraphQLField("config", type: .nonNull(.object(Config.selections))),
              GraphQLField("data", type: .nonNull(.object(Datum.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(widgetName: String, position: Double, config: Config, data: Datum) {
            self.init(unsafeResultMap: ["__typename": "ProductDescriptionWidget", "widget_name": widgetName, "position": position, "config": config.resultMap, "data": data.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Widget name
          public var widgetName: String {
            get {
              return resultMap["widget_name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "widget_name")
            }
          }

          /// Widget position
          public var position: Double {
            get {
              return resultMap["position"]! as! Double
            }
            set {
              resultMap.updateValue(newValue, forKey: "position")
            }
          }

          /// Product Description Config
          public var config: Config {
            get {
              return Config(unsafeResultMap: resultMap["config"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "config")
            }
          }

          /// Product Description Data
          public var data: Datum {
            get {
              return Datum(unsafeResultMap: resultMap["data"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "data")
            }
          }

          public struct Config: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ProductDescriptionWidgetConfig"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("content_font_size", type: .scalar(Double.self)),
                GraphQLField("readall", type: .nonNull(.object(Readall.selections))),
                GraphQLField("content_font_color", type: .scalar(String.self)),
                GraphQLField("content_font_type", type: .scalar(String.self)),
                GraphQLField("title", type: .nonNull(.object(Title.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(contentFontSize: Double? = nil, readall: Readall, contentFontColor: String? = nil, contentFontType: String? = nil, title: Title) {
              self.init(unsafeResultMap: ["__typename": "ProductDescriptionWidgetConfig", "content_font_size": contentFontSize, "readall": readall.resultMap, "content_font_color": contentFontColor, "content_font_type": contentFontType, "title": title.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var contentFontSize: Double? {
              get {
                return resultMap["content_font_size"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "content_font_size")
              }
            }

            public var readall: Readall {
              get {
                return Readall(unsafeResultMap: resultMap["readall"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "readall")
              }
            }

            public var contentFontColor: String? {
              get {
                return resultMap["content_font_color"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "content_font_color")
              }
            }

            public var contentFontType: String? {
              get {
                return resultMap["content_font_type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "content_font_type")
              }
            }

            public var title: Title {
              get {
                return Title(unsafeResultMap: resultMap["title"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "title")
              }
            }

            public struct Readall: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ProductDescriptionWidgetConfigReadAll"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("readall_font_size", type: .scalar(Double.self)),
                  GraphQLField("readall_font_type", type: .scalar(String.self)),
                  GraphQLField("readall_font_color", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(readallFontSize: Double? = nil, readallFontType: String? = nil, readallFontColor: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "ProductDescriptionWidgetConfigReadAll", "readall_font_size": readallFontSize, "readall_font_type": readallFontType, "readall_font_color": readallFontColor])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var readallFontSize: Double? {
                get {
                  return resultMap["readall_font_size"] as? Double
                }
                set {
                  resultMap.updateValue(newValue, forKey: "readall_font_size")
                }
              }

              public var readallFontType: String? {
                get {
                  return resultMap["readall_font_type"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "readall_font_type")
                }
              }

              public var readallFontColor: String? {
                get {
                  return resultMap["readall_font_color"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "readall_font_color")
                }
              }
            }

            public struct Title: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ProductDescriptionWidgetConfigTitle"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("show_title", type: .scalar(Bool.self)),
                  GraphQLField("align_title", type: .scalar(String.self)),
                  GraphQLField("title_font_size", type: .scalar(Double.self)),
                  GraphQLField("title_font_color", type: .scalar(String.self)),
                  GraphQLField("title_font_type", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(showTitle: Bool? = nil, alignTitle: String? = nil, titleFontSize: Double? = nil, titleFontColor: String? = nil, titleFontType: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "ProductDescriptionWidgetConfigTitle", "show_title": showTitle, "align_title": alignTitle, "title_font_size": titleFontSize, "title_font_color": titleFontColor, "title_font_type": titleFontType])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var showTitle: Bool? {
                get {
                  return resultMap["show_title"] as? Bool
                }
                set {
                  resultMap.updateValue(newValue, forKey: "show_title")
                }
              }

              public var alignTitle: String? {
                get {
                  return resultMap["align_title"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "align_title")
                }
              }

              public var titleFontSize: Double? {
                get {
                  return resultMap["title_font_size"] as? Double
                }
                set {
                  resultMap.updateValue(newValue, forKey: "title_font_size")
                }
              }

              public var titleFontColor: String? {
                get {
                  return resultMap["title_font_color"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "title_font_color")
                }
              }

              public var titleFontType: String? {
                get {
                  return resultMap["title_font_type"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "title_font_type")
                }
              }
            }
          }

          public struct Datum: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ProductDescriptionWidgetData"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("product_description", type: .scalar(String.self)),
                GraphQLField("short_description", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(productDescription: String? = nil, shortDescription: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "ProductDescriptionWidgetData", "product_description": productDescription, "short_description": shortDescription])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var productDescription: String? {
              get {
                return resultMap["product_description"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "product_description")
              }
            }

            public var shortDescription: String? {
              get {
                return resultMap["short_description"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "short_description")
              }
            }
          }
        }

        public struct RecentlyViewed: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["RecentlyViewedWidget"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("widget_name", type: .nonNull(.scalar(String.self))),
              GraphQLField("position", type: .nonNull(.scalar(Double.self))),
              GraphQLField("config", type: .nonNull(.object(Config.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(widgetName: String, position: Double, config: Config) {
            self.init(unsafeResultMap: ["__typename": "RecentlyViewedWidget", "widget_name": widgetName, "position": position, "config": config.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Widget name
          public var widgetName: String {
            get {
              return resultMap["widget_name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "widget_name")
            }
          }

          /// Widget position
          public var position: Double {
            get {
              return resultMap["position"]! as! Double
            }
            set {
              resultMap.updateValue(newValue, forKey: "position")
            }
          }

          /// Recently Viewed Config
          public var config: Config {
            get {
              return Config(unsafeResultMap: resultMap["config"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "config")
            }
          }

          public struct Config: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["RecentlyViewedWidgetConfig"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("regular_price_font_size", type: .scalar(Double.self)),
                GraphQLField("regular_price_font_color", type: .scalar(String.self)),
                GraphQLField("regular_price_font_type", type: .scalar(String.self)),
                GraphQLField("sale_price_font_size", type: .scalar(Double.self)),
                GraphQLField("sale_price_font_color", type: .scalar(String.self)),
                GraphQLField("sale_price_font_type", type: .scalar(String.self)),
                GraphQLField("discount_percentage_font_size", type: .scalar(Double.self)),
                GraphQLField("discount_percentage_font_color", type: .scalar(String.self)),
                GraphQLField("discount_percentage_font_type", type: .scalar(String.self)),
                GraphQLField("product_name_font_color", type: .scalar(String.self)),
                GraphQLField("product_name_font_type", type: .scalar(String.self)),
                GraphQLField("product_name_font_size", type: .scalar(Double.self)),
                GraphQLField("show_wishlist", type: .scalar(Bool.self)),
                GraphQLField("image_aspect_ratio", type: .scalar(Double.self)),
                GraphQLField("image_content_mode", type: .scalar(String.self)),
                GraphQLField("display_no_of_product", type: .scalar(Double.self)),
                GraphQLField("title", type: .nonNull(.object(Title.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(regularPriceFontSize: Double? = nil, regularPriceFontColor: String? = nil, regularPriceFontType: String? = nil, salePriceFontSize: Double? = nil, salePriceFontColor: String? = nil, salePriceFontType: String? = nil, discountPercentageFontSize: Double? = nil, discountPercentageFontColor: String? = nil, discountPercentageFontType: String? = nil, productNameFontColor: String? = nil, productNameFontType: String? = nil, productNameFontSize: Double? = nil, showWishlist: Bool? = nil, imageAspectRatio: Double? = nil, imageContentMode: String? = nil, displayNoOfProduct: Double? = nil, title: Title) {
              self.init(unsafeResultMap: ["__typename": "RecentlyViewedWidgetConfig", "regular_price_font_size": regularPriceFontSize, "regular_price_font_color": regularPriceFontColor, "regular_price_font_type": regularPriceFontType, "sale_price_font_size": salePriceFontSize, "sale_price_font_color": salePriceFontColor, "sale_price_font_type": salePriceFontType, "discount_percentage_font_size": discountPercentageFontSize, "discount_percentage_font_color": discountPercentageFontColor, "discount_percentage_font_type": discountPercentageFontType, "product_name_font_color": productNameFontColor, "product_name_font_type": productNameFontType, "product_name_font_size": productNameFontSize, "show_wishlist": showWishlist, "image_aspect_ratio": imageAspectRatio, "image_content_mode": imageContentMode, "display_no_of_product": displayNoOfProduct, "title": title.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var regularPriceFontSize: Double? {
              get {
                return resultMap["regular_price_font_size"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "regular_price_font_size")
              }
            }

            public var regularPriceFontColor: String? {
              get {
                return resultMap["regular_price_font_color"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "regular_price_font_color")
              }
            }

            public var regularPriceFontType: String? {
              get {
                return resultMap["regular_price_font_type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "regular_price_font_type")
              }
            }

            public var salePriceFontSize: Double? {
              get {
                return resultMap["sale_price_font_size"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "sale_price_font_size")
              }
            }

            public var salePriceFontColor: String? {
              get {
                return resultMap["sale_price_font_color"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "sale_price_font_color")
              }
            }

            public var salePriceFontType: String? {
              get {
                return resultMap["sale_price_font_type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "sale_price_font_type")
              }
            }

            public var discountPercentageFontSize: Double? {
              get {
                return resultMap["discount_percentage_font_size"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "discount_percentage_font_size")
              }
            }

            public var discountPercentageFontColor: String? {
              get {
                return resultMap["discount_percentage_font_color"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "discount_percentage_font_color")
              }
            }

            public var discountPercentageFontType: String? {
              get {
                return resultMap["discount_percentage_font_type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "discount_percentage_font_type")
              }
            }

            public var productNameFontColor: String? {
              get {
                return resultMap["product_name_font_color"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "product_name_font_color")
              }
            }

            public var productNameFontType: String? {
              get {
                return resultMap["product_name_font_type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "product_name_font_type")
              }
            }

            public var productNameFontSize: Double? {
              get {
                return resultMap["product_name_font_size"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "product_name_font_size")
              }
            }

            public var showWishlist: Bool? {
              get {
                return resultMap["show_wishlist"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_wishlist")
              }
            }

            public var imageAspectRatio: Double? {
              get {
                return resultMap["image_aspect_ratio"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "image_aspect_ratio")
              }
            }

            public var imageContentMode: String? {
              get {
                return resultMap["image_content_mode"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "image_content_mode")
              }
            }

            public var displayNoOfProduct: Double? {
              get {
                return resultMap["display_no_of_product"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "display_no_of_product")
              }
            }

            public var title: Title {
              get {
                return Title(unsafeResultMap: resultMap["title"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "title")
              }
            }

            public struct Title: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["RecentlyViewedWidgetConfigTitle"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("align_title", type: .scalar(String.self)),
                  GraphQLField("show_title", type: .scalar(Bool.self)),
                  GraphQLField("title_font_size", type: .scalar(Double.self)),
                  GraphQLField("title_font_color", type: .scalar(String.self)),
                  GraphQLField("title_font_type", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(alignTitle: String? = nil, showTitle: Bool? = nil, titleFontSize: Double? = nil, titleFontColor: String? = nil, titleFontType: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "RecentlyViewedWidgetConfigTitle", "align_title": alignTitle, "show_title": showTitle, "title_font_size": titleFontSize, "title_font_color": titleFontColor, "title_font_type": titleFontType])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var alignTitle: String? {
                get {
                  return resultMap["align_title"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "align_title")
                }
              }

              public var showTitle: Bool? {
                get {
                  return resultMap["show_title"] as? Bool
                }
                set {
                  resultMap.updateValue(newValue, forKey: "show_title")
                }
              }

              public var titleFontSize: Double? {
                get {
                  return resultMap["title_font_size"] as? Double
                }
                set {
                  resultMap.updateValue(newValue, forKey: "title_font_size")
                }
              }

              public var titleFontColor: String? {
                get {
                  return resultMap["title_font_color"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "title_font_color")
                }
              }

              public var titleFontType: String? {
                get {
                  return resultMap["title_font_type"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "title_font_type")
                }
              }
            }
          }
        }
      }

      public struct FooterWidget: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["FooterWidget"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("add_to_cart", type: .nonNull(.object(AddToCart.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(addToCart: AddToCart) {
          self.init(unsafeResultMap: ["__typename": "FooterWidget", "add_to_cart": addToCart.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Add to cart widget
        public var addToCart: AddToCart {
          get {
            return AddToCart(unsafeResultMap: resultMap["add_to_cart"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "add_to_cart")
          }
        }

        public struct AddToCart: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["AddToCartWidget"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("widget_name", type: .nonNull(.scalar(String.self))),
              GraphQLField("config", type: .nonNull(.object(Config.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(widgetName: String, config: Config) {
            self.init(unsafeResultMap: ["__typename": "AddToCartWidget", "widget_name": widgetName, "config": config.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Widget name
          public var widgetName: String {
            get {
              return resultMap["widget_name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "widget_name")
            }
          }

          /// Add to cart widget config
          public var config: Config {
            get {
              return Config(unsafeResultMap: resultMap["config"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "config")
            }
          }

          public struct Config: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["AddToCartWidgetConfig"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("align", type: .scalar(String.self)),
                GraphQLField("show_buynow_button", type: .scalar(Bool.self)),
                GraphQLField("show_addtocart_button", type: .scalar(Bool.self)),
                GraphQLField("buynow_button_color", type: .scalar(String.self)),
                GraphQLField("buynow_button_broder", type: .scalar(String.self)),
                GraphQLField("buynow_button_text_color", type: .scalar(String.self)),
                GraphQLField("addtocart_button_color", type: .scalar(String.self)),
                GraphQLField("addtocart_button_broder", type: .scalar(String.self)),
                GraphQLField("addtocart_button_text_color", type: .scalar(String.self)),
                GraphQLField("show_addtocart_increase_qty", type: .scalar(Bool.self)),
                GraphQLField("buynow_button_fontsize", type: .scalar(Double.self)),
                GraphQLField("addtocart_button_fontsize", type: .scalar(Double.self)),
                GraphQLField("buynow_button_font_type", type: .scalar(String.self)),
                GraphQLField("addtocart_button_font_type", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(align: String? = nil, showBuynowButton: Bool? = nil, showAddtocartButton: Bool? = nil, buynowButtonColor: String? = nil, buynowButtonBroder: String? = nil, buynowButtonTextColor: String? = nil, addtocartButtonColor: String? = nil, addtocartButtonBroder: String? = nil, addtocartButtonTextColor: String? = nil, showAddtocartIncreaseQty: Bool? = nil, buynowButtonFontsize: Double? = nil, addtocartButtonFontsize: Double? = nil, buynowButtonFontType: String? = nil, addtocartButtonFontType: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "AddToCartWidgetConfig", "align": align, "show_buynow_button": showBuynowButton, "show_addtocart_button": showAddtocartButton, "buynow_button_color": buynowButtonColor, "buynow_button_broder": buynowButtonBroder, "buynow_button_text_color": buynowButtonTextColor, "addtocart_button_color": addtocartButtonColor, "addtocart_button_broder": addtocartButtonBroder, "addtocart_button_text_color": addtocartButtonTextColor, "show_addtocart_increase_qty": showAddtocartIncreaseQty, "buynow_button_fontsize": buynowButtonFontsize, "addtocart_button_fontsize": addtocartButtonFontsize, "buynow_button_font_type": buynowButtonFontType, "addtocart_button_font_type": addtocartButtonFontType])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var align: String? {
              get {
                return resultMap["align"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "align")
              }
            }

            public var showBuynowButton: Bool? {
              get {
                return resultMap["show_buynow_button"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_buynow_button")
              }
            }

            public var showAddtocartButton: Bool? {
              get {
                return resultMap["show_addtocart_button"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_addtocart_button")
              }
            }

            public var buynowButtonColor: String? {
              get {
                return resultMap["buynow_button_color"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "buynow_button_color")
              }
            }

            public var buynowButtonBroder: String? {
              get {
                return resultMap["buynow_button_broder"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "buynow_button_broder")
              }
            }

            public var buynowButtonTextColor: String? {
              get {
                return resultMap["buynow_button_text_color"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "buynow_button_text_color")
              }
            }

            public var addtocartButtonColor: String? {
              get {
                return resultMap["addtocart_button_color"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "addtocart_button_color")
              }
            }

            public var addtocartButtonBroder: String? {
              get {
                return resultMap["addtocart_button_broder"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "addtocart_button_broder")
              }
            }

            public var addtocartButtonTextColor: String? {
              get {
                return resultMap["addtocart_button_text_color"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "addtocart_button_text_color")
              }
            }

            public var showAddtocartIncreaseQty: Bool? {
              get {
                return resultMap["show_addtocart_increase_qty"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "show_addtocart_increase_qty")
              }
            }

            public var buynowButtonFontsize: Double? {
              get {
                return resultMap["buynow_button_fontsize"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "buynow_button_fontsize")
              }
            }

            public var addtocartButtonFontsize: Double? {
              get {
                return resultMap["addtocart_button_fontsize"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "addtocart_button_fontsize")
              }
            }

            public var buynowButtonFontType: String? {
              get {
                return resultMap["buynow_button_font_type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "buynow_button_font_type")
              }
            }

            public var addtocartButtonFontType: String? {
              get {
                return resultMap["addtocart_button_font_type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "addtocart_button_font_type")
              }
            }
          }
        }
      }
    }
  }
}

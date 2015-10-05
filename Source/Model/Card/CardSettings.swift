import Foundation
import ObjectMapper

/// CardSettings model.
public class CardSettings: Mappable {

    /// The position of the card.
    public private(set) var position: Int?

    /// A boolean indicating if the card is starred.
    public private(set) var starred: Bool?

    /**
      Constructor.

      - parameter position: The position of the card.
      - parameter starred: A boolean indicating if the card is starred.
    */
    public init(position: Int, starred: Bool) {
        self.position = position
        self.starred = starred
    }

    // MARK: Required by the ObjectMapper.

    /**
      Constructor.
    */
    required public init?(_ map: Map) {
    }

    /// Maps the JSON to the Object.
    public func mapping(map: Map) {
        position  <- map["position"]
        starred <- map["starred"]
    }

}
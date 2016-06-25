import Foundation
import ObjectMapper

/// Card address request model.
public class AddressRequest: Mappable {

    /// The network for the address to be created.
    public private(set) final var network: String?

    /**
      Constructor.

      - parameter network: The network for the address to be created.
    */
    public init(network: String) {
        self.network = network
    }

    // MARK: Required by the ObjectMapper.

    /**
      Constructor.

      - parameter map: Mapping data object.
    */
    required public init?(_ map: Map) {
    }

    /**
      Maps the JSON to the Object.

      - parameter map: The object to map.
    */
    public func mapping(map: Map) {
        self.network <- map["network"]
    }

}

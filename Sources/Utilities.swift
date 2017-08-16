import Foundation

struct PercentEncoder {

  /// Perform url encoding
  ///
  /// - Parameter string: The source string
  /// - Returns: The encoded string
  static func encode(string: String, allowed: String) -> String {
    var set = CharacterSet.urlPathAllowed
    allowed.unicodeScalars.forEach {
      set.insert($0)
    }

    return string.addingPercentEncoding(withAllowedCharacters: set) ?? string
  }

  /// Perform url decoding
  ///
  /// - Parameter string: The encoded string
  /// - Returns: The percented decoded string
  static func decode(string: String) -> String {
    return string.removingPercentEncoding ?? string
  }
}

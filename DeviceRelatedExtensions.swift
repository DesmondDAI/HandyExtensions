import Foundation
import UIKit

enum ScreenSizeType {
    case inch35, inch40, inch47, inch55, inch79, inchIpad, inch129Ipad
}

extension UIScreen {
    class func getScreenSizeType() -> ScreenSizeType? {
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        let scale = UIScreen.main.scale
        let numberOfPixels = width * height * scale
        switch numberOfPixels {
        case 320 * 480 * 2:  // 4, 4s
            print("size: 4, 4s")
            return .inch35
            
        case 320 * 568 * 2:  // 5, 5s
            print("size: 5, 5s")
            return .inch40
            
        case 375 * 667 * 2:  // 6, 6s, 7
            print("size: 6, 6s, 7")
            return .inch47
            
        case 414 * 736 * 3:  // size 6+, 6s+, 7+
            print("size: 6+, 6s+, 7+")
            return .inch55
            
        case 768 * 1024 * 2:  // size ipad
            print("size: ipad")
            return .inchIpad
            
        case 1024 * 1366 * 2:  // size ipad pro
            print("size: ipad pro")
            return .inch129Ipad
            
        default:  //  size not found
            return nil
        }
    }
}

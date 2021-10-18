import UIKit

extension UIColor {

    public convenience init(_ r: Int, _ g: Int, _ b: Int) {
        let newRed = CGFloat(r)/255
        let newGreen = CGFloat(g)/255
        let newBlue = CGFloat(b)/255

        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }

    public convenience init(r: Int, g: Int, b: Int, a: CGFloat) {
        let newRed = CGFloat(r)/255
        let newGreen = CGFloat(g)/255
        let newBlue = CGFloat(b)/255

        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: a)
    }
}

extension UIColor {
    var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)

        return (red, green, blue, alpha)
    }
}

public struct PlaygroundSupport {
    public private(set) var text = "Hello, World!"

    public init() {
    }
}

import Foundation

public enum PlaygroundValue {
    case array([PlaygroundValue])
    case dictionary([String: PlaygroundValue])
    case string(String)
    case data(Data)
    case date(Date)
    case integer(Int)
    case floatingPoint(Double)
    case boolean(Bool)
}

public protocol PlaygroundRemoteLiveView {
    func send(_ value: PlaygroundValue)
}

public protocol PlaygroundLiveViewMessageHandler {
    func liveViewMessageConnectionOpened()
    func liveViewMessageConnectionClosed()
    func receive(_ message: PlaygroundValue)
}
public extension PlaygroundLiveViewMessageHandler {
    func liveViewMessageConnectionOpened() {}
    func liveViewMessageConnectionClosed() {}
}

public class PlaygroundPage {
    public static var current = PlaygroundPage()
    public var liveView: AnyObject!
}

public class PlaygroundRemoteLiveViewProxy: PlaygroundRemoteLiveView {
    public func send(_ value: PlaygroundValue) {

    }
}
public protocol PlaygroundLiveViewSafeAreaContainer {}

public protocol PlaygroundLiveViewable {}
#if !os(macOS)
import UIKit
extension UIView: PlaygroundLiveViewable{}
extension UIViewController: PlaygroundLiveViewable {}
#endif
#if os(macOS)
import AppKit
extension NSView: PlaygroundLiveViewable{}
extension NSViewController: PlaygroundLiveViewable {}
#endif

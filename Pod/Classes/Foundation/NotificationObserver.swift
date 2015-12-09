import Foundation
import Interstellar

public class NotificationObserver: NSObject {
    public let signal = Signal<NSNotification>()

    public init(notificationName name: String) {
        super.init()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "update:", name: name, object: nil)
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    public func update(notification: NSNotification) {
        signal.update(notification)
    }
}

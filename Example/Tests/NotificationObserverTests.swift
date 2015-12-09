import UIKit
import XCTest
import Nimble

import Interstellar_Extra

class NotificationObserverTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSignal() {
        let nc = NSNotificationCenter.defaultCenter()
        var count = 0

        let observer : NotificationObserver? = NotificationObserver(notificationName: "Test")
        observer?.signal.next { (n) -> Void in
            count = count + 1
        }
        
        nc.postNotificationName("Test", object: nil)
        nc.postNotificationName("Test", object: nil)
        
        expect(count).toEventually(equal(2))
    }
    
    func testDeinit() {
        let nc = NSNotificationCenter.defaultCenter()
        var count = 0

        var observer : NotificationObserver? = NotificationObserver(notificationName: "Test")
        observer?.signal.next { (n) -> Void in
            count = count + 1
        }

        nc.postNotificationName("Test", object: nil)
        observer = nil // release the observer
        nc.postNotificationName("Test", object: nil)

        expect(count).toEventually(equal(1))
    }
}

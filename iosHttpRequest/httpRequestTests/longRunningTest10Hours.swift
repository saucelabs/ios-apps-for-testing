import XCTest

class longRunningTest10Hours: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLongRunningSession_1_1() throws { templateTestCase();}
    func testLongRunningSession_1_2() throws { templateTestCase();}
    func testLongRunningSession_1_3() throws { templateTestCase();}
    func testLongRunningSession_1_4() throws { templateTestCase();}
    func testLongRunningSession_1_5() throws { templateTestCase();}
    func testLongRunningSession_1_6() throws { templateTestCase();}

    func testLongRunningSession_2_1() throws { templateTestCase();}
    func testLongRunningSession_2_2() throws { templateTestCase();}
    func testLongRunningSession_2_3() throws { templateTestCase();}
    func testLongRunningSession_2_4() throws { templateTestCase();}
    func testLongRunningSession_2_5() throws { templateTestCase();}
    func testLongRunningSession_2_6() throws { templateTestCase();}

    func testLongRunningSession_3_1() throws { templateTestCase();}
    func testLongRunningSession_3_2() throws { templateTestCase();}
    func testLongRunningSession_3_3() throws { templateTestCase();}
    func testLongRunningSession_3_4() throws { templateTestCase();}
    func testLongRunningSession_3_5() throws { templateTestCase();}
    func testLongRunningSession_3_6() throws { templateTestCase();}

    func testLongRunningSession_4_1() throws { templateTestCase();}
    func testLongRunningSession_4_2() throws { templateTestCase();}
    func testLongRunningSession_4_3() throws { templateTestCase();}
    func testLongRunningSession_4_4() throws { templateTestCase();}
    func testLongRunningSession_4_5() throws { templateTestCase();}
    func testLongRunningSession_4_6() throws { templateTestCase();}

    func testLongRunningSession_5_1() throws { templateTestCase();}
    func testLongRunningSession_5_2() throws { templateTestCase();}
    func testLongRunningSession_5_3() throws { templateTestCase();}
    func testLongRunningSession_5_4() throws { templateTestCase();}
    func testLongRunningSession_5_5() throws { templateTestCase();}
    func testLongRunningSession_5_6() throws { templateTestCase();}

    func testLongRunningSession_6_1() throws { templateTestCase();}
    func testLongRunningSession_6_2() throws { templateTestCase();}
    func testLongRunningSession_6_3() throws { templateTestCase();}
    func testLongRunningSession_6_4() throws { templateTestCase();}
    func testLongRunningSession_6_5() throws { templateTestCase();}
    func testLongRunningSession_6_6() throws { templateTestCase();}

    func testLongRunningSession_7_1() throws { templateTestCase();}
    func testLongRunningSession_7_2() throws { templateTestCase();}
    func testLongRunningSession_7_3() throws { templateTestCase();}
    func testLongRunningSession_7_4() throws { templateTestCase();}
    func testLongRunningSession_7_5() throws { templateTestCase();}
    func testLongRunningSession_7_6() throws { templateTestCase();}

    func testLongRunningSession_8_1() throws { templateTestCase();}
    func testLongRunningSession_8_2() throws { templateTestCase();}
    func testLongRunningSession_8_3() throws { templateTestCase();}
    func testLongRunningSession_8_4() throws { templateTestCase();}
    func testLongRunningSession_8_5() throws { templateTestCase();}
    func testLongRunningSession_8_6() throws { templateTestCase();}

    func testLongRunningSession_9_1() throws { templateTestCase();}
    func testLongRunningSession_9_2() throws { templateTestCase();}
    func testLongRunningSession_9_3() throws { templateTestCase();}
    func testLongRunningSession_9_4() throws { templateTestCase();}
    func testLongRunningSession_9_5() throws { templateTestCase();}
    func testLongRunningSession_9_6() throws { templateTestCase();}

    func testLongRunningSession_10_1() throws { templateTestCase();}
    func testLongRunningSession_10_2() throws { templateTestCase();}
    func testLongRunningSession_10_3() throws { templateTestCase();}
    func testLongRunningSession_10_4() throws { templateTestCase();}
    func testLongRunningSession_10_5() throws { templateTestCase();}
    func testLongRunningSession_10_6() throws { templateTestCase();}

    func templateTestCase() {
        let startTime = Date()
        let sessionLimit = 10.0;
        let testCaseTimeLimit = startTime.addingTimeInterval(sessionLimit * 60)

        let app = XCUIApplication()
        app.launch()
        XCUIDevice.shared.orientation = .portrait

        let clearButton = app.buttons["clear_button"]

        while(Date() < testCaseTimeLimit) {
            clearButton.tap();
            
            sleep(1)
        }
    }
}

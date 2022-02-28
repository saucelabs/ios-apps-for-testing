import XCTest

class httpRequestTests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }
    
    func testSauceConnect() throws {
        let HTTP_URL_TO_ACCESS = "http://salsa:8000/web"

        let app = XCUIApplication()
        app.launch()
        XCUIDevice.shared.orientation = .portrait

        let endpointTextField = app.textFields["endpoint_text_field"]

        endpointTextField.tap()
        endpointTextField.typeText(HTTP_URL_TO_ACCESS);

        app.buttons["get_button"].tap()

        let statusCode = app.staticTexts["status_code_label"]

        let statusPredicate = NSPredicate(format: "label MATCHES '200'")

        let exp = self.expectation(for: statusPredicate, evaluatedWith: statusCode, handler: nil);
        wait(for: [exp], timeout: 5)
    }
}

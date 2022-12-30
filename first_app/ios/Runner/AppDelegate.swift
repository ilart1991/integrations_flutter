import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
      let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
          let batteryChannel = FlutterMethodChannel(name: "SIMPLE_CHANNEL",
                                                    binaryMessenger: controller.binaryMessenger)
      batteryChannel.setMethodCallHandler({
        [weak self] (call: FlutterMethodCall, result: FlutterResult) -> Void in
        guard call.method == "getMyString" else {
          result(FlutterMethodNotImplemented)
          return
        }
          self?.receiveMyString(result: result, data: call.arguments as! String)
      })
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    private func receiveMyString(result: FlutterResult, data: String) {
        result(data)
    }
}


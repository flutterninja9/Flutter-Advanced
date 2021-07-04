package com.example.native_code_in_flutter

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    val channelName: String = "com.tfn.app/request"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger,channelName).setMethodCallHandler {
            call, result ->
                if (call.method == "sendMessage") {
                    result.success("I am the message sent from Native Code")
                }
                else {
                    result.notImplemented()
                }
        }
    }
}

package com.example.experian_challenge.core.platform

import com.google.firebase.analytics.FirebaseAnalytics
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class PlatformChannel(private var firebaseAnalytics: FirebaseAnalytics) {
    fun processMethods(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "logEvent" -> {
                try {
                    val properties = call.argument<HashMap<String, String>>("properties")
                    ProcessLogEvents(firebaseAnalytics).execute(
                        call.argument<String>("eventName"), properties
                    )
                    result.success(true)
                } catch (e: Exception) {
                    result.error("error", e.toString(), e)
                }
            }

            else -> {
                result.notImplemented()
            }
        }
    }
}
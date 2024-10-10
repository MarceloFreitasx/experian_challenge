package com.example.experian_challenge.core.platform

import com.google.firebase.analytics.FirebaseAnalytics
import com.google.firebase.analytics.logEvent

class ProcessLogEvents(private var firebaseAnalytics: FirebaseAnalytics) {
    fun execute(eventName: String?, properties: HashMap<String, String>?) {
        when (eventName) {
            "search" -> firebaseAnalytics.logEvent(FirebaseAnalytics.Event.SEARCH) {
                if (properties != null) {
                    properties["search_term"]?.let {
                        param(
                            FirebaseAnalytics.Param.SEARCH_TERM, it
                        )
                    }
                }
            }

            "select_content" -> firebaseAnalytics.logEvent(FirebaseAnalytics.Event.SELECT_CONTENT) {
                if (properties != null) {
                    param(FirebaseAnalytics.Param.CONTENT_TYPE, "character")
                    properties["content_id"]?.let {
                        param(
                            FirebaseAnalytics.Param.ITEM_ID, it
                        )
                    }
                    properties["content_name"]?.let {
                        param(
                            FirebaseAnalytics.Param.ITEM_NAME, it
                        )
                    }
                }
            }
        }
    }
}
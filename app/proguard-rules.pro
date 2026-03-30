# WebView apps should keep all public classes
-keep class com.iconictv.live.** { *; }
-keepattributes *Annotation*
-keepattributes JavascriptInterface

# Keep JS interface methods if you add @JavascriptInterface in future
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

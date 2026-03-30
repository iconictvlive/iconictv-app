# 📺 Iconic TV Live — Android WebView App

A **no URL bar, fullscreen** Android app for `iconictvlive.github.io`.

---

## ✅ Features

| Feature | Status |
|---|---|
| No URL / address bar ever | ✅ |
| All redirects stay inside app | ✅ |
| HLS / M3U8 stream support | ✅ |
| Full screen (status bar hidden) | ✅ |
| Landscape locked | ✅ |
| Auto-play media | ✅ |
| Third-party cookies | ✅ |
| Cleartext HTTP streams | ✅ |
| Back = go back (not close) | ✅ |

---

## 🚀 Option 1: Build via GitHub Actions (EASIEST — no install needed)

1. Push this folder to a **GitHub repo**
2. Go to **Actions** tab → `Build APK` workflow
3. Click **Run workflow**
4. Download the APK from the **Artifacts** section

---

## 🛠️ Option 2: Build locally with Android Studio

### Requirements
- Android Studio (Hedgehog or newer)
- JDK 17

### Steps
```bash
git clone <your-repo-url>
cd IconicTV
./gradlew assembleDebug
```

APK will be at:
```
app/build/outputs/apk/debug/IconicTV-debug-1.0.apk
```

---

## 📱 Option 3: Install directly (if you already have the APK)

```bash
adb install IconicTV-debug-1.0.apk
```

Or transfer the APK to your phone and tap to install (enable "Install unknown apps" first).

---

## 🔧 Customization

| What to change | Where |
|---|---|
| Target URL | `MainActivity.java` → `HOME_URL` |
| App name | `res/values/strings.xml` |
| Orientation | `AndroidManifest.xml` → `screenOrientation` |
| App icon | Replace `res/mipmap-*/ic_launcher.png` |
| Version | `app/build.gradle` → `versionCode` / `versionName` |

---

## ⚠️ Sideload Note

This APK is **unsigned/debug-signed**. For Google Play Store you need to:
1. Generate a keystore: `keytool -genkey -v -keystore release.jks ...`
2. Add signing config to `app/build.gradle`
3. Run `./gradlew assembleRelease`

package androidx.core.view.accessibility;

import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.ext.SdkExtensions;
import android.os.storage.StorageVolume;
import android.view.WindowInsets;
import android.view.WindowInsets$Type;
import android.view.WindowManager;
import android.view.WindowMetrics;
import android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class b {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int a() {
        return SdkExtensions.getExtensionVersion(30);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Rect b(WindowMetrics windowMetrics) {
        return windowMetrics.getBounds();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ WindowInsets c(WindowMetrics windowMetrics) {
        return windowMetrics.getWindowInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ WindowMetrics d(WindowManager windowManager) {
        return windowManager.getMaximumWindowMetrics();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ AccessibilityNodeInfo$AccessibilityAction e() {
        return AccessibilityNodeInfo$AccessibilityAction.ACTION_PRESS_AND_HOLD;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ File f(StorageVolume storageVolume) {
        return storageVolume.getDirectory();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void g(Outline outline, Path path) {
        outline.setPath(path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int h() {
        return WindowInsets$Type.systemBars();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ WindowMetrics i(WindowManager windowManager) {
        return windowManager.getCurrentWindowMetrics();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ AccessibilityNodeInfo$AccessibilityAction j() {
        return AccessibilityNodeInfo$AccessibilityAction.ACTION_IME_ENTER;
    }
}

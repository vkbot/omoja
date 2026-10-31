package androidx.core.view;

import android.view.WindowInsets;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.contentcapture.ContentCaptureSession;
import java.util.Map;

/* JADX INFO: renamed from: androidx.core.view.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0432n {
    /* JADX INFO: renamed from: e */
    public static /* synthetic */ WindowInsets.Builder m762e() {
        return new WindowInsets.Builder();
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ WindowInsets.Builder m763f(WindowInsets windowInsets) {
        return new WindowInsets.Builder(windowInsets);
    }

    /* JADX INFO: renamed from: k */
    public static /* synthetic */ AccessibilityNodeInfo.TouchDelegateInfo m768k(Map map) {
        return new AccessibilityNodeInfo.TouchDelegateInfo(map);
    }

    /* JADX INFO: renamed from: m */
    public static /* bridge */ /* synthetic */ ContentCaptureSession m770m(Object obj) {
        return (ContentCaptureSession) obj;
    }
}

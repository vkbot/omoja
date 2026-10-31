package androidx.core.view;

import android.app.Activity;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Region;
import android.os.Trace;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsets$Builder;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction;
import android.view.accessibility.AccessibilityNodeInfo$TouchDelegateInfo;
import android.view.contentcapture.ContentCaptureSession;
import androidx.lifecycle.ReportFragment$LifecycleCallbacks;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class n {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Insets A(WindowInsets windowInsets) {
        return windowInsets.getSystemGestureInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ AccessibilityNodeInfo$AccessibilityAction B() {
        return AccessibilityNodeInfo$AccessibilityAction.ACTION_PAGE_LEFT;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void C(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ AccessibilityNodeInfo$AccessibilityAction D() {
        return AccessibilityNodeInfo$AccessibilityAction.ACTION_PAGE_RIGHT;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ float a(View view) {
        return view.getTransitionAlpha();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int b(AccessibilityNodeInfo$TouchDelegateInfo accessibilityNodeInfo$TouchDelegateInfo) {
        return accessibilityNodeInfo$TouchDelegateInfo.getRegionCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Insets c(WindowInsets windowInsets) {
        return windowInsets.getTappableElementInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Region d(AccessibilityNodeInfo$TouchDelegateInfo accessibilityNodeInfo$TouchDelegateInfo, int i9) {
        return accessibilityNodeInfo$TouchDelegateInfo.getRegionAt(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ WindowInsets$Builder e() {
        return new WindowInsets$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ WindowInsets$Builder f(WindowInsets windowInsets) {
        return new WindowInsets$Builder(windowInsets);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ WindowInsets g(WindowInsets$Builder windowInsets$Builder) {
        return windowInsets$Builder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ WindowInsets h(WindowInsets windowInsets, int i9, int i10, int i11, int i12) {
        return windowInsets.inset(i9, i10, i11, i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ AccessibilityNodeInfo$AccessibilityAction i() {
        return AccessibilityNodeInfo$AccessibilityAction.ACTION_PAGE_UP;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ AccessibilityNodeInfo$TouchDelegateInfo j(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getTouchDelegateInfo();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ AccessibilityNodeInfo$TouchDelegateInfo k(Map map) {
        return new AccessibilityNodeInfo$TouchDelegateInfo(map);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ AccessibilityNodeInfo l(AccessibilityNodeInfo$TouchDelegateInfo accessibilityNodeInfo$TouchDelegateInfo, Region region) {
        return accessibilityNodeInfo$TouchDelegateInfo.getTargetForRegion(region);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ContentCaptureSession m(Object obj) {
        return (ContentCaptureSession) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void n(Activity activity, ReportFragment$LifecycleCallbacks reportFragment$LifecycleCallbacks) {
        activity.registerActivityLifecycleCallbacks(reportFragment$LifecycleCallbacks);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void o(View view, float f8) {
        view.setTransitionAlpha(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void p(View view, Matrix matrix) {
        view.setAnimationMatrix(matrix);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void q(WindowInsets$Builder windowInsets$Builder, Insets insets) {
        windowInsets$Builder.setMandatorySystemGestureInsets(insets);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void r(WindowInsets$Builder windowInsets$Builder, DisplayCutout displayCutout) {
        windowInsets$Builder.setDisplayCutout(displayCutout);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void s(AccessibilityNodeInfo accessibilityNodeInfo, AccessibilityNodeInfo$TouchDelegateInfo accessibilityNodeInfo$TouchDelegateInfo) {
        accessibilityNodeInfo.setTouchDelegateInfo(accessibilityNodeInfo$TouchDelegateInfo);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void t(AccessibilityNodeInfo accessibilityNodeInfo, boolean z8) {
        accessibilityNodeInfo.setTextEntryKey(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean u() {
        return Trace.isEnabled();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean v(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isTextEntryKey();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Insets w(WindowInsets windowInsets) {
        return windowInsets.getMandatorySystemGestureInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ AccessibilityNodeInfo$AccessibilityAction x() {
        return AccessibilityNodeInfo$AccessibilityAction.ACTION_PAGE_DOWN;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void y(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void z(WindowInsets$Builder windowInsets$Builder, Insets insets) {
        windowInsets$Builder.setTappableElementInsets(insets);
    }
}

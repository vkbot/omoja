package androidx.core.content.pm;

import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Insets;
import android.view.View;
import android.view.WindowInsets$Type;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Bounds;
import android.view.WindowInsetsAnimation$Callback;
import android.view.WindowInsetsAnimationController;
import android.view.WindowInsetsController;
import android.view.animation.Interpolator;
import androidx.core.view.h;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class b {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Insets A(WindowInsetsAnimation$Bounds windowInsetsAnimation$Bounds) {
        return windowInsetsAnimation$Bounds.getLowerBound();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Insets B(WindowInsetsAnimationController windowInsetsAnimationController) {
        return windowInsetsAnimationController.getCurrentInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void C(WindowInsetsController windowInsetsController, int i9) {
        windowInsetsController.hide(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void D(WindowInsetsController windowInsetsController, h hVar) {
        windowInsetsController.removeOnControllableInsetsChangedListener(hVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ float a(WindowInsetsAnimation windowInsetsAnimation) {
        return windowInsetsAnimation.getFraction();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ float b(WindowInsetsAnimationController windowInsetsAnimationController) {
        return windowInsetsAnimationController.getCurrentFraction();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int c() {
        return WindowInsets$Type.ime();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int d(WindowInsetsAnimation windowInsetsAnimation) {
        return windowInsetsAnimation.getTypeMask();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int e(WindowInsetsAnimationController windowInsetsAnimationController) {
        return windowInsetsAnimationController.getTypes();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ long f(WindowInsetsAnimation windowInsetsAnimation) {
        return windowInsetsAnimation.getDurationMillis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Insets g(WindowInsetsAnimation$Bounds windowInsetsAnimation$Bounds) {
        return windowInsetsAnimation$Bounds.getUpperBound();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Insets h(WindowInsetsAnimationController windowInsetsAnimationController) {
        return windowInsetsAnimationController.getShownStateInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ WindowInsetsAnimation$Bounds i(Insets insets, Insets insets2) {
        return new WindowInsetsAnimation$Bounds(insets, insets2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ WindowInsetsAnimation j(int i9, Interpolator interpolator, long j9) {
        return new WindowInsetsAnimation(i9, interpolator, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ WindowInsetsAnimation k(Object obj) {
        return (WindowInsetsAnimation) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ WindowInsetsController l(View view) {
        return view.getWindowInsetsController();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Interpolator m(WindowInsetsAnimation windowInsetsAnimation) {
        return windowInsetsAnimation.getInterpolator();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ List n(ShortcutManager shortcutManager, int i9) {
        return shortcutManager.getShortcuts(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void o() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void p(ShortcutManager shortcutManager, ShortcutInfo shortcutInfo) {
        shortcutManager.pushDynamicShortcut(shortcutInfo);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void q(ShortcutManager shortcutManager, List list) {
        shortcutManager.removeLongLivedShortcuts(list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void r(View view, WindowInsetsAnimation$Callback windowInsetsAnimation$Callback) {
        view.setWindowInsetsAnimationCallback(windowInsetsAnimation$Callback);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void s(WindowInsetsAnimation windowInsetsAnimation, float f8) {
        windowInsetsAnimation.setFraction(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void t(WindowInsetsAnimationController windowInsetsAnimationController, boolean z8) {
        windowInsetsAnimationController.finish(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void u(WindowInsetsController windowInsetsController, int i9) {
        windowInsetsController.show(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void v(WindowInsetsController windowInsetsController, h hVar) {
        windowInsetsController.addOnControllableInsetsChangedListener(hVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean w(ShortcutInfo shortcutInfo) {
        return shortcutInfo.isCached();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean x(WindowInsetsAnimationController windowInsetsAnimationController) {
        return windowInsetsAnimationController.isFinished();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ float y(WindowInsetsAnimation windowInsetsAnimation) {
        return windowInsetsAnimation.getInterpolatedFraction();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ float z(WindowInsetsAnimationController windowInsetsAnimationController) {
        return windowInsetsAnimationController.getCurrentAlpha();
    }
}

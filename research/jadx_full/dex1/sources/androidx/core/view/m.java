package androidx.core.view;

import android.graphics.Insets;
import android.os.CancellationSignal;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsets$Builder;
import android.view.WindowInsets$Type;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import android.view.WindowInsetsController;
import android.view.WindowInsetsController$OnControllableInsetsChangedListener;
import android.view.animation.Interpolator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class m {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int A() {
        return WindowInsets$Type.mandatorySystemGestures();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void B(WindowInsetsController windowInsetsController) {
        windowInsetsController.setSystemBarsAppearance(8, 8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int C() {
        return WindowInsets$Type.tappableElement();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int D() {
        return WindowInsets$Type.displayCutout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int a() {
        return WindowInsets$Type.statusBars();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int b(WindowInsetsController windowInsetsController) {
        return windowInsetsController.getSystemBarsAppearance();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Insets c(WindowInsets windowInsets, int i9) {
        return windowInsets.getInsetsIgnoringVisibility(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Insets d(WindowInsetsAnimationController windowInsetsAnimationController) {
        return windowInsetsAnimationController.getHiddenStateInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ WindowInsets e() {
        return WindowInsets.CONSUMED;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ WindowInsetsController$OnControllableInsetsChangedListener f(Object obj) {
        return (WindowInsetsController$OnControllableInsetsChangedListener) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ WindowInsetsController g(Window window) {
        return window.getInsetsController();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void h(WindowInsets$Builder windowInsets$Builder, int i9, Insets insets) {
        windowInsets$Builder.setInsets(i9, insets);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void i(WindowInsets$Builder windowInsets$Builder, int i9, boolean z8) {
        windowInsets$Builder.setVisible(i9, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void j(WindowInsetsAnimationController windowInsetsAnimationController, Insets insets, float f8, float f9) {
        windowInsetsAnimationController.setInsetsAndAlpha(insets, f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void k(WindowInsetsController windowInsetsController) {
        windowInsetsController.setSystemBarsAppearance(0, 8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void l(WindowInsetsController windowInsetsController, int i9) {
        windowInsetsController.setSystemBarsBehavior(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void m(WindowInsetsController windowInsetsController, int i9, long j9, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListener windowInsetsAnimationControlListener) {
        windowInsetsController.controlWindowInsetsAnimation(i9, j9, interpolator, cancellationSignal, windowInsetsAnimationControlListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void n(WindowInsetsController windowInsetsController, WindowInsetsController$OnControllableInsetsChangedListener windowInsetsController$OnControllableInsetsChangedListener) {
        windowInsetsController.removeOnControllableInsetsChangedListener(windowInsetsController$OnControllableInsetsChangedListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void o(WindowInsetsController windowInsetsController, o oVar) {
        windowInsetsController.addOnControllableInsetsChangedListener(oVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean p(WindowInsets windowInsets, int i9) {
        return windowInsets.isVisible(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean q(WindowInsetsAnimationController windowInsetsAnimationController) {
        return windowInsetsAnimationController.isCancelled();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int r() {
        return WindowInsets$Type.navigationBars();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int s(WindowInsetsController windowInsetsController) {
        return windowInsetsController.getSystemBarsBehavior();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Insets t(WindowInsets windowInsets, int i9) {
        return windowInsets.getInsets(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void u(WindowInsets$Builder windowInsets$Builder, int i9, Insets insets) {
        windowInsets$Builder.setInsetsIgnoringVisibility(i9, insets);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void v(WindowInsetsController windowInsetsController) {
        windowInsetsController.setSystemBarsAppearance(16, 16);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int w() {
        return WindowInsets$Type.captionBar();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void x(WindowInsetsController windowInsetsController) {
        windowInsetsController.setSystemBarsAppearance(0, 16);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int y() {
        return WindowInsets$Type.systemGestures();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void z(WindowInsetsController windowInsetsController) {
        windowInsetsController.setSystemBarsAppearance(0, 0);
    }
}

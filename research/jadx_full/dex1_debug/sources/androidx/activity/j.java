package androidx.activity;

import android.app.Person;
import android.content.pm.PackageInfo;
import android.content.pm.ShortcutInfo;
import android.content.pm.SigningInfo;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.graphics.ImageDecoder$Source;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.PrecomputedText;
import android.text.PrecomputedText$Params;
import android.text.PrecomputedText$Params$Builder;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import android.view.WindowManager$LayoutParams;
import android.view.accessibility.AccessibilityNodeInfo;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class j {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int A(PrecomputedText$Params precomputedText$Params) {
        return precomputedText$Params.getHyphenationFrequency();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int B(PrecomputedText precomputedText, int i9) {
        return precomputedText.getParagraphStart(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ PrecomputedText$Params$Builder C(PrecomputedText$Params$Builder precomputedText$Params$Builder, int i9) {
        return precomputedText$Params$Builder.setHyphenationFrequency(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void D(WindowManager$LayoutParams windowManager$LayoutParams) {
        windowManager$LayoutParams.layoutInDisplayCutoutMode = 3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int a(ShortcutInfo shortcutInfo) {
        return shortcutInfo.getDisabledReason();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int b(PrecomputedText$Params precomputedText$Params) {
        return precomputedText$Params.getBreakStrategy();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int c(PrecomputedText precomputedText) {
        return precomputedText.getParagraphCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int d(PrecomputedText precomputedText, int i9) {
        return precomputedText.getParagraphEnd(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int e(DisplayCutout displayCutout) {
        return displayCutout.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Person f(Parcelable parcelable) {
        return (Person) parcelable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Person g(Object obj) {
        return (Person) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ SigningInfo h(PackageInfo packageInfo) {
        return packageInfo.signingInfo;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Bitmap i(ImageDecoder$Source imageDecoder$Source, ImageDecoder$OnHeaderDecodedListener imageDecoder$OnHeaderDecodedListener) {
        return ImageDecoder.decodeBitmap(imageDecoder$Source, imageDecoder$OnHeaderDecodedListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Drawable j(ImageDecoder$Source imageDecoder$Source, ImageDecoder$OnHeaderDecodedListener imageDecoder$OnHeaderDecodedListener) {
        return ImageDecoder.decodeDrawable(imageDecoder$Source, imageDecoder$OnHeaderDecodedListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ PrecomputedText$Params$Builder k(PrecomputedText$Params$Builder precomputedText$Params$Builder, int i9) {
        return precomputedText$Params$Builder.setBreakStrategy(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ PrecomputedText$Params$Builder l(PrecomputedText$Params$Builder precomputedText$Params$Builder, TextDirectionHeuristic textDirectionHeuristic) {
        return precomputedText$Params$Builder.setTextDirection(textDirectionHeuristic);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ PrecomputedText$Params$Builder m(TextPaint textPaint) {
        return new PrecomputedText$Params$Builder(textPaint);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ PrecomputedText$Params n(PrecomputedText$Params$Builder precomputedText$Params$Builder) {
        return precomputedText$Params$Builder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ PrecomputedText o(CharSequence charSequence, PrecomputedText$Params precomputedText$Params) {
        return PrecomputedText.create(charSequence, precomputedText$Params);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ PrecomputedText p(Object obj) {
        return (PrecomputedText) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ TextDirectionHeuristic q(PrecomputedText$Params precomputedText$Params) {
        return precomputedText$Params.getTextDirection();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ TextPaint r(PrecomputedText$Params precomputedText$Params) {
        return precomputedText$Params.getTextPaint();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ DisplayCutout s(WindowInsets windowInsets) {
        return windowInsets.getDisplayCutout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ WindowInsets t(WindowInsets windowInsets) {
        return windowInsets.consumeDisplayCutout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void u(PrecomputedText precomputedText, Object obj) {
        precomputedText.removeSpan(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void v(PrecomputedText precomputedText, Object obj, int i9, int i10, int i11) {
        precomputedText.setSpan(obj, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void w(WindowManager$LayoutParams windowManager$LayoutParams) {
        windowManager$LayoutParams.layoutInDisplayCutoutMode = 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void x(AccessibilityNodeInfo accessibilityNodeInfo, boolean z8) {
        accessibilityNodeInfo.setHeading(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean y(Object obj) {
        return obj instanceof PrecomputedText;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Object[] z(PrecomputedText precomputedText, int i9, int i10, Class cls) {
        return precomputedText.getSpans(i9, i10, cls);
    }
}

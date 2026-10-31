package androidx.activity;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$DurationScaleChangeListener;
import android.app.Activity;
import android.icu.text.DateFormat$HourCycle;
import android.os.LocaleList;
import android.provider.MediaStore;
import android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class i {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ float a() {
        return ValueAnimator.getDurationScale();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int b() {
        return DateFormat$HourCycle.HOUR_CYCLE_11.ordinal();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ DateFormat$HourCycle c() {
        return DateFormat$HourCycle.HOUR_CYCLE_11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ AccessibilityNodeInfo$AccessibilityAction d() {
        return AccessibilityNodeInfo$AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ OnBackInvokedCallback e(Object obj) {
        return (OnBackInvokedCallback) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ OnBackInvokedDispatcher f(Activity activity) {
        return activity.getOnBackInvokedDispatcher();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ OnBackInvokedDispatcher g(ComponentDialog componentDialog) {
        return componentDialog.getOnBackInvokedDispatcher();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ OnBackInvokedDispatcher h(Object obj) {
        return (OnBackInvokedDispatcher) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void i(OnBackInvokedDispatcher onBackInvokedDispatcher, OnBackInvokedCallback onBackInvokedCallback) {
        onBackInvokedDispatcher.unregisterOnBackInvokedCallback(onBackInvokedCallback);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void j(OnBackInvokedDispatcher onBackInvokedDispatcher, androidx.appcompat.app.c cVar) {
        onBackInvokedDispatcher.registerOnBackInvokedCallback(1000000, cVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean k(ValueAnimator$DurationScaleChangeListener valueAnimator$DurationScaleChangeListener) {
        return ValueAnimator.unregisterDurationScaleChangeListener(valueAnimator$DurationScaleChangeListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean l(androidx.dynamicanimation.animation.b bVar) {
        return ValueAnimator.registerDurationScaleChangeListener(bVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean m(Locale locale, Locale locale2) {
        return LocaleList.matchesLanguageAndScript(locale, locale2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ DateFormat$HourCycle[] n() {
        return DateFormat$HourCycle.values();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int o() {
        return DateFormat$HourCycle.HOUR_CYCLE_12.ordinal();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ DateFormat$HourCycle p() {
        return DateFormat$HourCycle.HOUR_CYCLE_12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int q() {
        return DateFormat$HourCycle.HOUR_CYCLE_23.ordinal();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ DateFormat$HourCycle r() {
        return DateFormat$HourCycle.HOUR_CYCLE_23;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int s() {
        return DateFormat$HourCycle.HOUR_CYCLE_24.ordinal();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ DateFormat$HourCycle t() {
        return DateFormat$HourCycle.HOUR_CYCLE_24;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int u() {
        return MediaStore.getPickImagesMaxLimit();
    }
}

package androidx.core.view;

import android.view.View;
import android.view.View$OnUnhandledKeyEventListener;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.collection.SimpleArrayMap;
import androidx.core.R$id;
import androidx.core.view.autofill.AutofillIdCompat;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(28)
public class ViewCompat$Api28Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ViewCompat$Api28Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void addOnUnhandledKeyEventListener(@NonNull View view, @NonNull ViewCompat$OnUnhandledKeyEventListenerCompat viewCompat$OnUnhandledKeyEventListenerCompat) {
        SimpleArrayMap simpleArrayMap = (SimpleArrayMap) view.getTag(R$id.tag_unhandled_key_listeners);
        if (simpleArrayMap == null) {
            simpleArrayMap = new SimpleArrayMap();
            view.setTag(R$id.tag_unhandled_key_listeners, simpleArrayMap);
        }
        Objects.requireNonNull(viewCompat$OnUnhandledKeyEventListenerCompat);
        j jVar = new j(viewCompat$OnUnhandledKeyEventListenerCompat);
        simpleArrayMap.put(viewCompat$OnUnhandledKeyEventListenerCompat, jVar);
        view.addOnUnhandledKeyEventListener(jVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static CharSequence getAccessibilityPaneTitle(View view) {
        return view.getAccessibilityPaneTitle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean isAccessibilityHeading(View view) {
        return view.isAccessibilityHeading();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean isScreenReaderFocusable(View view) {
        return view.isScreenReaderFocusable();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void removeOnUnhandledKeyEventListener(@NonNull View view, @NonNull ViewCompat$OnUnhandledKeyEventListenerCompat viewCompat$OnUnhandledKeyEventListenerCompat) {
        View$OnUnhandledKeyEventListener view$OnUnhandledKeyEventListener;
        SimpleArrayMap simpleArrayMap = (SimpleArrayMap) view.getTag(R$id.tag_unhandled_key_listeners);
        if (simpleArrayMap == null || (view$OnUnhandledKeyEventListener = (View$OnUnhandledKeyEventListener) simpleArrayMap.get(viewCompat$OnUnhandledKeyEventListenerCompat)) == null) {
            return;
        }
        view.removeOnUnhandledKeyEventListener(view$OnUnhandledKeyEventListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static <T> T requireViewById(View view, int i9) {
        return (T) view.requireViewById(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setAccessibilityHeading(View view, boolean z8) {
        view.setAccessibilityHeading(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setAccessibilityPaneTitle(View view, CharSequence charSequence) {
        view.setAccessibilityPaneTitle(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setAutofillId(View view, AutofillIdCompat autofillIdCompat) {
        view.setAutofillId(autofillIdCompat == null ? null : autofillIdCompat.toAutofillId());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setScreenReaderFocusable(View view, boolean z8) {
        view.setScreenReaderFocusable(z8);
    }
}

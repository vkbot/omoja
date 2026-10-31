package androidx.core.view;

import android.view.View;
import android.view.autofill.AutofillId;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.Collection;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(26)
public class ViewCompat$Api26Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ViewCompat$Api26Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void addKeyboardNavigationClusters(@NonNull View view, Collection<View> collection, int i9) {
        view.addKeyboardNavigationClusters(collection, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static AutofillId getAutofillId(View view) {
        return view.getAutofillId();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getImportantForAutofill(View view) {
        return view.getImportantForAutofill();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getNextClusterForwardId(@NonNull View view) {
        return view.getNextClusterForwardId();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean hasExplicitFocusable(@NonNull View view) {
        return view.hasExplicitFocusable();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean isFocusedByDefault(@NonNull View view) {
        return view.isFocusedByDefault();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean isImportantForAutofill(View view) {
        return view.isImportantForAutofill();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean isKeyboardNavigationCluster(@NonNull View view) {
        return view.isKeyboardNavigationCluster();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static View keyboardNavigationClusterSearch(@NonNull View view, View view2, int i9) {
        return view.keyboardNavigationClusterSearch(view2, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean restoreDefaultFocus(@NonNull View view) {
        return view.restoreDefaultFocus();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setAutofillHints(@NonNull View view, String... strArr) {
        view.setAutofillHints(strArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setFocusedByDefault(@NonNull View view, boolean z8) {
        view.setFocusedByDefault(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setImportantForAutofill(View view, int i9) {
        view.setImportantForAutofill(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setKeyboardNavigationCluster(@NonNull View view, boolean z8) {
        view.setKeyboardNavigationCluster(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setNextClusterForwardId(View view, int i9) {
        view.setNextClusterForwardId(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setTooltipText(@NonNull View view, CharSequence charSequence) {
        view.setTooltipText(charSequence);
    }
}

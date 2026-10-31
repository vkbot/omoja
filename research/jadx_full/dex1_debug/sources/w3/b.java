package w3;

import android.content.Context;
import android.util.TypedValue;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class b {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static TypedValue a(int i9, Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i9, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean b(Context context, int i9, boolean z8) {
        TypedValue typedValueA = a(i9, context);
        if (typedValueA == null || typedValueA.type != 18) {
            return z8;
        }
        return typedValueA.data != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static TypedValue c(Context context, String str, int i9) {
        TypedValue typedValueA = a(i9, context);
        if (typedValueA != null) {
            return typedValueA;
        }
        n0.b.v("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", new Object[]{str, context.getResources().getResourceName(i9)});
        return null;
    }
}

package androidx.core.view;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.LayoutInflater$Factory;
import android.view.LayoutInflater$Factory2;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class LayoutInflaterCompat {
    private static final String TAG = "LayoutInflaterCompatHC";
    private static boolean sCheckedField;
    private static Field sLayoutInflaterFactory2Field;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private LayoutInflaterCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void forceSetFactory2(LayoutInflater layoutInflater, LayoutInflater$Factory2 layoutInflater$Factory2) {
        if (!sCheckedField) {
            try {
                Field declaredField = LayoutInflater.class.getDeclaredField("mFactory2");
                sLayoutInflaterFactory2Field = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e(TAG, "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", e);
            }
            sCheckedField = true;
        }
        Field field = sLayoutInflaterFactory2Field;
        if (field != null) {
            try {
                field.set(layoutInflater, layoutInflater$Factory2);
            } catch (IllegalAccessException e6) {
                Log.e(TAG, "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e6);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static LayoutInflaterFactory getFactory(LayoutInflater layoutInflater) {
        LayoutInflater$Factory factory = layoutInflater.getFactory();
        if (factory instanceof LayoutInflaterCompat$Factory2Wrapper) {
            return ((LayoutInflaterCompat$Factory2Wrapper) factory).mDelegateFactory;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static void setFactory(@NonNull LayoutInflater layoutInflater, @NonNull LayoutInflaterFactory layoutInflaterFactory) {
        layoutInflater.setFactory2(new LayoutInflaterCompat$Factory2Wrapper(layoutInflaterFactory));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setFactory2(@NonNull LayoutInflater layoutInflater, @NonNull LayoutInflater$Factory2 layoutInflater$Factory2) {
        layoutInflater.setFactory2(layoutInflater$Factory2);
    }
}

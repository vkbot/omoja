package androidx.appcompat.widget;

import android.widget.AbsListView;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DropDownListView$PreApi33Impl {
    private static final Field sIsChildViewEnabled;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Field declaredField = null;
        try {
            declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
        sIsChildViewEnabled = declaredField;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private DropDownListView$PreApi33Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isSelectedChildViewEnabled(AbsListView absListView) {
        Field field = sIsChildViewEnabled;
        if (field == null) {
            return false;
        }
        try {
            return field.getBoolean(absListView);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setSelectedChildViewEnabled(AbsListView absListView, boolean z8) {
        Field field = sIsChildViewEnabled;
        if (field != null) {
            try {
                field.set(absListView, Boolean.valueOf(z8));
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
    }
}

package androidx.core.widget;

import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class PopupWindowCompat {
    private static final String TAG = "PopupWindowCompatApi21";
    private static Method sGetWindowLayoutTypeMethod;
    private static boolean sGetWindowLayoutTypeMethodAttempted;
    private static Field sOverlapAnchorField;
    private static boolean sOverlapAnchorFieldAttempted;
    private static Method sSetWindowLayoutTypeMethod;
    private static boolean sSetWindowLayoutTypeMethodAttempted;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private PopupWindowCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean getOverlapAnchor(@NonNull PopupWindow popupWindow) {
        return PopupWindowCompat$Api23Impl.getOverlapAnchor(popupWindow);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getWindowLayoutType(@NonNull PopupWindow popupWindow) {
        return PopupWindowCompat$Api23Impl.getWindowLayoutType(popupWindow);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setOverlapAnchor(@NonNull PopupWindow popupWindow, boolean z8) {
        PopupWindowCompat$Api23Impl.setOverlapAnchor(popupWindow, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setWindowLayoutType(@NonNull PopupWindow popupWindow, int i9) {
        PopupWindowCompat$Api23Impl.setWindowLayoutType(popupWindow, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void showAsDropDown(@NonNull PopupWindow popupWindow, @NonNull View view, int i9, int i10, int i11) {
        popupWindow.showAsDropDown(view, i9, i10, i11);
    }
}

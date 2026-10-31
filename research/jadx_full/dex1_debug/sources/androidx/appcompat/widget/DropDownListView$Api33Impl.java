package androidx.appcompat.widget;

import android.widget.AbsListView;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(33)
public class DropDownListView$Api33Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private DropDownListView$Api33Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean isSelectedChildViewEnabled(AbsListView absListView) {
        return absListView.isSelectedChildViewEnabled();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setSelectedChildViewEnabled(AbsListView absListView, boolean z8) {
        absListView.setSelectedChildViewEnabled(z8);
    }
}

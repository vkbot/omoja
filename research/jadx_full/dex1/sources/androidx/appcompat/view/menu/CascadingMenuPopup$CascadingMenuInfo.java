package androidx.appcompat.view.menu;

import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.MenuPopupWindow;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CascadingMenuPopup$CascadingMenuInfo {
    public final MenuBuilder menu;
    public final int position;
    public final MenuPopupWindow window;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CascadingMenuPopup$CascadingMenuInfo(@NonNull MenuPopupWindow menuPopupWindow, @NonNull MenuBuilder menuBuilder, int i9) {
        this.window = menuPopupWindow;
        this.menu = menuBuilder;
        this.position = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ListView getListView() {
        return this.window.getListView();
    }
}

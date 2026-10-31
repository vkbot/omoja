package androidx.appcompat.view;

import android.view.KeyboardShortcutGroup;
import android.view.Menu;
import android.view.Window$Callback;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(24)
public class WindowCallbackWrapper$Api24Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private WindowCallbackWrapper$Api24Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void onProvideKeyboardShortcuts(Window$Callback window$Callback, List<KeyboardShortcutGroup> list, Menu menu, int i9) {
        window$Callback.onProvideKeyboardShortcuts(list, menu, i9);
    }
}

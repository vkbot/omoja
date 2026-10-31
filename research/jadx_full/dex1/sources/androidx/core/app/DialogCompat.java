package androidx.core.app;

import android.app.Dialog;
import android.os.Build$VERSION;
import android.view.View;
import androidx.annotation.NonNull;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DialogCompat {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private DialogCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static View requireViewById(@NonNull Dialog dialog, int i9) {
        if (Build$VERSION.SDK_INT >= 28) {
            return (View) DialogCompat$Api28Impl.requireViewById(dialog, i9);
        }
        View viewFindViewById = dialog.findViewById(i9);
        if (viewFindViewById != null) {
            return viewFindViewById;
        }
        i.k("ID does not reference a View inside this Dialog");
        return null;
    }
}

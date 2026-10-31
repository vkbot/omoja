package androidx.appcompat.widget;

import android.content.Context;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ActionBarOverlayLayout$NoSystemUiLayoutFlagView extends View {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActionBarOverlayLayout$NoSystemUiLayoutFlagView(Context context) {
        super(context);
        setWillNotDraw(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public int getWindowSystemUiVisibility() {
        return 0;
    }
}

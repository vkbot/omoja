package androidx.appcompat.graphics.drawable;

import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$ConstantState;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public class DrawableContainerCompat$Api21Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private DrawableContainerCompat$Api21Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean canApplyTheme(Drawable$ConstantState drawable$ConstantState) {
        return drawable$ConstantState.canApplyTheme();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void getOutline(Drawable drawable, Outline outline) {
        drawable.getOutline(outline);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Resources getResources(Resources$Theme resources$Theme) {
        return resources$Theme.getResources();
    }
}

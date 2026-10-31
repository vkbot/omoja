package androidx.transition;

import android.os.Build$VERSION;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(23)
class ViewUtilsApi23 extends ViewUtilsApi22 {
    private static boolean sTryHiddenSetTransitionVisibility = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.ViewUtilsApi19
    public void setTransitionVisibility(@NonNull View view, int i9) {
        if (Build$VERSION.SDK_INT == 28) {
            super.setTransitionVisibility(view, i9);
        } else if (sTryHiddenSetTransitionVisibility) {
            try {
                ViewUtilsApi23$Api29Impl.setTransitionVisibility(view, i9);
            } catch (NoSuchMethodError unused) {
                sTryHiddenSetTransitionVisibility = false;
            }
        }
    }
}

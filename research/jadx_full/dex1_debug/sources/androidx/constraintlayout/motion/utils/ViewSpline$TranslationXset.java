package androidx.constraintlayout.motion.utils;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewSpline$TranslationXset extends ViewSpline {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.utils.ViewSpline
    public void setProperty(View view, float f8) {
        view.setTranslationX(get(f8));
    }
}

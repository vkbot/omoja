package androidx.transition;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class Slide$CalculateSlideHorizontal implements Slide$CalculateSlide {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Slide$CalculateSlideHorizontal() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Slide$CalculateSlide
    public float getGoneY(ViewGroup viewGroup, View view) {
        return view.getTranslationY();
    }

    public /* synthetic */ Slide$CalculateSlideHorizontal(Slide$1 slide$1) {
        this();
    }
}

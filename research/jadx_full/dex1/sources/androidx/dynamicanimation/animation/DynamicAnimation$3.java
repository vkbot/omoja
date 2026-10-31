package androidx.dynamicanimation.animation;

import android.view.View;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DynamicAnimation$3 extends DynamicAnimation$ViewProperty {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DynamicAnimation$3(String str) {
        super(str, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
    public /* bridge */ /* synthetic */ float getValue(View view) {
        return getValue2(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, float] */
    @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
    public /* bridge */ /* synthetic */ void setValue(View view, float f8) {
        setValue2(view, f8);
    }

    /* JADX INFO: renamed from: setValue, reason: avoid collision after fix types in other method */
    public void setValue2(View view, float f8) {
        ViewCompat.setTranslationZ(view, f8);
    }

    /* JADX INFO: renamed from: getValue, reason: avoid collision after fix types in other method */
    public float getValue2(View view) {
        return ViewCompat.getTranslationZ(view);
    }
}

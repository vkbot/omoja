package androidx.transition;

import android.animation.TypeEvaluator;
import android.graphics.Rect;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class RectEvaluator implements TypeEvaluator<Rect> {
    private Rect mRect;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RectEvaluator(Rect rect) {
        this.mRect = rect;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: evaluate, reason: avoid collision after fix types in other method */
    public Rect evaluate2(float f8, Rect rect, Rect rect2) {
        int i9 = rect.left;
        int i10 = i9 + ((int) ((rect2.left - i9) * f8));
        int i11 = rect.top;
        int i12 = i11 + ((int) ((rect2.top - i11) * f8));
        int i13 = rect.right;
        int i14 = i13 + ((int) ((rect2.right - i13) * f8));
        int i15 = rect.bottom;
        int i16 = i15 + ((int) ((rect2.bottom - i15) * f8));
        Rect rect3 = this.mRect;
        if (rect3 == null) {
            return new Rect(i10, i12, i14, i16);
        }
        rect3.set(i10, i12, i14, i16);
        return this.mRect;
    }

    public RectEvaluator() {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [float, java.lang.Object, java.lang.Object] */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.animation.TypeEvaluator
    public /* bridge */ /* synthetic */ Rect evaluate(float f8, Rect rect, Rect rect2) {
        return evaluate2(f8, rect, rect2);
    }
}

package p182r3;

import android.animation.FloatEvaluator;
import android.animation.TypeEvaluator;

/* JADX INFO: renamed from: r3.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3099f implements TypeEvaluator {

    /* JADX INFO: renamed from: a */
    public final FloatEvaluator f8824a = new FloatEvaluator();

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f8, Object obj, Object obj2) {
        float fFloatValue = this.f8824a.evaluate(f8, (Number) obj, (Number) obj2).floatValue();
        if (fFloatValue < 0.1f) {
            fFloatValue = 0.0f;
        }
        return Float.valueOf(fFloatValue);
    }
}

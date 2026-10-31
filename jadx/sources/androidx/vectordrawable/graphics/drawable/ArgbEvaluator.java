package androidx.vectordrawable.graphics.drawable;

import ai.onnxruntime.AbstractC0074a;
import android.animation.TypeEvaluator;
import androidx.annotation.RestrictTo;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
public class ArgbEvaluator implements TypeEvaluator {
    private static final ArgbEvaluator sInstance = new ArgbEvaluator();

    public static ArgbEvaluator getInstance() {
        return sInstance;
    }

    @Override // android.animation.TypeEvaluator
    public Object evaluate(float f8, Object obj, Object obj2) {
        int iIntValue = ((Integer) obj).intValue();
        float f10 = ((iIntValue >> 24) & 255) / 255.0f;
        int iIntValue2 = ((Integer) obj2).intValue();
        float f11 = ((iIntValue2 >> 24) & 255) / 255.0f;
        float fPow = (float) Math.pow(((iIntValue >> 16) & 255) / 255.0f, 2.2d);
        float fPow2 = (float) Math.pow(((iIntValue >> 8) & 255) / 255.0f, 2.2d);
        float fPow3 = (float) Math.pow((iIntValue & 255) / 255.0f, 2.2d);
        float fPow4 = (float) Math.pow(((iIntValue2 >> 16) & 255) / 255.0f, 2.2d);
        float fPow5 = (float) Math.pow(((iIntValue2 >> 8) & 255) / 255.0f, 2.2d);
        float fPow6 = (float) Math.pow((iIntValue2 & 255) / 255.0f, 2.2d);
        float fM151b = AbstractC0074a.m151b(f11, f10, f8, f10);
        float fM151b2 = AbstractC0074a.m151b(fPow4, fPow, f8, fPow);
        float fM151b3 = AbstractC0074a.m151b(fPow5, fPow2, f8, fPow2);
        float fM151b4 = AbstractC0074a.m151b(fPow6, fPow3, f8, fPow3);
        float fPow7 = ((float) Math.pow(fM151b2, 0.45454545454545453d)) * 255.0f;
        float fPow8 = ((float) Math.pow(fM151b3, 0.45454545454545453d)) * 255.0f;
        return Integer.valueOf(Math.round(((float) Math.pow(fM151b4, 0.45454545454545453d)) * 255.0f) | (Math.round(fPow7) << 16) | (Math.round(fM151b * 255.0f) << 24) | (Math.round(fPow8) << 8));
    }
}

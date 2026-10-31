package p258z3;

import ai.onnxruntime.AbstractC0074a;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.fragment.app.C0566h;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: renamed from: z3.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3724j extends FloatPropertyCompat {

    /* JADX INFO: renamed from: a */
    public final int f11038a;

    public C3724j(int i10) {
        super(AbstractC0074a.m154e(i10, "cornerSizeAtIndex"));
        this.f11038a = i10;
    }

    @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
    public final float getValue(Object obj) {
        float[] fArr = ((C3725k) obj).f11044D;
        if (fArr != null) {
            return fArr[this.f11038a];
        }
        return 0.0f;
    }

    @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
    public final void setValue(Object obj, float f8) {
        C3725k c3725k = (C3725k) obj;
        float[] fArr = c3725k.f11044D;
        if (fArr != null) {
            int i10 = this.f11038a;
            if (fArr[i10] != f8) {
                fArr[i10] = f8;
                InterfaceC3723i interfaceC3723i = c3725k.f11046F;
                if (interfaceC3723i != null) {
                    float fM5940i = c3725k.m5940i();
                    MaterialButton materialButton = (MaterialButton) ((C0566h) interfaceC3723i).f453c;
                    int i11 = (int) (fM5940i * 0.11f);
                    if (materialButton.f2207v != i11) {
                        materialButton.f2207v = i11;
                        materialButton.m1781j();
                        materialButton.invalidate();
                    }
                }
                c3725k.invalidateSelf();
            }
        }
    }
}

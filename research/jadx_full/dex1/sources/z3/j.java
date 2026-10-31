package z3;

import androidx.dynamicanimation.animation.FloatPropertyCompat;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j extends FloatPropertyCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6227a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(int i9) {
        super(ai.onnxruntime.a.e(i9, "cornerSizeAtIndex"));
        this.f6227a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
    public final float getValue(Object obj) {
        float[] fArr = ((k) obj).D;
        if (fArr != null) {
            return fArr[this.f6227a];
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
    public final void setValue(Object obj, float f8) {
        k kVar = (k) obj;
        float[] fArr = kVar.D;
        if (fArr != null) {
            int i9 = this.f6227a;
            if (fArr[i9] != f8) {
                fArr[i9] = f8;
                i iVar = kVar.F;
                if (iVar != null) {
                    float fI = kVar.i();
                    MaterialButton materialButton = (MaterialButton) ((androidx.fragment.app.h) iVar).c;
                    int i10 = (int) (fI * 0.11f);
                    if (materialButton.f1200v != i10) {
                        materialButton.f1200v = i10;
                        materialButton.j();
                        materialButton.invalidate();
                    }
                }
                kVar.invalidateSelf();
            }
        }
    }
}

package p258z3;

import ai.onnxruntime.AbstractC0074a;
import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: renamed from: z3.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3726l implements InterfaceC3717d {

    /* JADX INFO: renamed from: a */
    public final float f11072a;

    public C3726l(float f8) {
        this.f11072a = f8;
    }

    @Override // p258z3.InterfaceC3717d
    /* JADX INFO: renamed from: a */
    public final float mo5920a(RectF rectF) {
        return Math.min(rectF.width(), rectF.height()) * this.f11072a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C3726l) && this.f11072a == ((C3726l) obj).f11072a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f11072a)});
    }

    public final String toString() {
        return AbstractC0074a.m164o(new StringBuilder(), "%", (int) (this.f11072a * 100.0f));
    }
}

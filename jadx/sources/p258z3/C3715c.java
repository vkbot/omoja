package p258z3;

import android.graphics.RectF;
import androidx.core.math.MathUtils;
import java.util.Arrays;

/* JADX INFO: renamed from: z3.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3715c implements InterfaceC3717d {

    /* JADX INFO: renamed from: a */
    public final float f11012a;

    public C3715c(float f8) {
        this.f11012a = f8;
    }

    @Override // p258z3.InterfaceC3717d
    /* JADX INFO: renamed from: a */
    public final float mo5920a(RectF rectF) {
        return MathUtils.clamp(this.f11012a, 0.0f, Math.min(rectF.width() / 2.0f, rectF.height() / 2.0f));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C3715c) && this.f11012a == ((C3715c) obj).f11012a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f11012a)});
    }
}

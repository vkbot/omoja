package p258z3;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: renamed from: z3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3711a implements InterfaceC3717d {

    /* JADX INFO: renamed from: a */
    public final float f10997a;

    public C3711a(float f8) {
        this.f10997a = f8;
    }

    @Override // p258z3.InterfaceC3717d
    /* JADX INFO: renamed from: a */
    public final float mo5920a(RectF rectF) {
        return this.f10997a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C3711a) && this.f10997a == ((C3711a) obj).f10997a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f10997a)});
    }

    public final String toString() {
        return this.f10997a + "px";
    }
}

package p258z3;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: renamed from: z3.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3713b implements InterfaceC3717d {

    /* JADX INFO: renamed from: a */
    public final InterfaceC3717d f11002a;

    /* JADX INFO: renamed from: b */
    public final float f11003b;

    public C3713b(float f8, InterfaceC3717d interfaceC3717d) {
        while (interfaceC3717d instanceof C3713b) {
            interfaceC3717d = ((C3713b) interfaceC3717d).f11002a;
            f8 += ((C3713b) interfaceC3717d).f11003b;
        }
        this.f11002a = interfaceC3717d;
        this.f11003b = f8;
    }

    @Override // p258z3.InterfaceC3717d
    /* JADX INFO: renamed from: a */
    public final float mo5920a(RectF rectF) {
        return Math.max(0.0f, this.f11002a.mo5920a(rectF) + this.f11003b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3713b)) {
            return false;
        }
        C3713b c3713b = (C3713b) obj;
        return this.f11002a.equals(c3713b.f11002a) && this.f11003b == c3713b.f11003b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f11002a, Float.valueOf(this.f11003b)});
    }
}

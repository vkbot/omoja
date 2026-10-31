package p096i9;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import p076g9.InterfaceC1633e;

/* JADX INFO: renamed from: i9.h0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1826h0 extends AbstractC1821f1 {

    /* JADX INFO: renamed from: l */
    public final boolean f4774l;

    public C1826h0(String str, C1829i0 c1829i0) {
        super(str, c1829i0, 1);
        this.f4774l = true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1826h0) {
            InterfaceC1633e interfaceC1633e = (InterfaceC1633e) obj;
            if (Intrinsics.areEqual(this.f4757a, interfaceC1633e.mo2717a())) {
                C1826h0 c1826h0 = (C1826h0) obj;
                if (c1826h0.f4774l && Arrays.equals((InterfaceC1633e[]) this.f4766j.getValue(), (InterfaceC1633e[]) c1826h0.f4766j.getValue())) {
                    int iMo2719d = interfaceC1633e.mo2719d();
                    int i10 = this.f4759c;
                    if (i10 == iMo2719d) {
                        for (int i11 = 0; i11 < i10; i11++) {
                            if (Intrinsics.areEqual(mo2721f(i11).mo2717a(), interfaceC1633e.mo2721f(i11).mo2717a()) && Intrinsics.areEqual(mo2721f(i11).getKind(), interfaceC1633e.mo2721f(i11).getKind())) {
                            }
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // p096i9.AbstractC1821f1
    public final int hashCode() {
        return super.hashCode() * 31;
    }

    @Override // p096i9.AbstractC1821f1, p076g9.InterfaceC1633e
    public final boolean isInline() {
        return this.f4774l;
    }
}

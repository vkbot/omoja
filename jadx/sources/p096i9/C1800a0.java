package p096i9;

import com.bumptech.glide.AbstractC1031d;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import p076g9.C1631c;
import p076g9.C1635g;
import p076g9.C1636h;
import p076g9.InterfaceC1633e;

/* JADX INFO: renamed from: i9.a0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1800a0 extends AbstractC1821f1 {

    /* JADX INFO: renamed from: l */
    public final C1631c f4719l;

    /* JADX INFO: renamed from: m */
    public final Lazy f4720m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1800a0(String str, int i10) {
        super(str, null, i10);
        str.getClass();
        this.f4719l = C1631c.f4141f;
        this.f4720m = LazyKt.lazy(new C1879z(i10, str, this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof InterfaceC1633e)) {
            return false;
        }
        InterfaceC1633e interfaceC1633e = (InterfaceC1633e) obj;
        return interfaceC1633e.getKind() == C1631c.f4141f && Intrinsics.areEqual(this.f4757a, interfaceC1633e.mo2717a()) && Intrinsics.areEqual(AbstractC1813d1.m2916b(this), AbstractC1813d1.m2916b(interfaceC1633e));
    }

    @Override // p096i9.AbstractC1821f1, p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: f */
    public final InterfaceC1633e mo2721f(int i10) {
        return ((InterfaceC1633e[]) this.f4720m.getValue())[i10];
    }

    @Override // p096i9.AbstractC1821f1, p076g9.InterfaceC1633e
    public final AbstractC1031d getKind() {
        return this.f4719l;
    }

    @Override // p096i9.AbstractC1821f1
    public final int hashCode() {
        int iHashCode = this.f4757a.hashCode();
        C1635g c1635g = new C1635g(this);
        int iHashCode2 = 1;
        while (c1635g.hasNext()) {
            int i10 = iHashCode2 * 31;
            String str = (String) c1635g.next();
            iHashCode2 = i10 + (str != null ? str.hashCode() : 0);
        }
        return (iHashCode * 31) + iHashCode2;
    }

    @Override // p096i9.AbstractC1821f1
    public final String toString() {
        return CollectionsKt___CollectionsKt.joinToString$default(new C1636h(this), ", ", this.f4757a + '(', ")", 0, null, null, 56, null);
    }
}

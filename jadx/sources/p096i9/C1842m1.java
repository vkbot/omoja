package p096i9;

import com.bumptech.glide.AbstractC1031d;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import p076g9.InterfaceC1633e;

/* JADX INFO: renamed from: i9.m1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1842m1 implements InterfaceC1633e, InterfaceC1837l {

    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e f4794a;

    /* JADX INFO: renamed from: b */
    public final String f4795b;

    /* JADX INFO: renamed from: c */
    public final Set f4796c;

    public C1842m1(InterfaceC1633e interfaceC1633e) {
        interfaceC1633e.getClass();
        this.f4794a = interfaceC1633e;
        this.f4795b = interfaceC1633e.mo2717a() + '?';
        this.f4796c = AbstractC1813d1.m2916b(interfaceC1633e);
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: a */
    public final String mo2717a() {
        return this.f4795b;
    }

    @Override // p096i9.InterfaceC1837l
    /* JADX INFO: renamed from: b */
    public final Set mo2723b() {
        return this.f4796c;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: c */
    public final boolean mo2718c() {
        return true;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: d */
    public final int mo2719d() {
        return this.f4794a.mo2719d();
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: e */
    public final String mo2720e(int i10) {
        return this.f4794a.mo2720e(i10);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1842m1) {
            return Intrinsics.areEqual(this.f4794a, ((C1842m1) obj).f4794a);
        }
        return false;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: f */
    public final InterfaceC1633e mo2721f(int i10) {
        return this.f4794a.mo2721f(i10);
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: g */
    public final boolean mo2722g(int i10) {
        return this.f4794a.mo2722g(i10);
    }

    @Override // p076g9.InterfaceC1633e
    public final AbstractC1031d getKind() {
        return this.f4794a.getKind();
    }

    public final int hashCode() {
        return this.f4794a.hashCode() * 31;
    }

    @Override // p076g9.InterfaceC1633e
    public final boolean isInline() {
        return this.f4794a.isInline();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4794a);
        sb.append('?');
        return sb.toString();
    }
}

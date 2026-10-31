package p096i9;

import com.bumptech.glide.AbstractC1031d;
import kotlin.jvm.internal.Intrinsics;
import p076g9.C1632d;
import p076g9.InterfaceC1633e;

/* JADX INFO: renamed from: i9.j1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1833j1 implements InterfaceC1633e {

    /* JADX INFO: renamed from: a */
    public final String f4783a;

    /* JADX INFO: renamed from: b */
    public final C1632d f4784b;

    public C1833j1(String str, C1632d c1632d) {
        this.f4783a = str;
        this.f4784b = c1632d;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: a */
    public final String mo2717a() {
        return this.f4783a;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: c */
    public final boolean mo2718c() {
        return false;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: d */
    public final int mo2719d() {
        return 0;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: e */
    public final String mo2720e(int i10) {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1833j1)) {
            return false;
        }
        C1833j1 c1833j1 = (C1833j1) obj;
        return Intrinsics.areEqual(this.f4783a, c1833j1.f4783a) && Intrinsics.areEqual(this.f4784b, c1833j1.f4784b);
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: f */
    public final InterfaceC1633e mo2721f(int i10) {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: g */
    public final boolean mo2722g(int i10) {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // p076g9.InterfaceC1633e
    public final AbstractC1031d getKind() {
        return this.f4784b;
    }

    public final int hashCode() {
        return (this.f4784b.hashCode() * 31) + this.f4783a.hashCode();
    }

    @Override // p076g9.InterfaceC1633e
    public final boolean isInline() {
        return false;
    }

    public final String toString() {
        return "PrimitiveDescriptor(" + this.f4783a + ')';
    }
}

package p096i9;

import ai.onnxruntime.AbstractC0074a;
import com.bumptech.glide.AbstractC1031d;
import kotlin.jvm.internal.Intrinsics;
import p076g9.C1638j;
import p076g9.InterfaceC1633e;
import p099j1.C1929i;
import p130l9.C2237i;

/* JADX INFO: renamed from: i9.f0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1820f0 implements InterfaceC1633e {

    /* JADX INFO: renamed from: a */
    public final String f4754a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC1633e f4755b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC1633e f4756c;

    public C1820f0(String str, InterfaceC1633e interfaceC1633e, InterfaceC1633e interfaceC1633e2) {
        this.f4754a = str;
        this.f4755b = interfaceC1633e;
        this.f4756c = interfaceC1633e2;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: a */
    public final String mo2717a() {
        return this.f4754a;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: c */
    public final boolean mo2718c() {
        return false;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: d */
    public final int mo2719d() {
        return 2;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: e */
    public final String mo2720e(int i10) {
        return String.valueOf(i10);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1820f0)) {
            return false;
        }
        C1820f0 c1820f0 = (C1820f0) obj;
        return Intrinsics.areEqual(this.f4754a, c1820f0.f4754a) && Intrinsics.areEqual(this.f4755b, c1820f0.f4755b) && Intrinsics.areEqual(this.f4756c, c1820f0.f4756c);
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: f */
    public final InterfaceC1633e mo2721f(int i10) {
        if (i10 < 0) {
            C2237i.m3597d(AbstractC0074a.m165p(AbstractC0074a.m166q(i10, "Illegal index ", ", "), this.f4754a, " expects only non-negative indices"));
            return null;
        }
        int i11 = i10 % 2;
        if (i11 == 0) {
            return this.f4755b;
        }
        if (i11 == 1) {
            return this.f4756c;
        }
        C1929i.m3030l("Unreached");
        return null;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: g */
    public final boolean mo2722g(int i10) {
        if (i10 >= 0) {
            return false;
        }
        C2237i.m3597d(AbstractC0074a.m165p(AbstractC0074a.m166q(i10, "Illegal index ", ", "), this.f4754a, " expects only non-negative indices"));
        return false;
    }

    @Override // p076g9.InterfaceC1633e
    public final AbstractC1031d getKind() {
        return C1638j.f4169f;
    }

    public final int hashCode() {
        return this.f4756c.hashCode() + ((this.f4755b.hashCode() + (this.f4754a.hashCode() * 31)) * 31);
    }

    @Override // p076g9.InterfaceC1633e
    public final boolean isInline() {
        return false;
    }

    public final String toString() {
        return this.f4754a + '(' + this.f4755b + ", " + this.f4756c + ')';
    }
}

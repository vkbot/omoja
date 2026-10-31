package p076g9;

import com.bumptech.glide.AbstractC1031d;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.text.Typography;

/* JADX INFO: renamed from: g9.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1630b implements InterfaceC1633e {

    /* JADX INFO: renamed from: a */
    public final C1634f f4136a;

    /* JADX INFO: renamed from: b */
    public final KClass f4137b;

    /* JADX INFO: renamed from: c */
    public final String f4138c;

    public C1630b(C1634f c1634f, KClass kClass) {
        kClass.getClass();
        this.f4136a = c1634f;
        this.f4137b = kClass;
        this.f4138c = c1634f.f4151a + Typography.less + kClass.getSimpleName() + Typography.greater;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: a */
    public final String mo2717a() {
        return this.f4138c;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: c */
    public final boolean mo2718c() {
        return false;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: d */
    public final int mo2719d() {
        return this.f4136a.f4153c;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: e */
    public final String mo2720e(int i10) {
        return this.f4136a.f4156f[i10];
    }

    public final boolean equals(Object obj) {
        C1630b c1630b = obj instanceof C1630b ? (C1630b) obj : null;
        return c1630b != null && Intrinsics.areEqual(this.f4136a, c1630b.f4136a) && Intrinsics.areEqual(c1630b.f4137b, this.f4137b);
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: f */
    public final InterfaceC1633e mo2721f(int i10) {
        return this.f4136a.f4157g[i10];
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: g */
    public final boolean mo2722g(int i10) {
        return this.f4136a.f4159i[i10];
    }

    @Override // p076g9.InterfaceC1633e
    public final AbstractC1031d getKind() {
        return this.f4136a.f4152b;
    }

    public final int hashCode() {
        return this.f4138c.hashCode() + (this.f4137b.hashCode() * 31);
    }

    @Override // p076g9.InterfaceC1633e
    public final boolean isInline() {
        return false;
    }

    public final String toString() {
        return "ContextDescriptor(kClass: " + this.f4137b + ", original: " + this.f4136a + ')';
    }
}

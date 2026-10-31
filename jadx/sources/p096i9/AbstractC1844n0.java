package p096i9;

import ai.onnxruntime.AbstractC0074a;
import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1031d;
import kotlin.jvm.internal.Intrinsics;
import p076g9.C1638j;
import p076g9.InterfaceC1633e;

/* JADX INFO: renamed from: i9.n0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC1844n0 implements InterfaceC1633e {

    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e f4799a;

    public AbstractC1844n0(InterfaceC1633e interfaceC1633e) {
        this.f4799a = interfaceC1633e;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: c */
    public final boolean mo2718c() {
        return false;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: d */
    public final int mo2719d() {
        return 1;
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
        if (!(obj instanceof AbstractC1844n0)) {
            return false;
        }
        AbstractC1844n0 abstractC1844n0 = (AbstractC1844n0) obj;
        return Intrinsics.areEqual(this.f4799a, abstractC1844n0.f4799a) && Intrinsics.areEqual(mo2717a(), abstractC1844n0.mo2717a());
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: f */
    public final InterfaceC1633e mo2721f(int i10) {
        if (i10 >= 0) {
            return this.f4799a;
        }
        C0674b.m845l(AbstractC0074a.m166q(i10, "Illegal index ", ", "), mo2717a(), " expects only non-negative indices");
        return null;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: g */
    public final boolean mo2722g(int i10) {
        if (i10 >= 0) {
            return false;
        }
        C0674b.m845l(AbstractC0074a.m166q(i10, "Illegal index ", ", "), mo2717a(), " expects only non-negative indices");
        return false;
    }

    @Override // p076g9.InterfaceC1633e
    public final AbstractC1031d getKind() {
        return C1638j.f4168e;
    }

    public final int hashCode() {
        return mo2717a().hashCode() + (this.f4799a.hashCode() * 31);
    }

    @Override // p076g9.InterfaceC1633e
    public final boolean isInline() {
        return false;
    }

    public final String toString() {
        return mo2717a() + '(' + this.f4799a + ')';
    }
}

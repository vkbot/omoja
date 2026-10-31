package p243x8;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0075b;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Reflection;
import p023b8.InterfaceC0930d;
import p099j1.C1929i;
import p130l9.C2237i;
import p224v8.InterfaceC3427u1;

/* JADX INFO: renamed from: x8.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3609m extends C3598b {

    /* JADX INFO: renamed from: l */
    public final int f10698l;

    public C3609m(int i10, int i11) {
        super(i10);
        this.f10698l = i11;
        if (i11 == 1) {
            C0075b.m197v(Reflection.getOrCreateKotlinClass(C3598b.class).getSimpleName(), "This implementation does not support suspension for senders, use ", " instead");
            throw null;
        }
        if (i10 >= 1) {
            return;
        }
        C2237i.m3597d(AbstractC0074a.m155f(i10, "Buffered channel capacity must be at least 1, but ", " was specified"));
        throw null;
    }

    /* JADX INFO: renamed from: B */
    public final Object m5759B(Object obj, boolean z9) {
        if (this.f10698l == 3) {
            Object objMo5732e = super.mo5732e(obj);
            return (!(objMo5732e instanceof C3605i) || (objMo5732e instanceof C3604h)) ? objMo5732e : Unit.INSTANCE;
        }
        InterfaceC0930d interfaceC0930d = AbstractC3600d.f10674d;
        C3607k c3607k = (C3607k) C3598b.f10664g.get(this);
        while (true) {
            long andIncrement = C3598b.f10660c.getAndIncrement(this);
            long j10 = 1152921504606846975L & andIncrement;
            boolean zM5743q = m5743q(andIncrement, false);
            int i10 = AbstractC3600d.f10672b;
            long j11 = i10;
            long j12 = j10 / j11;
            int i11 = (int) (j10 % j11);
            if (c3607k.f149d != j12) {
                C3607k c3607kM5725a = C3598b.m5725a(this, j12, c3607k);
                if (c3607kM5725a != null) {
                    c3607k = c3607kM5725a;
                } else if (zM5743q) {
                    return new C3604h(m5741n());
                }
            }
            int iM5727d = C3598b.m5727d(this, c3607k, i11, obj, j10, interfaceC0930d, zM5743q);
            if (iM5727d == 0) {
                c3607k.m109a();
                return Unit.INSTANCE;
            }
            if (iM5727d == 1) {
                return Unit.INSTANCE;
            }
            if (iM5727d == 2) {
                if (zM5743q) {
                    c3607k.m141h();
                    return new C3604h(m5741n());
                }
                InterfaceC3427u1 interfaceC3427u1 = interfaceC0930d instanceof InterfaceC3427u1 ? (InterfaceC3427u1) interfaceC0930d : null;
                if (interfaceC3427u1 != null) {
                    interfaceC3427u1.mo2359b(c3607k, i11 + i10);
                }
                m5737j((c3607k.f149d * j11) + ((long) i11));
                return Unit.INSTANCE;
            }
            if (iM5727d == 3) {
                C1929i.m3030l("unexpected");
                return null;
            }
            if (iM5727d == 4) {
                if (j10 < C3598b.f10661d.get(this)) {
                    c3607k.m109a();
                }
                return new C3604h(m5741n());
            }
            if (iM5727d == 5) {
                c3607k.m109a();
            }
        }
    }

    @Override // p243x8.C3598b, p243x8.InterfaceC3614r
    /* JADX INFO: renamed from: e */
    public final Object mo5732e(Object obj) {
        return m5759B(obj, false);
    }

    @Override // p243x8.C3598b, p243x8.InterfaceC3614r
    /* JADX INFO: renamed from: f */
    public final Object mo5733f(Object obj, Continuation continuation) throws Throwable {
        if (m5759B(obj, true) instanceof C3604h) {
            throw m5741n();
        }
        return Unit.INSTANCE;
    }

    @Override // p243x8.C3598b
    /* JADX INFO: renamed from: s */
    public final boolean mo5745s() {
        return this.f10698l == 2;
    }
}

package p062f5;

import com.google.protobuf.InterfaceC1200x0;
import p023b8.InterfaceC0928b;
import p045d8.AbstractC1314b;
import p095i8.C1779d;
import p095i8.C1793r;
import p095i8.CallableC1787l;
import p242x7.AbstractC3588e;
import p250y5.C3648c;
import p258z3.C3720f;

/* JADX INFO: renamed from: f5.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1565o {

    /* JADX INFO: renamed from: c */
    public static final C3648c f3849c = C3648c.m5835p();

    /* JADX INFO: renamed from: a */
    public final C1575y f3850a;

    /* JADX INFO: renamed from: b */
    public AbstractC3588e f3851b = C1779d.f4673b;

    public C1565o(C1575y c1575y) {
        this.f3850a = c1575y;
    }

    /* JADX INFO: renamed from: a */
    public final AbstractC3588e m2645a() {
        AbstractC3588e abstractC3588e = this.f3851b;
        InterfaceC1200x0 interfaceC1200x0M5837r = C3648c.m5837r();
        C1575y c1575y = this.f3850a;
        c1575y.getClass();
        CallableC1787l callableC1787l = new CallableC1787l(new CallableC1574x(0, c1575y, interfaceC1200x0M5837r));
        final int i10 = 0;
        InterfaceC0928b interfaceC0928b = new InterfaceC0928b(this) { // from class: f5.n

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C1565o f3848c;

            {
                this.f3848c = this;
            }

            @Override // p023b8.InterfaceC0928b
            public final void accept(Object obj) {
                switch (i10) {
                    case 0:
                        this.f3848c.f3851b = AbstractC3588e.m5715a((C3648c) obj);
                        break;
                    default:
                        this.f3848c.f3851b = C1779d.f4673b;
                        break;
                }
            }
        };
        C3720f c3720f = AbstractC1314b.f3136d;
        AbstractC3588e abstractC3588eM5718e = abstractC3588e.m5718e(new C1793r(callableC1787l, interfaceC0928b, c3720f));
        final int i11 = 1;
        return new C1793r(abstractC3588eM5718e, c3720f, new InterfaceC0928b(this) { // from class: f5.n

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C1565o f3848c;

            {
                this.f3848c = this;
            }

            @Override // p023b8.InterfaceC0928b
            public final void accept(Object obj) {
                switch (i11) {
                    case 0:
                        this.f3848c.f3851b = AbstractC3588e.m5715a((C3648c) obj);
                        break;
                    default:
                        this.f3848c.f3851b = C1779d.f4673b;
                        break;
                }
            }
        });
    }
}

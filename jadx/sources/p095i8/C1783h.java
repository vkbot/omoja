package p095i8;

import android.support.v4.media.C0090h;
import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.atomic.AtomicReference;
import p009a8.C0031c;
import p016b1.AbstractC0880u;
import p033c8.EnumC1011a;
import p045d8.AbstractC1314b;
import p045d8.CallableC1313a;
import p062f5.C1548f;
import p242x7.AbstractC3588e;
import p242x7.AbstractC3595l;
import p242x7.InterfaceC3584a;
import p242x7.InterfaceC3589f;
import p242x7.InterfaceC3596m;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: i8.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1783h extends AtomicReference implements InterfaceC3589f, InterfaceC3584a, InterfaceC3762a, InterfaceC3596m {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4683b;

    /* JADX INFO: renamed from: c */
    public final Object f4684c;

    /* JADX INFO: renamed from: d */
    public final Object f4685d;

    public /* synthetic */ C1783h(int i10, Object obj, Object obj2) {
        this.f4683b = i10;
        this.f4684c = obj;
        this.f4685d = obj2;
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: a */
    public void mo237a() {
        switch (this.f4683b) {
            case 0:
                ((InterfaceC3584a) this.f4684c).mo237a();
                break;
            default:
                InterfaceC3762a interfaceC3762a = (InterfaceC3762a) get();
                if (interfaceC3762a != EnumC1011a.f1013b && compareAndSet(interfaceC3762a, null)) {
                    ((AbstractC3588e) this.f4685d).m5717c(new C0090h(this.f4684c, (Object) this, false, 17));
                    break;
                }
                break;
        }
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: b */
    public final void mo238b(InterfaceC3762a interfaceC3762a) {
        switch (this.f4683b) {
            case 0:
                EnumC1011a.m1217c(this, interfaceC3762a);
                break;
            case 1:
                if (EnumC1011a.m1218d(this, interfaceC3762a)) {
                    ((InterfaceC3589f) this.f4684c).mo238b(this);
                }
                break;
            default:
                if (EnumC1011a.m1218d(this, interfaceC3762a)) {
                    ((InterfaceC3596m) this.f4684c).mo238b(this);
                }
                break;
        }
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: c */
    public final void mo239c(Object obj) {
        switch (this.f4683b) {
            case 0:
                try {
                    AbstractC0880u abstractC0880u = (AbstractC0880u) ((C1548f) this.f4685d).apply(obj);
                    if (!EnumC1011a.m1216b((InterfaceC3762a) get())) {
                        abstractC0880u.m1008A(this);
                    }
                } catch (Throwable th) {
                    AbstractC1031d.m1292v(th);
                    onError(th);
                    return;
                }
                break;
            case 1:
                ((InterfaceC3589f) this.f4684c).mo239c(obj);
                break;
            default:
                ((InterfaceC3596m) this.f4684c).mo239c(obj);
                break;
        }
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        switch (this.f4683b) {
            case 0:
                EnumC1011a.m1215a(this);
                break;
            case 1:
                EnumC1011a.m1215a(this);
                break;
            default:
                EnumC1011a.m1215a(this);
                break;
        }
    }

    @Override // p242x7.InterfaceC3589f
    public final void onError(Throwable th) {
        switch (this.f4683b) {
            case 0:
                ((InterfaceC3584a) this.f4684c).onError(th);
                break;
            case 1:
                ((InterfaceC3589f) this.f4684c).onError(th);
                break;
            default:
                InterfaceC3596m interfaceC3596m = (InterfaceC3596m) this.f4684c;
                try {
                    Object obj = ((CallableC1313a) this.f4685d).f3132c;
                    AbstractC1314b.m2356a(obj, "The nextFunction returned a null SingleSource.");
                    ((AbstractC3595l) obj).m5721a(new C0090h((Object) this, (Object) interfaceC3596m, false, 10));
                } catch (Throwable th2) {
                    AbstractC1031d.m1292v(th2);
                    interfaceC3596m.onError(new C0031c(th, th2));
                }
                break;
        }
    }
}

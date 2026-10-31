package p149n8;

import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p009a8.C0031c;
import p045d8.AbstractC1314b;
import p085h8.EnumC1695f0;
import p150n9.InterfaceC2561b;
import p158o8.EnumC2757f;
import p165p2.C2962e;
import p232w7.C3537c;
import p242x7.InterfaceC3587d;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: n8.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2558c extends AtomicReference implements InterfaceC3587d, InterfaceC2561b, InterfaceC3762a {

    /* JADX INFO: renamed from: b */
    public final C0674b f7076b;

    /* JADX INFO: renamed from: c */
    public final C2962e f7077c = AbstractC1314b.f3137e;

    /* JADX INFO: renamed from: d */
    public final C3537c f7078d = AbstractC1314b.f3135c;

    /* JADX INFO: renamed from: e */
    public final EnumC1695f0 f7079e = EnumC1695f0.f4385b;

    public C2558c(C0674b c0674b) {
        this.f7076b = c0674b;
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public final void mo2804a() {
        Object obj = get();
        EnumC2757f enumC2757f = EnumC2757f.f7924b;
        if (obj != enumC2757f) {
            lazySet(enumC2757f);
            try {
                this.f7078d.getClass();
            } catch (Throwable th) {
                AbstractC1031d.m1292v(th);
                AbstractC0000a.m18s(th);
            }
        }
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        EnumC2757f.m4276a(this);
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        ((InterfaceC2561b) get()).mo2811d(j10);
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        EnumC2757f.m4276a(this);
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        if (get() == EnumC2757f.f7924b) {
            return;
        }
        try {
            this.f7076b.getClass();
        } catch (Throwable th) {
            AbstractC1031d.m1292v(th);
            ((InterfaceC2561b) get()).cancel();
            onError(th);
        }
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: f */
    public final void mo2808f(InterfaceC2561b interfaceC2561b) {
        if (EnumC2757f.m4277b(this, interfaceC2561b)) {
            try {
                this.f7079e.accept(this);
            } catch (Throwable th) {
                AbstractC1031d.m1292v(th);
                interfaceC2561b.cancel();
                onError(th);
            }
        }
    }

    @Override // p242x7.InterfaceC3587d
    public final void onError(Throwable th) {
        Object obj = get();
        EnumC2757f enumC2757f = EnumC2757f.f7924b;
        if (obj == enumC2757f) {
            AbstractC0000a.m18s(th);
            return;
        }
        lazySet(enumC2757f);
        try {
            this.f7077c.accept(th);
        } catch (Throwable th2) {
            AbstractC1031d.m1292v(th2);
            AbstractC0000a.m18s(new C0031c(th, th2));
        }
    }
}

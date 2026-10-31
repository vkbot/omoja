package p085h8;

import java.util.concurrent.atomic.AtomicLong;
import p033c8.C1014d;
import p033c8.EnumC1011a;
import p050e3.C1461d;
import p150n9.InterfaceC2561b;
import p158o8.EnumC2757f;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1698h extends AtomicLong implements InterfaceC2561b {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3587d f4392b;

    /* JADX INFO: renamed from: c */
    public final C1014d f4393c = new C1014d(0);

    public AbstractC1698h(InterfaceC3587d interfaceC3587d) {
        this.f4392b = interfaceC3587d;
    }

    /* JADX INFO: renamed from: a */
    public final void m2821a() {
        C1014d c1014d = this.f4393c;
        if (c1014d.m1224c()) {
            return;
        }
        try {
            this.f4392b.mo2804a();
        } finally {
            c1014d.dispose();
        }
    }

    /* JADX INFO: renamed from: b */
    public final boolean m2822b(Throwable th) {
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        }
        C1014d c1014d = this.f4393c;
        if (c1014d.m1224c()) {
            return false;
        }
        try {
            this.f4392b.onError(th);
            return true;
        } finally {
            c1014d.dispose();
        }
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        C1014d c1014d = this.f4393c;
        c1014d.getClass();
        EnumC1011a.m1215a(c1014d);
        mo2824e();
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        if (EnumC2757f.m4278c(j10)) {
            C1461d.m2502a(this, j10);
            mo2823c();
        }
    }

    /* JADX INFO: renamed from: f */
    public boolean mo2825f(Throwable th) {
        return m2822b(th);
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public final String toString() {
        return getClass().getSimpleName() + "{" + super.toString() + "}";
    }

    /* JADX INFO: renamed from: c */
    public void mo2823c() {
    }

    /* JADX INFO: renamed from: e */
    public void mo2824e() {
    }
}

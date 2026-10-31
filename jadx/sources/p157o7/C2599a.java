package p157o7;

import com.bumptech.glide.manager.C1074t;
import java.io.IOException;
import p009a8.C0029a;
import p113k4.AbstractC2048g;
import p142n0.C2467b;
import p148n7.AbstractC2503e;
import p148n7.C2512h;
import p148n7.C2547v0;
import p155o4.AbstractC2587b;
import p170p7.C2986k;
import p203t7.C3265a;

/* JADX INFO: renamed from: o7.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2599a implements InterfaceC2726v0 {

    /* JADX INFO: renamed from: a */
    public boolean f7251a;

    /* JADX INFO: renamed from: b */
    public Object f7252b;

    /* JADX INFO: renamed from: c */
    public final Object f7253c;

    /* JADX INFO: renamed from: d */
    public Object f7254d;

    /* JADX INFO: renamed from: e */
    public Object f7255e;

    public C2599a() {
        this.f7252b = new Object();
        this.f7253c = new C1074t(6);
    }

    @Override // p157o7.InterfaceC2726v0
    /* JADX INFO: renamed from: b */
    public void mo4077b(C3265a c3265a) {
        C2718t4 c2718t4 = (C2718t4) this.f7253c;
        AbstractC2587b.m4046m(((byte[]) this.f7254d) == null, "writePayload should not be called multiple times");
        try {
            this.f7254d = AbstractC2048g.m3150b(c3265a);
            AbstractC2503e[] abstractC2503eArr = c2718t4.f7794a;
            AbstractC2503e[] abstractC2503eArr2 = c2718t4.f7794a;
            for (AbstractC2503e abstractC2503e : abstractC2503eArr) {
                abstractC2503e.mo3912t(0);
            }
            byte[] bArr = (byte[]) this.f7254d;
            long length = bArr.length;
            long length2 = bArr.length;
            for (AbstractC2503e abstractC2503e2 : c2718t4.f7794a) {
                abstractC2503e2.mo3913u(0, length, length2);
            }
            long length3 = ((byte[]) this.f7254d).length;
            for (AbstractC2503e abstractC2503e3 : abstractC2503eArr2) {
                abstractC2503e3.mo3914v(length3);
            }
            long length4 = ((byte[]) this.f7254d).length;
            for (AbstractC2503e abstractC2503e4 : abstractC2503eArr2) {
                abstractC2503e4.mo3915w(length4);
            }
        } catch (IOException e) {
            C2467b.m3833w(e);
        }
    }

    @Override // p157o7.InterfaceC2726v0
    public void close() {
        this.f7251a = true;
        AbstractC2587b.m4046m(((byte[]) this.f7254d) != null, "Lack of request message. GET request is only supported for unary requests");
        ((C2986k) ((AbstractC2605b) this.f7255e)).f8363n.m3813l((C2547v0) this.f7252b, (byte[]) this.f7254d);
        this.f7254d = null;
        this.f7252b = null;
    }

    /* JADX INFO: renamed from: d */
    public Object m4079d() {
        Object obj;
        synchronized (this.f7252b) {
            try {
                if (!this.f7251a) {
                    throw new IllegalStateException("Task is not yet complete");
                }
                Exception exc = (Exception) this.f7255e;
                if (exc != null) {
                    throw new C0029a(7, exc);
                }
                obj = this.f7254d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    /* JADX INFO: renamed from: e */
    public boolean m4080e() {
        boolean z9;
        synchronized (this.f7252b) {
            z9 = false;
            if (this.f7251a && ((Exception) this.f7255e) == null) {
                z9 = true;
            }
        }
        return z9;
    }

    /* JADX INFO: renamed from: f */
    public void m4081f(Exception exc) {
        synchronized (this.f7252b) {
            m4083h();
            this.f7251a = true;
            this.f7255e = exc;
        }
        ((C1074t) this.f7253c).m1368n(this);
    }

    /* JADX INFO: renamed from: g */
    public void m4082g(Object obj) {
        synchronized (this.f7252b) {
            m4083h();
            this.f7251a = true;
            this.f7254d = obj;
        }
        ((C1074t) this.f7253c).m1368n(this);
    }

    /* JADX INFO: renamed from: h */
    public void m4083h() {
        boolean z9;
        Exception exc;
        String strConcat;
        if (this.f7251a) {
            synchronized (this.f7252b) {
                z9 = this.f7251a;
            }
            if (!z9) {
                throw new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
            }
            synchronized (this.f7252b) {
                exc = (Exception) this.f7255e;
            }
            if (exc == null) {
                strConcat = m4080e() ? "result ".concat(String.valueOf(m4079d())) : "unknown issue";
            } else {
                strConcat = "failure";
            }
        }
    }

    /* JADX INFO: renamed from: i */
    public void m4084i() {
        synchronized (this.f7252b) {
            try {
                if (this.f7251a) {
                    ((C1074t) this.f7253c).m1368n(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p157o7.InterfaceC2726v0
    public boolean isClosed() {
        return this.f7251a;
    }

    public C2599a(AbstractC2605b abstractC2605b, C2547v0 c2547v0, C2718t4 c2718t4) {
        this.f7255e = abstractC2605b;
        AbstractC2587b.m4042i(c2547v0, "headers");
        this.f7252b = c2547v0;
        this.f7253c = c2718t4;
    }

    @Override // p157o7.InterfaceC2726v0
    public void flush() {
    }

    @Override // p157o7.InterfaceC2726v0
    /* JADX INFO: renamed from: a */
    public InterfaceC2726v0 mo4076a(C2512h c2512h) {
        return this;
    }

    @Override // p157o7.InterfaceC2726v0
    /* JADX INFO: renamed from: c */
    public void mo4078c(int i10) {
    }
}

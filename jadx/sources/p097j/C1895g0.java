package p097j;

import android.os.SystemClock;
import android.support.v4.media.C0090h;
import android.util.Log;
import com.bumptech.glide.load.data.InterfaceC1044e;
import com.bumptech.glide.load.data.InterfaceC1046g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import p006a5.C0023h;
import p025c0.AbstractC0941j;
import p077h.InterfaceC1640b;
import p077h.InterfaceC1643e;
import p120l.InterfaceC2184a;
import p141n.C2456q;

/* JADX INFO: renamed from: j.g0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1895g0 implements InterfaceC1894g, InterfaceC1892f {

    /* JADX INFO: renamed from: b */
    public final C1896h f4904b;

    /* JADX INFO: renamed from: c */
    public final RunnableC1899k f4905c;

    /* JADX INFO: renamed from: d */
    public volatile int f4906d;

    /* JADX INFO: renamed from: e */
    public volatile C1888d f4907e;

    /* JADX INFO: renamed from: f */
    public volatile Object f4908f;

    /* JADX INFO: renamed from: g */
    public volatile C2456q f4909g;

    /* JADX INFO: renamed from: h */
    public volatile C1890e f4910h;

    public C1895g0(C1896h c1896h, RunnableC1899k runnableC1899k) {
        this.f4904b = c1896h;
        this.f4905c = runnableC1899k;
    }

    @Override // p097j.InterfaceC1892f
    /* JADX INFO: renamed from: a */
    public final void mo2935a(InterfaceC1643e interfaceC1643e, Object obj, InterfaceC1044e interfaceC1044e, int i10, InterfaceC1643e interfaceC1643e2) {
        this.f4905c.mo2935a(interfaceC1643e, obj, interfaceC1044e, this.f4909g.f6651c.mo1322c(), interfaceC1643e);
    }

    @Override // p097j.InterfaceC1892f
    /* JADX INFO: renamed from: b */
    public final void mo2936b(InterfaceC1643e interfaceC1643e, Exception exc, InterfaceC1044e interfaceC1044e, int i10) {
        this.f4905c.mo2936b(interfaceC1643e, exc, interfaceC1044e, this.f4909g.f6651c.mo1322c());
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0020  */
    @Override // p097j.InterfaceC1894g
    /* JADX INFO: renamed from: c */
    public final boolean mo2934c() {
        boolean z9;
        if (this.f4908f == null) {
            if (this.f4907e != null) {
            }
            this.f4907e = null;
            this.f4909g = null;
            z9 = false;
            while (!z9) {
                ArrayList arrayListM2939b = this.f4904b.m2939b();
                int i10 = this.f4906d;
                this.f4906d = i10 + 1;
                this.f4909g = (C2456q) arrayListM2939b.get(i10);
                if (this.f4909g == null) {
                }
            }
            return z9;
        }
        Object obj = this.f4908f;
        this.f4908f = null;
        try {
            if (m2937d(obj)) {
                if (this.f4907e != null || !this.f4907e.mo2934c()) {
                    this.f4907e = null;
                    this.f4909g = null;
                    z9 = false;
                    while (!z9 && this.f4906d < this.f4904b.m2939b().size()) {
                        ArrayList arrayListM2939b2 = this.f4904b.m2939b();
                        int i11 = this.f4906d;
                        this.f4906d = i11 + 1;
                        this.f4909g = (C2456q) arrayListM2939b2.get(i11);
                        if (this.f4909g == null && (this.f4904b.f4926p.m2960a(this.f4909g.f6651c.mo1322c()) || this.f4904b.m2940c(this.f4909g.f6651c.mo1316a()) != null)) {
                            this.f4909g.f6651c.mo1323e(this.f4904b.f4925o, new C0090h(22, this, this.f4909g));
                            z9 = true;
                        }
                    }
                    return z9;
                }
            }
        } catch (IOException e) {
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Failed to properly rewind or write data to cache", e);
            }
        }
        return true;
    }

    @Override // p097j.InterfaceC1894g
    public final void cancel() {
        C2456q c2456q = this.f4909g;
        if (c2456q != null) {
            c2456q.f6651c.cancel();
        }
    }

    /* JADX INFO: renamed from: d */
    public final boolean m2937d(Object obj) throws Throwable {
        Throwable th;
        int i10 = AbstractC0941j.f799b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        boolean z9 = false;
        try {
            InterfaceC1046g interfaceC1046gM1304g = this.f4904b.f4913c.m1293a().m1304g(obj);
            Object objMo1328d = interfaceC1046gM1304g.mo1328d();
            InterfaceC1640b interfaceC1640bM2941d = this.f4904b.m2941d(objMo1328d);
            C0023h c0023h = new C0023h(interfaceC1640bM2941d, objMo1328d, this.f4904b.f4919i, 12);
            InterfaceC1643e interfaceC1643e = this.f4909g.f6649a;
            C1896h c1896h = this.f4904b;
            C1890e c1890e = new C1890e(interfaceC1643e, c1896h.f4924n);
            InterfaceC2184a interfaceC2184aM1073a = c1896h.f4918h.m1073a();
            interfaceC2184aM1073a.mo3454b(c1890e, c0023h);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + c1890e + ", data: " + obj + ", encoder: " + interfaceC1640bM2941d + ", duration: " + AbstractC0941j.m1076a(jElapsedRealtimeNanos));
            }
            if (interfaceC2184aM1073a.mo3455c(c1890e) != null) {
                this.f4910h = c1890e;
                this.f4907e = new C1888d(Collections.singletonList(this.f4909g.f6649a), this.f4904b, this);
                this.f4909g.f6651c.mo1321b();
                return true;
            }
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Attempt to write: " + this.f4910h + ", data: " + obj + " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly...");
            }
            try {
                this.f4905c.mo2935a(this.f4909g.f6649a, interfaceC1046gM1304g.mo1328d(), this.f4909g.f6651c, this.f4909g.f6651c.mo1322c(), this.f4909g.f6649a);
                return false;
            } catch (Throwable th2) {
                th = th2;
                z9 = true;
                if (z9) {
                    throw th;
                }
                this.f4909g.f6651c.mo1321b();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}

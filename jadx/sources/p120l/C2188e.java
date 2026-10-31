package p120l;

import android.util.Log;
import com.bumptech.glide.manager.C1073s;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import p006a5.C0023h;
import p056f.C1519c;
import p077h.C1646h;
import p077h.InterfaceC1640b;
import p077h.InterfaceC1643e;
import p184r5.C3105c;

/* JADX INFO: renamed from: l.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2188e implements InterfaceC2184a {

    /* JADX INFO: renamed from: c */
    public final File f5708c;

    /* JADX INFO: renamed from: f */
    public C1519c f5711f;

    /* JADX INFO: renamed from: e */
    public final C2187d f5710e = new C2187d(0);

    /* JADX INFO: renamed from: d */
    public final long f5709d = 262144000;

    /* JADX INFO: renamed from: b */
    public final C2193j f5707b = new C2193j();

    public C2188e(File file) {
        this.f5708c = file;
    }

    /* JADX INFO: renamed from: a */
    public final synchronized C1519c m3498a() {
        try {
            if (this.f5711f == null) {
                this.f5711f = C1519c.m2588e0(this.f5708c, this.f5709d);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f5711f;
    }

    @Override // p120l.InterfaceC2184a
    /* JADX INFO: renamed from: b */
    public final void mo3454b(InterfaceC1643e interfaceC1643e, C0023h c0023h) {
        C2185b c2185b;
        String strM3499a = this.f5707b.m3499a(interfaceC1643e);
        C2187d c2187d = this.f5710e;
        synchronized (c2187d) {
            c2185b = (C2185b) ((HashMap) c2187d.f5705c).get(strM3499a);
            if (c2185b == null) {
                C2186c c2186c = (C2186c) c2187d.f5706d;
                synchronized (c2186c.f5703a) {
                    c2185b = (C2185b) c2186c.f5703a.poll();
                }
                if (c2185b == null) {
                    c2185b = new C2185b();
                }
                ((HashMap) c2187d.f5705c).put(strM3499a, c2185b);
            }
            c2185b.f5702b++;
        }
        c2185b.f5701a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + strM3499a + " for for Key: " + interfaceC1643e);
            }
            try {
                C1519c c1519cM3498a = m3498a();
                if (c1519cM3498a.m2592c0(strM3499a) == null) {
                    C1073s c1073sM2591S = c1519cM3498a.m2591S(strM3499a);
                    if (c1073sM2591S == null) {
                        throw new IllegalStateException("Had two simultaneous puts for: ".concat(strM3499a));
                    }
                    try {
                        if (((InterfaceC1640b) c0023h.f81c).mo1146h(c0023h.f82d, c1073sM2591S.m1351g(), (C1646h) c0023h.f83e)) {
                            C1519c.m2586b((C1519c) c1073sM2591S.f1180e, c1073sM2591S, true);
                            c1073sM2591S.f1177b = true;
                        }
                        if (!c1073sM2591S.f1177b) {
                            try {
                                c1073sM2591S.m1345a();
                            } catch (IOException unused) {
                            }
                        }
                    } catch (Throwable th) {
                        if (!c1073sM2591S.f1177b) {
                            try {
                                c1073sM2591S.m1345a();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e);
                }
            }
            this.f5710e.m3470K(strM3499a);
        } catch (Throwable th2) {
            this.f5710e.m3470K(strM3499a);
            throw th2;
        }
    }

    @Override // p120l.InterfaceC2184a
    /* JADX INFO: renamed from: c */
    public final File mo3455c(InterfaceC1643e interfaceC1643e) {
        String strM3499a = this.f5707b.m3499a(interfaceC1643e);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + strM3499a + " for for Key: " + interfaceC1643e);
        }
        try {
            C3105c c3105cM2592c0 = m3498a().m2592c0(strM3499a);
            if (c3105cM2592c0 != null) {
                return ((File[]) c3105cM2592c0.f8867c)[0];
            }
            return null;
        } catch (IOException e) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e);
            return null;
        }
    }
}

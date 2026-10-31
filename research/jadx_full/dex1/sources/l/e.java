package l;

import android.util.Log;
import com.bumptech.glide.manager.s;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements a {
    public final File c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public f.c f3247f;
    public final d e = new d(0);
    public final long d = 262144000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j f3246b = new j();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(File file) {
        this.c = file;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized f.c a() {
        try {
            if (this.f3247f == null) {
                this.f3247f = f.c.e0(this.c, this.d);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f3247f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l.a
    public final void b(h.e eVar, a5.h hVar) {
        b bVar;
        String strA = this.f3246b.a(eVar);
        d dVar = this.e;
        synchronized (dVar) {
            bVar = (b) ((HashMap) dVar.c).get(strA);
            if (bVar == null) {
                c cVar = (c) dVar.d;
                synchronized (cVar.f3244a) {
                    bVar = (b) cVar.f3244a.poll();
                }
                if (bVar == null) {
                    bVar = new b();
                }
                ((HashMap) dVar.c).put(strA, bVar);
            }
            bVar.f3243b++;
        }
        bVar.f3242a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + strA + " for for Key: " + eVar);
            }
            try {
                f.c cVarA = a();
                if (cVarA.c0(strA) == null) {
                    s sVarS = cVarA.S(strA);
                    if (sVarS == null) {
                        throw new IllegalStateException("Had two simultaneous puts for: ".concat(strA));
                    }
                    try {
                        if (((h.b) hVar.c).h(hVar.d, sVarS.g(), (h.h) hVar.e)) {
                            f.c.b((f.c) sVarS.e, sVarS, true);
                            sVarS.f613b = true;
                        }
                        if (!sVarS.f613b) {
                            try {
                                sVarS.a();
                            } catch (IOException unused) {
                            }
                        }
                    } catch (Throwable th) {
                        if (!sVarS.f613b) {
                            try {
                                sVarS.a();
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
            this.e.K(strA);
        } catch (Throwable th2) {
            this.e.K(strA);
            throw th2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l.a
    public final File c(h.e eVar) {
        String strA = this.f3246b.a(eVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + strA + " for for Key: " + eVar);
        }
        try {
            r5.c cVarC0 = a().c0(strA);
            if (cVarC0 != null) {
                return ((File[]) cVarC0.c)[0];
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

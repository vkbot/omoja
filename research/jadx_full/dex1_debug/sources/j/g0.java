package j;

import android.os.SystemClock;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g0 implements g, f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f2775b;
    public final k c;
    public volatile int d;
    public volatile d e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile Object f2776f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile n.q f2777g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile e f2778h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g0(h hVar, k kVar) {
        this.f2775b = hVar;
        this.c = kVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.f
    public final void a(h.e eVar, Object obj, com.bumptech.glide.load.data.e eVar2, int i9, h.e eVar3) {
        this.c.a(eVar, obj, eVar2, this.f2777g.c.c(), eVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.f
    public final void b(h.e eVar, Exception exc, com.bumptech.glide.load.data.e eVar2, int i9) {
        this.c.b(eVar, exc, eVar2, this.f2777g.c.c());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:12:0x0020  */
    @Override // j.g
    public final boolean c() {
        boolean z8;
        if (this.f2776f == null) {
            if (this.e != null) {
            }
            this.e = null;
            this.f2777g = null;
            z8 = false;
            while (!z8) {
                ArrayList arrayListB = this.f2775b.b();
                int i9 = this.d;
                this.d = i9 + 1;
                this.f2777g = (n.q) arrayListB.get(i9);
                if (this.f2777g == null) {
                }
            }
            return z8;
        }
        Object obj = this.f2776f;
        this.f2776f = null;
        try {
            if (d(obj)) {
                if (this.e != null || !this.e.c()) {
                    this.e = null;
                    this.f2777g = null;
                    z8 = false;
                    while (!z8 && this.d < this.f2775b.b().size()) {
                        ArrayList arrayListB2 = this.f2775b.b();
                        int i10 = this.d;
                        this.d = i10 + 1;
                        this.f2777g = (n.q) arrayListB2.get(i10);
                        if (this.f2777g == null && (this.f2775b.f2791p.a(this.f2777g.c.c()) || this.f2775b.c(this.f2777g.c.a()) != null)) {
                            this.f2777g.c.e(this.f2775b.f2790o, new android.support.v4.media.h(22, this, this.f2777g));
                            z8 = true;
                        }
                    }
                    return z8;
                }
            }
        } catch (IOException e) {
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Failed to properly rewind or write data to cache", e);
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.g
    public final void cancel() {
        n.q qVar = this.f2777g;
        if (qVar != null) {
            qVar.c.cancel();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean d(Object obj) throws Throwable {
        Throwable th;
        int i9 = c0.j.f402b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        boolean z8 = false;
        try {
            com.bumptech.glide.load.data.g gVarG = this.f2775b.c.a().g(obj);
            Object objD = gVarG.d();
            h.b bVarD = this.f2775b.d(objD);
            a5.h hVar = new a5.h(bVarD, objD, this.f2775b.f2784i, 12);
            h.e eVar = this.f2777g.f3760a;
            h hVar2 = this.f2775b;
            e eVar2 = new e(eVar, hVar2.f2789n);
            l.a aVarA = hVar2.f2783h.a();
            aVarA.b(eVar2, hVar);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + eVar2 + ", data: " + obj + ", encoder: " + bVarD + ", duration: " + c0.j.a(jElapsedRealtimeNanos));
            }
            if (aVarA.c(eVar2) != null) {
                this.f2778h = eVar2;
                this.e = new d(Collections.singletonList(this.f2777g.f3760a), this.f2775b, this);
                this.f2777g.c.b();
                return true;
            }
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Attempt to write: " + this.f2778h + ", data: " + obj + " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly...");
            }
            try {
                this.c.a(this.f2777g.f3760a, gVarG.d(), this.f2777g.c, this.f2777g.c.c(), this.f2777g.f3760a);
                return false;
            } catch (Throwable th2) {
                th = th2;
                z8 = true;
                if (z8) {
                    throw th;
                }
                this.f2777g.c.b();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}

package s8;

import b8.d;
import c7.l;
import p8.e;
import p8.f;
import x7.h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements z7.a, d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f5316b;
    public final b c;
    public boolean d;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public l f5317f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f5318g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile boolean f5319h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f5320i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(h hVar, b bVar) {
        this.f5316b = hVar;
        this.c = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(Object obj, long j9) {
        if (this.f5319h) {
            return;
        }
        if (!this.f5318g) {
            synchronized (this) {
                try {
                    if (this.f5319h) {
                        return;
                    }
                    if (this.f5320i == j9) {
                        return;
                    }
                    if (this.e) {
                        l lVar = this.f5317f;
                        if (lVar == null) {
                            lVar = new l();
                            this.f5317f = lVar;
                        }
                        int i9 = lVar.f540b;
                        if (i9 == 4) {
                            Object[] objArr = new Object[5];
                            ((Object[]) lVar.d)[4] = objArr;
                            lVar.d = objArr;
                            i9 = 0;
                        }
                        ((Object[]) lVar.d)[i9] = obj;
                        lVar.f540b = i9 + 1;
                        return;
                    }
                    this.d = true;
                    this.f5318g = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        test(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        if (this.f5319h) {
            return;
        }
        this.f5319h = true;
        this.c.f(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.d
    public final boolean test(Object obj) {
        if (this.f5319h) {
            return true;
        }
        h hVar = this.f5316b;
        if (obj == f.f4704b) {
            hVar.a();
            return true;
        }
        if (obj instanceof e) {
            hVar.onError(((e) obj).f4703b);
            return true;
        }
        hVar.e(obj);
        return false;
    }
}

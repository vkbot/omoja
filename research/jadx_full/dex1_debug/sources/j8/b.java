package j8;

import a9.w;
import x7.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements x7.h, z7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3102b;
    public final w c;
    public z7.a d;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f3103f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(Object obj, w wVar, int i9) {
        this.f3102b = i9;
        this.f3103f = obj;
        this.c = wVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void a() {
        switch (this.f3102b) {
            case 0:
                x7.h hVar = (x7.h) this.f3103f;
                if (!this.e) {
                    this.e = true;
                    hVar.e(Boolean.FALSE);
                    hVar.a();
                }
                break;
            default:
                if (!this.e) {
                    this.e = true;
                    ((m) this.f3103f).c(Boolean.FALSE);
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void b(z7.a aVar) {
        switch (this.f3102b) {
            case 0:
                if (c8.a.e(this.d, aVar)) {
                    this.d = aVar;
                    ((x7.h) this.f3103f).b(this);
                }
                break;
            default:
                if (c8.a.e(this.d, aVar)) {
                    this.d = aVar;
                    ((m) this.f3103f).b(this);
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        switch (this.f3102b) {
            case 0:
                this.d.dispose();
                break;
            default:
                this.d.dispose();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void e(Object obj) {
        switch (this.f3102b) {
            case 0:
                x7.h hVar = (x7.h) this.f3103f;
                if (!this.e) {
                    try {
                        if (this.c.test(obj)) {
                            this.e = true;
                            this.d.dispose();
                            hVar.e(Boolean.TRUE);
                            hVar.a();
                        }
                    } catch (Throwable th) {
                        com.bumptech.glide.d.v(th);
                        this.d.dispose();
                        onError(th);
                        return;
                    }
                    break;
                }
                break;
            default:
                if (!this.e) {
                    try {
                        if (this.c.test(obj)) {
                            this.e = true;
                            this.d.dispose();
                            ((m) this.f3103f).c(Boolean.TRUE);
                        }
                    } catch (Throwable th2) {
                        com.bumptech.glide.d.v(th2);
                        this.d.dispose();
                        onError(th2);
                    }
                    break;
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void onError(Throwable th) {
        switch (this.f3102b) {
            case 0:
                if (!this.e) {
                    this.e = true;
                    ((x7.h) this.f3103f).onError(th);
                } else {
                    a.a.s(th);
                }
                break;
            default:
                if (!this.e) {
                    this.e = true;
                    ((m) this.f3103f).onError(th);
                } else {
                    a.a.s(th);
                }
                break;
        }
    }
}

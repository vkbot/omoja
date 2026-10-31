package i8;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h extends AtomicReference implements x7.f, x7.a, z7.a, x7.m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2736b;
    public final Object c;
    public final Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h(int i9, Object obj, Object obj2) {
        this.f2736b = i9;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public void a() {
        switch (this.f2736b) {
            case 0:
                ((x7.a) this.c).a();
                break;
            default:
                z7.a aVar = (z7.a) get();
                if (aVar != c8.a.f542b && compareAndSet(aVar, null)) {
                    ((x7.e) this.d).c(new android.support.v4.media.h(this.c, (Object) this, false, 17));
                    break;
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void b(z7.a aVar) {
        switch (this.f2736b) {
            case 0:
                c8.a.c(this, aVar);
                break;
            case 1:
                if (c8.a.d(this, aVar)) {
                    ((x7.f) this.c).b(this);
                }
                break;
            default:
                if (c8.a.d(this, aVar)) {
                    ((x7.m) this.c).b(this);
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void c(Object obj) {
        switch (this.f2736b) {
            case 0:
                try {
                    b1.u uVar = (b1.u) ((f5.f) this.d).apply(obj);
                    if (!c8.a.b((z7.a) get())) {
                        uVar.A(this);
                    }
                } catch (Throwable th) {
                    com.bumptech.glide.d.v(th);
                    onError(th);
                    return;
                }
                break;
            case 1:
                ((x7.f) this.c).c(obj);
                break;
            default:
                ((x7.m) this.c).c(obj);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        switch (this.f2736b) {
            case 0:
                c8.a.a(this);
                break;
            case 1:
                c8.a.a(this);
                break;
            default:
                c8.a.a(this);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void onError(Throwable th) {
        switch (this.f2736b) {
            case 0:
                ((x7.a) this.c).onError(th);
                break;
            case 1:
                ((x7.f) this.c).onError(th);
                break;
            default:
                x7.m mVar = (x7.m) this.c;
                try {
                    Object obj = ((d8.a) this.d).c;
                    d8.b.a(obj, "The nextFunction returned a null SingleSource.");
                    ((x7.l) obj).a(new android.support.v4.media.h((Object) this, (Object) mVar, false, 10));
                } catch (Throwable th2) {
                    com.bumptech.glide.d.v(th2);
                    mVar.onError(new a8.c(th, th2));
                }
                break;
        }
    }
}

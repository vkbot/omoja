package n8;

import h8.f0;
import java.util.concurrent.atomic.AtomicReference;
import o8.f;
import p2.e;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends AtomicReference implements x7.d, n9.b, z7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.navigation.b f3996b;
    public final e c = d8.b.e;
    public final w7.c d = d8.b.c;
    public final f0 e = f0.f2549b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(androidx.navigation.b bVar) {
        this.f3996b = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void a() {
        Object obj = get();
        f fVar = f.f4535b;
        if (obj != fVar) {
            lazySet(fVar);
            try {
                this.d.getClass();
            } catch (Throwable th) {
                com.bumptech.glide.d.v(th);
                a.a.s(th);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        f.a(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        ((n9.b) get()).d(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        f.a(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        if (get() == f.f4535b) {
            return;
        }
        try {
            this.f3996b.getClass();
        } catch (Throwable th) {
            com.bumptech.glide.d.v(th);
            ((n9.b) get()).cancel();
            onError(th);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void f(n9.b bVar) {
        if (f.b(this, bVar)) {
            try {
                this.e.accept(this);
            } catch (Throwable th) {
                com.bumptech.glide.d.v(th);
                bVar.cancel();
                onError(th);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void onError(Throwable th) {
        Object obj = get();
        f fVar = f.f4535b;
        if (obj == fVar) {
            a.a.s(th);
            return;
        }
        lazySet(fVar);
        try {
            this.c.accept(th);
        } catch (Throwable th2) {
            com.bumptech.glide.d.v(th2);
            a.a.s(new a8.c(th, th2));
        }
    }
}

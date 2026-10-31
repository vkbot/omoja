package c8;

import a8.e;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends AtomicReference implements z7.a, x7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f545b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d(Object obj) {
        super(obj);
        this.f545b = 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.a, x7.f
    public void a() {
        lazySet(a.f542b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.a, x7.f
    public void b(z7.a aVar) {
        a.d(this, aVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean c() {
        switch (this.f545b) {
            case 0:
                return a.b((z7.a) get());
            default:
                return get() == null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void d(z7.a aVar) {
        while (true) {
            z7.a aVar2 = (z7.a) get();
            if (aVar2 == a.f542b) {
                aVar.dispose();
                return;
            }
            do {
                if (compareAndSet(aVar2, aVar)) {
                    if (aVar2 != null) {
                        aVar2.dispose();
                        return;
                    }
                    return;
                }
            } while (get() == aVar2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        Object andSet;
        switch (this.f545b) {
            case 0:
                a.a(this);
                break;
            case 1:
                a.a(this);
                break;
            default:
                if (get() != null && (andSet = getAndSet(null)) != null) {
                    ((Runnable) andSet).run();
                    break;
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.a, x7.f
    public void onError(Throwable th) {
        lazySet(a.f542b);
        a.a.s(new e(th));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        switch (this.f545b) {
            case 2:
                return "RunnableDisposable(disposed=" + c() + ", " + get() + ")";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ d(int i9) {
        this.f545b = i9;
    }
}

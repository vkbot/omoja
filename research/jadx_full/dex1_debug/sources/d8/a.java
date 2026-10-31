package d8;

import b8.c;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements Callable, c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1794b;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(int i9, Object obj) {
        this.f1794b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.c
    public Object apply(Object obj) {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f1794b) {
            case 0:
                return this.c;
            default:
                synchronized (((f.c) this.c)) {
                    try {
                        f.c cVar = (f.c) this.c;
                        if (cVar.f2143j == null) {
                            return null;
                        }
                        cVar.k0();
                        if (((f.c) this.c).d0()) {
                            ((f.c) this.c).i0();
                            ((f.c) this.c).f2145l = 0;
                        }
                        return null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
        }
    }
}

package x7;

import h8.a0;
import h8.m0;
import h8.p0;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class b implements n9.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f6040b = Math.max(1, Integer.getInteger("rx2.buffer-size", 128).intValue());

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(d dVar) {
        if (dVar != null) {
            d(dVar);
        } else {
            d8.b.a(dVar, "s is null");
            d(new n8.d(dVar));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a0 b(b8.c cVar) {
        d8.b.a(cVar, "mapper is null");
        d8.b.b(Integer.MAX_VALUE, "maxConcurrency");
        return new a0(this, cVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final p0 c() {
        int i9 = f6040b;
        d8.b.b(i9, "bufferSize");
        AtomicReference atomicReference = new AtomicReference();
        return new p0(new m0(atomicReference, i9), this, atomicReference, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(d dVar) {
        d8.b.a(dVar, "s is null");
        try {
            e(dVar);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            com.bumptech.glide.d.v(th);
            a.a.s(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public abstract void e(d dVar);
}

package m4;

import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k extends com.bumptech.glide.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Unsafe f3654b;
    public static final long c;
    public static final long d;
    public static final long e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f3655f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final long f3656g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (PrivilegedActionException e6) {
                ai.onnxruntime.b.o("Could not initialize intrinsics", e6.getCause());
                return;
            }
        } catch (SecurityException unused) {
            unsafe = (Unsafe) AccessController.doPrivileged(new j());
        }
        try {
            d = unsafe.objectFieldOffset(m.class.getDeclaredField("d"));
            c = unsafe.objectFieldOffset(m.class.getDeclaredField("c"));
            e = unsafe.objectFieldOffset(m.class.getDeclaredField("b"));
            f3655f = unsafe.objectFieldOffset(l.class.getDeclaredField("a"));
            f3656g = unsafe.objectFieldOffset(l.class.getDeclaredField("b"));
            f3654b = unsafe;
        } catch (NoSuchFieldException e9) {
            n0.b.w(e9);
        } catch (RuntimeException e10) {
            throw e10;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.c
    public final boolean c(m mVar, d dVar, d dVar2) {
        return h.a(f3654b, mVar, c, dVar, dVar2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.c
    public final boolean d(m mVar, Object obj, Object obj2) {
        return i.a(f3654b, mVar, e, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.c
    public final boolean e(m mVar, l lVar, l lVar2) {
        return g.a(f3654b, mVar, d, lVar, lVar2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.c
    public final d k(m mVar) {
        d dVar;
        d dVar2 = d.d;
        do {
            dVar = mVar.c;
            if (dVar2 == dVar) {
                break;
            }
        } while (!c(mVar, dVar, dVar2));
        return dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.c
    public final l l(m mVar) {
        l lVar;
        l lVar2 = l.c;
        do {
            lVar = mVar.d;
            if (lVar2 == lVar) {
                break;
            }
        } while (!e(mVar, lVar, lVar2));
        return lVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.c
    public final void q(l lVar, l lVar2) {
        f3654b.putObject(lVar, f3656g, lVar2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.c
    public final void r(l lVar, Thread thread) {
        f3654b.putObject(lVar, f3655f, thread);
    }
}

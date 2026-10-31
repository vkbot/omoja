package p135m4;

import ai.onnxruntime.C0075b;
import com.bumptech.glide.AbstractC1030c;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import p142n0.C2467b;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: m4.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2392k extends AbstractC1030c {

    /* JADX INFO: renamed from: b */
    public static final Unsafe f6461b;

    /* JADX INFO: renamed from: c */
    public static final long f6462c;

    /* JADX INFO: renamed from: d */
    public static final long f6463d;

    /* JADX INFO: renamed from: e */
    public static final long f6464e;

    /* JADX INFO: renamed from: f */
    public static final long f6465f;

    /* JADX INFO: renamed from: g */
    public static final long f6466g;

    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new C2391j());
            }
            try {
                f6463d = unsafe.objectFieldOffset(AbstractC2394m.class.getDeclaredField("d"));
                f6462c = unsafe.objectFieldOffset(AbstractC2394m.class.getDeclaredField("c"));
                f6464e = unsafe.objectFieldOffset(AbstractC2394m.class.getDeclaredField("b"));
                f6465f = unsafe.objectFieldOffset(C2393l.class.getDeclaredField("a"));
                f6466g = unsafe.objectFieldOffset(C2393l.class.getDeclaredField("b"));
                f6461b = unsafe;
            } catch (NoSuchFieldException e) {
                C2467b.m3833w(e);
            } catch (RuntimeException e6) {
                throw e6;
            }
        } catch (PrivilegedActionException e10) {
            C0075b.m190o("Could not initialize intrinsics", e10.getCause());
        }
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: c */
    public final boolean mo1264c(AbstractC2394m abstractC2394m, C2385d c2385d, C2385d c2385d2) {
        return AbstractC2389h.m3750a(f6461b, abstractC2394m, f6462c, c2385d, c2385d2);
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: d */
    public final boolean mo1265d(AbstractC2394m abstractC2394m, Object obj, Object obj2) {
        return AbstractC2390i.m3751a(f6461b, abstractC2394m, f6464e, obj, obj2);
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: e */
    public final boolean mo1266e(AbstractC2394m abstractC2394m, C2393l c2393l, C2393l c2393l2) {
        return AbstractC2388g.m3749a(f6461b, abstractC2394m, f6463d, c2393l, c2393l2);
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: k */
    public final C2385d mo1267k(AbstractC2394m abstractC2394m) {
        C2385d c2385d;
        C2385d c2385d2 = C2385d.f6452d;
        do {
            c2385d = abstractC2394m.f6475c;
            if (c2385d2 == c2385d) {
                break;
            }
        } while (!mo1264c(abstractC2394m, c2385d, c2385d2));
        return c2385d;
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: l */
    public final C2393l mo1268l(AbstractC2394m abstractC2394m) {
        C2393l c2393l;
        C2393l c2393l2 = C2393l.f6467c;
        do {
            c2393l = abstractC2394m.f6476d;
            if (c2393l2 == c2393l) {
                break;
            }
        } while (!mo1266e(abstractC2394m, c2393l, c2393l2));
        return c2393l;
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: q */
    public final void mo1269q(C2393l c2393l, C2393l c2393l2) {
        f6461b.putObject(c2393l, f6466g, c2393l2);
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: r */
    public final void mo1270r(C2393l c2393l, Thread thread) {
        f6461b.putObject(c2393l, f6465f, thread);
    }
}

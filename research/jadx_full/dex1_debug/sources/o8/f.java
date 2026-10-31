package o8;

import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f implements n9.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final f f4535b;
    public static final /* synthetic */ f[] c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        f fVar = new f("CANCELLED", 0);
        f4535b = fVar;
        c = new f[]{fVar};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(AtomicReference atomicReference) {
        n9.b bVar;
        n9.b bVar2 = (n9.b) atomicReference.get();
        f fVar = f4535b;
        if (bVar2 == fVar || (bVar = (n9.b) atomicReference.getAndSet(fVar)) == fVar || bVar == null) {
            return;
        }
        bVar.cancel();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean b(AtomicReference atomicReference, n9.b bVar) {
        d8.b.a(bVar, "s is null");
        while (!atomicReference.compareAndSet(null, bVar)) {
            if (atomicReference.get() != null) {
                bVar.cancel();
                if (atomicReference.get() == f4535b) {
                    return false;
                }
                a.a.s(new a8.f("Subscription already set!"));
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean c(long j9) {
        if (j9 > 0) {
            return true;
        }
        a.a.s(new IllegalArgumentException(ai.onnxruntime.a.h(j9, "n > 0 required but it was ")));
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean e(n9.b bVar, n9.b bVar2) {
        if (bVar2 == null) {
            a.a.s(new NullPointerException("next is null"));
            return false;
        }
        if (bVar == null) {
            return true;
        }
        bVar2.cancel();
        a.a.s(new a8.f("Subscription already set!"));
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f valueOf(String str) {
        return (f) Enum.valueOf(f.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f[] values() {
        return (f[]) c.clone();
    }

    public final void cancel() {
    }

    public final void d(long j9) {
    }
}

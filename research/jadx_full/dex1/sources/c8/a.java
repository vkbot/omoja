package c8;

import a8.f;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements z7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f542b;
    public static final /* synthetic */ a[] c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        a aVar = new a("DISPOSED", 0);
        f542b = aVar;
        c = new a[]{aVar};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(AtomicReference atomicReference) {
        z7.a aVar;
        z7.a aVar2 = (z7.a) atomicReference.get();
        a aVar3 = f542b;
        if (aVar2 == aVar3 || (aVar = (z7.a) atomicReference.getAndSet(aVar3)) == aVar3 || aVar == null) {
            return;
        }
        aVar.dispose();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean b(z7.a aVar) {
        return aVar == f542b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(AtomicReference atomicReference, z7.a aVar) {
        while (true) {
            z7.a aVar2 = (z7.a) atomicReference.get();
            if (aVar2 != f542b) {
                while (!atomicReference.compareAndSet(aVar2, aVar)) {
                    if (atomicReference.get() != aVar2) {
                    }
                }
                return;
            } else {
                if (aVar != null) {
                    aVar.dispose();
                    return;
                }
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean d(AtomicReference atomicReference, z7.a aVar) {
        d8.b.a(aVar, "d is null");
        while (!atomicReference.compareAndSet(null, aVar)) {
            if (atomicReference.get() != null) {
                aVar.dispose();
                if (atomicReference.get() == f542b) {
                    return false;
                }
                a.a.s(new f("Disposable already set!"));
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean e(z7.a aVar, z7.a aVar2) {
        if (aVar2 == null) {
            a.a.s(new NullPointerException("next is null"));
            return false;
        }
        if (aVar == null) {
            return true;
        }
        aVar2.dispose();
        a.a.s(new f("Disposable already set!"));
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static a[] values() {
        return (a[]) c.clone();
    }

    @Override // z7.a
    public final void dispose() {
    }
}

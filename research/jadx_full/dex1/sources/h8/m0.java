package h8;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m0 implements n9.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f2580b;
    public final int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m0(AtomicReference atomicReference, int i9) {
        this.f2580b = atomicReference;
        this.c = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r8v9, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    public final void a(x7.d dVar) {
        o0 o0Var;
        n0 n0Var = new n0(dVar);
        dVar.f(n0Var);
        loop0: while (true) {
            o0 o0Var2 = (o0) this.f2580b.get();
            if (o0Var2 == null || o0Var2.d()) {
                o0 o0Var3 = new o0(this.f2580b, this.c);
                AtomicReference atomicReference = this.f2580b;
                while (true) {
                    if (atomicReference.compareAndSet(o0Var2, o0Var3)) {
                        o0Var = o0Var3;
                    } else if (atomicReference.get() != o0Var2) {
                    }
                }
            } else {
                o0Var = o0Var2;
            }
            AtomicReference atomicReference2 = o0Var.d;
            while (true) {
                n0[] n0VarArr = (n0[]) atomicReference2.get();
                if (n0VarArr == o0.f2589k) {
                    break;
                }
                int length = n0VarArr.length;
                n0[] n0VarArr2 = new n0[length + 1];
                System.arraycopy(n0VarArr, 0, n0VarArr2, 0, length);
                n0VarArr2[length] = n0Var;
                do {
                    if (atomicReference2.compareAndSet(n0VarArr, n0VarArr2)) {
                        break loop0;
                    }
                } while (atomicReference2.get() == n0VarArr);
            }
        }
        if (n0Var.get() == Long.MIN_VALUE) {
            o0Var.h(n0Var);
        } else {
            n0Var.c = o0Var;
        }
        o0Var.c();
    }
}

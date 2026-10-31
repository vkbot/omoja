package x8;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Reflection;
import v8.u1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class m extends b {
    public final int l;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m(int i, int i2) {
        super(i);
        this.l = i2;
        if (i2 == 1) {
            ai.onnxruntime.b.v(Reflection.getOrCreateKotlinClass(b.class).getSimpleName(), "This implementation does not support suspension for senders, use ", " instead");
            throw null;
        }
        if (i >= 1) {
            return;
        }
        l9.i.d(ai.onnxruntime.a.f(i, "Buffered channel capacity must be at least 1, but ", " was specified"));
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object B(Object obj, boolean z) {
        if (this.l == 3) {
            Object objE = super.e(obj);
            return (!(objE instanceof i) || (objE instanceof h)) ? objE : Unit.INSTANCE;
        }
        b8.d dVar = d.d;
        k kVar = (k) b.g.get(this);
        while (true) {
            long andIncrement = b.c.getAndIncrement(this);
            long j = 1152921504606846975L & andIncrement;
            boolean zQ = q(andIncrement, false);
            int i = d.b;
            long j2 = i;
            long j3 = j / j2;
            int i2 = (int) (j % j2);
            if (kVar.d != j3) {
                k kVarA = b.a(this, j3, kVar);
                if (kVarA != null) {
                    kVar = kVarA;
                } else if (zQ) {
                    return new h(n());
                }
            }
            int iD = b.d(this, kVar, i2, obj, j, dVar, zQ);
            if (iD == 0) {
                kVar.a();
                return Unit.INSTANCE;
            }
            if (iD == 1) {
                return Unit.INSTANCE;
            }
            if (iD == 2) {
                if (zQ) {
                    kVar.h();
                    return new h(n());
                }
                u1 u1Var = dVar instanceof u1 ? (u1) dVar : null;
                if (u1Var != null) {
                    u1Var.b(kVar, i2 + i);
                }
                j((kVar.d * j2) + ((long) i2));
                return Unit.INSTANCE;
            }
            if (iD == 3) {
                j1.i.l("unexpected");
                return null;
            }
            if (iD == 4) {
                if (j < b.d.get(this)) {
                    kVar.a();
                }
                return new h(n());
            }
            if (iD == 5) {
                kVar.a();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x8.b, x8.r
    public final Object e(Object obj) {
        return B(obj, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x8.b, x8.r
    public final Object f(Object obj, Continuation continuation) throws Throwable {
        if (B(obj, true) instanceof h) {
            throw n();
        }
        return Unit.INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x8.b
    public final boolean s() {
        return this.l == 2;
    }
}

package z8;

import java.util.Arrays;
import kotlin.Result;
import kotlin.Result$Companion;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class a {
    public c[] b;
    public int c;
    public int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final c a() {
        c cVarC;
        synchronized (this) {
            try {
                c[] cVarArrD = this.b;
                if (cVarArrD == null) {
                    cVarArrD = d();
                    this.b = cVarArrD;
                } else if (this.c >= cVarArrD.length) {
                    Object[] objArrCopyOf = Arrays.copyOf(cVarArrD, cVarArrD.length * 2);
                    this.b = (c[]) objArrCopyOf;
                    cVarArrD = (c[]) objArrCopyOf;
                }
                int i = this.d;
                do {
                    cVarC = cVarArrD[i];
                    if (cVarC == null) {
                        cVarC = c();
                        cVarArrD[i] = cVarC;
                    }
                    i++;
                    if (i >= cVarArrD.length) {
                        i = 0;
                    }
                } while (!cVarC.a(this));
                this.d = i;
                this.c++;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVarC;
    }

    public abstract c c();

    public abstract c[] d();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(c cVar) {
        int i;
        Continuation[] continuationArrB;
        synchronized (this) {
            try {
                int i2 = this.c - 1;
                this.c = i2;
                if (i2 == 0) {
                    this.d = 0;
                }
                cVar.getClass();
                continuationArrB = cVar.b(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        for (Continuation continuation : continuationArrB) {
            if (continuation != null) {
                Result$Companion result$Companion = Result.Companion;
                continuation.resumeWith(Result.constructor-impl(Unit.INSTANCE));
            }
        }
    }
}

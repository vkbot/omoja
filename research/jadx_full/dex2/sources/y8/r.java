package y8;

import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class r {
    public static final a9.w a = new a9.w("NO_VALUE", 0);
    public static final a9.w b = new a9.w("NONE", 0);
    public static final a9.w c = new a9.w("PENDING", 0);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final v a(Object obj) {
        if (obj == null) {
            obj = z8.b.b;
        }
        return new v(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void b(Object[] objArr, long j, Object obj) {
        objArr[((int) j) & (objArr.length - 1)] = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:49:0x0023 */
    /* JADX WARN: Code duplicated, block: B:26:0x006a  */
    /* JADX WARN: Code duplicated, block: B:27:0x006b  */
    /* JADX WARN: Code duplicated, block: B:30:0x0076 A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #1 {all -> 0x0038, blocks: (B:13:0x0031, B:24:0x005a, B:28:0x006e, B:30:0x0076, B:20:0x0049, B:23:0x0050), top: B:49:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x008b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x008d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0088, code lost:
    
        if (r2.emit(r10, r0) == r1) goto L32;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [x8.g, x8.p] */
    /* JADX WARN: Type inference failed for: r8v1, types: [x8.f] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v2, types: [x8.f] */
    /* JADX WARN: Type inference failed for: r8v3, types: [x8.f] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0088 -> B:14:0x0034). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object c(g gVar, x8.p pVar, boolean z, ContinuationImpl continuationImpl) {
        h hVar;
        x8.a aVar;
        ?? r8;
        x8.a aVar2;
        g gVar2;
        ?? r9;
        if (continuationImpl instanceof h) {
            hVar = (h) continuationImpl;
            int i = hVar.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                hVar.g = i - Integer.MIN_VALUE;
            } else {
                hVar = new h(continuationImpl);
            }
        } else {
            hVar = new h(continuationImpl);
        }
        Object objC = hVar.f;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = hVar.g;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objC);
                x8.b bVar = pVar.e;
                bVar.getClass();
                aVar = new x8.a(bVar);
                pVar = pVar;
                hVar.b = gVar;
                hVar.c = pVar;
                hVar.d = aVar;
                hVar.e = z;
                hVar.g = 1;
                objC = aVar.c(hVar);
                if (objC == coroutine_suspended) {
                    x8.a aVar3 = aVar;
                    gVar2 = gVar;
                    aVar2 = aVar3;
                    r8 = pVar;
                    if (!((Boolean) objC).booleanValue()) {
                        if (z) {
                            r8.c(null);
                        }
                        return Unit.INSTANCE;
                    }
                    Object objD = aVar2.d();
                    hVar.b = gVar2;
                    hVar.c = r8;
                    hVar.d = aVar2;
                    hVar.e = z;
                    hVar.g = 2;
                }
                r9 = r8;
                return coroutine_suspended;
            }
            if (i2 == 1) {
                z = hVar.e;
                aVar2 = hVar.d;
                x8.f fVar = hVar.c;
                gVar2 = hVar.b;
                ResultKt.throwOnFailure(objC);
                r8 = fVar;
                if (!((Boolean) objC).booleanValue()) {
                    if (z) {
                        r8.c(null);
                    }
                    return Unit.INSTANCE;
                }
                Object objD2 = aVar2.d();
                hVar.b = gVar2;
                hVar.c = r8;
                hVar.d = aVar2;
                hVar.e = z;
                hVar.g = 2;
            } else {
                if (i2 != 2) {
                    j1.i.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                z = hVar.e;
                aVar2 = hVar.d;
                x8.f fVar2 = hVar.c;
                gVar2 = hVar.b;
                ResultKt.throwOnFailure(objC);
                r9 = fVar2;
            }
            r9 = r8;
            g gVar3 = gVar2;
            aVar = aVar2;
            gVar = gVar3;
            pVar = r9;
            hVar.b = gVar;
            hVar.c = pVar;
            hVar.d = aVar;
            hVar.e = z;
            hVar.g = 1;
            objC = aVar.c(hVar);
            if (objC == coroutine_suspended) {
                x8.a aVar4 = aVar;
                gVar2 = gVar;
                aVar2 = aVar4;
                r8 = pVar;
                if (!((Boolean) objC).booleanValue()) {
                    if (z) {
                        r8.c(null);
                    }
                    return Unit.INSTANCE;
                }
                Object objD3 = aVar2.d();
                hVar.b = gVar2;
                hVar.c = r8;
                hVar.d = aVar2;
                hVar.e = z;
                hVar.g = 2;
            }
            r9 = r8;
            return coroutine_suspended;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (z) {
                    CancellationException cancellationException = th instanceof CancellationException ? th : null;
                    if (cancellationException == null) {
                        cancellationException = new CancellationException("Channel was consumed, consumer had failed");
                        cancellationException.initCause(th);
                    }
                    pVar.c(cancellationException);
                }
                throw th2;
            }
        }
    }
}

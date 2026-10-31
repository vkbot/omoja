package m8;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends x7.k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f3706b;
    public static final k c;
    public static final int d;
    public static final c e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f3707a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        int iIntValue = Integer.getInteger("rx2.computation-threads", 0).intValue();
        if (iIntValue > 0 && iIntValue <= iAvailableProcessors) {
            iAvailableProcessors = iIntValue;
        }
        d = iAvailableProcessors;
        c cVar = new c(new k("RxComputationShutdown"));
        e = cVar;
        cVar.dispose();
        k kVar = new k("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx2.computation-priority", 5).intValue())), true);
        c = kVar;
        b bVar = new b(0, kVar);
        f3706b = bVar;
        for (c cVar2 : bVar.f3705b) {
            cVar2.dispose();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d() {
        b bVar = f3706b;
        AtomicReference atomicReference = new AtomicReference(bVar);
        this.f3707a = atomicReference;
        b bVar2 = new b(d, c);
        while (!atomicReference.compareAndSet(bVar, bVar2)) {
            if (atomicReference.get() != bVar) {
                c[] cVarArr = bVar2.f3705b;
                for (c cVar : cVarArr) {
                    cVar.dispose();
                }
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.k
    public final x7.j a() {
        c cVar;
        b bVar = (b) this.f3707a.get();
        int i9 = bVar.f3704a;
        if (i9 == 0) {
            cVar = e;
        } else {
            c[] cVarArr = bVar.f3705b;
            long j9 = bVar.c;
            bVar.c = 1 + j9;
            cVar = cVarArr[(int) (j9 % ((long) i9))];
        }
        return new a(cVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.k
    public final z7.a c(i8.p pVar) {
        c cVar;
        b bVar = (b) this.f3707a.get();
        int i9 = bVar.f3704a;
        if (i9 == 0) {
            cVar = e;
        } else {
            c[] cVarArr = bVar.f3705b;
            long j9 = bVar.c;
            bVar.c = 1 + j9;
            cVar = cVarArr[(int) (j9 % ((long) i9))];
        }
        cVar.getClass();
        l lVar = new l(pVar);
        try {
            lVar.a(cVar.f3716b.submit(lVar));
            return lVar;
        } catch (RejectedExecutionException e6) {
            a.a.s(e6);
            return c8.b.f543b;
        }
    }
}

package y8;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Result$Companion;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class v extends z8.a implements m, f {
    public static final AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(v.class, Object.class, "_state");

    @Volatile
    private volatile Object _state;
    public int e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public v(Object obj) {
        this._state = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y8.l
    public final boolean b(Object obj) {
        f(obj);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z8.a
    public final z8.c c() {
        return new w();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:31:0x007e A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:15:0x0036, B:29:0x0076, B:31:0x007e, B:34:0x0085, B:35:0x008b, B:37:0x008e, B:47:0x00af, B:50:0x00c2, B:39:0x0094, B:43:0x009b, B:22:0x004e, B:25:0x0058, B:28:0x0067), top: B:55:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x008e A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:15:0x0036, B:29:0x0076, B:31:0x007e, B:34:0x0085, B:35:0x008b, B:37:0x008e, B:47:0x00af, B:50:0x00c2, B:39:0x0094, B:43:0x009b, B:22:0x004e, B:25:0x0058, B:28:0x0067), top: B:55:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0098  */
    /* JADX WARN: Code duplicated, block: B:42:0x009a  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c2 A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #0 {all -> 0x003a, blocks: (B:15:0x0036, B:29:0x0076, B:31:0x007e, B:34:0x0085, B:35:0x008b, B:37:0x008e, B:47:0x00af, B:50:0x00c2, B:39:0x0094, B:43:0x009b, B:22:0x004e, B:25:0x0058, B:28:0x0067), top: B:55:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00c1 -> B:29:0x0076). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x00d2 -> B:29:0x0076). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // y8.f
    public final java.lang.Object collect(y8.g r11, kotlin.coroutines.Continuation r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof y8.u
            if (r0 == 0) goto L13
            r0 = r12
            y8.u r0 = (y8.u) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            y8.u r0 = new y8.u
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 0
            r4 = 3
            r5 = 2
            if (r2 == 0) goto L5c
            r11 = 1
            if (r2 == r11) goto L52
            if (r2 == r5) goto L44
            if (r2 != r4) goto L3d
            java.lang.Object r11 = r0.f
            v8.z0 r2 = r0.e
            y8.w r6 = r0.d
            y8.g r7 = r0.c
            y8.v r8 = r0.b
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L3a
            goto L76
        L3a:
            r11 = move-exception
            goto Ld5
        L3d:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            j1.i.l(r11)
            r11 = 0
            return r11
        L44:
            java.lang.Object r11 = r0.f
            v8.z0 r2 = r0.e
            y8.w r6 = r0.d
            y8.g r7 = r0.c
            y8.v r8 = r0.b
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L3a
            goto Laf
        L52:
            y8.w r6 = r0.d
            y8.g r11 = r0.c
            y8.v r8 = r0.b
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L3a
            goto L67
        L5c:
            kotlin.ResultKt.throwOnFailure(r12)
            z8.c r12 = r10.a()
            y8.w r12 = (y8.w) r12
            r8 = r10
            r6 = r12
        L67:
            kotlin.coroutines.CoroutineContext r12 = r0.getContext()     // Catch: java.lang.Throwable -> L3a
            v8.y0 r2 = v8.y0.b     // Catch: java.lang.Throwable -> L3a
            kotlin.coroutines.CoroutineContext$Element r12 = r12.get(r2)     // Catch: java.lang.Throwable -> L3a
            v8.z0 r12 = (v8.z0) r12     // Catch: java.lang.Throwable -> L3a
            r7 = r11
            r2 = r12
            r11 = r3
        L76:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r12 = y8.v.f     // Catch: java.lang.Throwable -> L3a
            java.lang.Object r12 = r12.get(r8)     // Catch: java.lang.Throwable -> L3a
            if (r2 == 0) goto L8c
            boolean r9 = r2.b()     // Catch: java.lang.Throwable -> L3a
            if (r9 == 0) goto L85
            goto L8c
        L85:
            v8.h1 r2 = (v8.h1) r2     // Catch: java.lang.Throwable -> L3a
            java.util.concurrent.CancellationException r11 = r2.s()     // Catch: java.lang.Throwable -> L3a
            throw r11     // Catch: java.lang.Throwable -> L3a
        L8c:
            if (r11 == 0) goto L94
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r11, r12)     // Catch: java.lang.Throwable -> L3a
            if (r9 != 0) goto Laf
        L94:
            a9.w r11 = z8.b.b     // Catch: java.lang.Throwable -> L3a
            if (r12 != r11) goto L9a
            r11 = r3
            goto L9b
        L9a:
            r11 = r12
        L9b:
            r0.b = r8     // Catch: java.lang.Throwable -> L3a
            r0.c = r7     // Catch: java.lang.Throwable -> L3a
            r0.d = r6     // Catch: java.lang.Throwable -> L3a
            r0.e = r2     // Catch: java.lang.Throwable -> L3a
            r0.f = r12     // Catch: java.lang.Throwable -> L3a
            r0.i = r5     // Catch: java.lang.Throwable -> L3a
            java.lang.Object r11 = r7.emit(r11, r0)     // Catch: java.lang.Throwable -> L3a
            if (r11 != r1) goto Lae
            goto Ld4
        Lae:
            r11 = r12
        Laf:
            r6.getClass()     // Catch: java.lang.Throwable -> L3a
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r12 = y8.w.a     // Catch: java.lang.Throwable -> L3a
            a9.w r9 = y8.r.b     // Catch: java.lang.Throwable -> L3a
            java.lang.Object r12 = r12.getAndSet(r6, r9)     // Catch: java.lang.Throwable -> L3a
            r12.getClass()     // Catch: java.lang.Throwable -> L3a
            a9.w r9 = y8.r.c     // Catch: java.lang.Throwable -> L3a
            if (r12 != r9) goto Lc2
            goto L76
        Lc2:
            r0.b = r8     // Catch: java.lang.Throwable -> L3a
            r0.c = r7     // Catch: java.lang.Throwable -> L3a
            r0.d = r6     // Catch: java.lang.Throwable -> L3a
            r0.e = r2     // Catch: java.lang.Throwable -> L3a
            r0.f = r11     // Catch: java.lang.Throwable -> L3a
            r0.i = r4     // Catch: java.lang.Throwable -> L3a
            java.lang.Object r12 = r6.c(r0)     // Catch: java.lang.Throwable -> L3a
            if (r12 != r1) goto L76
        Ld4:
            return r1
        Ld5:
            r8.e(r6)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: y8.v.collect(y8.g, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z8.a
    public final z8.c[] d() {
        return new w[2];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y8.g
    public final Object emit(Object obj, Continuation continuation) {
        f(obj);
        return Unit.INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(Object obj) {
        int i;
        z8.c[] cVarArr;
        a9.w wVar;
        if (obj == null) {
            obj = z8.b.b;
        }
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
            if (Intrinsics.areEqual(atomicReferenceFieldUpdater.get(this), obj)) {
                return;
            }
            atomicReferenceFieldUpdater.set(this, obj);
            int i2 = this.e;
            if ((i2 & 1) != 0) {
                this.e = i2 + 2;
                return;
            }
            int i3 = i2 + 1;
            this.e = i3;
            z8.c[] cVarArr2 = this.b;
            Unit unit = Unit.INSTANCE;
            while (true) {
                w[] wVarArr = (w[]) cVarArr2;
                if (wVarArr != null) {
                    for (w wVar2 : wVarArr) {
                        if (wVar2 != null) {
                            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = w.a;
                            while (true) {
                                Object obj2 = atomicReferenceFieldUpdater2.get(wVar2);
                                if (obj2 == null || obj2 == (wVar = r.c)) {
                                    break;
                                }
                                a9.w wVar3 = r.b;
                                if (obj2 != wVar3) {
                                    do {
                                        if (atomicReferenceFieldUpdater2.compareAndSet(wVar2, obj2, wVar3)) {
                                            Result$Companion result$Companion = Result.Companion;
                                            ((v8.e) obj2).resumeWith(Result.constructor-impl(Unit.INSTANCE));
                                            break;
                                        }
                                    } while (atomicReferenceFieldUpdater2.get(wVar2) == obj2);
                                } else {
                                    do {
                                        if (atomicReferenceFieldUpdater2.compareAndSet(wVar2, obj2, wVar)) {
                                            break;
                                        }
                                    } while (atomicReferenceFieldUpdater2.get(wVar2) == obj2);
                                }
                            }
                        }
                    }
                }
                synchronized (this) {
                    i = this.e;
                    if (i == i3) {
                        this.e = i3 + 1;
                        return;
                    } else {
                        cVarArr = this.b;
                        Unit unit2 = Unit.INSTANCE;
                    }
                }
                cVarArr2 = cVarArr;
                i3 = i;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y8.t
    public final Object getValue() {
        a9.w wVar = z8.b.b;
        Object obj = f.get(this);
        if (obj == wVar) {
            return null;
        }
        return obj;
    }
}

package p253y8;

import p010a9.C0061w;
import p263z8.AbstractC3764b;

/* JADX INFO: renamed from: y8.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3681r {

    /* JADX INFO: renamed from: a */
    public static final C0061w f10901a = new C0061w("NO_VALUE", 0);

    /* JADX INFO: renamed from: b */
    public static final C0061w f10902b = new C0061w("NONE", 0);

    /* JADX INFO: renamed from: c */
    public static final C0061w f10903c = new C0061w("PENDING", 0);

    /* JADX INFO: renamed from: a */
    public static final C3685v m5904a(Object obj) {
        if (obj == null) {
            obj = AbstractC3764b.f11221b;
        }
        return new C3685v(obj);
    }

    /* JADX INFO: renamed from: b */
    public static final void m5905b(Object[] objArr, long j10, Object obj) {
        objArr[((int) j10) & (objArr.length - 1)] = obj;
    }

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
    /* JADX INFO: renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object m5906c(p253y8.InterfaceC3670g r7, p243x8.C3612p r8, boolean r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            boolean r0 = r10 instanceof p253y8.C3671h
            if (r0 == 0) goto L13
            r0 = r10
            y8.h r0 = (p253y8.C3671h) r0
            int r1 = r0.f10877g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f10877g = r1
            goto L18
        L13:
            y8.h r0 = new y8.h
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f10876f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f10877g
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L4d
            if (r2 == r5) goto L41
            if (r2 != r4) goto L3a
            boolean r9 = r0.f10875e
            x8.a r7 = r0.f10874d
            x8.f r8 = r0.f10873c
            y8.g r2 = r0.f10872b
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L38
        L34:
            r6 = r2
            r2 = r7
            r7 = r6
            goto L5a
        L38:
            r7 = move-exception
            goto L93
        L3a:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            p099j1.C1929i.m3030l(r7)
            r7 = 0
            return r7
        L41:
            boolean r9 = r0.f10875e
            x8.a r7 = r0.f10874d
            x8.f r8 = r0.f10873c
            y8.g r2 = r0.f10872b
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L38
            goto L6e
        L4d:
            kotlin.ResultKt.throwOnFailure(r10)
            x8.b r10 = r8.f10693e     // Catch: java.lang.Throwable -> L38
            r10.getClass()     // Catch: java.lang.Throwable -> L38
            x8.a r2 = new x8.a     // Catch: java.lang.Throwable -> L38
            r2.<init>(r10)     // Catch: java.lang.Throwable -> L38
        L5a:
            r0.f10872b = r7     // Catch: java.lang.Throwable -> L38
            r0.f10873c = r8     // Catch: java.lang.Throwable -> L38
            r0.f10874d = r2     // Catch: java.lang.Throwable -> L38
            r0.f10875e = r9     // Catch: java.lang.Throwable -> L38
            r0.f10877g = r5     // Catch: java.lang.Throwable -> L38
            java.lang.Object r10 = r2.m5723c(r0)     // Catch: java.lang.Throwable -> L38
            if (r10 != r1) goto L6b
            goto L8a
        L6b:
            r6 = r2
            r2 = r7
            r7 = r6
        L6e:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> L38
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Throwable -> L38
            if (r10 == 0) goto L8b
            java.lang.Object r10 = r7.m5724d()     // Catch: java.lang.Throwable -> L38
            r0.f10872b = r2     // Catch: java.lang.Throwable -> L38
            r0.f10873c = r8     // Catch: java.lang.Throwable -> L38
            r0.f10874d = r7     // Catch: java.lang.Throwable -> L38
            r0.f10875e = r9     // Catch: java.lang.Throwable -> L38
            r0.f10877g = r4     // Catch: java.lang.Throwable -> L38
            java.lang.Object r10 = r2.emit(r10, r0)     // Catch: java.lang.Throwable -> L38
            if (r10 != r1) goto L34
        L8a:
            return r1
        L8b:
            if (r9 == 0) goto L90
            r8.mo5731c(r3)
        L90:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L93:
            throw r7     // Catch: java.lang.Throwable -> L94
        L94:
            r10 = move-exception
            if (r9 == 0) goto Lad
            boolean r9 = r7 instanceof java.util.concurrent.CancellationException
            if (r9 == 0) goto L9e
            r3 = r7
            java.util.concurrent.CancellationException r3 = (java.util.concurrent.CancellationException) r3
        L9e:
            if (r3 != 0) goto Laa
            java.util.concurrent.CancellationException r3 = new java.util.concurrent.CancellationException
            java.lang.String r9 = "Channel was consumed, consumer had failed"
            r3.<init>(r9)
            r3.initCause(r7)
        Laa:
            r8.mo5731c(r3)
        Lad:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: p253y8.AbstractC3681r.m5906c(y8.g, x8.p, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

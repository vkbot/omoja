package w0;

import android.os.Debug;
import android.util.Log;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class s implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f5760b;
    public final /* synthetic */ long c;
    public final /* synthetic */ int d;
    public final /* synthetic */ String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f5761f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ long f5762g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ s(x xVar, long j9, int i9, String str, String str2, long j10) {
        this.f5760b = xVar;
        this.c = j9;
        this.d = i9;
        this.e = str;
        this.f5761f = str2;
        this.f5762g = j10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:108:0x0269 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:114:0x0272 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:156:0x02dc */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:186:0x03f6 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:209:0x00ec */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:57:0x017a */
    /* JADX WARN: Code duplicated, block: B:16:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:170:0x03c0 A[Catch: all -> 0x03cc, TryCatch #20 {all -> 0x03cc, blocks: (B:168:0x03bc, B:170:0x03c0, B:172:0x03c4, B:175:0x03ce), top: B:224:0x03bc, outer: #11 }] */
    /* JADX WARN: Code duplicated, block: B:178:0x03d5  */
    /* JADX WARN: Code duplicated, block: B:192:0x0400  */
    /* JADX WARN: Code duplicated, block: B:224:0x03bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r15v29 */
    /* JADX WARN: Type inference failed for: r15v30 */
    /* JADX WARN: Type inference failed for: r15v31 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5, types: [int] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v10 */
    /* JADX WARN: Type inference failed for: r18v11 */
    /* JADX WARN: Type inference failed for: r18v12 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r18v8 */
    /* JADX WARN: Type inference failed for: r18v9 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v12, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v19, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r1v46 */
    /* JADX WARN: Type inference failed for: r1v47 */
    /* JADX WARN: Type inference failed for: r1v48 */
    /* JADX WARN: Type inference failed for: r1v49 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v50 */
    /* JADX WARN: Type inference failed for: r1v51 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r20v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0, types: [w0.x] */
    /* JADX WARN: Type inference failed for: r32v0 */
    /* JADX WARN: Type inference failed for: r32v1 */
    /* JADX WARN: Type inference failed for: r32v10 */
    /* JADX WARN: Type inference failed for: r32v11 */
    /* JADX WARN: Type inference failed for: r32v12 */
    /* JADX WARN: Type inference failed for: r32v13 */
    /* JADX WARN: Type inference failed for: r32v14 */
    /* JADX WARN: Type inference failed for: r32v15 */
    /* JADX WARN: Type inference failed for: r32v2 */
    /* JADX WARN: Type inference failed for: r32v3, types: [long] */
    /* JADX WARN: Type inference failed for: r32v4 */
    /* JADX WARN: Type inference failed for: r32v5 */
    /* JADX WARN: Type inference failed for: r32v6 */
    /* JADX WARN: Type inference failed for: r32v7, types: [long] */
    /* JADX WARN: Type inference failed for: r32v9 */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.util.concurrent.ScheduledExecutorService, java.util.concurrent.ScheduledThreadPoolExecutor] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.util.concurrent.ScheduledExecutorService, java.util.concurrent.ScheduledThreadPoolExecutor] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [int] */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v31 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [long] */
    /* JADX WARN: Type inference failed for: r7v7, types: [long] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        boolean z8;
        ?? r32;
        ?? r18;
        ?? r33;
        ?? r19;
        boolean z9;
        int i9;
        ?? r9;
        ?? r34;
        ?? r110;
        boolean z10;
        ?? r35;
        boolean z11;
        char c;
        long j9;
        int i10;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        r rVar;
        TimeUnit timeUnit;
        ?? r10 = this.f5760b;
        ?? r11 = this.c;
        int i11 = this.d;
        String str = this.e;
        String str2 = this.f5761f;
        long j10 = this.f5762g;
        long jNanoTime = System.nanoTime();
        long jThreadCpuTimeNanos = Debug.threadCpuTimeNanos();
        ?? r1 = 8;
        ?? r14 = str;
        r10.r().e(e0.m.h(new byte[]{-15, 102, -27, -84, -85, -118, 30, 23, -35, 112, -4, -84, -73, -118}, new byte[]{-126, 3, -120, -51, -59, -2, 119, 116}), e0.m.h(new byte[]{98, -17, 109, 43, 72, 35, -122, -21, 98, -13, 113, 54, 69}, new byte[]{17, ByteCompanionObject.MIN_VALUE, 24, 89, 43, 70, -43, -114}), Long.valueOf((long) r11), e0.m.h(new byte[]{59, -35, -97, 10, 49, -126, 34, 122, 51, -42}, new byte[]{92, -72, -15, 111, 67, -29, 86, 19}), Integer.valueOf(i11), e0.m.h(new byte[]{79, 107, -49, 28, -8}, new byte[]{62, 30, -86, 110, -127, 27, 35, -116}), str);
        try {
            try {
                try {
                    u uVarB = r10.B(i11, r14, r11);
                    if (r10.T) {
                        try {
                            if (i11 != r10.W) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                        } catch (Throwable th) {
                            th = th;
                            r1 = 0;
                            r9 = 1;
                            r11 = 0;
                            r10.V = r1;
                            if (r10.T) {
                                r10.f5798b.schedule(new r(r10, r10.X, r10.Y, r9), r11, TimeUnit.MILLISECONDS);
                            }
                            throw th;
                        }
                    } else {
                        z10 = true;
                    }
                    g1 g1VarR = r10.r();
                    try {
                        String strH = e0.m.h(new byte[]{49, -56, 75, 102, 85, -63, -21, -124, 29, -56, 72, 99}, new byte[]{66, -83, 38, 7, 59, -75, -126, -25});
                        String strH2 = e0.m.h(new byte[]{-94, 11, -71, 11, -84, 26, -56, -114, -94, 23, -91, 22, -95}, new byte[]{-47, 100, -52, 121, -49, ByteCompanionObject.MAX_VALUE, -101, -21});
                        r18 = r14;
                        try {
                            Long lValueOf = Long.valueOf((long) r11);
                            boolean z12 = z10;
                            char c9 = 5;
                            try {
                                try {
                                    try {
                                        c9 = 5;
                                        r32 = r11;
                                        r11 = 0;
                                        r11 = 0;
                                        long j11 = 0;
                                        try {
                                            try {
                                                try {
                                                    try {
                                                        r11 = 8;
                                                        String strH3 = e0.m.h(new byte[]{-96, 100, -127, -51, -56, 27, -38, -104, -88, 111}, new byte[]{-57, 1, -17, -88, -70, 122, -82, -15});
                                                        z8 = false;
                                                        r1 = 0;
                                                        r1 = 0;
                                                        r1 = 0;
                                                        z11 = false;
                                                        try {
                                                            g1VarR.e(strH, strH2, lValueOf, strH3, Integer.valueOf(i11), e0.m.h(new byte[]{24, 69, 84, 82, 26}, new byte[]{105, 48, 49, 32, 99, 109, -44, 0}), r18, e0.m.h(new byte[]{-111, 36, 58, -17, -57}, new byte[]{-30, 80, 91, -125, -94, 52, 31, 117}), Boolean.valueOf(z12), e0.m.h(new byte[]{-74, -48, -121, -79, -37, -43, 64, -25, -97, -42}, new byte[]{-46, -91, -11, -48, -81, -68, 47, -119}), Double.valueOf(x.u(jNanoTime)), e0.m.h(new byte[]{-52, -67, -86, -71, -38}, new byte[]{-81, -51, -33, -12, -87, -53, -120, -85}), Double.valueOf(Math.max(0L, Debug.threadCpuTimeNanos() - jThreadCpuTimeNanos) / 1000000.0d), e0.m.h(new byte[]{91, -45, 112, 103, 36, 104, -43, 28, 99, -45, 101}, new byte[]{40, -74, 28, 2, 71, 28, -80, 120}), uVarB == null ? "" : j0.f.g(uVarB.f5768b), e0.m.h(new byte[]{-100, 91, -93, -124, ByteCompanionObject.MIN_VALUE, 113, -26, -101, -111, 81}, new byte[]{-8, 50, -62, -29, -18, 30, -107, -17}), r10.f5826z);
                                                            try {
                                                                if (uVarB != null && r10.T && i11 == r10.W) {
                                                                    synchronized (r10.O) {
                                                                        try {
                                                                            try {
                                                                                if (r10.T) {
                                                                                    try {
                                                                                        if (i11 == r10.W) {
                                                                                            i9 = 5;
                                                                                            i10 = 1;
                                                                                            try {
                                                                                                r10.d0(e0.m.h(new byte[]{-71, 57, -111, -126, 8, 98, 1, -4}, new byte[]{-54, 92, -4, -29, 102, 22, 104, -97}), j0.f.g(uVarB.f5768b), uVarB.f5767a, r10.f5826z, r32, str2, j10);
                                                                                                r34 = r32;
                                                                                                try {
                                                                                                    Log.i(r10.f5796a, e0.m.h(new byte[]{120, -125, 24, 30, -126, 57, 87, 118, 11, -123, 26, 18, -127, 44, 80, 113, 11, -117, 20, 11, -113, 37, 91, 113, 17, -58}, new byte[]{43, -26, 117, ByteCompanionObject.MAX_VALUE, -20, 77, 62, 21}) + uVarB.f5767a);
                                                                                                    r10.v(uVarB.f5768b, i11);
                                                                                                    j9 = 0;
                                                                                                } catch (Exception e) {
                                                                                                    e = e;
                                                                                                    r11 = 0;
                                                                                                    r110 = r18;
                                                                                                    g1 g1VarR2 = r10.r();
                                                                                                    byte[] bArr = new byte[i9];
                                                                                                    // fill-array-data instruction
                                                                                                    bArr[0] = -29;
                                                                                                    bArr[1] = -75;
                                                                                                    bArr[2] = -31;
                                                                                                    bArr[3] = 63;
                                                                                                    bArr[4] = -32;
                                                                                                    String strH4 = e0.m.h(bArr, new byte[]{-122, -57, -109, 80, -110, -3, -109, -53});
                                                                                                    byte[] bArr2 = new byte[i9];
                                                                                                    // fill-array-data instruction
                                                                                                    bArr2[0] = 70;
                                                                                                    bArr2[1] = -107;
                                                                                                    bArr2[2] = 37;
                                                                                                    bArr2[3] = -89;
                                                                                                    bArr2[4] = 124;
                                                                                                    String strH5 = e0.m.h(bArr2, new byte[]{53, -31, 68, -64, 25, 78, 95, -126});
                                                                                                    try {
                                                                                                        byte[] bArr3 = new byte[i9];
                                                                                                        // fill-array-data instruction
                                                                                                        bArr3[0] = 10;
                                                                                                        bArr3[1] = 75;
                                                                                                        bArr3[2] = 12;
                                                                                                        bArr3[3] = 80;
                                                                                                        bArr3[4] = -12;
                                                                                                        r9 = 1;
                                                                                                        try {
                                                                                                            g1VarR2.e(strH4, strH5, e0.m.h(new byte[]{-51, -59, 52, -45, 12, 19, -89, -125}, new byte[]{-66, -96, 89, -78, 98, 103, -50, -32}), e0.m.h(new byte[]{-98, -22, -48, -84, 20, 10, -102, ByteCompanionObject.MIN_VALUE, -98, -10, -52, -79, 25}, new byte[]{-19, -123, -91, -34, 119, 111, -55, -27}), Long.valueOf((long) r34), e0.m.h(new byte[]{-126, 56, 104, 82, -23, -106, -40, -13, -118, 51}, new byte[]{-27, 93, 6, 55, -101, -9, -84, -102}), Integer.valueOf(i11), e0.m.h(bArr3, new byte[]{123, 62, 105, 34, -115, -108, 67, 119}), r110, e0.m.h(new byte[]{109, -81, -66, 48, 64, 79, 101, -27, 68, -87}, new byte[]{9, -38, -52, 81, 52, 38, 10, -117}), Double.valueOf(x.u(jNanoTime)), e0.m.h(new byte[]{-91, 18, -113, -105}, new byte[]{-47, 107, -1, -14, -33, 3, -71, 112}), e.getClass().getSimpleName(), e0.m.h(new byte[]{-72, 4, 69, -75, 88, -4, 73}, new byte[]{-43, 97, 54, -58, 57, -101, 44, 58}), e.getMessage());
                                                                                                            Log.e(r10.f5796a, e0.m.h(new byte[]{51, 104, -117, 78, 62, 13, -34, 116, 64, 124, -109, 74, 34, 0, -105, 113, 1, 100, -118, 74, 52}, new byte[]{96, 13, -26, 47, 80, 121, -73, 23}), e);
                                                                                                            synchronized (r10.O) {
                                                                                                                try {
                                                                                                                    if (r10.T) {
                                                                                                                        r10.i(r10.f5802e0, r10.f5825y);
                                                                                                                    }
                                                                                                                    r10.V = r1;
                                                                                                                    if (r10.T) {
                                                                                                                    }
                                                                                                                } catch (Throwable th2) {
                                                                                                                    throw th2;
                                                                                                                }
                                                                                                            }
                                                                                                        } catch (Throwable th3) {
                                                                                                            th = th3;
                                                                                                            r10.V = r1;
                                                                                                            if (r10.T) {
                                                                                                                r10.f5798b.schedule(new r(r10, r10.X, r10.Y, r9), r11, TimeUnit.MILLISECONDS);
                                                                                                            }
                                                                                                            throw th;
                                                                                                        }
                                                                                                    } catch (Throwable th4) {
                                                                                                        th = th4;
                                                                                                        r9 = 1;
                                                                                                    }
                                                                                                } catch (Throwable th5) {
                                                                                                    th = th5;
                                                                                                    r9 = 1;
                                                                                                    r11 = 0;
                                                                                                    r10.V = r1;
                                                                                                    if (r10.T) {
                                                                                                        r10.f5798b.schedule(new r(r10, r10.X, r10.Y, r9), r11, TimeUnit.MILLISECONDS);
                                                                                                    }
                                                                                                    throw th;
                                                                                                }
                                                                                            } catch (Throwable th6) {
                                                                                                th = th6;
                                                                                                while (true) {
                                                                                                    try {
                                                                                                        throw th;
                                                                                                    } catch (Throwable th7) {
                                                                                                        th = th7;
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        scheduledThreadPoolExecutor.schedule(rVar, j9, timeUnit);
                                                                                    } catch (Throwable th8) {
                                                                                        th = th8;
                                                                                    }
                                                                                }
                                                                                r10.V = false;
                                                                                if (r10.T && !r10.X.isEmpty() && r10.Y == r10.W) {
                                                                                    String str3 = r10.X;
                                                                                    int i12 = r10.Y;
                                                                                    scheduledThreadPoolExecutor = r10.f5798b;
                                                                                    rVar = new r(r10, str3, i12, 1);
                                                                                    timeUnit = TimeUnit.MILLISECONDS;
                                                                                    j9 = 0;
                                                                                    scheduledThreadPoolExecutor.schedule(rVar, j9, timeUnit);
                                                                                }
                                                                                return;
                                                                            } catch (Throwable th9) {
                                                                                th = th9;
                                                                            }
                                                                        } catch (Throwable th10) {
                                                                            th = th10;
                                                                        }
                                                                    }
                                                                } else {
                                                                    j9 = 0;
                                                                    i10 = 1;
                                                                    if (uVarB == null && r10.T && i11 == r10.W) {
                                                                        synchronized (r10.O) {
                                                                            try {
                                                                                if (i11 == r10.W) {
                                                                                    r10.i(r10.f5802e0, r10.f5825y);
                                                                                }
                                                                            } catch (Throwable th11) {
                                                                                throw th11;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                r10.V = false;
                                                                if (r10.T && !r10.X.isEmpty() && r10.Y == r10.W) {
                                                                    String str4 = r10.X;
                                                                    int i13 = r10.Y;
                                                                    scheduledThreadPoolExecutor = r10.f5798b;
                                                                    rVar = new r(r10, str4, i13, i10);
                                                                    timeUnit = TimeUnit.MILLISECONDS;
                                                                    scheduledThreadPoolExecutor.schedule(rVar, j9, timeUnit);
                                                                }
                                                            } catch (Exception e6) {
                                                                e = e6;
                                                                i9 = strH3;
                                                                r110 = r18;
                                                                r34 = r32;
                                                            }
                                                        } catch (Exception e9) {
                                                            e = e9;
                                                            c = 5;
                                                            r35 = r32;
                                                            r11 = 0;
                                                            r1 = z11;
                                                            i9 = c;
                                                            r110 = r18;
                                                            r34 = r35;
                                                            g1 g1VarR3 = r10.r();
                                                            byte[] bArr4 = new byte[i9];
                                                            // fill-array-data instruction
                                                            bArr4[0] = -29;
                                                            bArr4[1] = -75;
                                                            bArr4[2] = -31;
                                                            bArr4[3] = 63;
                                                            bArr4[4] = -32;
                                                            String strH6 = e0.m.h(bArr4, new byte[]{-122, -57, -109, 80, -110, -3, -109, -53});
                                                            byte[] bArr5 = new byte[i9];
                                                            // fill-array-data instruction
                                                            bArr5[0] = 70;
                                                            bArr5[1] = -107;
                                                            bArr5[2] = 37;
                                                            bArr5[3] = -89;
                                                            bArr5[4] = 124;
                                                            String strH7 = e0.m.h(bArr5, new byte[]{53, -31, 68, -64, 25, 78, 95, -126});
                                                            byte[] bArr6 = new byte[i9];
                                                            // fill-array-data instruction
                                                            bArr6[0] = 10;
                                                            bArr6[1] = 75;
                                                            bArr6[2] = 12;
                                                            bArr6[3] = 80;
                                                            bArr6[4] = -12;
                                                            r9 = 1;
                                                            g1VarR3.e(strH6, strH7, e0.m.h(new byte[]{-51, -59, 52, -45, 12, 19, -89, -125}, new byte[]{-66, -96, 89, -78, 98, 103, -50, -32}), e0.m.h(new byte[]{-98, -22, -48, -84, 20, 10, -102, ByteCompanionObject.MIN_VALUE, -98, -10, -52, -79, 25}, new byte[]{-19, -123, -91, -34, 119, 111, -55, -27}), Long.valueOf((long) r34), e0.m.h(new byte[]{-126, 56, 104, 82, -23, -106, -40, -13, -118, 51}, new byte[]{-27, 93, 6, 55, -101, -9, -84, -102}), Integer.valueOf(i11), e0.m.h(bArr6, new byte[]{123, 62, 105, 34, -115, -108, 67, 119}), r110, e0.m.h(new byte[]{109, -81, -66, 48, 64, 79, 101, -27, 68, -87}, new byte[]{9, -38, -52, 81, 52, 38, 10, -117}), Double.valueOf(x.u(jNanoTime)), e0.m.h(new byte[]{-91, 18, -113, -105}, new byte[]{-47, 107, -1, -14, -33, 3, -71, 112}), e.getClass().getSimpleName(), e0.m.h(new byte[]{-72, 4, 69, -75, 88, -4, 73}, new byte[]{-43, 97, 54, -58, 57, -101, 44, 58}), e.getMessage());
                                                            Log.e(r10.f5796a, e0.m.h(new byte[]{51, 104, -117, 78, 62, 13, -34, 116, 64, 124, -109, 74, 34, 0, -105, 113, 1, 100, -118, 74, 52}, new byte[]{96, 13, -26, 47, 80, 121, -73, 23}), e);
                                                            synchronized (r10.O) {
                                                                if (r10.T) {
                                                                    r10.i(r10.f5802e0, r10.f5825y);
                                                                }
                                                                r10.V = r1;
                                                                if (r10.T) {
                                                                }
                                                            }
                                                        } catch (Throwable th12) {
                                                            th = th12;
                                                            r11 = 0;
                                                            r1 = z8;
                                                            r14 = 1;
                                                            r9 = r14;
                                                            r10.V = r1;
                                                            if (r10.T) {
                                                                r10.f5798b.schedule(new r(r10, r10.X, r10.Y, r9), r11, TimeUnit.MILLISECONDS);
                                                            }
                                                            throw th;
                                                        }
                                                    } catch (Exception e10) {
                                                        e = e10;
                                                        z9 = false;
                                                        j11 = 0;
                                                        r19 = r18;
                                                        r33 = r32;
                                                        i9 = 5;
                                                        r1 = z9;
                                                        r11 = j11;
                                                        r110 = r19;
                                                        r34 = r33;
                                                        g1 g1VarR4 = r10.r();
                                                        byte[] bArr7 = new byte[i9];
                                                        // fill-array-data instruction
                                                        bArr7[0] = -29;
                                                        bArr7[1] = -75;
                                                        bArr7[2] = -31;
                                                        bArr7[3] = 63;
                                                        bArr7[4] = -32;
                                                        String strH8 = e0.m.h(bArr7, new byte[]{-122, -57, -109, 80, -110, -3, -109, -53});
                                                        byte[] bArr8 = new byte[i9];
                                                        // fill-array-data instruction
                                                        bArr8[0] = 70;
                                                        bArr8[1] = -107;
                                                        bArr8[2] = 37;
                                                        bArr8[3] = -89;
                                                        bArr8[4] = 124;
                                                        String strH9 = e0.m.h(bArr8, new byte[]{53, -31, 68, -64, 25, 78, 95, -126});
                                                        byte[] bArr9 = new byte[i9];
                                                        // fill-array-data instruction
                                                        bArr9[0] = 10;
                                                        bArr9[1] = 75;
                                                        bArr9[2] = 12;
                                                        bArr9[3] = 80;
                                                        bArr9[4] = -12;
                                                        r9 = 1;
                                                        g1VarR4.e(strH8, strH9, e0.m.h(new byte[]{-51, -59, 52, -45, 12, 19, -89, -125}, new byte[]{-66, -96, 89, -78, 98, 103, -50, -32}), e0.m.h(new byte[]{-98, -22, -48, -84, 20, 10, -102, ByteCompanionObject.MIN_VALUE, -98, -10, -52, -79, 25}, new byte[]{-19, -123, -91, -34, 119, 111, -55, -27}), Long.valueOf((long) r34), e0.m.h(new byte[]{-126, 56, 104, 82, -23, -106, -40, -13, -118, 51}, new byte[]{-27, 93, 6, 55, -101, -9, -84, -102}), Integer.valueOf(i11), e0.m.h(bArr9, new byte[]{123, 62, 105, 34, -115, -108, 67, 119}), r110, e0.m.h(new byte[]{109, -81, -66, 48, 64, 79, 101, -27, 68, -87}, new byte[]{9, -38, -52, 81, 52, 38, 10, -117}), Double.valueOf(x.u(jNanoTime)), e0.m.h(new byte[]{-91, 18, -113, -105}, new byte[]{-47, 107, -1, -14, -33, 3, -71, 112}), e.getClass().getSimpleName(), e0.m.h(new byte[]{-72, 4, 69, -75, 88, -4, 73}, new byte[]{-43, 97, 54, -58, 57, -101, 44, 58}), e.getMessage());
                                                        Log.e(r10.f5796a, e0.m.h(new byte[]{51, 104, -117, 78, 62, 13, -34, 116, 64, 124, -109, 74, 34, 0, -105, 113, 1, 100, -118, 74, 52}, new byte[]{96, 13, -26, 47, 80, 121, -73, 23}), e);
                                                        synchronized (r10.O) {
                                                            if (r10.T) {
                                                                r10.i(r10.f5802e0, r10.f5825y);
                                                            }
                                                            r10.V = r1;
                                                            if (r10.T) {
                                                            }
                                                        }
                                                    }
                                                } catch (Throwable th13) {
                                                    th = th13;
                                                    r1 = 0;
                                                    r14 = 1;
                                                    r9 = r14;
                                                    r10.V = r1;
                                                    if (r10.T) {
                                                        r10.f5798b.schedule(new r(r10, r10.X, r10.Y, r9), r11, TimeUnit.MILLISECONDS);
                                                    }
                                                    throw th;
                                                }
                                            } catch (Exception e11) {
                                                e = e11;
                                                z9 = false;
                                                r19 = r18;
                                                r33 = r32;
                                                i9 = 5;
                                                r1 = z9;
                                                r11 = j11;
                                                r110 = r19;
                                                r34 = r33;
                                                g1 g1VarR5 = r10.r();
                                                byte[] bArr10 = new byte[i9];
                                                // fill-array-data instruction
                                                bArr10[0] = -29;
                                                bArr10[1] = -75;
                                                bArr10[2] = -31;
                                                bArr10[3] = 63;
                                                bArr10[4] = -32;
                                                String strH10 = e0.m.h(bArr10, new byte[]{-122, -57, -109, 80, -110, -3, -109, -53});
                                                byte[] bArr11 = new byte[i9];
                                                // fill-array-data instruction
                                                bArr11[0] = 70;
                                                bArr11[1] = -107;
                                                bArr11[2] = 37;
                                                bArr11[3] = -89;
                                                bArr11[4] = 124;
                                                String strH11 = e0.m.h(bArr11, new byte[]{53, -31, 68, -64, 25, 78, 95, -126});
                                                byte[] bArr12 = new byte[i9];
                                                // fill-array-data instruction
                                                bArr12[0] = 10;
                                                bArr12[1] = 75;
                                                bArr12[2] = 12;
                                                bArr12[3] = 80;
                                                bArr12[4] = -12;
                                                r9 = 1;
                                                g1VarR5.e(strH10, strH11, e0.m.h(new byte[]{-51, -59, 52, -45, 12, 19, -89, -125}, new byte[]{-66, -96, 89, -78, 98, 103, -50, -32}), e0.m.h(new byte[]{-98, -22, -48, -84, 20, 10, -102, ByteCompanionObject.MIN_VALUE, -98, -10, -52, -79, 25}, new byte[]{-19, -123, -91, -34, 119, 111, -55, -27}), Long.valueOf((long) r34), e0.m.h(new byte[]{-126, 56, 104, 82, -23, -106, -40, -13, -118, 51}, new byte[]{-27, 93, 6, 55, -101, -9, -84, -102}), Integer.valueOf(i11), e0.m.h(bArr12, new byte[]{123, 62, 105, 34, -115, -108, 67, 119}), r110, e0.m.h(new byte[]{109, -81, -66, 48, 64, 79, 101, -27, 68, -87}, new byte[]{9, -38, -52, 81, 52, 38, 10, -117}), Double.valueOf(x.u(jNanoTime)), e0.m.h(new byte[]{-91, 18, -113, -105}, new byte[]{-47, 107, -1, -14, -33, 3, -71, 112}), e.getClass().getSimpleName(), e0.m.h(new byte[]{-72, 4, 69, -75, 88, -4, 73}, new byte[]{-43, 97, 54, -58, 57, -101, 44, 58}), e.getMessage());
                                                Log.e(r10.f5796a, e0.m.h(new byte[]{51, 104, -117, 78, 62, 13, -34, 116, 64, 124, -109, 74, 34, 0, -105, 113, 1, 100, -118, 74, 52}, new byte[]{96, 13, -26, 47, 80, 121, -73, 23}), e);
                                                synchronized (r10.O) {
                                                    if (r10.T) {
                                                        r10.i(r10.f5802e0, r10.f5825y);
                                                    }
                                                    r10.V = r1;
                                                    if (r10.T) {
                                                    }
                                                }
                                            }
                                        } catch (Throwable th14) {
                                            th = th14;
                                            r1 = 0;
                                        }
                                    } catch (Exception e12) {
                                        e = e12;
                                        c9 = 5;
                                        r35 = r11;
                                        z11 = false;
                                        c = c9;
                                        r11 = 0;
                                        r1 = z11;
                                        i9 = c;
                                        r110 = r18;
                                        r34 = r35;
                                        g1 g1VarR6 = r10.r();
                                        byte[] bArr13 = new byte[i9];
                                        // fill-array-data instruction
                                        bArr13[0] = -29;
                                        bArr13[1] = -75;
                                        bArr13[2] = -31;
                                        bArr13[3] = 63;
                                        bArr13[4] = -32;
                                        String strH12 = e0.m.h(bArr13, new byte[]{-122, -57, -109, 80, -110, -3, -109, -53});
                                        byte[] bArr14 = new byte[i9];
                                        // fill-array-data instruction
                                        bArr14[0] = 70;
                                        bArr14[1] = -107;
                                        bArr14[2] = 37;
                                        bArr14[3] = -89;
                                        bArr14[4] = 124;
                                        String strH13 = e0.m.h(bArr14, new byte[]{53, -31, 68, -64, 25, 78, 95, -126});
                                        byte[] bArr15 = new byte[i9];
                                        // fill-array-data instruction
                                        bArr15[0] = 10;
                                        bArr15[1] = 75;
                                        bArr15[2] = 12;
                                        bArr15[3] = 80;
                                        bArr15[4] = -12;
                                        r9 = 1;
                                        g1VarR6.e(strH12, strH13, e0.m.h(new byte[]{-51, -59, 52, -45, 12, 19, -89, -125}, new byte[]{-66, -96, 89, -78, 98, 103, -50, -32}), e0.m.h(new byte[]{-98, -22, -48, -84, 20, 10, -102, ByteCompanionObject.MIN_VALUE, -98, -10, -52, -79, 25}, new byte[]{-19, -123, -91, -34, 119, 111, -55, -27}), Long.valueOf((long) r34), e0.m.h(new byte[]{-126, 56, 104, 82, -23, -106, -40, -13, -118, 51}, new byte[]{-27, 93, 6, 55, -101, -9, -84, -102}), Integer.valueOf(i11), e0.m.h(bArr15, new byte[]{123, 62, 105, 34, -115, -108, 67, 119}), r110, e0.m.h(new byte[]{109, -81, -66, 48, 64, 79, 101, -27, 68, -87}, new byte[]{9, -38, -52, 81, 52, 38, 10, -117}), Double.valueOf(x.u(jNanoTime)), e0.m.h(new byte[]{-91, 18, -113, -105}, new byte[]{-47, 107, -1, -14, -33, 3, -71, 112}), e.getClass().getSimpleName(), e0.m.h(new byte[]{-72, 4, 69, -75, 88, -4, 73}, new byte[]{-43, 97, 54, -58, 57, -101, 44, 58}), e.getMessage());
                                        Log.e(r10.f5796a, e0.m.h(new byte[]{51, 104, -117, 78, 62, 13, -34, 116, 64, 124, -109, 74, 34, 0, -105, 113, 1, 100, -118, 74, 52}, new byte[]{96, 13, -26, 47, 80, 121, -73, 23}), e);
                                        synchronized (r10.O) {
                                            if (r10.T && i11 == r10.W) {
                                                r10.i(r10.f5802e0, r10.f5825y);
                                            }
                                        }
                                        r10.V = r1;
                                        if (r10.T || r10.X.isEmpty() || r10.Y != r10.W) {
                                            return;
                                        }
                                        r10.f5798b.schedule(new r(r10, r10.X, r10.Y, 1), r11, TimeUnit.MILLISECONDS);
                                    }
                                } catch (Exception e13) {
                                    e = e13;
                                    c9 = 5;
                                }
                            } catch (Exception e14) {
                                e = e14;
                            }
                        } catch (Exception e15) {
                            e = e15;
                            r32 = r11;
                        }
                    } catch (Throwable th15) {
                        th = th15;
                        r1 = 0;
                        r11 = 0;
                    }
                } catch (Throwable th16) {
                    th = th16;
                    r9 = r14;
                    r10.V = r1;
                    if (r10.T && !r10.X.isEmpty() && r10.Y == r10.W) {
                        r10.f5798b.schedule(new r(r10, r10.X, r10.Y, r9), r11, TimeUnit.MILLISECONDS);
                    }
                    throw th;
                }
            } catch (Exception e16) {
                e = e16;
                r32 = r11;
                r18 = r14;
            }
        } catch (Throwable th17) {
            th = th17;
            z8 = false;
        }
    }
}

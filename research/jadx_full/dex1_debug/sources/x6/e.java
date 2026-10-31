package x6;

import java.util.ArrayList;
import z5.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final d f6037f = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f6.b f6038a;
    public boolean c;
    public final p e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f6039b = new ArrayList();
    public final int[] d = new int[5];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(f6.b bVar, p pVar) {
        this.f6038a = bVar;
        this.e = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float a(int[] iArr, int i9) {
        return ((i9 - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean b(int[] iArr) {
        int i9 = 0;
        for (int i10 = 0; i10 < 5; i10++) {
            int i11 = iArr[i10];
            if (i11 == 0) {
                return false;
            }
            i9 += i11;
        }
        if (i9 >= 7) {
            float f8 = i9 / 7.0f;
            float f9 = f8 / 2.0f;
            if (Math.abs(f8 - iArr[0]) < f9 && Math.abs(f8 - iArr[1]) < f9 && Math.abs((f8 * 3.0f) - iArr[2]) < 3.0f * f9 && Math.abs(f8 - iArr[3]) < f9 && Math.abs(f8 - iArr[4]) < f9) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static double e(c cVar, c cVar2) {
        double d = cVar.f6339a - cVar2.f6339a;
        double d9 = cVar.f6340b - cVar2.f6340b;
        return (d9 * d9) + (d * d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:222:0x01cc */
    /* JADX WARN: Code duplicated, block: B:65:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:72:0x010b A[ADDED_TO_REGION, LOOP:10: B:72:0x010b->B:77:0x0117, LOOP_START, PHI: r11
  0x010b: PHI (r11v5 int) = (r11v4 int), (r11v20 int) binds: [B:70:0x0105, B:77:0x0117] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [int] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [int] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [int] */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.util.ArrayList] */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:72:0x010b
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public final boolean c(int r20, int r21, int[] r22) {
        /*
            r19 = this;
            r0 = r19
            r1 = r22
            r2 = 0
            r3 = r1[r2]
            r4 = 1
            r5 = r1[r4]
            int r3 = r3 + r5
            r5 = 2
            r6 = r1[r5]
            int r3 = r3 + r6
            r6 = 3
            r7 = r1[r6]
            int r3 = r3 + r7
            r7 = 4
            r8 = r1[r7]
            int r3 = r3 + r8
            r8 = r21
            float r8 = a(r1, r8)
            int r8 = (int) r8
            r9 = r1[r5]
            f6.b r10 = r0.f6038a
            int r11 = r10.c
            int r12 = r10.f2258b
            int[] r13 = r0.d
            java.util.Arrays.fill(r13, r2)
            r14 = r20
        L2d:
            if (r14 < 0) goto L3d
            boolean r15 = r10.b(r8, r14)
            if (r15 == 0) goto L3d
            r15 = r13[r5]
            int r15 = r15 + r4
            r13[r5] = r15
            int r14 = r14 + (-1)
            goto L2d
        L3d:
            r15 = 5
            r16 = 2143289344(0x7fc00000, float:NaN)
            if (r14 >= 0) goto L48
            r17 = r5
        L44:
            r5 = r16
            goto Le8
        L48:
            if (r14 < 0) goto L5f
            boolean r17 = r10.b(r8, r14)
            if (r17 != 0) goto L5f
            r17 = r5
            r5 = r13[r4]
            if (r5 > r9) goto L61
            int r5 = r5 + 1
            r13[r4] = r5
            int r14 = r14 + (-1)
            r5 = r17
            goto L48
        L5f:
            r17 = r5
        L61:
            if (r14 < 0) goto L44
            r5 = r13[r4]
            if (r5 <= r9) goto L68
            goto L44
        L68:
            if (r14 < 0) goto L7b
            boolean r5 = r10.b(r8, r14)
            if (r5 == 0) goto L7b
            r5 = r13[r2]
            if (r5 > r9) goto L7b
            int r5 = r5 + 1
            r13[r2] = r5
            int r14 = r14 + (-1)
            goto L68
        L7b:
            r5 = r13[r2]
            if (r5 <= r9) goto L80
        L7f:
            goto L44
        L80:
            int r5 = r20 + 1
        L82:
            if (r5 >= r11) goto L92
            boolean r14 = r10.b(r8, r5)
            if (r14 == 0) goto L92
            r14 = r13[r17]
            int r14 = r14 + r4
            r13[r17] = r14
            int r5 = r5 + 1
            goto L82
        L92:
            if (r5 != r11) goto L95
            goto L7f
        L95:
            if (r5 >= r11) goto La8
            boolean r14 = r10.b(r8, r5)
            if (r14 != 0) goto La8
            r14 = r13[r6]
            if (r14 >= r9) goto La8
            int r14 = r14 + 1
            r13[r6] = r14
            int r5 = r5 + 1
            goto L95
        La8:
            if (r5 == r11) goto L44
            r14 = r13[r6]
            if (r14 < r9) goto Laf
            goto L44
        Laf:
            if (r5 >= r11) goto Lc2
            boolean r14 = r10.b(r8, r5)
            if (r14 == 0) goto Lc2
            r14 = r13[r7]
            if (r14 >= r9) goto Lc2
            int r14 = r14 + 1
            r13[r7] = r14
            int r5 = r5 + 1
            goto Laf
        Lc2:
            r11 = r13[r7]
            if (r11 < r9) goto Lc7
            goto L7f
        Lc7:
            r9 = r13[r2]
            r14 = r13[r4]
            int r9 = r9 + r14
            r14 = r13[r17]
            int r9 = r9 + r14
            r14 = r13[r6]
            int r9 = r9 + r14
            int r9 = r9 + r11
            int r9 = r9 - r3
            int r9 = java.lang.Math.abs(r9)
            int r9 = r9 * r15
            int r11 = r3 * 2
            if (r9 < r11) goto Lde
            goto L7f
        Lde:
            boolean r9 = b(r13)
            if (r9 == 0) goto L44
            float r5 = a(r13, r5)
        Le8:
            boolean r9 = java.lang.Float.isNaN(r5)
            if (r9 != 0) goto L329
            int r9 = (int) r5
            r1 = r1[r17]
            java.util.Arrays.fill(r13, r2)
            r11 = r8
        Lf5:
            if (r11 < 0) goto L105
            boolean r14 = r10.b(r11, r9)
            if (r14 == 0) goto L105
            r14 = r13[r17]
            int r14 = r14 + r4
            r13[r17] = r14
            int r11 = r11 + (-1)
            goto Lf5
        L105:
            if (r11 >= 0) goto L10b
        L107:
            r1 = r16
            goto L1a5
        L10b:
            if (r11 < 0) goto L11e
            boolean r14 = r10.b(r11, r9)
            if (r14 != 0) goto L11e
            r14 = r13[r4]
            if (r14 > r1) goto L11e
            int r14 = r14 + 1
            r13[r4] = r14
            int r11 = r11 + (-1)
            goto L10b
        L11e:
            if (r11 < 0) goto L107
            r14 = r13[r4]
            if (r14 <= r1) goto L125
            goto L107
        L125:
            if (r11 < 0) goto L138
            boolean r14 = r10.b(r11, r9)
            if (r14 == 0) goto L138
            r14 = r13[r2]
            if (r14 > r1) goto L138
            int r14 = r14 + 1
            r13[r2] = r14
            int r11 = r11 + (-1)
            goto L125
        L138:
            r11 = r13[r2]
            if (r11 <= r1) goto L13d
            goto L107
        L13d:
            int r8 = r8 + r4
        L13e:
            if (r8 >= r12) goto L14e
            boolean r11 = r10.b(r8, r9)
            if (r11 == 0) goto L14e
            r11 = r13[r17]
            int r11 = r11 + r4
            r13[r17] = r11
            int r8 = r8 + 1
            goto L13e
        L14e:
            if (r8 != r12) goto L151
            goto L107
        L151:
            if (r8 >= r12) goto L164
            boolean r11 = r10.b(r8, r9)
            if (r11 != 0) goto L164
            r11 = r13[r6]
            if (r11 >= r1) goto L164
            int r11 = r11 + 1
            r13[r6] = r11
            int r8 = r8 + 1
            goto L151
        L164:
            if (r8 == r12) goto L107
            r11 = r13[r6]
            if (r11 < r1) goto L16b
            goto L107
        L16b:
            if (r8 >= r12) goto L17e
            boolean r11 = r10.b(r8, r9)
            if (r11 == 0) goto L17e
            r11 = r13[r7]
            if (r11 >= r1) goto L17e
            int r11 = r11 + 1
            r13[r7] = r11
            int r8 = r8 + 1
            goto L16b
        L17e:
            r11 = r13[r7]
            if (r11 < r1) goto L183
            goto L107
        L183:
            r1 = r13[r2]
            r14 = r13[r4]
            int r1 = r1 + r14
            r14 = r13[r17]
            int r1 = r1 + r14
            r14 = r13[r6]
            int r1 = r1 + r14
            int r1 = r1 + r11
            int r1 = r1 - r3
            int r1 = java.lang.Math.abs(r1)
            int r1 = r1 * r15
            if (r1 < r3) goto L199
            goto L107
        L199:
            boolean r1 = b(r13)
            if (r1 == 0) goto L107
            float r16 = a(r13, r8)
            goto L107
        L1a5:
            boolean r8 = java.lang.Float.isNaN(r1)
            if (r8 != 0) goto L329
            int r8 = (int) r1
            java.util.Arrays.fill(r13, r2)
            r11 = r2
        L1b0:
            if (r9 < r11) goto L1ca
            if (r8 < r11) goto L1ca
            int r14 = r8 - r11
            r16 = r2
            int r2 = r9 - r11
            boolean r2 = r10.b(r14, r2)
            if (r2 == 0) goto L1cc
            r2 = r13[r17]
            int r2 = r2 + r4
            r13[r17] = r2
            int r11 = r11 + 1
            r2 = r16
            goto L1b0
        L1ca:
            r16 = r2
        L1cc:
            r2 = r13[r17]
            if (r2 != 0) goto L1d2
            goto L32b
        L1d2:
            if (r9 < r11) goto L1e8
            if (r8 < r11) goto L1e8
            int r2 = r8 - r11
            int r14 = r9 - r11
            boolean r2 = r10.b(r2, r14)
            if (r2 != 0) goto L1e8
            r2 = r13[r4]
            int r2 = r2 + r4
            r13[r4] = r2
            int r11 = r11 + 1
            goto L1d2
        L1e8:
            r2 = r13[r4]
            if (r2 != 0) goto L1ee
            goto L32b
        L1ee:
            if (r9 < r11) goto L204
            if (r8 < r11) goto L204
            int r2 = r8 - r11
            int r14 = r9 - r11
            boolean r2 = r10.b(r2, r14)
            if (r2 == 0) goto L204
            r2 = r13[r16]
            int r2 = r2 + r4
            r13[r16] = r2
            int r11 = r11 + 1
            goto L1ee
        L204:
            r2 = r13[r16]
            if (r2 != 0) goto L20a
            goto L32b
        L20a:
            int r2 = r10.c
            r11 = r4
        L20d:
            int r14 = r9 + r11
            r18 = r6
            if (r14 >= r2) goto L227
            int r6 = r8 + r11
            if (r6 >= r12) goto L227
            boolean r6 = r10.b(r6, r14)
            if (r6 == 0) goto L227
            r6 = r13[r17]
            int r6 = r6 + r4
            r13[r17] = r6
            int r11 = r11 + 1
            r6 = r18
            goto L20d
        L227:
            int r6 = r9 + r11
            if (r6 >= r2) goto L23d
            int r14 = r8 + r11
            if (r14 >= r12) goto L23d
            boolean r6 = r10.b(r14, r6)
            if (r6 != 0) goto L23d
            r6 = r13[r18]
            int r6 = r6 + r4
            r13[r18] = r6
            int r11 = r11 + 1
            goto L227
        L23d:
            r6 = r13[r18]
            if (r6 != 0) goto L243
            goto L32b
        L243:
            int r6 = r9 + r11
            if (r6 >= r2) goto L259
            int r14 = r8 + r11
            if (r14 >= r12) goto L259
            boolean r6 = r10.b(r14, r6)
            if (r6 == 0) goto L259
            r6 = r13[r7]
            int r6 = r6 + r4
            r13[r7] = r6
            int r11 = r11 + 1
            goto L243
        L259:
            r2 = r13[r7]
            if (r2 != 0) goto L25f
            goto L32b
        L25f:
            r2 = r16
            r6 = r2
        L262:
            if (r2 >= r15) goto L26e
            r8 = r13[r2]
            if (r8 != 0) goto L26a
            goto L32b
        L26a:
            int r6 = r6 + r8
            int r2 = r2 + 1
            goto L262
        L26e:
            r2 = 7
            if (r6 >= r2) goto L273
            goto L32b
        L273:
            float r2 = (float) r6
            r6 = 1088421888(0x40e00000, float:7.0)
            float r2 = r2 / r6
            r8 = 1068146622(0x3faa9fbe, float:1.333)
            float r8 = r2 / r8
            r9 = r13[r16]
            float r9 = (float) r9
            float r9 = r2 - r9
            float r9 = java.lang.Math.abs(r9)
            int r9 = (r9 > r8 ? 1 : (r9 == r8 ? 0 : -1))
            if (r9 >= 0) goto L32b
            r9 = r13[r4]
            float r9 = (float) r9
            float r9 = r2 - r9
            float r9 = java.lang.Math.abs(r9)
            int r9 = (r9 > r8 ? 1 : (r9 == r8 ? 0 : -1))
            if (r9 >= 0) goto L32b
            r9 = 1077936128(0x40400000, float:3.0)
            float r10 = r2 * r9
            r11 = r13[r17]
            float r11 = (float) r11
            float r10 = r10 - r11
            float r10 = java.lang.Math.abs(r10)
            float r9 = r9 * r8
            int r9 = (r10 > r9 ? 1 : (r10 == r9 ? 0 : -1))
            if (r9 >= 0) goto L32b
            r9 = r13[r18]
            float r9 = (float) r9
            float r9 = r2 - r9
            float r9 = java.lang.Math.abs(r9)
            int r9 = (r9 > r8 ? 1 : (r9 == r8 ? 0 : -1))
            if (r9 >= 0) goto L32b
            r7 = r13[r7]
            float r7 = (float) r7
            float r2 = r2 - r7
            float r2 = java.lang.Math.abs(r2)
            int r2 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r2 >= 0) goto L32b
            float r2 = (float) r3
            float r2 = r2 / r6
            r3 = r16
        L2c4:
            java.util.ArrayList r6 = r0.f6039b
            int r7 = r6.size()
            if (r3 >= r7) goto L319
            java.lang.Object r7 = r6.get(r3)
            x6.c r7 = (x6.c) r7
            float r8 = r7.c
            float r9 = r7.f6339a
            float r10 = r7.f6340b
            float r11 = r5 - r10
            float r11 = java.lang.Math.abs(r11)
            int r11 = (r11 > r2 ? 1 : (r11 == r2 ? 0 : -1))
            if (r11 > 0) goto L316
            float r11 = r1 - r9
            float r11 = java.lang.Math.abs(r11)
            int r11 = (r11 > r2 ? 1 : (r11 == r2 ? 0 : -1))
            if (r11 > 0) goto L316
            float r11 = r2 - r8
            float r11 = java.lang.Math.abs(r11)
            r12 = 1065353216(0x3f800000, float:1.0)
            int r12 = (r11 > r12 ? 1 : (r11 == r12 ? 0 : -1))
            if (r12 <= 0) goto L2fc
            int r8 = (r11 > r8 ? 1 : (r11 == r8 ? 0 : -1))
            if (r8 > 0) goto L316
        L2fc:
            int r8 = r7.d
            int r11 = r8 + 1
            float r8 = (float) r8
            float r9 = r9 * r8
            float r9 = r9 + r1
            float r1 = (float) r11
            float r9 = r9 / r1
            float r10 = r10 * r8
            float r10 = r10 + r5
            float r10 = r10 / r1
            float r5 = r7.c
            float r8 = r8 * r5
            float r8 = r8 + r2
            float r8 = r8 / r1
            x6.c r1 = new x6.c
            r1.<init>(r9, r10, r8, r11)
            r6.set(r3, r1)
            return r4
        L316:
            int r3 = r3 + 1
            goto L2c4
        L319:
            x6.c r3 = new x6.c
            r3.<init>(r1, r5, r2, r4)
            r6.add(r3)
            z5.p r1 = r0.e
            if (r1 == 0) goto L328
            r1.a(r3)
        L328:
            return r4
        L329:
            r16 = r2
        L32b:
            return r16
        */
        throw new UnsupportedOperationException("Method not decompiled: x6.e.c(int, int, int[]):boolean");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean d() {
        ArrayList arrayList = this.f6039b;
        int size = arrayList.size();
        int size2 = arrayList.size();
        float fAbs = 0.0f;
        int i9 = 0;
        int i10 = 0;
        float f8 = 0.0f;
        while (i10 < size2) {
            Object obj = arrayList.get(i10);
            i10++;
            c cVar = (c) obj;
            if (cVar.d >= 2) {
                i9++;
                f8 += cVar.c;
            }
        }
        if (i9 >= 3) {
            float f9 = f8 / size;
            int size3 = arrayList.size();
            int i11 = 0;
            while (i11 < size3) {
                Object obj2 = arrayList.get(i11);
                i11++;
                fAbs += Math.abs(((c) obj2).c - f9);
            }
            if (fAbs <= f8 * 0.05f) {
                return true;
            }
        }
        return false;
    }
}

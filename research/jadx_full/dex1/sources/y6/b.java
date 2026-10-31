package y6;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.location.LocationRequestCompat;
import j1.i;
import p0.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f6138a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[][] f6139b = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};
    public static final int[][] c = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};
    public static final int[][] d = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, 126, -1}, new int[]{6, 26, 52, 78, LocationRequestCompat.QUALITY_LOW_POWER, 130, -1}, new int[]{6, 30, 56, 82, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, 126, 150}, new int[]{6, 24, 50, 76, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};
    public static final int[][] e = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int a(c cVar, boolean z8) {
        int i9 = cVar.f4552b;
        int i10 = cVar.c;
        int i11 = z8 ? i10 : i9;
        if (!z8) {
            i9 = i10;
        }
        byte[][] bArr = (byte[][]) cVar.d;
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            byte b9 = -1;
            int i14 = 0;
            for (int i15 = 0; i15 < i9; i15++) {
                byte b10 = z8 ? bArr[i13][i15] : bArr[i15][i13];
                if (b10 == b9) {
                    i14++;
                } else {
                    if (i14 >= 5) {
                        i12 += i14 - 2;
                    }
                    i14 = 1;
                    b9 = b10;
                }
            }
            if (i14 >= 5) {
                i12 = (i14 - 2) + i12;
            }
        }
        return i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v17 ??, new type: boolean
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    public static void b(f6.a r29, int r30, w6.f r31, int r32, p0.c r33) {
        /*
            r0 = r29
            r1 = r30
            r2 = r32
            r3 = r33
            java.lang.Object r4 = r3.d
            byte[][] r4 = (byte[][]) r4
            int r5 = r3.f4552b
            int r6 = r3.c
            int r7 = r4.length
            r8 = 0
            r9 = r8
        L13:
            r10 = -1
            if (r9 >= r7) goto L1e
            r11 = r4[r9]
            java.util.Arrays.fill(r11, r10)
            int r9 = r9 + 1
            goto L13
        L1e:
            int[][] r7 = y6.b.f6139b
            r7 = r7[r8]
            int r7 = r7.length
            e(r8, r8, r3)
            int r7 = r5 - r7
            e(r7, r8, r3)
            e(r8, r7, r3)
            r7 = 7
            d(r8, r7, r3)
            int r9 = r5 + (-8)
            d(r9, r7, r3)
            d(r8, r9, r3)
            f(r7, r8, r3)
            int r11 = r6 + (-8)
            f(r11, r8, r3)
            int r12 = r6 + (-7)
            f(r7, r12, r3)
            r13 = 8
            byte r14 = r3.a(r13, r11)
            if (r14 == 0) goto L2b1
            r14 = 1
            r3.c(r13, r11, r14)
            r11 = r31
            int r11 = r11.f5943a
            r16 = r8
            r8 = 2
            if (r11 >= r8) goto L64
            r19 = r14
        L5e:
            r21 = r4
            r24 = r5
            goto Ld6
        L64:
            int r17 = r11 + (-1)
            int[][] r18 = y6.b.d
            r19 = r14
            r14 = r18[r17]
            int r10 = r14.length
            r8 = r16
        L6f:
            if (r8 >= r10) goto L5e
            r7 = r14[r8]
            if (r7 < 0) goto Lc8
            int r13 = r14.length
            r15 = r16
        L78:
            if (r15 >= r13) goto Lc8
            r21 = r4
            r4 = r14[r15]
            if (r4 < 0) goto Lbc
            byte r22 = r3.a(r4, r7)
            boolean r22 = g(r22)
            if (r22 == 0) goto Lbc
            int r4 = r4 + (-2)
            int r22 = r7 + (-2)
            r23 = r4
            r24 = r5
            r4 = r16
        L94:
            r5 = 5
            if (r4 >= r5) goto Lb9
            int[][] r20 = y6.b.c
            r25 = r20[r4]
            r26 = r4
            r4 = r16
        L9f:
            if (r4 >= r5) goto Lb4
            int r5 = r23 + r4
            r27 = r4
            int r4 = r22 + r26
            r28 = r7
            r7 = r25[r27]
            r3.c(r5, r4, r7)
            int r4 = r27 + 1
            r7 = r28
            r5 = 5
            goto L9f
        Lb4:
            r28 = r7
            int r4 = r26 + 1
            goto L94
        Lb9:
            r28 = r7
            goto Lbf
        Lbc:
            r24 = r5
            goto Lb9
        Lbf:
            int r15 = r15 + 1
            r4 = r21
            r5 = r24
            r7 = r28
            goto L78
        Lc8:
            r21 = r4
            r24 = r5
            int r8 = r8 + 1
            r4 = r21
            r5 = r24
            r7 = 7
            r13 = 8
            goto L6f
        Ld6:
            r4 = 8
        Ld8:
            r5 = 6
            if (r4 >= r9) goto Lfb
            int r7 = r4 + 1
            int r8 = r7 % 2
            byte r10 = r3.a(r4, r5)
            boolean r10 = g(r10)
            if (r10 == 0) goto Lec
            r3.c(r4, r5, r8)
        Lec:
            byte r10 = r3.a(r5, r4)
            boolean r10 = g(r10)
            if (r10 == 0) goto Lf9
            r3.c(r5, r4, r8)
        Lf9:
            r4 = r7
            goto Ld8
        Lfb:
            f6.a r4 = new f6.a
            r4.<init>()
            if (r2 < 0) goto L2a9
            r7 = 8
            if (r2 >= r7) goto L2a9
            r7 = 1
            if (r1 == r7) goto L118
            r7 = 2
            if (r1 == r7) goto L117
            r8 = 3
            if (r1 == r8) goto L115
            r8 = 4
            if (r1 != r8) goto L113
            goto L118
        L113:
            r0 = 0
            throw r0
        L115:
            r7 = r8
            goto L118
        L117:
            r7 = 0
        L118:
            r1 = 3
            int r7 = r7 << r1
            r7 = r7 | r2
            r8 = 5
            r4.b(r7, r8)
            r8 = 1335(0x537, float:1.871E-42)
            int r7 = c(r7, r8)
            r8 = 10
            r4.b(r7, r8)
            f6.a r7 = new f6.a
            r7.<init>()
            r8 = 21522(0x5412, float:3.0159E-41)
            r9 = 15
            r7.b(r8, r9)
            int r8 = r4.c
            int r10 = r7.c
            if (r8 != r10) goto L2a3
            r8 = r16
        L13e:
            int[] r10 = r4.f2257b
            int r13 = r10.length
            if (r8 >= r13) goto L14f
            r13 = r10[r8]
            int[] r14 = r7.f2257b
            r14 = r14[r8]
            r13 = r13 ^ r14
            r10[r8] = r13
            int r8 = r8 + 1
            goto L13e
        L14f:
            int r7 = r4.c
            java.lang.String r8 = "should not happen but we got: "
            if (r7 != r9) goto L28f
            r7 = r16
        L157:
            int r9 = r4.c
            if (r7 >= r9) goto L185
            int r9 = r9 + (-1)
            int r9 = r9 - r7
            boolean r9 = r4.d(r9)
            int[][] r10 = y6.b.e
            r10 = r10[r7]
            r13 = r10[r16]
            r10 = r10[r19]
            r10 = r21[r10]
            byte r9 = (byte) r9
            r10[r13] = r9
            r10 = 8
            if (r7 >= r10) goto L179
            int r13 = r24 - r7
            int r13 = r13 + (-1)
            r14 = r10
            goto L17e
        L179:
            int r13 = r7 + (-8)
            int r13 = r13 + r12
            r14 = r13
            r13 = r10
        L17e:
            r14 = r21[r14]
            r14[r13] = r9
            int r7 = r7 + 1
            goto L157
        L185:
            r7 = 7
            if (r11 >= r7) goto L189
            goto L1c4
        L189:
            f6.a r4 = new f6.a
            r4.<init>()
            r4.b(r11, r5)
            r7 = 7973(0x1f25, float:1.1173E-41)
            int r7 = c(r11, r7)
            r9 = 12
            r4.b(r7, r9)
            int r7 = r4.c
            r9 = 18
            if (r7 != r9) goto L27b
            r7 = 17
            r8 = r16
        L1a6:
            if (r8 >= r5) goto L1c4
            r9 = r16
        L1aa:
            if (r9 >= r1) goto L1c1
            boolean r10 = r4.d(r7)
            int r7 = r7 + (-1)
            int r11 = r6 + (-11)
            int r11 = r11 + r9
            r12 = r21[r11]
            byte r10 = (byte) r10
            r12[r8] = r10
            r12 = r21[r8]
            r12[r11] = r10
            int r9 = r9 + 1
            goto L1aa
        L1c1:
            int r8 = r8 + 1
            goto L1a6
        L1c4:
            int r4 = r24 + (-1)
            int r7 = r6 + (-1)
            r8 = r16
            r9 = -1
        L1cb:
            if (r4 <= 0) goto L258
            if (r4 != r5) goto L1d1
            int r4 = r4 + (-1)
        L1d1:
            if (r7 < 0) goto L250
            if (r7 >= r6) goto L250
            r10 = r16
            r11 = 2
        L1d8:
            if (r10 >= r11) goto L24d
            int r12 = r4 - r10
            byte r13 = r3.a(r12, r7)
            boolean r13 = g(r13)
            if (r13 == 0) goto L249
            int r13 = r0.c
            if (r8 >= r13) goto L1f2
            boolean r13 = r0.d(r8)
            int r8 = r8 + 1
        L1f0:
            r14 = -1
            goto L1f5
        L1f2:
            r13 = r16
            goto L1f0
        L1f5:
            if (r2 == r14) goto L243
            switch(r2) {
                case 0: goto L235;
                case 1: goto L232;
                case 2: goto L22f;
                case 3: goto L22b;
                case 4: goto L222;
                case 5: goto L21a;
                case 6: goto L214;
                case 7: goto L208;
                default: goto L1fa;
            }
        L1fa:
            java.lang.String r0 = "Invalid mask pattern: "
            java.lang.String r1 = java.lang.String.valueOf(r2)
            java.lang.String r0 = r0.concat(r1)
            j1.i.k(r0)
            return
        L208:
            int r15 = r7 * r12
            int r15 = r15 % r1
            int r17 = r7 + r12
            r17 = r17 & 1
        L20f:
            int r15 = r15 + r17
        L211:
            r15 = r15 & 1
            goto L238
        L214:
            int r15 = r7 * r12
            r17 = r15 & 1
            int r15 = r15 % r1
            goto L20f
        L21a:
            int r15 = r7 * r12
            r17 = r15 & 1
            int r15 = r15 % r1
            int r15 = r15 + r17
            goto L238
        L222:
            int r15 = r7 / 2
            int r17 = r12 / 3
            int r17 = r17 + r15
            r15 = r17 & 1
            goto L238
        L22b:
            int r15 = r7 + r12
            int r15 = r15 % r1
            goto L238
        L22f:
            int r15 = r12 % 3
            goto L238
        L232:
            r15 = r7 & 1
            goto L238
        L235:
            int r15 = r7 + r12
            goto L211
        L238:
            if (r15 != 0) goto L23d
            r15 = r19
            goto L23f
        L23d:
            r15 = r16
        L23f:
            if (r15 == 0) goto L243
            r13 = r13 ^ 1
        L243:
            r15 = r21[r7]
            byte r13 = (byte) r13
            r15[r12] = r13
            goto L24a
        L249:
            r14 = -1
        L24a:
            int r10 = r10 + 1
            goto L1d8
        L24d:
            r14 = -1
            int r7 = r7 + r9
            goto L1d1
        L250:
            r11 = 2
            r14 = -1
            int r9 = -r9
            int r7 = r7 + r9
            int r4 = r4 + (-2)
            goto L1cb
        L258:
            int r1 = r0.c
            if (r8 != r1) goto L25d
            return
        L25d:
            f7.b r1 = new f7.b
            int r0 = r0.c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Not all bits consumed: "
            r2.<init>(r3)
            r2.append(r8)
            r3 = 47
            r2.append(r3)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L27b:
            f7.b r0 = new f7.b
            int r1 = r4.c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>(r8)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            r0.<init>(r1)
            throw r0
        L28f:
            f7.b r0 = new f7.b
            int r1 = r4.c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>(r8)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            r0.<init>(r1)
            throw r0
        L2a3:
            java.lang.String r0 = "Sizes don't match"
            j1.i.k(r0)
            return
        L2a9:
            f7.b r0 = new f7.b
            java.lang.String r1 = "Invalid mask pattern"
            r0.<init>(r1)
            throw r0
        L2b1:
            f7.b r0 = new f7.b
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: y6.b.b(f6.a, int, w6.f, int, p0.c):void");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int c(int i9, int i10) {
        if (i10 == 0) {
            i.k("0 polynomial");
            return 0;
        }
        int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i10);
        int i11 = 32 - iNumberOfLeadingZeros;
        int iNumberOfLeadingZeros2 = i9 << (31 - iNumberOfLeadingZeros);
        while (32 - Integer.numberOfLeadingZeros(iNumberOfLeadingZeros2) >= i11) {
            iNumberOfLeadingZeros2 ^= i10 << ((32 - Integer.numberOfLeadingZeros(iNumberOfLeadingZeros2)) - i11);
        }
        return iNumberOfLeadingZeros2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void d(int i9, int i10, c cVar) throws f7.b {
        for (int i11 = 0; i11 < 8; i11++) {
            int i12 = i9 + i11;
            if (!g(cVar.a(i12, i10))) {
                throw new f7.b();
            }
            cVar.c(i12, i10, 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void e(int i9, int i10, c cVar) {
        for (int i11 = 0; i11 < 7; i11++) {
            int[] iArr = f6139b[i11];
            for (int i12 = 0; i12 < 7; i12++) {
                cVar.c(i9 + i12, i10 + i11, iArr[i12]);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void f(int i9, int i10, c cVar) throws f7.b {
        for (int i11 = 0; i11 < 7; i11++) {
            int i12 = i10 + i11;
            if (!g(cVar.a(i9, i12))) {
                throw new f7.b();
            }
            cVar.c(i9, i12, 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean g(int i9) {
        return i9 == -1;
    }
}

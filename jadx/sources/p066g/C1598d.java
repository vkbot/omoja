package p066g;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.fragment.app.FragmentTransaction;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.UByte;
import p108k.C2019g;
import p108k.InterfaceC2014b;
import p120l.C2187d;

/* JADX INFO: renamed from: g.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1598d {

    /* JADX INFO: renamed from: a */
    public int[] f3993a;

    /* JADX INFO: renamed from: c */
    public final C2187d f3995c;

    /* JADX INFO: renamed from: d */
    public ByteBuffer f3996d;

    /* JADX INFO: renamed from: e */
    public byte[] f3997e;

    /* JADX INFO: renamed from: f */
    public short[] f3998f;

    /* JADX INFO: renamed from: g */
    public byte[] f3999g;

    /* JADX INFO: renamed from: h */
    public byte[] f4000h;

    /* JADX INFO: renamed from: i */
    public byte[] f4001i;

    /* JADX INFO: renamed from: j */
    public final int[] f4002j;

    /* JADX INFO: renamed from: k */
    public int f4003k;

    /* JADX INFO: renamed from: l */
    public C1596b f4004l;

    /* JADX INFO: renamed from: m */
    public Bitmap f4005m;

    /* JADX INFO: renamed from: n */
    public final boolean f4006n;

    /* JADX INFO: renamed from: o */
    public int f4007o;

    /* JADX INFO: renamed from: p */
    public final int f4008p;

    /* JADX INFO: renamed from: q */
    public final int f4009q;

    /* JADX INFO: renamed from: r */
    public final int f4010r;

    /* JADX INFO: renamed from: s */
    public Boolean f4011s;

    /* JADX INFO: renamed from: b */
    public final int[] f3994b = new int[256];

    /* JADX INFO: renamed from: t */
    public Bitmap.Config f4012t = Bitmap.Config.ARGB_8888;

    public C1598d(C2187d c2187d, C1596b c1596b, ByteBuffer byteBuffer, int i10) {
        this.f3995c = c2187d;
        this.f4004l = new C1596b();
        synchronized (this) {
            try {
                if (i10 <= 0) {
                    throw new IllegalArgumentException("Sample size must be >=0, not: " + i10);
                }
                int iHighestOneBit = Integer.highestOneBit(i10);
                int i11 = 0;
                this.f4007o = 0;
                this.f4004l = c1596b;
                this.f4003k = -1;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.f3996d = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                this.f3996d.order(ByteOrder.LITTLE_ENDIAN);
                this.f4006n = false;
                ArrayList arrayList = c1596b.f3982e;
                int size = arrayList.size();
                while (i11 < size) {
                    Object obj = arrayList.get(i11);
                    i11++;
                    if (((C1595a) obj).f3973g == 3) {
                        this.f4006n = true;
                        break;
                    }
                }
                this.f4008p = iHighestOneBit;
                int i12 = c1596b.f3983f;
                this.f4010r = i12 / iHighestOneBit;
                int i13 = c1596b.f3984g;
                this.f4009q = i13 / iHighestOneBit;
                int i14 = i12 * i13;
                C2019g c2019g = (C2019g) this.f3995c.f5706d;
                this.f4001i = c2019g == null ? new byte[i14] : (byte[]) c2019g.m3106c(i14, byte[].class);
                C2187d c2187d2 = this.f3995c;
                int i15 = this.f4010r * this.f4009q;
                C2019g c2019g2 = (C2019g) c2187d2.f5706d;
                this.f4002j = c2019g2 == null ? new int[i15] : (int[]) c2019g2.m3106c(i15, int[].class);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final Bitmap m2682a() {
        Boolean bool = this.f4011s;
        Bitmap bitmapMo1140b = ((InterfaceC2014b) this.f3995c.f5705c).mo1140b(this.f4010r, this.f4009q, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f4012t);
        bitmapMo1140b.setHasAlpha(true);
        return bitmapMo1140b;
    }

    /* JADX INFO: renamed from: b */
    public final synchronized Bitmap m2683b() {
        try {
            if (this.f4004l.f3980c <= 0 || this.f4003k < 0) {
                if (Log.isLoggable("d", 3)) {
                    Log.d("d", "Unable to decode frame, frameCount=" + this.f4004l.f3980c + ", framePointer=" + this.f4003k);
                }
                this.f4007o = 1;
            }
            int i10 = this.f4007o;
            if (i10 != 1 && i10 != 2) {
                this.f4007o = 0;
                if (this.f3997e == null) {
                    C2019g c2019g = (C2019g) this.f3995c.f5706d;
                    this.f3997e = c2019g == null ? new byte[255] : (byte[]) c2019g.m3106c(255, byte[].class);
                }
                C1595a c1595a = (C1595a) this.f4004l.f3982e.get(this.f4003k);
                int i11 = this.f4003k - 1;
                C1595a c1595a2 = i11 >= 0 ? (C1595a) this.f4004l.f3982e.get(i11) : null;
                int[] iArr = c1595a.f3977k;
                if (iArr == null) {
                    iArr = this.f4004l.f3978a;
                }
                this.f3993a = iArr;
                if (iArr == null) {
                    if (Log.isLoggable("d", 3)) {
                        Log.d("d", "No valid color table found for frame #" + this.f4003k);
                    }
                    this.f4007o = 1;
                    return null;
                }
                if (c1595a.f3972f) {
                    System.arraycopy(iArr, 0, this.f3994b, 0, iArr.length);
                    int[] iArr2 = this.f3994b;
                    this.f3993a = iArr2;
                    iArr2[c1595a.f3974h] = 0;
                    if (c1595a.f3973g == 2 && this.f4003k == 0) {
                        this.f4011s = Boolean.TRUE;
                    }
                }
                return m2685d(c1595a, c1595a2);
            }
            if (Log.isLoggable("d", 3)) {
                Log.d("d", "Unable to decode frame, status=" + this.f4007o);
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m2684c(Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
        if (config == config3 || config == (config2 = Bitmap.Config.RGB_565)) {
            this.f4012t = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + config3 + " or " + config2);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0047  */
    /* JADX WARN: Code duplicated, block: B:98:0x01dc A[PHI: r5
  0x01dc: PHI (r5v44 int) = (r5v38 int), (r5v46 int), (r5v46 int) binds: [B:93:0x01c8, B:95:0x01d3, B:96:0x01d5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v31, types: [short] */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX INFO: renamed from: d */
    public final Bitmap m2685d(C1595a c1595a, C1595a c1595a2) {
        byte b10;
        int i10;
        int i11;
        int i12;
        int[] iArr;
        int i13;
        int i14;
        short s5;
        int i15;
        Bitmap bitmap;
        int i16;
        C2187d c2187d = this.f3995c;
        byte b11 = 0;
        int[] iArr2 = this.f4002j;
        if (c1595a2 == null) {
            Bitmap bitmap2 = this.f4005m;
            if (bitmap2 != null) {
                ((InterfaceC2014b) c2187d.f5705c).mo1141c(bitmap2);
            }
            this.f4005m = null;
            Arrays.fill(iArr2, 0);
        }
        if (c1595a2 != null && c1595a2.f3973g == 3 && this.f4005m == null) {
            Arrays.fill(iArr2, 0);
        }
        if (c1595a2 != null && (i15 = c1595a2.f3973g) > 0) {
            if (i15 == 2) {
                if (c1595a.f3972f) {
                    i16 = 0;
                } else {
                    C1596b c1596b = this.f4004l;
                    i16 = c1596b.f3988k;
                    if (c1595a.f3977k != null && c1596b.f3987j == c1595a.f3974h) {
                        i16 = 0;
                    }
                }
                int i17 = c1595a2.f3970d;
                int i18 = this.f4008p;
                int i19 = i17 / i18;
                int i20 = c1595a2.f3968b / i18;
                int i21 = c1595a2.f3969c / i18;
                int i22 = c1595a2.f3967a / i18;
                int i23 = this.f4010r;
                int i24 = (i20 * i23) + i22;
                int i25 = (i19 * i23) + i24;
                while (i24 < i25) {
                    int i26 = i24 + i21;
                    for (int i27 = i24; i27 < i26; i27++) {
                        iArr2[i27] = i16;
                    }
                    i24 += this.f4010r;
                }
            } else if (i15 == 3 && (bitmap = this.f4005m) != null) {
                int i28 = this.f4009q;
                int i29 = this.f4010r;
                bitmap.getPixels(iArr2, 0, i29, 0, 0, i29, i28);
            }
        }
        this.f3996d.position(c1595a.f3976j);
        int i30 = c1595a.f3969c * c1595a.f3970d;
        byte[] bArr = this.f4001i;
        if (bArr == null || bArr.length < i30) {
            C2019g c2019g = (C2019g) c2187d.f5706d;
            this.f4001i = c2019g == null ? new byte[i30] : (byte[]) c2019g.m3106c(i30, byte[].class);
        }
        byte[] bArr2 = this.f4001i;
        if (this.f3998f == null) {
            this.f3998f = new short[4096];
        }
        short[] sArr = this.f3998f;
        if (this.f3999g == null) {
            this.f3999g = new byte[4096];
        }
        byte[] bArr3 = this.f3999g;
        if (this.f4000h == null) {
            this.f4000h = new byte[FragmentTransaction.TRANSIT_FRAGMENT_OPEN];
        }
        byte[] bArr4 = this.f4000h;
        int i31 = this.f3996d.get() & UByte.MAX_VALUE;
        int i32 = 1;
        int i33 = 1 << i31;
        int i34 = i33 + 1;
        int i35 = i33 + 2;
        int i36 = i31 + 1;
        int i37 = (1 << i36) - 1;
        int i38 = 0;
        while (i38 < i33) {
            sArr[i38] = 0;
            bArr3[i38] = (byte) i38;
            i38++;
            i32 = i32;
        }
        int i39 = i32;
        byte[] bArr5 = this.f3997e;
        int i40 = 0;
        int i41 = 0;
        int i42 = 0;
        int i43 = 0;
        int i44 = 0;
        int i45 = 0;
        int i46 = 0;
        int i47 = 0;
        int i48 = i36;
        int i49 = i35;
        int i50 = i37;
        int i51 = -1;
        while (true) {
            if (i40 >= i30) {
                iArr2 = iArr2;
                b10 = b11;
                break;
            }
            if (i41 == 0) {
                i14 = -1;
                int i52 = this.f3996d.get() & UByte.MAX_VALUE;
                if (i52 > 0) {
                    ByteBuffer byteBuffer = this.f3996d;
                    byteBuffer.get(this.f3997e, 0, Math.min(i52, byteBuffer.remaining()));
                }
                if (i52 <= 0) {
                    this.f4007o = 3;
                    b10 = 0;
                    break;
                }
                i41 = i52;
                i42 = 0;
            } else {
                sArr = sArr;
                iArr2 = iArr2;
                i14 = -1;
            }
            i44 += (bArr5[i42] & UByte.MAX_VALUE) << i43;
            i42++;
            i41--;
            i43 += 8;
            i49 = i49;
            int i53 = i48;
            i51 = i51;
            i46 = i46;
            while (true) {
                i43 = i43;
                if (i43 < i53) {
                    i48 = i53;
                    b11 = 0;
                    break;
                }
                int i54 = i44 & i50;
                i44 >>= i53;
                i43 -= i53;
                if (i54 == i33) {
                    i53 = i36;
                    i49 = i35;
                    i50 = i37;
                    i43 = i43;
                    i51 = i14;
                } else {
                    if (i54 == i34) {
                        i48 = i53;
                        b11 = 0;
                        break;
                    }
                    int i55 = i53;
                    if (i51 == i14) {
                        bArr2[i45] = bArr3[i54];
                        i45++;
                        i40++;
                        i51 = i54;
                        i46 = i51;
                        i53 = i55;
                    } else {
                        if (i54 >= i49) {
                            bArr4[i47] = (byte) i46;
                            i47++;
                            s5 = i51;
                        } else {
                            s5 = i54;
                        }
                        while (s5 >= i33) {
                            bArr4[i47] = bArr3[s5];
                            i47++;
                            s5 = sArr[s5];
                        }
                        i46 = bArr3[s5] & UByte.MAX_VALUE;
                        byte b12 = (byte) i46;
                        bArr2[i45] = b12;
                        while (true) {
                            i45++;
                            i40++;
                            if (i47 <= 0) {
                                break;
                            }
                            i47--;
                            bArr2[i45] = bArr4[i47];
                        }
                        if (i49 < 4096) {
                            sArr[i49] = (short) i51;
                            bArr3[i49] = b12;
                            i49++;
                            if ((i49 & i50) != 0 || i49 >= 4096) {
                                i53 = i55;
                            } else {
                                i53 = i55 + 1;
                                i50 += i49;
                            }
                        } else {
                            i53 = i55;
                        }
                        i51 = i54;
                    }
                    i14 = -1;
                }
            }
        }
        Arrays.fill(bArr2, i45, i30, b10);
        if (c1595a.f3971e || this.f4008p != i39) {
            int i56 = c1595a.f3970d;
            int i57 = this.f4008p;
            int i58 = i56 / i57;
            int i59 = c1595a.f3968b / i57;
            int i60 = c1595a.f3969c / i57;
            int i61 = c1595a.f3967a / i57;
            boolean z9 = this.f4003k == 0;
            byte[] bArr6 = this.f4001i;
            int[] iArr3 = this.f3993a;
            Boolean bool = this.f4011s;
            int i62 = 8;
            int i63 = 0;
            int i64 = 1;
            int i65 = 0;
            while (i65 < i58) {
                if (c1595a.f3971e) {
                    if (i63 >= i58) {
                        i64++;
                        if (i64 == 2) {
                            i63 = 4;
                        } else if (i64 == 3) {
                            i62 = 4;
                            i63 = 2;
                        } else if (i64 == 4) {
                            i63 = 1;
                            i62 = 2;
                        }
                    }
                    i10 = i63 + i62;
                } else {
                    i10 = i63;
                    i63 = i65;
                }
                int i66 = i63 + i59;
                int i67 = i58;
                boolean z10 = i57 == 1;
                if (i66 < this.f4009q) {
                    int i68 = this.f4010r;
                    int i69 = i66 * i68;
                    int i70 = i69 + i61;
                    int i71 = i70 + i60;
                    int i72 = i69 + i68;
                    if (i72 < i71) {
                        i71 = i72;
                    }
                    i11 = i57;
                    int i73 = i65 * i57 * c1595a.f3969c;
                    int[] iArr4 = this.f4002j;
                    if (z10) {
                        int i74 = i70;
                        while (i74 < i71) {
                            int i75 = i74;
                            int i76 = iArr3[bArr6[i73] & UByte.MAX_VALUE];
                            if (i76 != 0) {
                                iArr4[i75] = i76;
                            } else if (z9 && bool == null) {
                                bool = Boolean.TRUE;
                            }
                            i73 += i11;
                            i74 = i75 + 1;
                        }
                    } else {
                        int i77 = ((i71 - i70) * i11) + i73;
                        int i78 = i70;
                        while (i78 < i71) {
                            int i79 = i71;
                            int i80 = c1595a.f3969c;
                            int i81 = i78;
                            int i82 = i73;
                            int i83 = 0;
                            int i84 = 0;
                            int i85 = 0;
                            int i86 = 0;
                            int i87 = 0;
                            while (true) {
                                if (i82 >= this.f4008p + i73) {
                                    i12 = i60;
                                    break;
                                }
                                byte[] bArr7 = this.f4001i;
                                i12 = i60;
                                if (i82 >= bArr7.length || i82 >= i77) {
                                    break;
                                }
                                int i88 = this.f3993a[bArr7[i82] & UByte.MAX_VALUE];
                                if (i88 != 0) {
                                    i83 += (i88 >> 24) & 255;
                                    i84 += (i88 >> 16) & 255;
                                    i85 += (i88 >> 8) & 255;
                                    i86 += i88 & 255;
                                    i87++;
                                }
                                i82++;
                                i60 = i12;
                            }
                            int i89 = i73 + i80;
                            int i90 = i89;
                            while (i90 < this.f4008p + i89) {
                                byte[] bArr8 = this.f4001i;
                                int i91 = i89;
                                if (i90 >= bArr8.length || i90 >= i77) {
                                    break;
                                }
                                int i92 = this.f3993a[bArr8[i90] & UByte.MAX_VALUE];
                                if (i92 != 0) {
                                    i83 += (i92 >> 24) & 255;
                                    i84 += (i92 >> 16) & 255;
                                    i85 += (i92 >> 8) & 255;
                                    i86 += i92 & 255;
                                    i87++;
                                }
                                i90++;
                                i89 = i91;
                            }
                            int i93 = i87 == 0 ? 0 : ((i83 / i87) << 24) | ((i84 / i87) << 16) | ((i85 / i87) << 8) | (i86 / i87);
                            if (i93 != 0) {
                                iArr4[i81] = i93;
                            } else if (z9 && bool == null) {
                                bool = Boolean.TRUE;
                            }
                            i73 += i11;
                            i78 = i81 + 1;
                            i71 = i79;
                            i60 = i12;
                        }
                    }
                    i65++;
                    i63 = i10;
                    i58 = i67;
                    i59 = i59;
                    i57 = i11;
                    i60 = i60;
                } else {
                    i11 = i57;
                }
                i65++;
                i63 = i10;
                i58 = i67;
                i59 = i59;
                i57 = i11;
                i60 = i60;
            }
            if (this.f4011s == null) {
                this.f4011s = Boolean.valueOf(bool == null ? false : bool.booleanValue());
            }
        } else {
            int i94 = c1595a.f3970d;
            int i95 = c1595a.f3968b;
            int i96 = c1595a.f3969c;
            int i97 = c1595a.f3967a;
            byte b13 = this.f4003k == 0 ? (byte) 1 : b10;
            byte[] bArr9 = this.f4001i;
            int[] iArr5 = this.f3993a;
            byte b14 = -1;
            for (int i98 = b10; i98 < i94; i98++) {
                int i99 = this.f4010r;
                int i100 = (i98 + i95) * i99;
                int i101 = i100 + i97;
                int i102 = i101 + i96;
                int i103 = i100 + i99;
                if (i103 < i102) {
                    i102 = i103;
                }
                int i104 = c1595a.f3969c * i98;
                while (i101 < i102) {
                    byte b15 = bArr9[i104];
                    int i105 = b15 & UByte.MAX_VALUE;
                    if (i105 != b14) {
                        int i106 = iArr5[i105];
                        if (i106 != 0) {
                            this.f4002j[i101] = i106;
                        } else {
                            b14 = b15;
                        }
                    }
                    i104++;
                    i101++;
                }
            }
            Boolean bool2 = this.f4011s;
            this.f4011s = Boolean.valueOf((bool2 != null && bool2.booleanValue()) || !(this.f4011s != null || b13 == 0 || b14 == -1));
        }
        if (this.f4006n && ((i13 = c1595a.f3973g) == 0 || i13 == 1)) {
            if (this.f4005m == null) {
                this.f4005m = m2682a();
            }
            Bitmap bitmap3 = this.f4005m;
            int i107 = this.f4009q;
            int i108 = this.f4010r;
            iArr = iArr2;
            bitmap3.setPixels(iArr, 0, i108, 0, 0, i108, i107);
        } else {
            iArr = iArr2;
        }
        Bitmap bitmapM2682a = m2682a();
        int i109 = this.f4009q;
        int i110 = this.f4010r;
        bitmapM2682a.setPixels(iArr, 0, i110, 0, 0, i110, i109);
        return bitmapM2682a;
    }
}

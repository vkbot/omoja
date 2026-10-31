package g;

import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.util.Log;
import androidx.fragment.app.FragmentTransaction;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import k.g;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f2315a;
    public final l.d c;
    public ByteBuffer d;
    public byte[] e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public short[] f2317f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte[] f2318g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f2319h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f2320i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f2321j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2322k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public b f2323l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Bitmap f2324m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f2325n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2326o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f2327p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f2328q;
    public final int r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Boolean f2329s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f2316b = new int[256];
    public Bitmap$Config t = Bitmap$Config.ARGB_8888;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(l.d dVar, b bVar, ByteBuffer byteBuffer, int i9) {
        this.c = dVar;
        this.f2323l = new b();
        synchronized (this) {
            try {
                if (i9 <= 0) {
                    throw new IllegalArgumentException("Sample size must be >=0, not: " + i9);
                }
                int iHighestOneBit = Integer.highestOneBit(i9);
                int i10 = 0;
                this.f2326o = 0;
                this.f2323l = bVar;
                this.f2322k = -1;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.d = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                this.d.order(ByteOrder.LITTLE_ENDIAN);
                this.f2325n = false;
                ArrayList arrayList = bVar.e;
                int size = arrayList.size();
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    if (((a) obj).f2300g == 3) {
                        this.f2325n = true;
                        break;
                    }
                }
                this.f2327p = iHighestOneBit;
                int i11 = bVar.f2307f;
                this.r = i11 / iHighestOneBit;
                int i12 = bVar.f2308g;
                this.f2328q = i12 / iHighestOneBit;
                int i13 = i11 * i12;
                g gVar = (g) this.c.d;
                this.f2320i = gVar == null ? new byte[i13] : (byte[]) gVar.c(i13, byte[].class);
                l.d dVar2 = this.c;
                int i14 = this.r * this.f2328q;
                g gVar2 = (g) dVar2.d;
                this.f2321j = gVar2 == null ? new int[i14] : (int[]) gVar2.c(i14, int[].class);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Bitmap a() {
        Boolean bool = this.f2329s;
        Bitmap bitmapB = ((k.b) this.c.c).b(this.r, this.f2328q, (bool == null || bool.booleanValue()) ? Bitmap$Config.ARGB_8888 : this.t);
        bitmapB.setHasAlpha(true);
        return bitmapB;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized Bitmap b() {
        try {
            if (this.f2323l.c <= 0 || this.f2322k < 0) {
                if (Log.isLoggable("d", 3)) {
                    Log.d("d", "Unable to decode frame, frameCount=" + this.f2323l.c + ", framePointer=" + this.f2322k);
                }
                this.f2326o = 1;
            }
            int i9 = this.f2326o;
            if (i9 != 1 && i9 != 2) {
                this.f2326o = 0;
                if (this.e == null) {
                    g gVar = (g) this.c.d;
                    this.e = gVar == null ? new byte[255] : (byte[]) gVar.c(255, byte[].class);
                }
                a aVar = (a) this.f2323l.e.get(this.f2322k);
                int i10 = this.f2322k - 1;
                a aVar2 = i10 >= 0 ? (a) this.f2323l.e.get(i10) : null;
                int[] iArr = aVar.f2304k;
                if (iArr == null) {
                    iArr = this.f2323l.f2305a;
                }
                this.f2315a = iArr;
                if (iArr == null) {
                    if (Log.isLoggable("d", 3)) {
                        Log.d("d", "No valid color table found for frame #" + this.f2322k);
                    }
                    this.f2326o = 1;
                    return null;
                }
                if (aVar.f2299f) {
                    System.arraycopy(iArr, 0, this.f2316b, 0, iArr.length);
                    int[] iArr2 = this.f2316b;
                    this.f2315a = iArr2;
                    iArr2[aVar.f2301h] = 0;
                    if (aVar.f2300g == 2 && this.f2322k == 0) {
                        this.f2329s = Boolean.TRUE;
                    }
                }
                return d(aVar, aVar2);
            }
            if (Log.isLoggable("d", 3)) {
                Log.d("d", "Unable to decode frame, status=" + this.f2326o);
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(Bitmap$Config bitmap$Config) {
        Bitmap$Config bitmap$Config2;
        Bitmap$Config bitmap$Config3 = Bitmap$Config.ARGB_8888;
        if (bitmap$Config == bitmap$Config3 || bitmap$Config == (bitmap$Config2 = Bitmap$Config.RGB_565)) {
            this.t = bitmap$Config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + bitmap$Config + ", must be one of " + bitmap$Config3 + " or " + bitmap$Config2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:251:? */
    /* JADX WARN: Code duplicated, block: B:26:0x0047  */
    /* JADX WARN: Code duplicated, block: B:98:0x01dc A[PHI: r5
  0x01dc: PHI (r5v44 int) = (r5v38 int), (r5v46 int), (r5v46 int) binds: [B:93:0x01c8, B:95:0x01d3, B:96:0x01d5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v31, types: [short] */
    /* JADX WARN: Type inference failed for: r6v33 */
    public final Bitmap d(a aVar, a aVar2) {
        byte b9;
        int i9;
        int i10;
        int i11;
        int[] iArr;
        int i12;
        int i13;
        short s5;
        int i14;
        Bitmap bitmap;
        int i15;
        l.d dVar = this.c;
        byte b10 = 0;
        int[] iArr2 = this.f2321j;
        if (aVar2 == null) {
            Bitmap bitmap2 = this.f2324m;
            if (bitmap2 != null) {
                ((k.b) dVar.c).c(bitmap2);
            }
            this.f2324m = null;
            Arrays.fill(iArr2, 0);
        }
        if (aVar2 != null && aVar2.f2300g == 3 && this.f2324m == null) {
            Arrays.fill(iArr2, 0);
        }
        if (aVar2 != null && (i14 = aVar2.f2300g) > 0) {
            if (i14 == 2) {
                if (aVar.f2299f) {
                    i15 = 0;
                } else {
                    b bVar = this.f2323l;
                    i15 = bVar.f2312k;
                    if (aVar.f2304k != null && bVar.f2311j == aVar.f2301h) {
                        i15 = 0;
                    }
                }
                int i16 = aVar2.d;
                int i17 = this.f2327p;
                int i18 = i16 / i17;
                int i19 = aVar2.f2298b / i17;
                int i20 = aVar2.c / i17;
                int i21 = aVar2.f2297a / i17;
                int i22 = this.r;
                int i23 = (i19 * i22) + i21;
                int i24 = (i18 * i22) + i23;
                while (i23 < i24) {
                    int i25 = i23 + i20;
                    for (int i26 = i23; i26 < i25; i26++) {
                        iArr2[i26] = i15;
                    }
                    i23 += this.r;
                }
            } else if (i14 == 3 && (bitmap = this.f2324m) != null) {
                int i27 = this.f2328q;
                int i28 = this.r;
                bitmap.getPixels(iArr2, 0, i28, 0, 0, i28, i27);
            }
        }
        this.d.position(aVar.f2303j);
        int i29 = aVar.c * aVar.d;
        byte[] bArr = this.f2320i;
        if (bArr == null || bArr.length < i29) {
            g gVar = (g) dVar.d;
            this.f2320i = gVar == null ? new byte[i29] : (byte[]) gVar.c(i29, byte[].class);
        }
        byte[] bArr2 = this.f2320i;
        if (this.f2317f == null) {
            this.f2317f = new short[4096];
        }
        short[] sArr = this.f2317f;
        if (this.f2318g == null) {
            this.f2318g = new byte[4096];
        }
        byte[] bArr3 = this.f2318g;
        if (this.f2319h == null) {
            this.f2319h = new byte[FragmentTransaction.TRANSIT_FRAGMENT_OPEN];
        }
        byte[] bArr4 = this.f2319h;
        int i30 = this.d.get() & UByte.MAX_VALUE;
        int i31 = 1;
        int i32 = 1 << i30;
        int i33 = i32 + 1;
        int i34 = i32 + 2;
        int i35 = i30 + 1;
        int i36 = (1 << i35) - 1;
        int i37 = 0;
        while (i37 < i32) {
            sArr[i37] = 0;
            bArr3[i37] = (byte) i37;
            i37++;
            i31 = i31;
        }
        int i38 = i31;
        byte[] bArr5 = this.e;
        int i39 = 0;
        int i40 = 0;
        int i41 = 0;
        int i42 = 0;
        int i43 = 0;
        int i44 = 0;
        int i45 = 0;
        int i46 = 0;
        int i47 = i35;
        int i48 = i34;
        int i49 = i36;
        int i50 = -1;
        while (true) {
            if (i39 >= i29) {
                iArr2 = iArr2;
                b9 = b10;
                break;
            }
            if (i40 == 0) {
                i13 = -1;
                int i51 = this.d.get() & UByte.MAX_VALUE;
                if (i51 > 0) {
                    ByteBuffer byteBuffer = this.d;
                    byteBuffer.get(this.e, 0, Math.min(i51, byteBuffer.remaining()));
                }
                if (i51 <= 0) {
                    this.f2326o = 3;
                    b9 = 0;
                    break;
                }
                i40 = i51;
                i41 = 0;
            } else {
                sArr = sArr;
                iArr2 = iArr2;
                i13 = -1;
            }
            i43 += (bArr5[i41] & UByte.MAX_VALUE) << i42;
            i41++;
            i40--;
            i42 += 8;
            i48 = i48;
            int i52 = i47;
            i50 = i50;
            i45 = i45;
            while (true) {
                i42 = i42;
                if (i42 < i52) {
                    i47 = i52;
                    b10 = 0;
                    break;
                }
                int i53 = i43 & i49;
                i43 >>= i52;
                i42 -= i52;
                if (i53 == i32) {
                    i52 = i35;
                    i48 = i34;
                    i49 = i36;
                    i42 = i42;
                    i50 = i13;
                } else {
                    if (i53 == i33) {
                        i47 = i52;
                        b10 = 0;
                        break;
                    }
                    int i54 = i52;
                    if (i50 == i13) {
                        bArr2[i44] = bArr3[i53];
                        i44++;
                        i39++;
                        i50 = i53;
                        i45 = i50;
                        i52 = i54;
                    } else {
                        if (i53 >= i48) {
                            bArr4[i46] = (byte) i45;
                            i46++;
                            s5 = i50;
                        } else {
                            s5 = i53;
                        }
                        while (s5 >= i32) {
                            bArr4[i46] = bArr3[s5];
                            i46++;
                            s5 = sArr[s5];
                        }
                        i45 = bArr3[s5] & UByte.MAX_VALUE;
                        byte b11 = (byte) i45;
                        bArr2[i44] = b11;
                        while (true) {
                            i44++;
                            i39++;
                            if (i46 <= 0) {
                                break;
                            }
                            i46--;
                            bArr2[i44] = bArr4[i46];
                        }
                        if (i48 < 4096) {
                            sArr[i48] = (short) i50;
                            bArr3[i48] = b11;
                            i48++;
                            if ((i48 & i49) != 0 || i48 >= 4096) {
                                i52 = i54;
                            } else {
                                i52 = i54 + 1;
                                i49 += i48;
                            }
                        } else {
                            i52 = i54;
                        }
                        i50 = i53;
                    }
                    i13 = -1;
                }
            }
        }
        Arrays.fill(bArr2, i44, i29, b9);
        if (aVar.e || this.f2327p != i38) {
            int i55 = aVar.d;
            int i56 = this.f2327p;
            int i57 = i55 / i56;
            int i58 = aVar.f2298b / i56;
            int i59 = aVar.c / i56;
            int i60 = aVar.f2297a / i56;
            boolean z8 = this.f2322k == 0;
            byte[] bArr6 = this.f2320i;
            int[] iArr3 = this.f2315a;
            Boolean bool = this.f2329s;
            int i61 = 8;
            int i62 = 0;
            int i63 = 1;
            int i64 = 0;
            while (i64 < i57) {
                if (aVar.e) {
                    if (i62 >= i57) {
                        i63++;
                        if (i63 == 2) {
                            i62 = 4;
                        } else if (i63 == 3) {
                            i61 = 4;
                            i62 = 2;
                        } else if (i63 == 4) {
                            i62 = 1;
                            i61 = 2;
                        }
                    }
                    i9 = i62 + i61;
                } else {
                    i9 = i62;
                    i62 = i64;
                }
                int i65 = i62 + i58;
                int i66 = i57;
                boolean z9 = i56 == 1;
                if (i65 < this.f2328q) {
                    int i67 = this.r;
                    int i68 = i65 * i67;
                    int i69 = i68 + i60;
                    int i70 = i69 + i59;
                    int i71 = i68 + i67;
                    if (i71 < i70) {
                        i70 = i71;
                    }
                    i10 = i56;
                    int i72 = i64 * i56 * aVar.c;
                    int[] iArr4 = this.f2321j;
                    if (z9) {
                        int i73 = i69;
                        while (i73 < i70) {
                            int i74 = i73;
                            int i75 = iArr3[bArr6[i72] & UByte.MAX_VALUE];
                            if (i75 != 0) {
                                iArr4[i74] = i75;
                            } else if (z8 && bool == null) {
                                bool = Boolean.TRUE;
                            }
                            i72 += i10;
                            i73 = i74 + 1;
                        }
                    } else {
                        int i76 = ((i70 - i69) * i10) + i72;
                        int i77 = i69;
                        while (i77 < i70) {
                            int i78 = i70;
                            int i79 = aVar.c;
                            int i80 = i77;
                            int i81 = i72;
                            int i82 = 0;
                            int i83 = 0;
                            int i84 = 0;
                            int i85 = 0;
                            int i86 = 0;
                            while (true) {
                                if (i81 >= this.f2327p + i72) {
                                    i11 = i59;
                                    break;
                                }
                                byte[] bArr7 = this.f2320i;
                                i11 = i59;
                                if (i81 >= bArr7.length || i81 >= i76) {
                                    break;
                                }
                                int i87 = this.f2315a[bArr7[i81] & UByte.MAX_VALUE];
                                if (i87 != 0) {
                                    i82 += (i87 >> 24) & 255;
                                    i83 += (i87 >> 16) & 255;
                                    i84 += (i87 >> 8) & 255;
                                    i85 += i87 & 255;
                                    i86++;
                                }
                                i81++;
                                i59 = i11;
                            }
                            int i88 = i72 + i79;
                            int i89 = i88;
                            while (i89 < this.f2327p + i88) {
                                byte[] bArr8 = this.f2320i;
                                int i90 = i88;
                                if (i89 >= bArr8.length || i89 >= i76) {
                                    break;
                                }
                                int i91 = this.f2315a[bArr8[i89] & UByte.MAX_VALUE];
                                if (i91 != 0) {
                                    i82 += (i91 >> 24) & 255;
                                    i83 += (i91 >> 16) & 255;
                                    i84 += (i91 >> 8) & 255;
                                    i85 += i91 & 255;
                                    i86++;
                                }
                                i89++;
                                i88 = i90;
                            }
                            int i92 = i86 == 0 ? 0 : ((i82 / i86) << 24) | ((i83 / i86) << 16) | ((i84 / i86) << 8) | (i85 / i86);
                            if (i92 != 0) {
                                iArr4[i80] = i92;
                            } else if (z8 && bool == null) {
                                bool = Boolean.TRUE;
                            }
                            i72 += i10;
                            i77 = i80 + 1;
                            i70 = i78;
                            i59 = i11;
                        }
                    }
                    i64++;
                    i62 = i9;
                    i57 = i66;
                    i58 = i58;
                    i56 = i10;
                    i59 = i59;
                } else {
                    i10 = i56;
                }
                i64++;
                i62 = i9;
                i57 = i66;
                i58 = i58;
                i56 = i10;
                i59 = i59;
            }
            if (this.f2329s == null) {
                this.f2329s = Boolean.valueOf(bool == null ? false : bool.booleanValue());
            }
        } else {
            int i93 = aVar.d;
            int i94 = aVar.f2298b;
            int i95 = aVar.c;
            int i96 = aVar.f2297a;
            byte b12 = this.f2322k == 0 ? (byte) 1 : b9;
            byte[] bArr9 = this.f2320i;
            int[] iArr5 = this.f2315a;
            byte b13 = -1;
            for (int i97 = b9; i97 < i93; i97++) {
                int i98 = this.r;
                int i99 = (i97 + i94) * i98;
                int i100 = i99 + i96;
                int i101 = i100 + i95;
                int i102 = i99 + i98;
                if (i102 < i101) {
                    i101 = i102;
                }
                int i103 = aVar.c * i97;
                while (i100 < i101) {
                    byte b14 = bArr9[i103];
                    int i104 = b14 & UByte.MAX_VALUE;
                    if (i104 != b13) {
                        int i105 = iArr5[i104];
                        if (i105 != 0) {
                            this.f2321j[i100] = i105;
                        } else {
                            b13 = b14;
                        }
                    }
                    i103++;
                    i100++;
                }
            }
            Boolean bool2 = this.f2329s;
            this.f2329s = Boolean.valueOf((bool2 != null && bool2.booleanValue()) || !(this.f2329s != null || b12 == 0 || b13 == -1));
        }
        if (this.f2325n && ((i12 = aVar.f2300g) == 0 || i12 == 1)) {
            if (this.f2324m == null) {
                this.f2324m = a();
            }
            Bitmap bitmap3 = this.f2324m;
            int i106 = this.f2328q;
            int i107 = this.r;
            iArr = iArr2;
            bitmap3.setPixels(iArr, 0, i107, 0, 0, i107, i106);
        } else {
            iArr = iArr2;
        }
        Bitmap bitmapA = a();
        int i108 = this.f2328q;
        int i109 = this.r;
        bitmapA.setPixels(iArr, 0, i109, 0, 0, i109, i108);
        return bitmapA;
    }
}

package g;

import android.util.Log;
import androidx.core.view.ViewCompat;
import j1.i;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ByteBuffer f2314b;
    public b c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f2313a = new byte[256];
    public int d = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean a() {
        return this.c.f2306b != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final b b() {
        byte[] bArr;
        if (this.f2314b == null) {
            i.l("You must call setData() before parseHeader()");
            return null;
        }
        if (a()) {
            return this.c;
        }
        StringBuilder sb = new StringBuilder();
        for (int i9 = 0; i9 < 6; i9++) {
            sb.append((char) c());
        }
        boolean zStartsWith = sb.toString().startsWith("GIF");
        b bVar = this.c;
        if (zStartsWith) {
            bVar.f2307f = this.f2314b.getShort();
            this.c.f2308g = this.f2314b.getShort();
            int iC = c();
            b bVar2 = this.c;
            bVar2.f2309h = (iC & 128) != 0;
            bVar2.f2310i = (int) Math.pow(2.0d, (iC & 7) + 1);
            this.c.f2311j = c();
            b bVar3 = this.c;
            c();
            bVar3.getClass();
            if (this.c.f2309h && !a()) {
                b bVar4 = this.c;
                bVar4.f2305a = e(bVar4.f2310i);
                b bVar5 = this.c;
                bVar5.f2312k = bVar5.f2305a[bVar5.f2311j];
            }
        } else {
            bVar.f2306b = 1;
        }
        if (!a()) {
            boolean z8 = false;
            while (!z8 && !a() && this.c.c <= Integer.MAX_VALUE) {
                int iC2 = c();
                if (iC2 == 33) {
                    int iC3 = c();
                    if (iC3 == 1) {
                        f();
                    } else if (iC3 == 249) {
                        this.c.d = new a();
                        c();
                        int iC4 = c();
                        a aVar = this.c.d;
                        int i10 = (iC4 & 28) >> 2;
                        aVar.f2300g = i10;
                        if (i10 == 0) {
                            aVar.f2300g = 1;
                        }
                        aVar.f2299f = (iC4 & 1) != 0;
                        short s5 = this.f2314b.getShort();
                        if (s5 < 2) {
                            s5 = 10;
                        }
                        a aVar2 = this.c.d;
                        aVar2.f2302i = s5 * 10;
                        aVar2.f2301h = c();
                        c();
                    } else if (iC3 == 254) {
                        f();
                    } else if (iC3 != 255) {
                        f();
                    } else {
                        d();
                        StringBuilder sb2 = new StringBuilder();
                        int i11 = 0;
                        while (true) {
                            bArr = this.f2313a;
                            if (i11 >= 11) {
                                break;
                            }
                            sb2.append((char) bArr[i11]);
                            i11++;
                        }
                        if (sb2.toString().equals("NETSCAPE2.0")) {
                            do {
                                d();
                                if (bArr[0] == 1) {
                                    byte b9 = bArr[1];
                                    byte b10 = bArr[2];
                                    this.c.getClass();
                                }
                                if (this.d <= 0) {
                                    break;
                                }
                            } while (!a());
                        } else {
                            f();
                        }
                    }
                } else if (iC2 == 44) {
                    b bVar6 = this.c;
                    if (bVar6.d == null) {
                        bVar6.d = new a();
                    }
                    bVar6.d.f2297a = this.f2314b.getShort();
                    this.c.d.f2298b = this.f2314b.getShort();
                    this.c.d.c = this.f2314b.getShort();
                    this.c.d.d = this.f2314b.getShort();
                    int iC5 = c();
                    boolean z9 = (iC5 & 128) != 0;
                    int iPow = (int) Math.pow(2.0d, (iC5 & 7) + 1);
                    a aVar3 = this.c.d;
                    aVar3.e = (iC5 & 64) != 0;
                    if (z9) {
                        aVar3.f2304k = e(iPow);
                    } else {
                        aVar3.f2304k = null;
                    }
                    this.c.d.f2303j = this.f2314b.position();
                    c();
                    f();
                    if (!a()) {
                        b bVar7 = this.c;
                        bVar7.c++;
                        bVar7.e.add(bVar7.d);
                    }
                } else if (iC2 != 59) {
                    this.c.f2306b = 1;
                } else {
                    z8 = true;
                }
            }
            b bVar8 = this.c;
            if (bVar8.c < 0) {
                bVar8.f2306b = 1;
            }
        }
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c() {
        try {
            return this.f2314b.get() & UByte.MAX_VALUE;
        } catch (Exception unused) {
            this.c.f2306b = 1;
            return 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        int iC = c();
        this.d = iC;
        if (iC <= 0) {
            return;
        }
        int i9 = 0;
        int i10 = 0;
        while (true) {
            try {
                int i11 = this.d;
                if (i9 >= i11) {
                    return;
                }
                i10 = i11 - i9;
                this.f2314b.get(this.f2313a, i9, i10);
                i9 += i10;
            } catch (Exception e) {
                if (Log.isLoggable("GifHeaderParser", 3)) {
                    StringBuilder sbV = ai.onnxruntime.a.v("Error Reading Block n: ", i9, i10, " count: ", " blockSize: ");
                    sbV.append(this.d);
                    Log.d("GifHeaderParser", sbV.toString(), e);
                }
                this.c.f2306b = 1;
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int[] e(int i9) {
        byte[] bArr = new byte[i9 * 3];
        int[] iArr = null;
        try {
            this.f2314b.get(bArr);
            iArr = new int[256];
            int i10 = 0;
            int i11 = 0;
            while (i10 < i9) {
                int i12 = bArr[i11] & UByte.MAX_VALUE;
                int i13 = i11 + 2;
                int i14 = bArr[i11 + 1] & UByte.MAX_VALUE;
                i11 += 3;
                int i15 = i10 + 1;
                iArr[i10] = (i14 << 8) | (i12 << 16) | ViewCompat.MEASURED_STATE_MASK | (bArr[i13] & UByte.MAX_VALUE);
                i10 = i15;
            }
            return iArr;
        } catch (BufferUnderflowException e) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e);
            }
            this.c.f2306b = 1;
            return iArr;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f() {
        int iC;
        do {
            iC = c();
            this.f2314b.position(Math.min(this.f2314b.position() + iC, this.f2314b.limit()));
        } while (iC > 0);
    }
}

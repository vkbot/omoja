package p066g;

import ai.onnxruntime.AbstractC0074a;
import android.util.Log;
import androidx.core.view.ViewCompat;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import kotlin.UByte;
import p099j1.C1929i;

/* JADX INFO: renamed from: g.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1597c {

    /* JADX INFO: renamed from: b */
    public ByteBuffer f3990b;

    /* JADX INFO: renamed from: c */
    public C1596b f3991c;

    /* JADX INFO: renamed from: a */
    public final byte[] f3989a = new byte[256];

    /* JADX INFO: renamed from: d */
    public int f3992d = 0;

    /* JADX INFO: renamed from: a */
    public final boolean m2676a() {
        return this.f3991c.f3979b != 0;
    }

    /* JADX INFO: renamed from: b */
    public final C1596b m2677b() {
        byte[] bArr;
        if (this.f3990b == null) {
            C1929i.m3030l("You must call setData() before parseHeader()");
            return null;
        }
        if (m2676a()) {
            return this.f3991c;
        }
        StringBuilder sb = new StringBuilder();
        for (int i10 = 0; i10 < 6; i10++) {
            sb.append((char) m2678c());
        }
        boolean zStartsWith = sb.toString().startsWith("GIF");
        C1596b c1596b = this.f3991c;
        if (zStartsWith) {
            c1596b.f3983f = this.f3990b.getShort();
            this.f3991c.f3984g = this.f3990b.getShort();
            int iM2678c = m2678c();
            C1596b c1596b2 = this.f3991c;
            c1596b2.f3985h = (iM2678c & 128) != 0;
            c1596b2.f3986i = (int) Math.pow(2.0d, (iM2678c & 7) + 1);
            this.f3991c.f3987j = m2678c();
            C1596b c1596b3 = this.f3991c;
            m2678c();
            c1596b3.getClass();
            if (this.f3991c.f3985h && !m2676a()) {
                C1596b c1596b4 = this.f3991c;
                c1596b4.f3978a = m2680e(c1596b4.f3986i);
                C1596b c1596b5 = this.f3991c;
                c1596b5.f3988k = c1596b5.f3978a[c1596b5.f3987j];
            }
        } else {
            c1596b.f3979b = 1;
        }
        if (!m2676a()) {
            boolean z9 = false;
            while (!z9 && !m2676a() && this.f3991c.f3980c <= Integer.MAX_VALUE) {
                int iM2678c2 = m2678c();
                if (iM2678c2 == 33) {
                    int iM2678c3 = m2678c();
                    if (iM2678c3 == 1) {
                        m2681f();
                    } else if (iM2678c3 == 249) {
                        this.f3991c.f3981d = new C1595a();
                        m2678c();
                        int iM2678c4 = m2678c();
                        C1595a c1595a = this.f3991c.f3981d;
                        int i11 = (iM2678c4 & 28) >> 2;
                        c1595a.f3973g = i11;
                        if (i11 == 0) {
                            c1595a.f3973g = 1;
                        }
                        c1595a.f3972f = (iM2678c4 & 1) != 0;
                        short s5 = this.f3990b.getShort();
                        if (s5 < 2) {
                            s5 = 10;
                        }
                        C1595a c1595a2 = this.f3991c.f3981d;
                        c1595a2.f3975i = s5 * 10;
                        c1595a2.f3974h = m2678c();
                        m2678c();
                    } else if (iM2678c3 == 254) {
                        m2681f();
                    } else if (iM2678c3 != 255) {
                        m2681f();
                    } else {
                        m2679d();
                        StringBuilder sb2 = new StringBuilder();
                        int i12 = 0;
                        while (true) {
                            bArr = this.f3989a;
                            if (i12 >= 11) {
                                break;
                            }
                            sb2.append((char) bArr[i12]);
                            i12++;
                        }
                        if (sb2.toString().equals("NETSCAPE2.0")) {
                            do {
                                m2679d();
                                if (bArr[0] == 1) {
                                    byte b10 = bArr[1];
                                    byte b11 = bArr[2];
                                    this.f3991c.getClass();
                                }
                                if (this.f3992d <= 0) {
                                    break;
                                }
                            } while (!m2676a());
                        } else {
                            m2681f();
                        }
                    }
                } else if (iM2678c2 == 44) {
                    C1596b c1596b6 = this.f3991c;
                    if (c1596b6.f3981d == null) {
                        c1596b6.f3981d = new C1595a();
                    }
                    c1596b6.f3981d.f3967a = this.f3990b.getShort();
                    this.f3991c.f3981d.f3968b = this.f3990b.getShort();
                    this.f3991c.f3981d.f3969c = this.f3990b.getShort();
                    this.f3991c.f3981d.f3970d = this.f3990b.getShort();
                    int iM2678c5 = m2678c();
                    boolean z10 = (iM2678c5 & 128) != 0;
                    int iPow = (int) Math.pow(2.0d, (iM2678c5 & 7) + 1);
                    C1595a c1595a3 = this.f3991c.f3981d;
                    c1595a3.f3971e = (iM2678c5 & 64) != 0;
                    if (z10) {
                        c1595a3.f3977k = m2680e(iPow);
                    } else {
                        c1595a3.f3977k = null;
                    }
                    this.f3991c.f3981d.f3976j = this.f3990b.position();
                    m2678c();
                    m2681f();
                    if (!m2676a()) {
                        C1596b c1596b7 = this.f3991c;
                        c1596b7.f3980c++;
                        c1596b7.f3982e.add(c1596b7.f3981d);
                    }
                } else if (iM2678c2 != 59) {
                    this.f3991c.f3979b = 1;
                } else {
                    z9 = true;
                }
            }
            C1596b c1596b8 = this.f3991c;
            if (c1596b8.f3980c < 0) {
                c1596b8.f3979b = 1;
            }
        }
        return this.f3991c;
    }

    /* JADX INFO: renamed from: c */
    public final int m2678c() {
        try {
            return this.f3990b.get() & UByte.MAX_VALUE;
        } catch (Exception unused) {
            this.f3991c.f3979b = 1;
            return 0;
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m2679d() {
        int iM2678c = m2678c();
        this.f3992d = iM2678c;
        if (iM2678c <= 0) {
            return;
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            try {
                int i12 = this.f3992d;
                if (i10 >= i12) {
                    return;
                }
                i11 = i12 - i10;
                this.f3990b.get(this.f3989a, i10, i11);
                i10 += i11;
            } catch (Exception e) {
                if (Log.isLoggable("GifHeaderParser", 3)) {
                    StringBuilder sbM171v = AbstractC0074a.m171v("Error Reading Block n: ", i10, i11, " count: ", " blockSize: ");
                    sbM171v.append(this.f3992d);
                    Log.d("GifHeaderParser", sbM171v.toString(), e);
                }
                this.f3991c.f3979b = 1;
                return;
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public final int[] m2680e(int i10) {
        byte[] bArr = new byte[i10 * 3];
        int[] iArr = null;
        try {
            this.f3990b.get(bArr);
            iArr = new int[256];
            int i11 = 0;
            int i12 = 0;
            while (i11 < i10) {
                int i13 = bArr[i12] & UByte.MAX_VALUE;
                int i14 = i12 + 2;
                int i15 = bArr[i12 + 1] & UByte.MAX_VALUE;
                i12 += 3;
                int i16 = i11 + 1;
                iArr[i11] = (i15 << 8) | (i13 << 16) | ViewCompat.MEASURED_STATE_MASK | (bArr[i14] & UByte.MAX_VALUE);
                i11 = i16;
            }
            return iArr;
        } catch (BufferUnderflowException e) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e);
            }
            this.f3991c.f3979b = 1;
            return iArr;
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m2681f() {
        int iM2678c;
        do {
            iM2678c = m2678c();
            this.f3990b.position(Math.min(this.f3990b.position() + iM2678c, this.f3990b.limit()));
        } while (iM2678c > 0);
    }
}

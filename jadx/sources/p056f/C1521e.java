package p056f;

import java.io.Closeable;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import p099j1.C1929i;

/* JADX INFO: renamed from: f.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1521e implements Closeable {

    /* JADX INFO: renamed from: b */
    public final FileInputStream f3733b;

    /* JADX INFO: renamed from: c */
    public final Charset f3734c;

    /* JADX INFO: renamed from: d */
    public byte[] f3735d;

    /* JADX INFO: renamed from: e */
    public int f3736e;

    /* JADX INFO: renamed from: f */
    public int f3737f;

    public C1521e(FileInputStream fileInputStream, Charset charset) {
        if (charset == null) {
            throw null;
        }
        if (!charset.equals(AbstractC1522f.f3738a)) {
            C1929i.m3029k("Unsupported encoding");
            throw null;
        }
        this.f3733b = fileInputStream;
        this.f3734c = charset;
        this.f3735d = new byte[8192];
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0040  */
    /* JADX INFO: renamed from: b */
    public final String m2599b() {
        int i10;
        synchronized (this.f3733b) {
            try {
                byte[] bArr = this.f3735d;
                if (bArr == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.f3736e >= this.f3737f) {
                    int i11 = this.f3733b.read(bArr, 0, bArr.length);
                    if (i11 == -1) {
                        throw new EOFException();
                    }
                    this.f3736e = 0;
                    this.f3737f = i11;
                }
                for (int i12 = this.f3736e; i12 != this.f3737f; i12++) {
                    byte[] bArr2 = this.f3735d;
                    if (bArr2[i12] == 10) {
                        int i13 = this.f3736e;
                        if (i12 != i13) {
                            i10 = i12 - 1;
                            if (bArr2[i10] != 13) {
                                i10 = i12;
                            }
                        } else {
                            i10 = i12;
                        }
                        String str = new String(bArr2, i13, i10 - i13, this.f3734c.name());
                        this.f3736e = i12 + 1;
                        return str;
                    }
                }
                C1520d c1520d = new C1520d(this, (this.f3737f - this.f3736e) + 80);
                while (true) {
                    byte[] bArr3 = this.f3735d;
                    int i14 = this.f3736e;
                    c1520d.write(bArr3, i14, this.f3737f - i14);
                    this.f3737f = -1;
                    FileInputStream fileInputStream = this.f3733b;
                    byte[] bArr4 = this.f3735d;
                    int i15 = fileInputStream.read(bArr4, 0, bArr4.length);
                    if (i15 == -1) {
                        throw new EOFException();
                    }
                    this.f3736e = 0;
                    this.f3737f = i15;
                    for (int i16 = 0; i16 != this.f3737f; i16++) {
                        byte[] bArr5 = this.f3735d;
                        if (bArr5[i16] == 10) {
                            int i17 = this.f3736e;
                            if (i16 != i17) {
                                c1520d.write(bArr5, i17, i16 - i17);
                            }
                            this.f3736e = i16 + 1;
                            return c1520d.toString();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f3733b) {
            try {
                if (this.f3735d != null) {
                    this.f3735d = null;
                    this.f3733b.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

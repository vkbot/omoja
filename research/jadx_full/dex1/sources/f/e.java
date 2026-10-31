package f;

import j1.i;
import java.io.Closeable;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FileInputStream f2150b;
    public final Charset c;
    public byte[] d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2151f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(FileInputStream fileInputStream, Charset charset) {
        if (charset == null) {
            throw null;
        }
        if (!charset.equals(f.f2152a)) {
            i.k("Unsupported encoding");
            throw null;
        }
        this.f2150b = fileInputStream;
        this.c = charset;
        this.d = new byte[8192];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:25:0x0040  */
    public final String b() {
        int i9;
        synchronized (this.f2150b) {
            try {
                byte[] bArr = this.d;
                if (bArr == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.e >= this.f2151f) {
                    int i10 = this.f2150b.read(bArr, 0, bArr.length);
                    if (i10 == -1) {
                        throw new EOFException();
                    }
                    this.e = 0;
                    this.f2151f = i10;
                }
                for (int i11 = this.e; i11 != this.f2151f; i11++) {
                    byte[] bArr2 = this.d;
                    if (bArr2[i11] == 10) {
                        int i12 = this.e;
                        if (i11 != i12) {
                            i9 = i11 - 1;
                            if (bArr2[i9] != 13) {
                                i9 = i11;
                            }
                        } else {
                            i9 = i11;
                        }
                        String str = new String(bArr2, i12, i9 - i12, this.c.name());
                        this.e = i11 + 1;
                        return str;
                    }
                }
                d dVar = new d(this, (this.f2151f - this.e) + 80);
                while (true) {
                    byte[] bArr3 = this.d;
                    int i13 = this.e;
                    dVar.write(bArr3, i13, this.f2151f - i13);
                    this.f2151f = -1;
                    FileInputStream fileInputStream = this.f2150b;
                    byte[] bArr4 = this.d;
                    int i14 = fileInputStream.read(bArr4, 0, bArr4.length);
                    if (i14 == -1) {
                        throw new EOFException();
                    }
                    this.e = 0;
                    this.f2151f = i14;
                    for (int i15 = 0; i15 != this.f2151f; i15++) {
                        byte[] bArr5 = this.d;
                        if (bArr5[i15] == 10) {
                            int i16 = this.e;
                            if (i15 != i16) {
                                dVar.write(bArr5, i16, i15 - i16);
                            }
                            this.e = i15 + 1;
                            return dVar.toString();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f2150b) {
            try {
                if (this.d != null) {
                    this.d = null;
                    this.f2150b.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

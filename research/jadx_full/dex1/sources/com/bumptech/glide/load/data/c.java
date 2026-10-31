package com.bumptech.glide.load.data;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends OutputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FileOutputStream f587b;
    public byte[] c;
    public final k.g d;
    public int e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(FileOutputStream fileOutputStream, k.g gVar) {
        this.f587b = fileOutputStream;
        this.d = gVar;
        this.c = (byte[]) gVar.c(65536, byte[].class);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        FileOutputStream fileOutputStream = this.f587b;
        try {
            flush();
            fileOutputStream.close();
            byte[] bArr = this.c;
            if (bArr != null) {
                this.d.g(bArr);
                this.c = null;
            }
        } catch (Throwable th) {
            fileOutputStream.close();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        int i9 = this.e;
        FileOutputStream fileOutputStream = this.f587b;
        if (i9 > 0) {
            fileOutputStream.write(this.c, 0, i9);
            this.e = 0;
        }
        fileOutputStream.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i9, int i10) throws IOException {
        int i11 = 0;
        do {
            int i12 = i10 - i11;
            int i13 = i9 + i11;
            int i14 = this.e;
            FileOutputStream fileOutputStream = this.f587b;
            if (i14 == 0 && i12 >= this.c.length) {
                fileOutputStream.write(bArr, i13, i12);
                return;
            }
            int iMin = Math.min(i12, this.c.length - i14);
            System.arraycopy(bArr, i13, this.c, this.e, iMin);
            int i15 = this.e + iMin;
            this.e = i15;
            i11 += iMin;
            byte[] bArr2 = this.c;
            if (i15 == bArr2.length && i15 > 0) {
                fileOutputStream.write(bArr2, 0, i15);
                this.e = 0;
            }
        } while (i11 < i10);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(int i9) throws IOException {
        byte[] bArr = this.c;
        int i10 = this.e;
        int i11 = i10 + 1;
        this.e = i11;
        bArr[i10] = (byte) i9;
        if (i11 != bArr.length || i11 <= 0) {
            return;
        }
        this.f587b.write(bArr, 0, i11);
        this.e = 0;
    }
}

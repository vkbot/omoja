package com.bumptech.glide.load.data;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import p108k.C2019g;

/* JADX INFO: renamed from: com.bumptech.glide.load.data.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1042c extends OutputStream {

    /* JADX INFO: renamed from: b */
    public final FileOutputStream f1127b;

    /* JADX INFO: renamed from: c */
    public byte[] f1128c;

    /* JADX INFO: renamed from: d */
    public final C2019g f1129d;

    /* JADX INFO: renamed from: e */
    public int f1130e;

    public C1042c(FileOutputStream fileOutputStream, C2019g c2019g) {
        this.f1127b = fileOutputStream;
        this.f1129d = c2019g;
        this.f1128c = (byte[]) c2019g.m3106c(65536, byte[].class);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        FileOutputStream fileOutputStream = this.f1127b;
        try {
            flush();
            fileOutputStream.close();
            byte[] bArr = this.f1128c;
            if (bArr != null) {
                this.f1129d.m3110g(bArr);
                this.f1128c = null;
            }
        } catch (Throwable th) {
            fileOutputStream.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        int i10 = this.f1130e;
        FileOutputStream fileOutputStream = this.f1127b;
        if (i10 > 0) {
            fileOutputStream.write(this.f1128c, 0, i10);
            this.f1130e = 0;
        }
        fileOutputStream.flush();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        do {
            int i13 = i11 - i12;
            int i14 = i10 + i12;
            int i15 = this.f1130e;
            FileOutputStream fileOutputStream = this.f1127b;
            if (i15 == 0 && i13 >= this.f1128c.length) {
                fileOutputStream.write(bArr, i14, i13);
                return;
            }
            int iMin = Math.min(i13, this.f1128c.length - i15);
            System.arraycopy(bArr, i14, this.f1128c, this.f1130e, iMin);
            int i16 = this.f1130e + iMin;
            this.f1130e = i16;
            i12 += iMin;
            byte[] bArr2 = this.f1128c;
            if (i16 == bArr2.length && i16 > 0) {
                fileOutputStream.write(bArr2, 0, i16);
                this.f1130e = 0;
            }
        } while (i12 < i11);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(int i10) throws IOException {
        byte[] bArr = this.f1128c;
        int i11 = this.f1130e;
        int i12 = i11 + 1;
        this.f1130e = i12;
        bArr[i11] = (byte) i10;
        if (i12 != bArr.length || i12 <= 0) {
            return;
        }
        this.f1127b.write(bArr, 0, i12);
        this.f1130e = 0;
    }
}

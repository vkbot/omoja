package com.bumptech.glide.load.data;

import ai.onnxruntime.AbstractC0074a;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
import p099j1.C1929i;

/* JADX INFO: renamed from: com.bumptech.glide.load.data.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1049j extends FilterInputStream {

    /* JADX INFO: renamed from: d */
    public static final byte[] f1135d = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};

    /* JADX INFO: renamed from: e */
    public static final int f1136e = 31;

    /* JADX INFO: renamed from: b */
    public final byte f1137b;

    /* JADX INFO: renamed from: c */
    public int f1138c;

    public C1049j(InputStream inputStream, int i10) {
        super(inputStream);
        if (i10 < -1 || i10 > 8) {
            C1929i.m3029k(AbstractC0074a.m154e(i10, "Cannot add invalid orientation: "));
            throw null;
        }
        this.f1137b = (byte) i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        int i13 = this.f1138c;
        int i14 = f1136e;
        if (i13 > i14) {
            i12 = super.read(bArr, i10, i11);
        } else if (i13 == i14) {
            bArr[i10] = this.f1137b;
            i12 = 1;
        } else if (i13 < 2) {
            i12 = super.read(bArr, i10, 2 - i13);
        } else {
            int iMin = Math.min(i14 - i13, i11);
            System.arraycopy(f1135d, this.f1138c - 2, bArr, i10, iMin);
            i12 = iMin;
        }
        if (i12 > 0) {
            this.f1138c += i12;
        }
        return i12;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        long jSkip = super.skip(j10);
        if (jSkip > 0) {
            this.f1138c = (int) (((long) this.f1138c) + jSkip);
        }
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i10;
        int i11;
        int i12 = this.f1138c;
        if (i12 < 2 || i12 > (i11 = f1136e)) {
            i10 = super.read();
        } else if (i12 == i11) {
            i10 = this.f1137b;
        } else {
            i10 = f1135d[i12 - 2] & UByte.MAX_VALUE;
        }
        if (i10 != -1) {
            this.f1138c++;
        }
        return i10;
    }
}

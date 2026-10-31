package com.google.protobuf;

import ai.onnxruntime.AbstractC0074a;

/* JADX INFO: renamed from: com.google.protobuf.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1145f extends C1148g {

    /* JADX INFO: renamed from: f */
    public final int f2674f;

    /* JADX INFO: renamed from: g */
    public final int f2675g;

    public C1145f(byte[] bArr, int i10, int i11) {
        super(bArr);
        C1148g.m1955d(i10, i10 + i11, bArr.length);
        this.f2674f = i10;
        this.f2675g = i11;
    }

    @Override // com.google.protobuf.C1148g
    /* JADX INFO: renamed from: a */
    public final byte mo1948a(int i10) {
        int i11 = this.f2675g;
        if (((i11 - (i10 + 1)) | i10) >= 0) {
            return this.f2680c[this.f2674f + i10];
        }
        if (i10 < 0) {
            throw new ArrayIndexOutOfBoundsException(AbstractC0074a.m154e(i10, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(AbstractC0074a.m156g(i10, "Index > length: ", ", ", i11));
    }

    @Override // com.google.protobuf.C1148g
    /* JADX INFO: renamed from: f */
    public final int mo1949f() {
        return this.f2674f;
    }

    @Override // com.google.protobuf.C1148g
    /* JADX INFO: renamed from: g */
    public final byte mo1950g(int i10) {
        return this.f2680c[this.f2674f + i10];
    }

    @Override // com.google.protobuf.C1148g
    public final int size() {
        return this.f2675g;
    }
}

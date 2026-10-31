package com.google.protobuf;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f extends g {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1501f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1502g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(byte[] bArr, int i9, int i10) {
        super(bArr);
        g.d(i9, i9 + i10, bArr.length);
        this.f1501f = i9;
        this.f1502g = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.g
    public final byte a(int i9) {
        int i10 = this.f1502g;
        if (((i10 - (i9 + 1)) | i9) >= 0) {
            return this.c[this.f1501f + i9];
        }
        if (i9 < 0) {
            throw new ArrayIndexOutOfBoundsException(ai.onnxruntime.a.e(i9, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(ai.onnxruntime.a.g(i9, "Index > length: ", ", ", i10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.g
    public final int f() {
        return this.f1501f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.g
    public final byte g(int i9) {
        return this.c[this.f1501f + i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.g
    public final int size() {
        return this.f1502g;
    }
}

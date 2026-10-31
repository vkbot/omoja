package o7;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.InvalidMarkException;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j3 extends c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4292b;
    public final int c;
    public final byte[] d;
    public int e = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j3(byte[] bArr, int i9, int i10) {
        o4.b.d("offset must be >= 0", i9 >= 0);
        o4.b.d("length must be >= 0", i10 >= 0);
        int i11 = i10 + i9;
        o4.b.d("offset + length exceeds array boundary", i11 <= bArr.length);
        this.d = bArr;
        this.f4292b = i9;
        this.c = i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final c S(int i9) {
        b(i9);
        int i10 = this.f4292b;
        this.f4292b = i10 + i9;
        return new j3(this.d, i10, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final void V(OutputStream outputStream, int i9) throws IOException {
        b(i9);
        outputStream.write(this.d, this.f4292b, i9);
        this.f4292b += i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final void c() {
        this.e = this.f4292b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final void c0(ByteBuffer byteBuffer) {
        o4.b.i(byteBuffer, "dest");
        int iRemaining = byteBuffer.remaining();
        b(iRemaining);
        byteBuffer.put(this.d, this.f4292b, iRemaining);
        this.f4292b += iRemaining;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final void d0(byte[] bArr, int i9, int i10) {
        System.arraycopy(this.d, this.f4292b, bArr, i9, i10);
        this.f4292b += i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final int e0() {
        b(1);
        int i9 = this.f4292b;
        this.f4292b = i9 + 1;
        return this.d[i9] & UByte.MAX_VALUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final int f0() {
        return this.c - this.f4292b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final void g0() {
        int i9 = this.e;
        if (i9 == -1) {
            throw new InvalidMarkException();
        }
        this.f4292b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final void h0(int i9) {
        b(i9);
        this.f4292b += i9;
    }
}

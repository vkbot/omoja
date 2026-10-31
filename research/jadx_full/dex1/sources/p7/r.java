package p7;

import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import kotlin.UByte;
import l9.b0;
import l9.c0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class r extends o7.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l9.l f4693b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public r(l9.l lVar) {
        this.f4693b = lVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final o7.c S(int i9) {
        l9.l lVar = new l9.l();
        lVar.write(this.f4693b, i9);
        return new r(lVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final void V(OutputStream outputStream, int i9) throws IOException {
        long j9 = i9;
        outputStream.getClass();
        l9.l lVar = this.f4693b;
        l9.b.d(lVar.c, 0L, j9);
        b0 b0Var = lVar.b;
        while (j9 > 0) {
            b0Var.getClass();
            int iMin = (int) Math.min(j9, b0Var.c - b0Var.b);
            outputStream.write(b0Var.a, b0Var.b, iMin);
            int i10 = b0Var.b + iMin;
            b0Var.b = i10;
            long j10 = iMin;
            lVar.c -= j10;
            j9 -= j10;
            if (i10 == b0Var.c) {
                b0 b0VarA = b0Var.a();
                lVar.b = b0VarA;
                c0.a(b0Var);
                b0Var = b0VarA;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final void c0(ByteBuffer byteBuffer) {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f4693b.b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final void d0(byte[] bArr, int i9, int i10) {
        while (i10 > 0) {
            int i11 = this.f4693b.read(bArr, i9, i10);
            if (i11 == -1) {
                throw new IndexOutOfBoundsException(ai.onnxruntime.a.f(i10, "EOF trying to read ", " bytes"));
            }
            i10 -= i11;
            i9 += i11;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final int e0() {
        try {
            return this.f4693b.readByte() & UByte.MAX_VALUE;
        } catch (EOFException e) {
            throw new IndexOutOfBoundsException(e.getMessage());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final int f0() {
        return (int) this.f4693b.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final void h0(int i9) {
        try {
            this.f4693b.skip(i9);
        } catch (EOFException e) {
            throw new IndexOutOfBoundsException(e.getMessage());
        }
    }
}

package p157o7;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.InvalidMarkException;
import kotlin.UByte;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.j3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2657j3 extends AbstractC2611c {

    /* JADX INFO: renamed from: b */
    public int f7545b;

    /* JADX INFO: renamed from: c */
    public final int f7546c;

    /* JADX INFO: renamed from: d */
    public final byte[] f7547d;

    /* JADX INFO: renamed from: e */
    public int f7548e = -1;

    public C2657j3(byte[] bArr, int i10, int i11) {
        AbstractC2587b.m4037d("offset must be >= 0", i10 >= 0);
        AbstractC2587b.m4037d("length must be >= 0", i11 >= 0);
        int i12 = i11 + i10;
        AbstractC2587b.m4037d("offset + length exceeds array boundary", i12 <= bArr.length);
        this.f7547d = bArr;
        this.f7545b = i10;
        this.f7546c = i12;
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: S */
    public final AbstractC2611c mo4102S(int i10) {
        m4129b(i10);
        int i11 = this.f7545b;
        this.f7545b = i11 + i10;
        return new C2657j3(this.f7547d, i11, i10);
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: V */
    public final void mo4103V(OutputStream outputStream, int i10) throws IOException {
        m4129b(i10);
        outputStream.write(this.f7547d, this.f7545b, i10);
        this.f7545b += i10;
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: c */
    public final void mo4104c() {
        this.f7548e = this.f7545b;
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: c0 */
    public final void mo4105c0(ByteBuffer byteBuffer) {
        AbstractC2587b.m4042i(byteBuffer, "dest");
        int iRemaining = byteBuffer.remaining();
        m4129b(iRemaining);
        byteBuffer.put(this.f7547d, this.f7545b, iRemaining);
        this.f7545b += iRemaining;
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: d0 */
    public final void mo4106d0(byte[] bArr, int i10, int i11) {
        System.arraycopy(this.f7547d, this.f7545b, bArr, i10, i11);
        this.f7545b += i11;
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: e0 */
    public final int mo4107e0() {
        m4129b(1);
        int i10 = this.f7545b;
        this.f7545b = i10 + 1;
        return this.f7547d[i10] & UByte.MAX_VALUE;
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: f0 */
    public final int mo4108f0() {
        return this.f7546c - this.f7545b;
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: g0 */
    public final void mo4109g0() {
        int i10 = this.f7548e;
        if (i10 == -1) {
            throw new InvalidMarkException();
        }
        this.f7545b = i10;
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: h0 */
    public final void mo4110h0(int i10) {
        m4129b(i10);
        this.f7545b += i10;
    }
}

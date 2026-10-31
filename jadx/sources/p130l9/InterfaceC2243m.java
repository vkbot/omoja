package p130l9;

import java.nio.channels.WritableByteChannel;

/* JADX INFO: renamed from: l9.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2243m extends InterfaceC2230e0, WritableByteChannel {
    /* JADX INFO: renamed from: A */
    InterfaceC2243m mo3602A(String str);

    /* JADX INFO: renamed from: G */
    long mo3603G(InterfaceC2234g0 interfaceC2234g0);

    /* JADX INFO: renamed from: H */
    InterfaceC2243m mo3604H(long j10);

    /* JADX INFO: renamed from: Z */
    InterfaceC2243m mo3607Z(long j10);

    /* JADX INFO: renamed from: a */
    C2242l mo3634a();

    @Override // p130l9.InterfaceC2230e0, java.io.Flushable
    void flush();

    /* JADX INFO: renamed from: g */
    InterfaceC2243m mo3614g();

    /* JADX INFO: renamed from: n */
    InterfaceC2243m mo3622n();

    /* JADX INFO: renamed from: w */
    InterfaceC2243m mo3632w(C2245o c2245o);

    InterfaceC2243m write(byte[] bArr);

    InterfaceC2243m write(byte[] bArr, int i10, int i11);

    InterfaceC2243m writeByte(int i10);

    InterfaceC2243m writeInt(int i10);

    InterfaceC2243m writeShort(int i10);
}

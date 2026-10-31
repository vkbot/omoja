package p130l9;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: renamed from: l9.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2244n extends InterfaceC2234g0, ReadableByteChannel {
    /* JADX INFO: renamed from: D */
    String mo3550D(Charset charset);

    /* JADX INFO: renamed from: J */
    C2245o mo3551J();

    /* JADX INFO: renamed from: L */
    String mo3552L();

    /* JADX INFO: renamed from: P */
    int mo3553P(C2253w c2253w);

    /* JADX INFO: renamed from: Q */
    boolean mo3554Q(long j10, C2245o c2245o);

    /* JADX INFO: renamed from: Y */
    void mo3555Y(long j10);

    /* JADX INFO: renamed from: a */
    C2242l mo3556a();

    /* JADX INFO: renamed from: a0 */
    long mo3557a0();

    /* JADX INFO: renamed from: b0 */
    InputStream mo3559b0();

    /* JADX INFO: renamed from: d */
    boolean mo3561d(long j10);

    /* JADX INFO: renamed from: f */
    C2245o mo3562f(long j10);

    /* JADX INFO: renamed from: j */
    byte[] mo3563j();

    /* JADX INFO: renamed from: k */
    boolean mo3564k();

    /* JADX INFO: renamed from: o */
    long mo3565o();

    /* JADX INFO: renamed from: p */
    String mo3566p(long j10);

    C2222a0 peek();

    byte readByte();

    void readFully(byte[] bArr);

    int readInt();

    long readLong();

    short readShort();

    void skip(long j10);

    /* JADX INFO: renamed from: t */
    void mo3567t(C2242l c2242l, long j10);
}

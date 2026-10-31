package l9;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public interface n extends g0, ReadableByteChannel {
    String D(Charset charset);

    o J();

    String L();

    int P(w wVar);

    boolean Q(long j, o oVar);

    void Y(long j);

    l a();

    long a0();

    InputStream b0();

    boolean d(long j);

    o f(long j);

    byte[] j();

    boolean k();

    long o();

    String p(long j);

    a0 peek();

    byte readByte();

    void readFully(byte[] bArr);

    int readInt();

    long readLong();

    short readShort();

    void skip(long j);

    void t(l lVar, long j);
}

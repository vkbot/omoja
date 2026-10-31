package l9;

import java.nio.channels.WritableByteChannel;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public interface m extends e0, WritableByteChannel {
    m A(String str);

    long G(g0 g0Var);

    m H(long j);

    m Z(long j);

    l a();

    @Override // l9.e0, java.io.Flushable
    void flush();

    m g();

    m n();

    m w(o oVar);

    m write(byte[] bArr);

    m write(byte[] bArr, int i, int i2);

    m writeByte(int i);

    m writeInt(int i);

    m writeShort(int i);
}

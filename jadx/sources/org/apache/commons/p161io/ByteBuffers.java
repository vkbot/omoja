package org.apache.commons.p161io;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class ByteBuffers {
    private ByteBuffers() {
    }

    public static ByteBuffer littleEndian(byte[] bArr) {
        return littleEndian(ByteBuffer.wrap(bArr));
    }

    public static ByteBuffer littleEndian(ByteBuffer byteBuffer) {
        return byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static ByteBuffer littleEndian(int i10) {
        return littleEndian(ByteBuffer.allocate(i10));
    }
}

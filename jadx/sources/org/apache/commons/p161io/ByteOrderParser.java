package org.apache.commons.p161io;

import java.nio.ByteOrder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class ByteOrderParser {
    private ByteOrderParser() {
    }

    public static ByteOrder parseByteOrder(String str) {
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        if (byteOrder.toString().equals(str)) {
            return byteOrder;
        }
        ByteOrder byteOrder2 = ByteOrder.LITTLE_ENDIAN;
        if (byteOrder2.toString().equals(str)) {
            return byteOrder2;
        }
        throw new IllegalArgumentException("Unsupported byte order setting: " + str + ", expected one of " + byteOrder2 + ", " + byteOrder);
    }
}

package org.apache.commons.io;

import java.nio.ByteOrder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class ByteOrderParser {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ByteOrderParser() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

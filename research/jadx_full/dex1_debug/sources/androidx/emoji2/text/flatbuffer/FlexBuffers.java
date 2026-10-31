package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlexBuffers {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final ReadBuf EMPTY_BB = new ArrayReadWriteBuf(new byte[]{0}, 1);
    public static final int FBT_BLOB = 25;
    public static final int FBT_BOOL = 26;
    public static final int FBT_FLOAT = 3;
    public static final int FBT_INDIRECT_FLOAT = 8;
    public static final int FBT_INDIRECT_INT = 6;
    public static final int FBT_INDIRECT_UINT = 7;
    public static final int FBT_INT = 1;
    public static final int FBT_KEY = 4;
    public static final int FBT_MAP = 9;
    public static final int FBT_NULL = 0;
    public static final int FBT_STRING = 5;
    public static final int FBT_UINT = 2;
    public static final int FBT_VECTOR = 10;
    public static final int FBT_VECTOR_BOOL = 36;
    public static final int FBT_VECTOR_FLOAT = 13;
    public static final int FBT_VECTOR_FLOAT2 = 18;
    public static final int FBT_VECTOR_FLOAT3 = 21;
    public static final int FBT_VECTOR_FLOAT4 = 24;
    public static final int FBT_VECTOR_INT = 11;
    public static final int FBT_VECTOR_INT2 = 16;
    public static final int FBT_VECTOR_INT3 = 19;
    public static final int FBT_VECTOR_INT4 = 22;
    public static final int FBT_VECTOR_KEY = 14;
    public static final int FBT_VECTOR_STRING_DEPRECATED = 15;
    public static final int FBT_VECTOR_UINT = 12;
    public static final int FBT_VECTOR_UINT2 = 17;
    public static final int FBT_VECTOR_UINT3 = 20;
    public static final int FBT_VECTOR_UINT4 = 23;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ReadBuf access$000() {
        return EMPTY_BB;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$100(ReadBuf readBuf, int i9, int i10) {
        return readInt(readBuf, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$200(ReadBuf readBuf, int i9, int i10) {
        return indirect(readBuf, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ long access$300(ReadBuf readBuf, int i9, int i10) {
        return readUInt(readBuf, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ double access$400(ReadBuf readBuf, int i9, int i10) {
        return readDouble(readBuf, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ long access$500(ReadBuf readBuf, int i9, int i10) {
        return readLong(readBuf, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static FlexBuffers$Reference getRoot(ByteBuffer byteBuffer) {
        return getRoot(byteBuffer.hasArray() ? new ArrayReadWriteBuf(byteBuffer.array(), byteBuffer.limit()) : new ByteBufferReadWriteBuf(byteBuffer));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int indirect(ReadBuf readBuf, int i9, int i10) {
        return (int) (((long) i9) - readUInt(readBuf, i9, i10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isTypeInline(int i9) {
        return i9 <= 3 || i9 == 26;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isTypedVector(int i9) {
        return (i9 >= 11 && i9 <= 15) || i9 == 36;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isTypedVectorElementType(int i9) {
        return (i9 >= 1 && i9 <= 4) || i9 == 26;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static double readDouble(ReadBuf readBuf, int i9, int i10) {
        if (i10 == 4) {
            return readBuf.getFloat(i9);
        }
        if (i10 != 8) {
            return -1.0d;
        }
        return readBuf.getDouble(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int readInt(ReadBuf readBuf, int i9, int i10) {
        return (int) readLong(readBuf, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static long readLong(ReadBuf readBuf, int i9, int i10) {
        int i11;
        if (i10 == 1) {
            i11 = readBuf.get(i9);
        } else if (i10 == 2) {
            i11 = readBuf.getShort(i9);
        } else {
            if (i10 != 4) {
                if (i10 != 8) {
                    return -1L;
                }
                return readBuf.getLong(i9);
            }
            i11 = readBuf.getInt(i9);
        }
        return i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static long readUInt(ReadBuf readBuf, int i9, int i10) {
        if (i10 == 1) {
            return FlexBuffers$Unsigned.byteToUnsignedInt(readBuf.get(i9));
        }
        if (i10 == 2) {
            return FlexBuffers$Unsigned.shortToUnsignedInt(readBuf.getShort(i9));
        }
        if (i10 == 4) {
            return FlexBuffers$Unsigned.intToUnsignedLong(readBuf.getInt(i9));
        }
        if (i10 != 8) {
            return -1L;
        }
        return readBuf.getLong(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int toTypedVector(int i9, int i10) {
        if (i10 == 0) {
            return i9 + 10;
        }
        if (i10 == 2) {
            return i9 + 15;
        }
        if (i10 == 3) {
            return i9 + 18;
        }
        if (i10 != 4) {
            return 0;
        }
        return i9 + 21;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int toTypedVectorElementType(int i9) {
        return i9 - 10;
    }

    public static FlexBuffers$Reference getRoot(ReadBuf readBuf) {
        int iLimit = readBuf.limit();
        byte b9 = readBuf.get(iLimit - 1);
        int i9 = iLimit - 2;
        return new FlexBuffers$Reference(readBuf, i9 - b9, b9, FlexBuffers$Unsigned.byteToUnsignedInt(readBuf.get(i9)));
    }
}

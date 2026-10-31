package ai.onnxruntime.platform;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import java.util.logging.Logger;
import kotlin.jvm.internal.ShortCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class Fp16Conversions {
    private static final Logger logger = Logger.getLogger(Fp16Conversions.class.getName());

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Fp16Conversions() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float bf16ToFloat(short s5) {
        return Float.intBitsToFloat(s5 << 16);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FloatBuffer convertBf16BufferToFloatBuffer(ShortBuffer shortBuffer) {
        int iPosition = shortBuffer.position();
        int iRemaining = shortBuffer.remaining();
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(iRemaining * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        for (int i9 = 0; i9 < iRemaining; i9++) {
            floatBufferAsFloatBuffer.put(i9, bf16ToFloat(shortBuffer.get(i9 + iPosition)));
        }
        return floatBufferAsFloatBuffer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ShortBuffer convertFloatBufferToBf16Buffer(FloatBuffer floatBuffer) {
        int iPosition = floatBuffer.position();
        int iRemaining = floatBuffer.remaining();
        ShortBuffer shortBufferAsShortBuffer = ByteBuffer.allocateDirect(iRemaining * 2).order(ByteOrder.nativeOrder()).asShortBuffer();
        for (int i9 = 0; i9 < iRemaining; i9++) {
            shortBufferAsShortBuffer.put(i9, floatToBf16(floatBuffer.get(i9 + iPosition)));
        }
        return shortBufferAsShortBuffer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ShortBuffer convertFloatBufferToFp16Buffer(FloatBuffer floatBuffer) {
        int iPosition = floatBuffer.position();
        int iRemaining = floatBuffer.remaining();
        ShortBuffer shortBufferAsShortBuffer = ByteBuffer.allocateDirect(iRemaining * 2).order(ByteOrder.nativeOrder()).asShortBuffer();
        for (int i9 = 0; i9 < iRemaining; i9++) {
            shortBufferAsShortBuffer.put(i9, floatToFp16(floatBuffer.get(i9 + iPosition)));
        }
        return shortBufferAsShortBuffer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FloatBuffer convertFp16BufferToFloatBuffer(ShortBuffer shortBuffer) {
        int iPosition = shortBuffer.position();
        int iRemaining = shortBuffer.remaining();
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(iRemaining * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        for (int i9 = 0; i9 < iRemaining; i9++) {
            floatBufferAsFloatBuffer.put(i9, fp16ToFloat(shortBuffer.get(i9 + iPosition)));
        }
        return floatBufferAsFloatBuffer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static short floatToBf16(float f8) {
        int iFloatToIntBits = Float.floatToIntBits(f8);
        return (short) (((((iFloatToIntBits >> 16) & 1) + 32767) + iFloatToIntBits) >> 16);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static short floatToFp16(float f8) {
        return mlasFloatToFp16(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float fp16ToFloat(short s5) {
        return mlasFp16ToFloat(s5);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static short mlasFloatToFp16(float f8) {
        int iFloatToIntBits;
        short s5;
        int iFloatToIntBits2 = Float.floatToIntBits(f8);
        int iFloatToIntBits3 = Float.floatToIntBits(Float.POSITIVE_INFINITY);
        int i9 = Integer.MIN_VALUE & iFloatToIntBits2;
        int i10 = iFloatToIntBits2 ^ i9;
        if (i10 >= 1199570944) {
            s5 = i10 > iFloatToIntBits3 ? (short) 32256 : (short) 31744;
        } else {
            if (i10 < 947912704) {
                iFloatToIntBits = Float.floatToIntBits(Float.intBitsToFloat(1056964608) + Float.intBitsToFloat(i10)) - 1056964608;
            } else {
                iFloatToIntBits = ((i10 - 939520001) + ((i10 >> 13) & 1)) >> 13;
            }
            s5 = (short) iFloatToIntBits;
        }
        return (short) (s5 | ((short) (i9 >> 16)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float mlasFp16ToFloat(short s5) {
        int i9 = (s5 & ShortCompanionObject.MAX_VALUE) << 13;
        int i10 = i9 & 260046848;
        int iFloatToIntBits = 939524096 + i9;
        if (i10 == 260046848) {
            iFloatToIntBits = i9 + 1879048192;
        } else if (i10 == 0) {
            iFloatToIntBits = Float.floatToIntBits(Float.intBitsToFloat(i9 + 947912704) - Float.intBitsToFloat(947912704));
        }
        return Float.intBitsToFloat(((s5 & ShortCompanionObject.MIN_VALUE) << 16) | iFloatToIntBits);
    }
}

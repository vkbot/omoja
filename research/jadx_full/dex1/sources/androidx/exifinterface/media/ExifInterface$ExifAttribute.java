package androidx.exifinterface.media;

import ai.onnxruntime.a;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ExifInterface$ExifAttribute {
    public static final long BYTES_OFFSET_UNKNOWN = -1;
    public final byte[] bytes;
    public final long bytesOffset;
    public final int format;
    public final int numberOfComponents;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ExifInterface$ExifAttribute(int i9, int i10, long j9, byte[] bArr) {
        this.format = i9;
        this.numberOfComponents = i10;
        this.bytesOffset = j9;
        this.bytes = bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ExifInterface$ExifAttribute createByte(String str) {
        if (str.length() == 1 && str.charAt(0) >= '0' && str.charAt(0) <= '1') {
            return new ExifInterface$ExifAttribute(1, 1, new byte[]{(byte) (str.charAt(0) - '0')});
        }
        byte[] bytes = str.getBytes(ExifInterface.ASCII);
        return new ExifInterface$ExifAttribute(1, bytes.length, bytes);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ExifInterface$ExifAttribute createDouble(double[] dArr, ByteOrder byteOrder) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[12] * dArr.length]);
        byteBufferWrap.order(byteOrder);
        for (double d : dArr) {
            byteBufferWrap.putDouble(d);
        }
        return new ExifInterface$ExifAttribute(12, dArr.length, byteBufferWrap.array());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ExifInterface$ExifAttribute createSLong(int[] iArr, ByteOrder byteOrder) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[9] * iArr.length]);
        byteBufferWrap.order(byteOrder);
        for (int i9 : iArr) {
            byteBufferWrap.putInt(i9);
        }
        return new ExifInterface$ExifAttribute(9, iArr.length, byteBufferWrap.array());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ExifInterface$ExifAttribute createSRational(ExifInterface$Rational[] exifInterface$RationalArr, ByteOrder byteOrder) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[10] * exifInterface$RationalArr.length]);
        byteBufferWrap.order(byteOrder);
        for (ExifInterface$Rational exifInterface$Rational : exifInterface$RationalArr) {
            byteBufferWrap.putInt((int) exifInterface$Rational.numerator);
            byteBufferWrap.putInt((int) exifInterface$Rational.denominator);
        }
        return new ExifInterface$ExifAttribute(10, exifInterface$RationalArr.length, byteBufferWrap.array());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ExifInterface$ExifAttribute createString(String str) {
        byte[] bytes = (str + (char) 0).getBytes(ExifInterface.ASCII);
        return new ExifInterface$ExifAttribute(2, bytes.length, bytes);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ExifInterface$ExifAttribute createULong(long[] jArr, ByteOrder byteOrder) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[4] * jArr.length]);
        byteBufferWrap.order(byteOrder);
        for (long j9 : jArr) {
            byteBufferWrap.putInt((int) j9);
        }
        return new ExifInterface$ExifAttribute(4, jArr.length, byteBufferWrap.array());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ExifInterface$ExifAttribute createURational(ExifInterface$Rational[] exifInterface$RationalArr, ByteOrder byteOrder) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[5] * exifInterface$RationalArr.length]);
        byteBufferWrap.order(byteOrder);
        for (ExifInterface$Rational exifInterface$Rational : exifInterface$RationalArr) {
            byteBufferWrap.putInt((int) exifInterface$Rational.numerator);
            byteBufferWrap.putInt((int) exifInterface$Rational.denominator);
        }
        return new ExifInterface$ExifAttribute(5, exifInterface$RationalArr.length, byteBufferWrap.array());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ExifInterface$ExifAttribute createUShort(int[] iArr, ByteOrder byteOrder) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[3] * iArr.length]);
        byteBufferWrap.order(byteOrder);
        for (int i9 : iArr) {
            byteBufferWrap.putShort((short) i9);
        }
        return new ExifInterface$ExifAttribute(3, iArr.length, byteBufferWrap.array());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getDoubleValue(ByteOrder byteOrder) throws Throwable {
        Object value = getValue(byteOrder);
        if (value == null) {
            throw new NumberFormatException("NULL can't be converted to a double value");
        }
        if (value instanceof String) {
            return Double.parseDouble((String) value);
        }
        if (value instanceof long[]) {
            long[] jArr = (long[]) value;
            if (jArr.length == 1) {
                return jArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (value instanceof int[]) {
            int[] iArr = (int[]) value;
            if (iArr.length == 1) {
                return iArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (value instanceof double[]) {
            double[] dArr = (double[]) value;
            if (dArr.length == 1) {
                return dArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (!(value instanceof ExifInterface$Rational[])) {
            throw new NumberFormatException("Couldn't find a double value");
        }
        ExifInterface$Rational[] exifInterface$RationalArr = (ExifInterface$Rational[]) value;
        if (exifInterface$RationalArr.length == 1) {
            return exifInterface$RationalArr[0].calculate();
        }
        throw new NumberFormatException("There are more than one component");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getIntValue(ByteOrder byteOrder) throws Throwable {
        Object value = getValue(byteOrder);
        if (value == null) {
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }
        if (value instanceof String) {
            return Integer.parseInt((String) value);
        }
        if (value instanceof long[]) {
            long[] jArr = (long[]) value;
            if (jArr.length == 1) {
                return (int) jArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (!(value instanceof int[])) {
            throw new NumberFormatException("Couldn't find a integer value");
        }
        int[] iArr = (int[]) value;
        if (iArr.length == 1) {
            return iArr[0];
        }
        throw new NumberFormatException("There are more than one component");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getStringValue(ByteOrder byteOrder) throws Throwable {
        Object value = getValue(byteOrder);
        if (value == null) {
            return null;
        }
        if (value instanceof String) {
            return (String) value;
        }
        StringBuilder sb = new StringBuilder();
        int i9 = 0;
        if (value instanceof long[]) {
            long[] jArr = (long[]) value;
            while (i9 < jArr.length) {
                sb.append(jArr[i9]);
                i9++;
                if (i9 != jArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }
        if (value instanceof int[]) {
            int[] iArr = (int[]) value;
            while (i9 < iArr.length) {
                sb.append(iArr[i9]);
                i9++;
                if (i9 != iArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }
        if (value instanceof double[]) {
            double[] dArr = (double[]) value;
            while (i9 < dArr.length) {
                sb.append(dArr[i9]);
                i9++;
                if (i9 != dArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }
        if (!(value instanceof ExifInterface$Rational[])) {
            return null;
        }
        ExifInterface$Rational[] exifInterface$RationalArr = (ExifInterface$Rational[]) value;
        while (i9 < exifInterface$RationalArr.length) {
            sb.append(exifInterface$RationalArr[i9].numerator);
            sb.append('/');
            sb.append(exifInterface$RationalArr[i9].denominator);
            i9++;
            if (i9 != exifInterface$RationalArr.length) {
                sb.append(",");
            }
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:114:0x014c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0030: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]) (LINE:49), block:B:18:0x0030 */
    public Object getValue(ByteOrder byteOrder) throws Throwable {
        ExifInterface$ByteOrderedDataInputStream exifInterface$ByteOrderedDataInputStream;
        InputStream inputStream;
        byte b9;
        byte b10;
        Object str;
        InputStream inputStream2 = null;
        try {
            try {
                exifInterface$ByteOrderedDataInputStream = new ExifInterface$ByteOrderedDataInputStream(this.bytes);
                try {
                    exifInterface$ByteOrderedDataInputStream.setByteOrder(byteOrder);
                    int length = 0;
                    switch (this.format) {
                        case 1:
                        case 6:
                            byte[] bArr = this.bytes;
                            if (bArr.length == 1 && (b9 = bArr[0]) >= 0 && b9 <= 1) {
                                str = new String(new char[]{(char) (b9 + 48)});
                                break;
                            } else {
                                String str2 = new String(bArr, ExifInterface.ASCII);
                                try {
                                    exifInterface$ByteOrderedDataInputStream.close();
                                    return str2;
                                } catch (IOException e) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e);
                                    return str2;
                                }
                            }
                            break;
                        case 2:
                        case 7:
                            if (this.numberOfComponents >= ExifInterface.EXIF_ASCII_PREFIX.length) {
                                int i9 = 0;
                                while (true) {
                                    byte[] bArr2 = ExifInterface.EXIF_ASCII_PREFIX;
                                    if (i9 >= bArr2.length) {
                                        length = bArr2.length;
                                    } else if (this.bytes[i9] == bArr2[i9]) {
                                        i9++;
                                    }
                                }
                            }
                            StringBuilder sb = new StringBuilder();
                            while (length < this.numberOfComponents && (b10 = this.bytes[length]) != 0) {
                                if (b10 >= 32) {
                                    sb.append((char) b10);
                                } else {
                                    sb.append('?');
                                }
                                length++;
                            }
                            str = sb.toString();
                            break;
                        case 3:
                            int[] iArr = new int[this.numberOfComponents];
                            while (true) {
                                str = iArr;
                                if (length < this.numberOfComponents) {
                                    iArr[length] = exifInterface$ByteOrderedDataInputStream.readUnsignedShort();
                                    length++;
                                }
                            }
                            break;
                        case 4:
                            long[] jArr = new long[this.numberOfComponents];
                            while (true) {
                                str = jArr;
                                if (length < this.numberOfComponents) {
                                    jArr[length] = exifInterface$ByteOrderedDataInputStream.readUnsignedInt();
                                    length++;
                                }
                            }
                            break;
                        case 5:
                            ExifInterface$Rational[] exifInterface$RationalArr = new ExifInterface$Rational[this.numberOfComponents];
                            while (true) {
                                str = exifInterface$RationalArr;
                                if (length < this.numberOfComponents) {
                                    exifInterface$RationalArr[length] = new ExifInterface$Rational(exifInterface$ByteOrderedDataInputStream.readUnsignedInt(), exifInterface$ByteOrderedDataInputStream.readUnsignedInt());
                                    length++;
                                }
                            }
                            break;
                        case 8:
                            int[] iArr2 = new int[this.numberOfComponents];
                            while (true) {
                                str = iArr2;
                                if (length < this.numberOfComponents) {
                                    iArr2[length] = exifInterface$ByteOrderedDataInputStream.readShort();
                                    length++;
                                }
                            }
                            break;
                        case 9:
                            int[] iArr3 = new int[this.numberOfComponents];
                            while (true) {
                                str = iArr3;
                                if (length < this.numberOfComponents) {
                                    iArr3[length] = exifInterface$ByteOrderedDataInputStream.readInt();
                                    length++;
                                }
                            }
                            break;
                        case 10:
                            ExifInterface$Rational[] exifInterface$RationalArr2 = new ExifInterface$Rational[this.numberOfComponents];
                            while (true) {
                                str = exifInterface$RationalArr2;
                                if (length < this.numberOfComponents) {
                                    exifInterface$RationalArr2[length] = new ExifInterface$Rational(exifInterface$ByteOrderedDataInputStream.readInt(), exifInterface$ByteOrderedDataInputStream.readInt());
                                    length++;
                                }
                            }
                            break;
                        case 11:
                            double[] dArr = new double[this.numberOfComponents];
                            while (true) {
                                str = dArr;
                                if (length < this.numberOfComponents) {
                                    dArr[length] = exifInterface$ByteOrderedDataInputStream.readFloat();
                                    length++;
                                }
                            }
                            break;
                        case 12:
                            double[] dArr2 = new double[this.numberOfComponents];
                            while (true) {
                                str = dArr2;
                                if (length < this.numberOfComponents) {
                                    dArr2[length] = exifInterface$ByteOrderedDataInputStream.readDouble();
                                    length++;
                                }
                            }
                            break;
                        default:
                            try {
                                exifInterface$ByteOrderedDataInputStream.close();
                                return null;
                            } catch (IOException e6) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e6);
                                return null;
                            }
                    }
                    try {
                        exifInterface$ByteOrderedDataInputStream.close();
                        return str;
                    } catch (IOException e9) {
                        Log.e("ExifInterface", "IOException occurred while closing InputStream", e9);
                        return str;
                    }
                } catch (IOException e10) {
                    e = e10;
                    Log.w("ExifInterface", "IOException occurred during reading a value", e);
                    if (exifInterface$ByteOrderedDataInputStream != null) {
                        try {
                            exifInterface$ByteOrderedDataInputStream.close();
                        } catch (IOException e11) {
                            Log.e("ExifInterface", "IOException occurred while closing InputStream", e11);
                        }
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                inputStream2 = inputStream;
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (IOException e12) {
                        Log.e("ExifInterface", "IOException occurred while closing InputStream", e12);
                    }
                }
                throw th;
            }
        } catch (IOException e13) {
            e = e13;
            exifInterface$ByteOrderedDataInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            if (inputStream2 != null) {
                inputStream2.close();
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int size() {
        return ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[this.format] * this.numberOfComponents;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(ExifInterface.IFD_FORMAT_NAMES[this.format]);
        sb.append(", data length:");
        return a.o(sb, ")", this.bytes.length);
    }

    public ExifInterface$ExifAttribute(int i9, int i10, byte[] bArr) {
        this(i9, i10, -1L, bArr);
    }

    public static ExifInterface$ExifAttribute createDouble(double d, ByteOrder byteOrder) {
        return createDouble(new double[]{d}, byteOrder);
    }

    public static ExifInterface$ExifAttribute createSLong(int i9, ByteOrder byteOrder) {
        return createSLong(new int[]{i9}, byteOrder);
    }

    public static ExifInterface$ExifAttribute createULong(long j9, ByteOrder byteOrder) {
        return createULong(new long[]{j9}, byteOrder);
    }

    public static ExifInterface$ExifAttribute createUShort(int i9, ByteOrder byteOrder) {
        return createUShort(new int[]{i9}, byteOrder);
    }

    public static ExifInterface$ExifAttribute createURational(ExifInterface$Rational exifInterface$Rational, ByteOrder byteOrder) {
        return createURational(new ExifInterface$Rational[]{exifInterface$Rational}, byteOrder);
    }

    public static ExifInterface$ExifAttribute createSRational(ExifInterface$Rational exifInterface$Rational, ByteOrder byteOrder) {
        return createSRational(new ExifInterface$Rational[]{exifInterface$Rational}, byteOrder);
    }
}

package org.apache.commons.p161io;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class EndianUtils {
    @Deprecated
    public EndianUtils() {
    }

    private static int read(InputStream inputStream) throws IOException {
        int i10 = inputStream.read();
        if (-1 != i10) {
            return i10;
        }
        throw new EOFException("Unexpected EOF reached");
    }

    public static double readSwappedDouble(byte[] bArr, int i10) {
        return Double.longBitsToDouble(readSwappedLong(bArr, i10));
    }

    public static float readSwappedFloat(byte[] bArr, int i10) {
        return Float.intBitsToFloat(readSwappedInteger(bArr, i10));
    }

    public static int readSwappedInteger(byte[] bArr, int i10) {
        validateByteArrayOffset(bArr, i10, 4);
        return (bArr[i10] & UByte.MAX_VALUE) + ((bArr[i10 + 1] & UByte.MAX_VALUE) << 8) + ((bArr[i10 + 2] & UByte.MAX_VALUE) << 16) + ((bArr[i10 + 3] & UByte.MAX_VALUE) << 24);
    }

    public static long readSwappedLong(byte[] bArr, int i10) {
        validateByteArrayOffset(bArr, i10, 8);
        return (((long) readSwappedInteger(bArr, i10 + 4)) << 32) + (((long) readSwappedInteger(bArr, i10)) & 4294967295L);
    }

    public static short readSwappedShort(byte[] bArr, int i10) {
        validateByteArrayOffset(bArr, i10, 2);
        return (short) ((bArr[i10] & UByte.MAX_VALUE) + ((bArr[i10 + 1] & UByte.MAX_VALUE) << 8));
    }

    public static long readSwappedUnsignedInteger(byte[] bArr, int i10) {
        validateByteArrayOffset(bArr, i10, 4);
        return (((long) (bArr[i10 + 3] & UByte.MAX_VALUE)) << 24) + (((long) ((bArr[i10] & UByte.MAX_VALUE) + ((bArr[i10 + 1] & UByte.MAX_VALUE) << 8) + ((bArr[i10 + 2] & UByte.MAX_VALUE) << 16))) & 4294967295L);
    }

    public static int readSwappedUnsignedShort(byte[] bArr, int i10) {
        validateByteArrayOffset(bArr, i10, 2);
        return (bArr[i10] & UByte.MAX_VALUE) + ((bArr[i10 + 1] & UByte.MAX_VALUE) << 8);
    }

    public static double swapDouble(double d) {
        return Double.longBitsToDouble(swapLong(Double.doubleToLongBits(d)));
    }

    public static float swapFloat(float f8) {
        return Float.intBitsToFloat(swapInteger(Float.floatToIntBits(f8)));
    }

    public static int swapInteger(int i10) {
        return ((i10 & 255) << 24) + (((i10 >> 8) & 255) << 16) + (((i10 >> 16) & 255) << 8) + ((i10 >> 24) & 255);
    }

    public static long swapLong(long j10) {
        return ((j10 & 255) << 56) + (((j10 >> 8) & 255) << 48) + (((j10 >> 16) & 255) << 40) + (((j10 >> 24) & 255) << 32) + (((j10 >> 32) & 255) << 24) + (((j10 >> 40) & 255) << 16) + (((j10 >> 48) & 255) << 8) + ((j10 >> 56) & 255);
    }

    public static short swapShort(short s5) {
        return (short) (((s5 & 255) << 8) + ((s5 >> 8) & 255));
    }

    private static void validateByteArrayOffset(byte[] bArr, int i10, int i11) {
        int i12 = i10 + i11;
        if (bArr.length >= i12) {
            return;
        }
        throw new IllegalArgumentException("Data only has " + bArr.length + "bytes, needed " + i12 + "bytes.");
    }

    public static void writeSwappedDouble(byte[] bArr, int i10, double d) {
        writeSwappedLong(bArr, i10, Double.doubleToLongBits(d));
    }

    public static void writeSwappedFloat(byte[] bArr, int i10, float f8) {
        writeSwappedInteger(bArr, i10, Float.floatToIntBits(f8));
    }

    public static void writeSwappedInteger(byte[] bArr, int i10, int i11) {
        validateByteArrayOffset(bArr, i10, 4);
        bArr[i10] = (byte) (i11 & 255);
        bArr[i10 + 1] = (byte) ((i11 >> 8) & 255);
        bArr[i10 + 2] = (byte) ((i11 >> 16) & 255);
        bArr[i10 + 3] = (byte) ((i11 >> 24) & 255);
    }

    public static void writeSwappedLong(byte[] bArr, int i10, long j10) {
        validateByteArrayOffset(bArr, i10, 8);
        bArr[i10] = (byte) (j10 & 255);
        bArr[i10 + 1] = (byte) ((j10 >> 8) & 255);
        bArr[i10 + 2] = (byte) ((j10 >> 16) & 255);
        bArr[i10 + 3] = (byte) ((j10 >> 24) & 255);
        bArr[i10 + 4] = (byte) ((j10 >> 32) & 255);
        bArr[i10 + 5] = (byte) ((j10 >> 40) & 255);
        bArr[i10 + 6] = (byte) ((j10 >> 48) & 255);
        bArr[i10 + 7] = (byte) ((j10 >> 56) & 255);
    }

    public static void writeSwappedShort(byte[] bArr, int i10, short s5) {
        validateByteArrayOffset(bArr, i10, 2);
        bArr[i10] = (byte) (s5 & 255);
        bArr[i10 + 1] = (byte) ((s5 >> 8) & 255);
    }

    public static void writeSwappedDouble(OutputStream outputStream, double d) throws IOException {
        writeSwappedLong(outputStream, Double.doubleToLongBits(d));
    }

    public static void writeSwappedFloat(OutputStream outputStream, float f8) throws IOException {
        writeSwappedInteger(outputStream, Float.floatToIntBits(f8));
    }

    public static double readSwappedDouble(InputStream inputStream) {
        return Double.longBitsToDouble(readSwappedLong(inputStream));
    }

    public static float readSwappedFloat(InputStream inputStream) {
        return Float.intBitsToFloat(readSwappedInteger(inputStream));
    }

    public static int readSwappedUnsignedShort(InputStream inputStream) throws IOException {
        return (read(inputStream) & 255) + ((read(inputStream) & 255) << 8);
    }

    public static short readSwappedShort(InputStream inputStream) {
        return (short) ((read(inputStream) & 255) + ((read(inputStream) & 255) << 8));
    }

    public static void writeSwappedShort(OutputStream outputStream, short s5) throws IOException {
        outputStream.write((byte) (s5 & 255));
        outputStream.write((byte) ((s5 >> 8) & 255));
    }

    public static long readSwappedLong(InputStream inputStream) {
        byte[] bArr = new byte[8];
        for (int i10 = 0; i10 < 8; i10++) {
            bArr[i10] = (byte) read(inputStream);
        }
        return readSwappedLong(bArr, 0);
    }

    public static int readSwappedInteger(InputStream inputStream) throws IOException {
        return (read(inputStream) & 255) + ((read(inputStream) & 255) << 8) + ((read(inputStream) & 255) << 16) + ((read(inputStream) & 255) << 24);
    }

    public static void writeSwappedInteger(OutputStream outputStream, int i10) throws IOException {
        outputStream.write((byte) (i10 & 255));
        outputStream.write((byte) ((i10 >> 8) & 255));
        outputStream.write((byte) ((i10 >> 16) & 255));
        outputStream.write((byte) ((i10 >> 24) & 255));
    }

    public static long readSwappedUnsignedInteger(InputStream inputStream) throws IOException {
        return (((long) (read(inputStream) & 255)) << 24) + (((long) ((read(inputStream) & 255) + ((read(inputStream) & 255) << 8) + ((read(inputStream) & 255) << 16))) & 4294967295L);
    }

    public static void writeSwappedLong(OutputStream outputStream, long j10) throws IOException {
        outputStream.write((byte) (j10 & 255));
        outputStream.write((byte) ((j10 >> 8) & 255));
        outputStream.write((byte) ((j10 >> 16) & 255));
        outputStream.write((byte) ((j10 >> 24) & 255));
        outputStream.write((byte) ((j10 >> 32) & 255));
        outputStream.write((byte) ((j10 >> 40) & 255));
        outputStream.write((byte) ((j10 >> 48) & 255));
        outputStream.write((byte) ((j10 >> 56) & 255));
    }
}

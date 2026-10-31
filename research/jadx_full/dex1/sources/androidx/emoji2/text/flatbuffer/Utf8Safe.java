package androidx.emoji2.text.flatbuffer;

import j1.i;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class Utf8Safe extends Utf8 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int computeEncodedLength(CharSequence charSequence) {
        int length = charSequence.length();
        int i9 = 0;
        while (i9 < length && charSequence.charAt(i9) < 128) {
            i9++;
        }
        int iEncodedLengthGeneral = length;
        while (i9 < length) {
            char cCharAt = charSequence.charAt(i9);
            if (cCharAt >= 2048) {
                iEncodedLengthGeneral += encodedLengthGeneral(charSequence, i9);
                break;
            }
            iEncodedLengthGeneral += (127 - cCharAt) >>> 31;
            i9++;
        }
        if (iEncodedLengthGeneral >= length) {
            return iEncodedLengthGeneral;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) iEncodedLengthGeneral) + 4294967296L));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String decodeUtf8Array(byte[] bArr, int i9, int i10) {
        if ((i9 | i10 | ((bArr.length - i9) - i10)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i9), Integer.valueOf(i10)));
        }
        int i11 = i9 + i10;
        char[] cArr = new char[i10];
        int i12 = 0;
        while (i9 < i11) {
            byte b9 = bArr[i9];
            if (!Utf8$DecodeUtil.isOneByte(b9)) {
                break;
            }
            i9++;
            Utf8$DecodeUtil.handleOneByte(b9, cArr, i12);
            i12++;
        }
        int i13 = i12;
        while (i9 < i11) {
            int i14 = i9 + 1;
            byte b10 = bArr[i9];
            if (Utf8$DecodeUtil.isOneByte(b10)) {
                int i15 = i13 + 1;
                Utf8$DecodeUtil.handleOneByte(b10, cArr, i13);
                int i16 = i14;
                while (i16 < i11) {
                    byte b11 = bArr[i16];
                    if (!Utf8$DecodeUtil.isOneByte(b11)) {
                        break;
                    }
                    i16++;
                    Utf8$DecodeUtil.handleOneByte(b11, cArr, i15);
                    i15++;
                }
                i13 = i15;
                i9 = i16;
            } else if (Utf8$DecodeUtil.isTwoBytes(b10)) {
                if (i14 >= i11) {
                    i.k("Invalid UTF-8");
                    return null;
                }
                i9 += 2;
                Utf8$DecodeUtil.handleTwoBytes(b10, bArr[i14], cArr, i13);
                i13++;
            } else if (Utf8$DecodeUtil.isThreeBytes(b10)) {
                if (i14 >= i11 - 1) {
                    i.k("Invalid UTF-8");
                    return null;
                }
                int i17 = i9 + 2;
                i9 += 3;
                Utf8$DecodeUtil.handleThreeBytes(b10, bArr[i14], bArr[i17], cArr, i13);
                i13++;
            } else {
                if (i14 >= i11 - 2) {
                    i.k("Invalid UTF-8");
                    return null;
                }
                byte b12 = bArr[i14];
                int i18 = i9 + 3;
                byte b13 = bArr[i9 + 2];
                i9 += 4;
                Utf8$DecodeUtil.handleFourBytes(b10, b12, b13, bArr[i18], cArr, i13);
                i13 += 2;
            }
        }
        return new String(cArr, 0, i13);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String decodeUtf8Buffer(ByteBuffer byteBuffer, int i9, int i10) {
        if ((i9 | i10 | ((byteBuffer.limit() - i9) - i10)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i9), Integer.valueOf(i10)));
        }
        int i11 = i9 + i10;
        char[] cArr = new char[i10];
        int i12 = 0;
        while (i9 < i11) {
            byte b9 = byteBuffer.get(i9);
            if (!Utf8$DecodeUtil.isOneByte(b9)) {
                break;
            }
            i9++;
            Utf8$DecodeUtil.handleOneByte(b9, cArr, i12);
            i12++;
        }
        int i13 = i12;
        while (i9 < i11) {
            int i14 = i9 + 1;
            byte b10 = byteBuffer.get(i9);
            if (Utf8$DecodeUtil.isOneByte(b10)) {
                int i15 = i13 + 1;
                Utf8$DecodeUtil.handleOneByte(b10, cArr, i13);
                int i16 = i14;
                while (i16 < i11) {
                    byte b11 = byteBuffer.get(i16);
                    if (!Utf8$DecodeUtil.isOneByte(b11)) {
                        break;
                    }
                    i16++;
                    Utf8$DecodeUtil.handleOneByte(b11, cArr, i15);
                    i15++;
                }
                i13 = i15;
                i9 = i16;
            } else if (Utf8$DecodeUtil.isTwoBytes(b10)) {
                if (i14 >= i11) {
                    i.k("Invalid UTF-8");
                    return null;
                }
                i9 += 2;
                Utf8$DecodeUtil.handleTwoBytes(b10, byteBuffer.get(i14), cArr, i13);
                i13++;
            } else if (Utf8$DecodeUtil.isThreeBytes(b10)) {
                if (i14 >= i11 - 1) {
                    i.k("Invalid UTF-8");
                    return null;
                }
                int i17 = i9 + 2;
                i9 += 3;
                Utf8$DecodeUtil.handleThreeBytes(b10, byteBuffer.get(i14), byteBuffer.get(i17), cArr, i13);
                i13++;
            } else {
                if (i14 >= i11 - 2) {
                    i.k("Invalid UTF-8");
                    return null;
                }
                byte b12 = byteBuffer.get(i14);
                int i18 = i9 + 3;
                byte b13 = byteBuffer.get(i9 + 2);
                i9 += 4;
                Utf8$DecodeUtil.handleFourBytes(b10, b12, b13, byteBuffer.get(i18), cArr, i13);
                i13 += 2;
            }
        }
        return new String(cArr, 0, i13);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int encodeUtf8Array(CharSequence charSequence, byte[] bArr, int i9, int i10) {
        int i11;
        int i12;
        char cCharAt;
        int length = charSequence.length();
        int i13 = i10 + i9;
        int i14 = 0;
        while (i14 < length && (i12 = i14 + i9) < i13 && (cCharAt = charSequence.charAt(i14)) < 128) {
            bArr[i12] = (byte) cCharAt;
            i14++;
        }
        if (i14 == length) {
            return i9 + length;
        }
        int i15 = i9 + i14;
        while (i14 < length) {
            char cCharAt2 = charSequence.charAt(i14);
            if (cCharAt2 < 128 && i15 < i13) {
                bArr[i15] = (byte) cCharAt2;
                i15++;
            } else if (cCharAt2 < 2048 && i15 <= i13 - 2) {
                int i16 = i15 + 1;
                bArr[i15] = (byte) ((cCharAt2 >>> 6) | 960);
                i15 += 2;
                bArr[i16] = (byte) ((cCharAt2 & '?') | 128);
            } else {
                if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i15 > i13 - 3) {
                    if (i15 > i13 - 4) {
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i11 = i14 + 1) == charSequence.length() || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i11)))) {
                            throw new Utf8Safe$UnpairedSurrogateException(i14, length);
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i15);
                    }
                    int i17 = i14 + 1;
                    if (i17 != charSequence.length()) {
                        char cCharAt3 = charSequence.charAt(i17);
                        if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                            int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                            bArr[i15] = (byte) ((codePoint >>> 18) | 240);
                            bArr[i15 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i18 = i15 + 3;
                            bArr[i15 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i15 += 4;
                            bArr[i18] = (byte) ((codePoint & 63) | 128);
                            i14 = i17;
                        } else {
                            i14 = i17;
                        }
                    }
                    throw new Utf8Safe$UnpairedSurrogateException(i14 - 1, length);
                }
                bArr[i15] = (byte) ((cCharAt2 >>> '\f') | 480);
                int i19 = i15 + 2;
                bArr[i15 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                i15 += 3;
                bArr[i19] = (byte) ((cCharAt2 & '?') | 128);
            }
            i14++;
        }
        return i15;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void encodeUtf8Buffer(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int iPosition = byteBuffer.position();
        int i9 = 0;
        while (i9 < length) {
            try {
                char cCharAt = charSequence.charAt(i9);
                if (cCharAt >= 128) {
                    break;
                }
                byteBuffer.put(iPosition + i9, (byte) cCharAt);
                i9++;
            } catch (IndexOutOfBoundsException unused) {
            }
        }
        if (i9 == length) {
            byteBuffer.position(iPosition + i9);
            return;
        }
        iPosition += i9;
        while (i9 < length) {
            char cCharAt2 = charSequence.charAt(i9);
            if (cCharAt2 < 128) {
                byteBuffer.put(iPosition, (byte) cCharAt2);
            } else if (cCharAt2 < 2048) {
                int i10 = iPosition + 1;
                try {
                    byteBuffer.put(iPosition, (byte) ((cCharAt2 >>> 6) | 192));
                    byteBuffer.put(i10, (byte) ((cCharAt2 & '?') | 128));
                    iPosition = i10;
                } catch (IndexOutOfBoundsException unused2) {
                    iPosition = i10;
                }
            } else {
                if (cCharAt2 >= 55296 && 57343 >= cCharAt2) {
                    int i11 = i9 + 1;
                    if (i11 != length) {
                        try {
                            char cCharAt3 = charSequence.charAt(i11);
                            if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                int i12 = iPosition + 1;
                                try {
                                    byteBuffer.put(iPosition, (byte) ((codePoint >>> 18) | 240));
                                    int i13 = iPosition + 2;
                                    try {
                                        byteBuffer.put(i12, (byte) (((codePoint >>> 12) & 63) | 128));
                                        iPosition += 3;
                                        byteBuffer.put(i13, (byte) (((codePoint >>> 6) & 63) | 128));
                                        byteBuffer.put(iPosition, (byte) ((codePoint & 63) | 128));
                                        i9 = i11;
                                    } catch (IndexOutOfBoundsException unused3) {
                                        i9 = i11;
                                        iPosition = i13;
                                    }
                                } catch (IndexOutOfBoundsException unused4) {
                                    iPosition = i12;
                                    i9 = i11;
                                }
                            } else {
                                i9 = i11;
                            }
                        } catch (IndexOutOfBoundsException unused5) {
                        }
                        i9 = i11;
                        int iMax = Math.max(i9, (iPosition - byteBuffer.position()) + 1) + byteBuffer.position();
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i9) + " at index " + iMax);
                    }
                    throw new Utf8Safe$UnpairedSurrogateException(i9, length);
                }
                int i14 = iPosition + 1;
                byteBuffer.put(iPosition, (byte) ((cCharAt2 >>> '\f') | 224));
                iPosition += 2;
                byteBuffer.put(i14, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                byteBuffer.put(iPosition, (byte) ((cCharAt2 & '?') | 128));
            }
            i9++;
            iPosition++;
        }
        byteBuffer.position(iPosition);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int encodedLengthGeneral(CharSequence charSequence, int i9) {
        int length = charSequence.length();
        int i10 = 0;
        while (i9 < length) {
            char cCharAt = charSequence.charAt(i9);
            if (cCharAt < 2048) {
                i10 += (127 - cCharAt) >>> 31;
            } else {
                i10 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(charSequence, i9) < 65536) {
                        throw new Utf8Safe$UnpairedSurrogateException(i9, length);
                    }
                    i9++;
                }
            }
            i9++;
        }
        return i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public String decodeUtf8(ByteBuffer byteBuffer, int i9, int i10) {
        return byteBuffer.hasArray() ? decodeUtf8Array(byteBuffer.array(), byteBuffer.arrayOffset() + i9, i10) : decodeUtf8Buffer(byteBuffer, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (!byteBuffer.hasArray()) {
            encodeUtf8Buffer(charSequence, byteBuffer);
        } else {
            int iArrayOffset = byteBuffer.arrayOffset();
            byteBuffer.position(encodeUtf8Array(charSequence, byteBuffer.array(), byteBuffer.position() + iArrayOffset, byteBuffer.remaining()) - iArrayOffset);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public int encodedLength(CharSequence charSequence) {
        return computeEncodedLength(charSequence);
    }
}

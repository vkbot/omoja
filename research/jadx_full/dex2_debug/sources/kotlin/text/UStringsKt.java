package kotlin.text;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.internal.http2.Settings;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\t\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\f\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0011\u0010\u0010\u001a\u00020\u0002*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0011\u001a\u0019\u0010\u0010\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0012\u001a\u0011\u0010\u0013\u001a\u00020\u0007*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0014\u001a\u0019\u0010\u0013\u001a\u00020\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0015\u001a\u0011\u0010\u0016\u001a\u00020\n*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0017\u001a\u0019\u0010\u0016\u001a\u00020\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0018\u001a\u0011\u0010\u0019\u001a\u00020\r*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u001a\u001a\u0019\u0010\u0019\u001a\u00020\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u001b\u001a\u000e\u0010\u001c\u001a\u0004\u0018\u00010\u0002*\u00020\u0001H\u0007\u001a\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u000e\u0010\u001d\u001a\u0004\u0018\u00010\u0007*\u00020\u0001H\u0007\u001a\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u000e\u0010\u001e\u001a\u0004\u0018\u00010\n*\u00020\u0001H\u0007\u001a\u0016\u0010\u001e\u001a\u0004\u0018\u00010\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u000e\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u0001H\u0007\u001a\u0016\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006 "}, d2 = {"toString", HttpUrl.FRAGMENT_ENCODE_SET, "Lkotlin/UByte;", "radix", HttpUrl.FRAGMENT_ENCODE_SET, "toString-LxnNnR4", "(BI)Ljava/lang/String;", "Lkotlin/UShort;", "toString-olVBNx4", "(SI)Ljava/lang/String;", "Lkotlin/UInt;", "toString-V7xB4Y4", "(II)Ljava/lang/String;", "Lkotlin/ULong;", "toString-JSWoG40", "(JI)Ljava/lang/String;", "toUByte", "(Ljava/lang/String;)B", "(Ljava/lang/String;I)B", "toUShort", "(Ljava/lang/String;)S", "(Ljava/lang/String;I)S", "toUInt", "(Ljava/lang/String;)I", "(Ljava/lang/String;I)I", "toULong", "(Ljava/lang/String;)J", "(Ljava/lang/String;I)J", "toUByteOrNull", "toUShortOrNull", "toUIntOrNull", "toULongOrNull", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
@JvmName(name = "UStringsKt")
public final class UStringsKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: toString-JSWoG40, reason: not valid java name */
    public static final String m21toStringJSWoG40(long j, int i) {
        return UnsignedKt.ulongToString(j, CharsKt__CharJVMKt.checkRadix(i));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: toString-LxnNnR4, reason: not valid java name */
    public static final String m22toStringLxnNnR4(byte b, int i) {
        String string = Integer.toString(b & 255, CharsKt__CharJVMKt.checkRadix(i));
        string.getClass();
        return string;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: toString-V7xB4Y4, reason: not valid java name */
    public static final String m23toStringV7xB4Y4(int i, int i2) {
        return UnsignedKt.ulongToString(((long) i) & 4294967295L, CharsKt__CharJVMKt.checkRadix(i2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: toString-olVBNx4, reason: not valid java name */
    public static final String m24toStringolVBNx4(short s, int i) {
        String string = Integer.toString(s & 65535, CharsKt__CharJVMKt.checkRadix(i));
        string.getClass();
        return string;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.KotlinNothingValueException */
    @SinceKotlin(version = "1.5")
    public static final byte toUByte(String str) throws KotlinNothingValueException {
        str.getClass();
        UByte uByteOrNull = toUByteOrNull(str);
        if (uByteOrNull != null) {
            return uByteOrNull.unbox-impl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.5")
    public static final UByte toUByteOrNull(String str, int i) {
        str.getClass();
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull == null) {
            return null;
        }
        int i2 = uIntOrNull.unbox-impl();
        if (Integer.compare(i2 ^ Integer.MIN_VALUE, UInt.constructor-impl(255) ^ Integer.MIN_VALUE) > 0) {
            return null;
        }
        return UByte.box-impl(UByte.constructor-impl((byte) i2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.KotlinNothingValueException */
    @SinceKotlin(version = "1.5")
    public static final int toUInt(String str) throws KotlinNothingValueException {
        str.getClass();
        UInt uIntOrNull = toUIntOrNull(str);
        if (uIntOrNull != null) {
            return uIntOrNull.unbox-impl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.5")
    public static final UInt toUIntOrNull(String str, int i) {
        int i2;
        UInt uInt;
        str.getClass();
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        UInt uInt2 = null;
        if (length == 0) {
            return null;
        }
        int i3 = 0;
        char cCharAt = str.charAt(0);
        if (Intrinsics.compare(cCharAt, 48) < 0) {
            i2 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        } else {
            i2 = 0;
        }
        int i4 = UInt.constructor-impl(i);
        int i5 = 119304647;
        while (i2 < length) {
            int iDigitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i2), i);
            if (iDigitOf < 0) {
                return uInt2;
            }
            int i6 = i3 ^ Integer.MIN_VALUE;
            if (Integer.compare(i6, i5 ^ Integer.MIN_VALUE) <= 0) {
                uInt = uInt2;
            } else {
                if (i5 != 119304647) {
                    return uInt2;
                }
                uInt = uInt2;
                i5 = (int) ((((long) (-1)) & 4294967295L) / (((long) i4) & 4294967295L));
                if (Integer.compare(i6, i5 ^ Integer.MIN_VALUE) > 0) {
                    return uInt;
                }
            }
            int i7 = UInt.constructor-impl(i3 * i4);
            i3 = UInt.constructor-impl(UInt.constructor-impl(iDigitOf) + i7);
            if (Integer.compare(i3 ^ Integer.MIN_VALUE, i7 ^ Integer.MIN_VALUE) < 0) {
                return uInt;
            }
            i2++;
            uInt2 = uInt;
        }
        return UInt.box-impl(i3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.KotlinNothingValueException */
    @SinceKotlin(version = "1.5")
    public static final long toULong(String str) throws KotlinNothingValueException {
        str.getClass();
        ULong uLongOrNull = toULongOrNull(str);
        if (uLongOrNull != null) {
            return uLongOrNull.unbox-impl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:44:0x0095 A[SYNTHETIC] */
    @SinceKotlin(version = "1.5")
    public static final ULong toULongOrNull(String str, int i) {
        int i2;
        long j;
        str.getClass();
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        ULong uLong = null;
        if (length == 0) {
            return null;
        }
        char cCharAt = str.charAt(0);
        int i3 = 1;
        if (Intrinsics.compare(cCharAt, 48) >= 0) {
            i2 = 0;
        } else {
            if (length == 1 || cCharAt != '+') {
                return null;
            }
            i2 = 1;
        }
        long j2 = ULong.constructor-impl(i);
        long j3 = 0;
        long j4 = 0;
        long j5 = 512409557603043100L;
        while (i2 < length) {
            int iDigitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i2), i);
            if (iDigitOf < 0) {
                return uLong;
            }
            ULong uLong2 = uLong;
            long j6 = j4 ^ Long.MIN_VALUE;
            int i4 = i3;
            long j7 = j2;
            if (Long.compare(j6, j5 ^ Long.MIN_VALUE) > 0) {
                if (j5 == 512409557603043100L) {
                    if (j7 < j3) {
                        if (Long.MAX_VALUE < (j7 ^ Long.MIN_VALUE)) {
                            j5 = j3;
                        } else {
                            j = 1;
                        }
                        if (Long.compare(j6, j5 ^ Long.MIN_VALUE) > 0) {
                        }
                    } else {
                        long j8 = (Long.MAX_VALUE / j7) << i4;
                        j = j8 + ((long) ((((-1) - (j8 * j7)) ^ Long.MIN_VALUE) >= (j7 ^ Long.MIN_VALUE) ? i4 : 0));
                    }
                    j5 = j;
                    if (Long.compare(j6, j5 ^ Long.MIN_VALUE) > 0) {
                    }
                }
                return uLong2;
            }
            long j10 = ULong.constructor-impl(j4 * j7);
            j4 = ULong.constructor-impl(ULong.constructor-impl(((long) UInt.constructor-impl(iDigitOf)) & 4294967295L) + j10);
            if (Long.compare(j4 ^ Long.MIN_VALUE, j10 ^ Long.MIN_VALUE) < 0) {
                return uLong2;
            }
            i2++;
            uLong = uLong2;
            i3 = i4;
            j2 = j7;
            j3 = 0;
        }
        return ULong.box-impl(j4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.KotlinNothingValueException */
    @SinceKotlin(version = "1.5")
    public static final short toUShort(String str) throws KotlinNothingValueException {
        str.getClass();
        UShort uShortOrNull = toUShortOrNull(str);
        if (uShortOrNull != null) {
            return uShortOrNull.unbox-impl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.5")
    public static final UShort toUShortOrNull(String str, int i) {
        str.getClass();
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull == null) {
            return null;
        }
        int i2 = uIntOrNull.unbox-impl();
        if (Integer.compare(i2 ^ Integer.MIN_VALUE, UInt.constructor-impl(Settings.DEFAULT_INITIAL_WINDOW_SIZE) ^ Integer.MIN_VALUE) > 0) {
            return null;
        }
        return UShort.box-impl(UShort.constructor-impl((short) i2));
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.KotlinNothingValueException */
    @SinceKotlin(version = "1.5")
    public static final byte toUByte(String str, int i) throws KotlinNothingValueException {
        str.getClass();
        UByte uByteOrNull = toUByteOrNull(str, i);
        if (uByteOrNull != null) {
            return uByteOrNull.unbox-impl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.KotlinNothingValueException */
    @SinceKotlin(version = "1.5")
    public static final int toUInt(String str, int i) throws KotlinNothingValueException {
        str.getClass();
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull != null) {
            return uIntOrNull.unbox-impl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.KotlinNothingValueException */
    @SinceKotlin(version = "1.5")
    public static final long toULong(String str, int i) throws KotlinNothingValueException {
        str.getClass();
        ULong uLongOrNull = toULongOrNull(str, i);
        if (uLongOrNull != null) {
            return uLongOrNull.unbox-impl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.KotlinNothingValueException */
    @SinceKotlin(version = "1.5")
    public static final short toUShort(String str, int i) throws KotlinNothingValueException {
        str.getClass();
        UShort uShortOrNull = toUShortOrNull(str, i);
        if (uShortOrNull != null) {
            return uShortOrNull.unbox-impl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    public static final UByte toUByteOrNull(String str) {
        str.getClass();
        return toUByteOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    public static final UShort toUShortOrNull(String str) {
        str.getClass();
        return toUShortOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    public static final UInt toUIntOrNull(String str) {
        str.getClass();
        return toUIntOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    public static final ULong toULongOrNull(String str) {
        str.getClass();
        return toULongOrNull(str, 10);
    }
}

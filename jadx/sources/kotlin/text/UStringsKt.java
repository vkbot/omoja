package kotlin.text;

import androidx.constraintlayout.widget.ConstraintLayout;
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

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\t\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\f\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0011\u0010\u0010\u001a\u00020\u0002*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0011\u001a\u0019\u0010\u0010\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0012\u001a\u0011\u0010\u0013\u001a\u00020\u0007*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0014\u001a\u0019\u0010\u0013\u001a\u00020\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0015\u001a\u0011\u0010\u0016\u001a\u00020\n*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0017\u001a\u0019\u0010\u0016\u001a\u00020\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0018\u001a\u0011\u0010\u0019\u001a\u00020\r*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u001a\u001a\u0019\u0010\u0019\u001a\u00020\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u001b\u001a\u000e\u0010\u001c\u001a\u0004\u0018\u00010\u0002*\u00020\u0001H\u0007\u001a\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u000e\u0010\u001d\u001a\u0004\u0018\u00010\u0007*\u00020\u0001H\u0007\u001a\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u000e\u0010\u001e\u001a\u0004\u0018\u00010\n*\u00020\u0001H\u0007\u001a\u0016\u0010\u001e\u001a\u0004\u0018\u00010\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u000e\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u0001H\u0007\u001a\u0016\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006 "}, m3159d2 = {"toString", "", "Lkotlin/UByte;", "radix", "", "toString-LxnNnR4", "(BI)Ljava/lang/String;", "Lkotlin/UShort;", "toString-olVBNx4", "(SI)Ljava/lang/String;", "Lkotlin/UInt;", "toString-V7xB4Y4", "(II)Ljava/lang/String;", "Lkotlin/ULong;", "toString-JSWoG40", "(JI)Ljava/lang/String;", "toUByte", "(Ljava/lang/String;)B", "(Ljava/lang/String;I)B", "toUShort", "(Ljava/lang/String;)S", "(Ljava/lang/String;I)S", "toUInt", "(Ljava/lang/String;)I", "(Ljava/lang/String;I)I", "toULong", "(Ljava/lang/String;)J", "(Ljava/lang/String;I)J", "toUByteOrNull", "toUShortOrNull", "toUIntOrNull", "toULongOrNull", "kotlin-stdlib"}, m3160k = 2, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@JvmName(name = "UStringsKt")
public final class UStringsKt {
    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: toString-JSWoG40, reason: not valid java name */
    public static final String m7398toStringJSWoG40(long j10, int i10) {
        return UnsignedKt.ulongToString(j10, CharsKt__CharJVMKt.checkRadix(i10));
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: toString-LxnNnR4, reason: not valid java name */
    public static final String m7399toStringLxnNnR4(byte b10, int i10) {
        String string = Integer.toString(b10 & UByte.MAX_VALUE, CharsKt__CharJVMKt.checkRadix(i10));
        string.getClass();
        return string;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: toString-V7xB4Y4, reason: not valid java name */
    public static final String m7400toStringV7xB4Y4(int i10, int i11) {
        return UnsignedKt.ulongToString(((long) i10) & 4294967295L, CharsKt__CharJVMKt.checkRadix(i11));
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: toString-olVBNx4, reason: not valid java name */
    public static final String m7401toStringolVBNx4(short s5, int i10) {
        String string = Integer.toString(s5 & UShort.MAX_VALUE, CharsKt__CharJVMKt.checkRadix(i10));
        string.getClass();
        return string;
    }

    @SinceKotlin(version = "1.5")
    public static final byte toUByte(String str) {
        str.getClass();
        UByte uByteOrNull = toUByteOrNull(str);
        if (uByteOrNull != null) {
            return uByteOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    public static final UByte toUByteOrNull(String str, int i10) {
        str.getClass();
        UInt uIntOrNull = toUIntOrNull(str, i10);
        if (uIntOrNull == null) {
            return null;
        }
        int data = uIntOrNull.getData();
        if (Integer.compare(data ^ Integer.MIN_VALUE, UInt.m6183constructorimpl(255) ^ Integer.MIN_VALUE) > 0) {
            return null;
        }
        return UByte.m6100boximpl(UByte.m6106constructorimpl((byte) data));
    }

    @SinceKotlin(version = "1.5")
    public static final int toUInt(String str) {
        str.getClass();
        UInt uIntOrNull = toUIntOrNull(str);
        if (uIntOrNull != null) {
            return uIntOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    public static final UInt toUIntOrNull(String str, int i10) {
        int i11;
        UInt uInt;
        str.getClass();
        CharsKt__CharJVMKt.checkRadix(i10);
        int length = str.length();
        UInt uInt2 = null;
        if (length == 0) {
            return null;
        }
        int iM6183constructorimpl = 0;
        char cCharAt = str.charAt(0);
        if (Intrinsics.compare((int) cCharAt, 48) < 0) {
            i11 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        } else {
            i11 = 0;
        }
        int iM6183constructorimpl2 = UInt.m6183constructorimpl(i10);
        int i12 = 119304647;
        while (i11 < length) {
            int iDigitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i11), i10);
            if (iDigitOf < 0) {
                return uInt2;
            }
            int i13 = iM6183constructorimpl ^ Integer.MIN_VALUE;
            if (Integer.compare(i13, i12 ^ Integer.MIN_VALUE) <= 0) {
                uInt = uInt2;
            } else {
                if (i12 != 119304647) {
                    return uInt2;
                }
                uInt = uInt2;
                i12 = (int) ((((long) (-1)) & 4294967295L) / (((long) iM6183constructorimpl2) & 4294967295L));
                if (Integer.compare(i13, i12 ^ Integer.MIN_VALUE) > 0) {
                    return uInt;
                }
            }
            int iM6183constructorimpl3 = UInt.m6183constructorimpl(iM6183constructorimpl * iM6183constructorimpl2);
            iM6183constructorimpl = UInt.m6183constructorimpl(UInt.m6183constructorimpl(iDigitOf) + iM6183constructorimpl3);
            if (Integer.compare(iM6183constructorimpl ^ Integer.MIN_VALUE, iM6183constructorimpl3 ^ Integer.MIN_VALUE) < 0) {
                return uInt;
            }
            i11++;
            uInt2 = uInt;
        }
        return UInt.m6177boximpl(iM6183constructorimpl);
    }

    @SinceKotlin(version = "1.5")
    public static final long toULong(String str) {
        str.getClass();
        ULong uLongOrNull = toULongOrNull(str);
        if (uLongOrNull != null) {
            return uLongOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0095 A[SYNTHETIC] */
    @SinceKotlin(version = "1.5")
    public static final ULong toULongOrNull(String str, int i10) {
        int i11;
        long j10;
        str.getClass();
        CharsKt__CharJVMKt.checkRadix(i10);
        int length = str.length();
        ULong uLong = null;
        if (length == 0) {
            return null;
        }
        char cCharAt = str.charAt(0);
        int i12 = 1;
        if (Intrinsics.compare((int) cCharAt, 48) >= 0) {
            i11 = 0;
        } else {
            if (length == 1 || cCharAt != '+') {
                return null;
            }
            i11 = 1;
        }
        long jM6262constructorimpl = ULong.m6262constructorimpl(i10);
        long j11 = 0;
        long jM6262constructorimpl2 = 0;
        long j12 = 512409557603043100L;
        while (i11 < length) {
            int iDigitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i11), i10);
            if (iDigitOf < 0) {
                return uLong;
            }
            ULong uLong2 = uLong;
            long j13 = jM6262constructorimpl2 ^ Long.MIN_VALUE;
            int i13 = i12;
            long j14 = jM6262constructorimpl;
            if (Long.compare(j13, j12 ^ Long.MIN_VALUE) > 0) {
                if (j12 == 512409557603043100L) {
                    if (j14 < j11) {
                        if (Long.MAX_VALUE < (j14 ^ Long.MIN_VALUE)) {
                            j12 = j11;
                        } else {
                            j10 = 1;
                        }
                        if (Long.compare(j13, j12 ^ Long.MIN_VALUE) > 0) {
                        }
                    } else {
                        long j15 = (Long.MAX_VALUE / j14) << i13;
                        j10 = j15 + ((long) ((((-1) - (j15 * j14)) ^ Long.MIN_VALUE) >= (j14 ^ Long.MIN_VALUE) ? i13 : 0));
                    }
                    j12 = j10;
                    if (Long.compare(j13, j12 ^ Long.MIN_VALUE) > 0) {
                    }
                }
                return uLong2;
            }
            long jM6262constructorimpl3 = ULong.m6262constructorimpl(jM6262constructorimpl2 * j14);
            jM6262constructorimpl2 = ULong.m6262constructorimpl(ULong.m6262constructorimpl(((long) UInt.m6183constructorimpl(iDigitOf)) & 4294967295L) + jM6262constructorimpl3);
            if (Long.compare(jM6262constructorimpl2 ^ Long.MIN_VALUE, jM6262constructorimpl3 ^ Long.MIN_VALUE) < 0) {
                return uLong2;
            }
            i11++;
            uLong = uLong2;
            i12 = i13;
            jM6262constructorimpl = j14;
            j11 = 0;
        }
        return ULong.m6256boximpl(jM6262constructorimpl2);
    }

    @SinceKotlin(version = "1.5")
    public static final short toUShort(String str) {
        str.getClass();
        UShort uShortOrNull = toUShortOrNull(str);
        if (uShortOrNull != null) {
            return uShortOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    public static final UShort toUShortOrNull(String str, int i10) {
        str.getClass();
        UInt uIntOrNull = toUIntOrNull(str, i10);
        if (uIntOrNull == null) {
            return null;
        }
        int data = uIntOrNull.getData();
        if (Integer.compare(data ^ Integer.MIN_VALUE, UInt.m6183constructorimpl(65535) ^ Integer.MIN_VALUE) > 0) {
            return null;
        }
        return UShort.m6363boximpl(UShort.m6369constructorimpl((short) data));
    }

    @SinceKotlin(version = "1.5")
    public static final byte toUByte(String str, int i10) {
        str.getClass();
        UByte uByteOrNull = toUByteOrNull(str, i10);
        if (uByteOrNull != null) {
            return uByteOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    public static final int toUInt(String str, int i10) {
        str.getClass();
        UInt uIntOrNull = toUIntOrNull(str, i10);
        if (uIntOrNull != null) {
            return uIntOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    public static final long toULong(String str, int i10) {
        str.getClass();
        ULong uLongOrNull = toULongOrNull(str, i10);
        if (uLongOrNull != null) {
            return uLongOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    public static final short toUShort(String str, int i10) {
        str.getClass();
        UShort uShortOrNull = toUShortOrNull(str, i10);
        if (uShortOrNull != null) {
            return uShortOrNull.getData();
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

package kotlin.comparisons;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001f\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\b\u001a\u001f\u0010\u0000\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\tH\u0007¢\u0006\u0004\b\n\u0010\u000b\u001a\u001f\u0010\u0000\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\fH\u0007¢\u0006\u0004\b\r\u0010\u000e\u001a(\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b\u0010\u0010\u0011\u001a(\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0087\b¢\u0006\u0004\b\u0012\u0010\u0013\u001a(\u0010\u0000\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0087\b¢\u0006\u0004\b\u0014\u0010\u0015\u001a(\u0010\u0000\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0087\b¢\u0006\u0004\b\u0016\u0010\u0017\u001a#\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\n\u0010\u0018\u001a\u00020\u0019\"\u00020\u0001H\u0007¢\u0006\u0004\b\u001a\u0010\u001b\u001a#\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\n\u0010\u0018\u001a\u00020\u001c\"\u00020\u0006H\u0007¢\u0006\u0004\b\u001d\u0010\u001e\u001a#\u0010\u0000\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\n\u0010\u0018\u001a\u00020\u001f\"\u00020\tH\u0007¢\u0006\u0004\b \u0010!\u001a#\u0010\u0000\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\n\u0010\u0018\u001a\u00020\"\"\u00020\fH\u0007¢\u0006\u0004\b#\u0010$\u001a\u001f\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0007¢\u0006\u0004\b&\u0010\u0005\u001a\u001f\u0010%\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0007¢\u0006\u0004\b'\u0010\b\u001a\u001f\u0010%\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\tH\u0007¢\u0006\u0004\b(\u0010\u000b\u001a\u001f\u0010%\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\fH\u0007¢\u0006\u0004\b)\u0010\u000e\u001a(\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b*\u0010\u0011\u001a(\u0010%\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0087\b¢\u0006\u0004\b+\u0010\u0013\u001a(\u0010%\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0087\b¢\u0006\u0004\b,\u0010\u0015\u001a(\u0010%\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0087\b¢\u0006\u0004\b-\u0010\u0017\u001a#\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\n\u0010\u0018\u001a\u00020\u0019\"\u00020\u0001H\u0007¢\u0006\u0004\b.\u0010\u001b\u001a#\u0010%\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\n\u0010\u0018\u001a\u00020\u001c\"\u00020\u0006H\u0007¢\u0006\u0004\b/\u0010\u001e\u001a#\u0010%\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\n\u0010\u0018\u001a\u00020\u001f\"\u00020\tH\u0007¢\u0006\u0004\b0\u0010!\u001a#\u0010%\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\n\u0010\u0018\u001a\u00020\"\"\u00020\fH\u0007¢\u0006\u0004\b1\u0010$¨\u00062"}, m3159d2 = {"maxOf", "Lkotlin/UInt;", "a", "b", "maxOf-J1ME1BU", "(II)I", "Lkotlin/ULong;", "maxOf-eb3DHEI", "(JJ)J", "Lkotlin/UByte;", "maxOf-Kr8caGY", "(BB)B", "Lkotlin/UShort;", "maxOf-5PvTz6A", "(SS)S", "c", "maxOf-WZ9TVnA", "(III)I", "maxOf-sambcqE", "(JJJ)J", "maxOf-b33U2AM", "(BBB)B", "maxOf-VKSA0NQ", "(SSS)S", "other", "Lkotlin/UIntArray;", "maxOf-Md2H83M", "(I[I)I", "Lkotlin/ULongArray;", "maxOf-R03FKyM", "(J[J)J", "Lkotlin/UByteArray;", "maxOf-Wr6uiD8", "(B[B)B", "Lkotlin/UShortArray;", "maxOf-t1qELG4", "(S[S)S", "minOf", "minOf-J1ME1BU", "minOf-eb3DHEI", "minOf-Kr8caGY", "minOf-5PvTz6A", "minOf-WZ9TVnA", "minOf-sambcqE", "minOf-b33U2AM", "minOf-VKSA0NQ", "minOf-Md2H83M", "minOf-R03FKyM", "minOf-Wr6uiD8", "minOf-t1qELG4", "kotlin-stdlib"}, m3160k = 5, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, m3164xs = "kotlin/comparisons/UComparisonsKt")
public class UComparisonsKt___UComparisonsKt {
    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: maxOf-5PvTz6A, reason: not valid java name */
    public static final short m7268maxOf5PvTz6A(short s5, short s9) {
        return Intrinsics.compare(s5 & UShort.MAX_VALUE, 65535 & s9) >= 0 ? s5 : s9;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: maxOf-J1ME1BU, reason: not valid java name */
    public static int m7269maxOfJ1ME1BU(int i10, int i11) {
        return Integer.compare(i10 ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i11) >= 0 ? i10 : i11;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: maxOf-Kr8caGY, reason: not valid java name */
    public static final byte m7270maxOfKr8caGY(byte b10, byte b11) {
        return Intrinsics.compare(b10 & UByte.MAX_VALUE, b11 & UByte.MAX_VALUE) >= 0 ? b10 : b11;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: maxOf-Md2H83M, reason: not valid java name */
    public static final int m7271maxOfMd2H83M(int i10, int... iArr) {
        iArr.getClass();
        int iM6244getSizeimpl = UIntArray.m6244getSizeimpl(iArr);
        for (int i11 = 0; i11 < iM6244getSizeimpl; i11++) {
            i10 = m7269maxOfJ1ME1BU(i10, UIntArray.m6243getpVg5ArA(iArr, i11));
        }
        return i10;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: maxOf-R03FKyM, reason: not valid java name */
    public static final long m7272maxOfR03FKyM(long j10, long... jArr) {
        jArr.getClass();
        int iM6323getSizeimpl = ULongArray.m6323getSizeimpl(jArr);
        for (int i10 = 0; i10 < iM6323getSizeimpl; i10++) {
            j10 = m7277maxOfeb3DHEI(j10, ULongArray.m6322getsVKNKU(jArr, i10));
        }
        return j10;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: maxOf-VKSA0NQ, reason: not valid java name */
    private static final short m7273maxOfVKSA0NQ(short s5, short s9, short s10) {
        return m7268maxOf5PvTz6A(s5, m7268maxOf5PvTz6A(s9, s10));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: maxOf-WZ9TVnA, reason: not valid java name */
    private static final int m7274maxOfWZ9TVnA(int i10, int i11, int i12) {
        return m7269maxOfJ1ME1BU(i10, m7269maxOfJ1ME1BU(i11, i12));
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: maxOf-Wr6uiD8, reason: not valid java name */
    public static final byte m7275maxOfWr6uiD8(byte b10, byte... bArr) {
        bArr.getClass();
        int iM6165getSizeimpl = UByteArray.m6165getSizeimpl(bArr);
        for (int i10 = 0; i10 < iM6165getSizeimpl; i10++) {
            b10 = m7270maxOfKr8caGY(b10, UByteArray.m6164getw2LRezQ(bArr, i10));
        }
        return b10;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: maxOf-b33U2AM, reason: not valid java name */
    private static final byte m7276maxOfb33U2AM(byte b10, byte b11, byte b12) {
        return m7270maxOfKr8caGY(b10, m7270maxOfKr8caGY(b11, b12));
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: maxOf-eb3DHEI, reason: not valid java name */
    public static long m7277maxOfeb3DHEI(long j10, long j11) {
        return Long.compare(j10 ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j11) >= 0 ? j10 : j11;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: maxOf-sambcqE, reason: not valid java name */
    private static final long m7278maxOfsambcqE(long j10, long j11, long j12) {
        return m7277maxOfeb3DHEI(j10, m7277maxOfeb3DHEI(j11, j12));
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: maxOf-t1qELG4, reason: not valid java name */
    public static final short m7279maxOft1qELG4(short s5, short... sArr) {
        sArr.getClass();
        int iM6428getSizeimpl = UShortArray.m6428getSizeimpl(sArr);
        for (int i10 = 0; i10 < iM6428getSizeimpl; i10++) {
            s5 = m7268maxOf5PvTz6A(s5, UShortArray.m6427getMh2AYeg(sArr, i10));
        }
        return s5;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: minOf-5PvTz6A, reason: not valid java name */
    public static final short m7280minOf5PvTz6A(short s5, short s9) {
        return Intrinsics.compare(s5 & UShort.MAX_VALUE, 65535 & s9) <= 0 ? s5 : s9;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: minOf-J1ME1BU, reason: not valid java name */
    public static int m7281minOfJ1ME1BU(int i10, int i11) {
        return Integer.compare(i10 ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i11) <= 0 ? i10 : i11;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: minOf-Kr8caGY, reason: not valid java name */
    public static final byte m7282minOfKr8caGY(byte b10, byte b11) {
        return Intrinsics.compare(b10 & UByte.MAX_VALUE, b11 & UByte.MAX_VALUE) <= 0 ? b10 : b11;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: minOf-Md2H83M, reason: not valid java name */
    public static final int m7283minOfMd2H83M(int i10, int... iArr) {
        iArr.getClass();
        int iM6244getSizeimpl = UIntArray.m6244getSizeimpl(iArr);
        for (int i11 = 0; i11 < iM6244getSizeimpl; i11++) {
            i10 = m7281minOfJ1ME1BU(i10, UIntArray.m6243getpVg5ArA(iArr, i11));
        }
        return i10;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: minOf-R03FKyM, reason: not valid java name */
    public static final long m7284minOfR03FKyM(long j10, long... jArr) {
        jArr.getClass();
        int iM6323getSizeimpl = ULongArray.m6323getSizeimpl(jArr);
        for (int i10 = 0; i10 < iM6323getSizeimpl; i10++) {
            j10 = m7289minOfeb3DHEI(j10, ULongArray.m6322getsVKNKU(jArr, i10));
        }
        return j10;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: minOf-VKSA0NQ, reason: not valid java name */
    private static final short m7285minOfVKSA0NQ(short s5, short s9, short s10) {
        return m7280minOf5PvTz6A(s5, m7280minOf5PvTz6A(s9, s10));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: minOf-WZ9TVnA, reason: not valid java name */
    private static final int m7286minOfWZ9TVnA(int i10, int i11, int i12) {
        return m7281minOfJ1ME1BU(i10, m7281minOfJ1ME1BU(i11, i12));
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: minOf-Wr6uiD8, reason: not valid java name */
    public static final byte m7287minOfWr6uiD8(byte b10, byte... bArr) {
        bArr.getClass();
        int iM6165getSizeimpl = UByteArray.m6165getSizeimpl(bArr);
        for (int i10 = 0; i10 < iM6165getSizeimpl; i10++) {
            b10 = m7282minOfKr8caGY(b10, UByteArray.m6164getw2LRezQ(bArr, i10));
        }
        return b10;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: minOf-b33U2AM, reason: not valid java name */
    private static final byte m7288minOfb33U2AM(byte b10, byte b11, byte b12) {
        return m7282minOfKr8caGY(b10, m7282minOfKr8caGY(b11, b12));
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: minOf-eb3DHEI, reason: not valid java name */
    public static long m7289minOfeb3DHEI(long j10, long j11) {
        return Long.compare(j10 ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j11) <= 0 ? j10 : j11;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: minOf-sambcqE, reason: not valid java name */
    private static final long m7290minOfsambcqE(long j10, long j11, long j12) {
        return m7289minOfeb3DHEI(j10, m7289minOfeb3DHEI(j11, j12));
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: minOf-t1qELG4, reason: not valid java name */
    public static final short m7291minOft1qELG4(short s5, short... sArr) {
        sArr.getClass();
        int iM6428getSizeimpl = UShortArray.m6428getSizeimpl(sArr);
        for (int i10 = 0; i10 < iM6428getSizeimpl; i10++) {
            s5 = m7280minOf5PvTz6A(s5, UShortArray.m6427getMh2AYeg(sArr, i10));
        }
        return s5;
    }
}

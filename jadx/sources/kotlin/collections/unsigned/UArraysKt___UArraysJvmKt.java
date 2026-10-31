package kotlin.collections.unsigned;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.protobuf.AbstractC1178q;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Comparator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.OverloadResolutionByLambdaReturnType;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.UnsignedKt;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000j\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u001f\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001c\u0010\u0000\u001a\u00020\u0007*\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\b\t\u0010\n\u001a\u001c\u0010\u0000\u001a\u00020\u000b*\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\b\r\u0010\u000e\u001a\u001c\u0010\u0000\u001a\u00020\u000f*\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u0019\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u0014*\u00020\u0002H\u0007¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0019\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00070\u0014*\u00020\bH\u0007¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u0019\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0014*\u00020\fH\u0007¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u0019\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0014*\u00020\u0010H\u0007¢\u0006\u0004\b\u001b\u0010\u001c\u001a/\u0010\u001d\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u00042\b\b\u0002\u0010 \u001a\u00020\u0004H\u0007¢\u0006\u0004\b!\u0010\"\u001a/\u0010\u001d\u001a\u00020\u0004*\u00020\b2\u0006\u0010\u001e\u001a\u00020\u00072\b\b\u0002\u0010\u001f\u001a\u00020\u00042\b\b\u0002\u0010 \u001a\u00020\u0004H\u0007¢\u0006\u0004\b#\u0010$\u001a/\u0010\u001d\u001a\u00020\u0004*\u00020\f2\u0006\u0010\u001e\u001a\u00020\u000b2\b\b\u0002\u0010\u001f\u001a\u00020\u00042\b\b\u0002\u0010 \u001a\u00020\u0004H\u0007¢\u0006\u0004\b%\u0010&\u001a/\u0010\u001d\u001a\u00020\u0004*\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u000f2\b\b\u0002\u0010\u001f\u001a\u00020\u00042\b\b\u0002\u0010 \u001a\u00020\u0004H\u0007¢\u0006\u0004\b'\u0010(\u001a\u0015\u0010)\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007¢\u0006\u0004\b*\u0010+\u001a\u0015\u0010)\u001a\u0004\u0018\u00010\u0007*\u00020\bH\u0007¢\u0006\u0004\b,\u0010-\u001a\u0015\u0010)\u001a\u0004\u0018\u00010\u000b*\u00020\fH\u0007¢\u0006\u0004\b.\u0010/\u001a\u0015\u0010)\u001a\u0004\u0018\u00010\u000f*\u00020\u0010H\u0007¢\u0006\u0004\b0\u00101\u001a=\u00102\u001a\u0004\u0018\u00010\u0001\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\u00022\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H306H\u0087\bø\u0001\u0000¢\u0006\u0004\b7\u00108\u001a=\u00102\u001a\u0004\u0018\u00010\u0007\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002H306H\u0087\bø\u0001\u0000¢\u0006\u0004\b9\u0010:\u001a=\u00102\u001a\u0004\u0018\u00010\u000b\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\f2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u0002H306H\u0087\bø\u0001\u0000¢\u0006\u0004\b;\u0010<\u001a=\u00102\u001a\u0004\u0018\u00010\u000f\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\u00102\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u0002H306H\u0087\bø\u0001\u0000¢\u0006\u0004\b=\u0010>\u001a1\u0010?\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u00010Aj\n\u0012\u0006\b\u0000\u0012\u00020\u0001`BH\u0007¢\u0006\u0004\bC\u0010D\u001a1\u0010?\u001a\u0004\u0018\u00010\u0007*\u00020\b2\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u00070Aj\n\u0012\u0006\b\u0000\u0012\u00020\u0007`BH\u0007¢\u0006\u0004\bE\u0010F\u001a1\u0010?\u001a\u0004\u0018\u00010\u000b*\u00020\f2\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u000b0Aj\n\u0012\u0006\b\u0000\u0012\u00020\u000b`BH\u0007¢\u0006\u0004\bG\u0010H\u001a1\u0010?\u001a\u0004\u0018\u00010\u000f*\u00020\u00102\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u000f0Aj\n\u0012\u0006\b\u0000\u0012\u00020\u000f`BH\u0007¢\u0006\u0004\bI\u0010J\u001a\u0015\u0010K\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007¢\u0006\u0004\bL\u0010+\u001a\u0015\u0010K\u001a\u0004\u0018\u00010\u0007*\u00020\bH\u0007¢\u0006\u0004\bM\u0010-\u001a\u0015\u0010K\u001a\u0004\u0018\u00010\u000b*\u00020\fH\u0007¢\u0006\u0004\bN\u0010/\u001a\u0015\u0010K\u001a\u0004\u0018\u00010\u000f*\u00020\u0010H\u0007¢\u0006\u0004\bO\u00101\u001a=\u0010P\u001a\u0004\u0018\u00010\u0001\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\u00022\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H306H\u0087\bø\u0001\u0000¢\u0006\u0004\bQ\u00108\u001a=\u0010P\u001a\u0004\u0018\u00010\u0007\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002H306H\u0087\bø\u0001\u0000¢\u0006\u0004\bR\u0010:\u001a=\u0010P\u001a\u0004\u0018\u00010\u000b\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\f2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u0002H306H\u0087\bø\u0001\u0000¢\u0006\u0004\bS\u0010<\u001a=\u0010P\u001a\u0004\u0018\u00010\u000f\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\u00102\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u0002H306H\u0087\bø\u0001\u0000¢\u0006\u0004\bT\u0010>\u001a1\u0010U\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u00010Aj\n\u0012\u0006\b\u0000\u0012\u00020\u0001`BH\u0007¢\u0006\u0004\bV\u0010D\u001a1\u0010U\u001a\u0004\u0018\u00010\u0007*\u00020\b2\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u00070Aj\n\u0012\u0006\b\u0000\u0012\u00020\u0007`BH\u0007¢\u0006\u0004\bW\u0010F\u001a1\u0010U\u001a\u0004\u0018\u00010\u000b*\u00020\f2\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u000b0Aj\n\u0012\u0006\b\u0000\u0012\u00020\u000b`BH\u0007¢\u0006\u0004\bX\u0010H\u001a1\u0010U\u001a\u0004\u0018\u00010\u000f*\u00020\u00102\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u000f0Aj\n\u0012\u0006\b\u0000\u0012\u00020\u000f`BH\u0007¢\u0006\u0004\bY\u0010J\u001a+\u0010Z\u001a\u00020[*\u00020\u00022\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020[06H\u0087\bø\u0001\u0000¢\u0006\u0004\b\\\u0010]\u001a+\u0010Z\u001a\u00020[*\u00020\b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020[06H\u0087\bø\u0001\u0000¢\u0006\u0004\b\\\u0010^\u001a+\u0010Z\u001a\u00020[*\u00020\f2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020[06H\u0087\bø\u0001\u0000¢\u0006\u0004\b\\\u0010_\u001a+\u0010Z\u001a\u00020[*\u00020\u00102\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020[06H\u0087\bø\u0001\u0000¢\u0006\u0004\b\\\u0010`\u001a+\u0010Z\u001a\u00020a*\u00020\u00022\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020a06H\u0087\bø\u0001\u0000¢\u0006\u0004\bb\u0010c\u001a+\u0010Z\u001a\u00020a*\u00020\b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020a06H\u0087\bø\u0001\u0000¢\u0006\u0004\bb\u0010d\u001a+\u0010Z\u001a\u00020a*\u00020\f2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020a06H\u0087\bø\u0001\u0000¢\u0006\u0004\bb\u0010e\u001a+\u0010Z\u001a\u00020a*\u00020\u00102\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020a06H\u0087\bø\u0001\u0000¢\u0006\u0004\bb\u0010f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006g"}, m3159d2 = {"elementAt", "Lkotlin/UInt;", "Lkotlin/UIntArray;", "index", "", "elementAt-qFRl0hI", "([II)I", "Lkotlin/ULong;", "Lkotlin/ULongArray;", "elementAt-r7IrZao", "([JI)J", "Lkotlin/UByte;", "Lkotlin/UByteArray;", "elementAt-PpDY95g", "([BI)B", "Lkotlin/UShort;", "Lkotlin/UShortArray;", "elementAt-nggk6HY", "([SI)S", "asList", "", "asList--ajY-9A", "([I)Ljava/util/List;", "asList-QwZRm1k", "([J)Ljava/util/List;", "asList-GBYM_sE", "([B)Ljava/util/List;", "asList-rL5Bavg", "([S)Ljava/util/List;", "binarySearch", "element", "fromIndex", "toIndex", "binarySearch-2fe2U9s", "([IIII)I", "binarySearch-K6DWlUc", "([JJII)I", "binarySearch-WpHrYlw", "([BBII)I", "binarySearch-EtDCXyQ", "([SSII)I", "max", "max--ajY-9A", "([I)Lkotlin/UInt;", "max-QwZRm1k", "([J)Lkotlin/ULong;", "max-GBYM_sE", "([B)Lkotlin/UByte;", "max-rL5Bavg", "([S)Lkotlin/UShort;", "maxBy", "R", "", "selector", "Lkotlin/Function1;", "maxBy-jgv0xPQ", "([ILkotlin/jvm/functions/Function1;)Lkotlin/UInt;", "maxBy-MShoTSo", "([JLkotlin/jvm/functions/Function1;)Lkotlin/ULong;", "maxBy-JOV_ifY", "([BLkotlin/jvm/functions/Function1;)Lkotlin/UByte;", "maxBy-xTcfx_M", "([SLkotlin/jvm/functions/Function1;)Lkotlin/UShort;", "maxWith", "comparator", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "maxWith-YmdZ_VM", "([ILjava/util/Comparator;)Lkotlin/UInt;", "maxWith-zrEWJaI", "([JLjava/util/Comparator;)Lkotlin/ULong;", "maxWith-XMRcp5o", "([BLjava/util/Comparator;)Lkotlin/UByte;", "maxWith-eOHTfZs", "([SLjava/util/Comparator;)Lkotlin/UShort;", "min", "min--ajY-9A", "min-QwZRm1k", "min-GBYM_sE", "min-rL5Bavg", "minBy", "minBy-jgv0xPQ", "minBy-MShoTSo", "minBy-JOV_ifY", "minBy-xTcfx_M", "minWith", "minWith-YmdZ_VM", "minWith-zrEWJaI", "minWith-XMRcp5o", "minWith-eOHTfZs", "sumOf", "Ljava/math/BigDecimal;", "sumOfBigDecimal", "([ILkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "([JLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "([BLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "([SLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "Ljava/math/BigInteger;", "sumOfBigInteger", "([ILkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "([JLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "([BLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "([SLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "kotlin-stdlib"}, m3160k = 5, m3161mv = {2, 2, 0}, m3162pn = "kotlin.collections", m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, m3164xs = "kotlin/collections/unsigned/UArraysKt")
class UArraysKt___UArraysJvmKt {
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: asList--ajY-9A, reason: not valid java name */
    public static final List<UInt> m6556asListajY9A(int[] iArr) {
        iArr.getClass();
        return new UArraysKt___UArraysJvmKt$asList$1(iArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: asList-GBYM_sE, reason: not valid java name */
    public static final List<UByte> m6557asListGBYM_sE(byte[] bArr) {
        bArr.getClass();
        return new UArraysKt___UArraysJvmKt$asList$3(bArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: asList-QwZRm1k, reason: not valid java name */
    public static final List<ULong> m6558asListQwZRm1k(long[] jArr) {
        jArr.getClass();
        return new UArraysKt___UArraysJvmKt$asList$2(jArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: asList-rL5Bavg, reason: not valid java name */
    public static final List<UShort> m6559asListrL5Bavg(short[] sArr) {
        sArr.getClass();
        return new UArraysKt___UArraysJvmKt$asList$4(sArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: binarySearch-2fe2U9s, reason: not valid java name */
    public static final int m6560binarySearch2fe2U9s(int[] iArr, int i10, int i11, int i12) {
        iArr.getClass();
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(i11, i12, UIntArray.m6244getSizeimpl(iArr));
        int i13 = i12 - 1;
        while (i11 <= i13) {
            int i14 = (i11 + i13) >>> 1;
            int iUintCompare = UnsignedKt.uintCompare(iArr[i14], i10);
            if (iUintCompare < 0) {
                i11 = i14 + 1;
            } else {
                if (iUintCompare <= 0) {
                    return i14;
                }
                i13 = i14 - 1;
            }
        }
        return -(i11 + 1);
    }

    /* JADX INFO: renamed from: binarySearch-2fe2U9s$default, reason: not valid java name */
    public static /* synthetic */ int m6561binarySearch2fe2U9s$default(int[] iArr, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if ((i13 & 4) != 0) {
            i12 = UIntArray.m6244getSizeimpl(iArr);
        }
        return m6560binarySearch2fe2U9s(iArr, i10, i11, i12);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: binarySearch-EtDCXyQ, reason: not valid java name */
    public static final int m6562binarySearchEtDCXyQ(short[] sArr, short s5, int i10, int i11) {
        sArr.getClass();
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(i10, i11, UShortArray.m6428getSizeimpl(sArr));
        int i12 = s5 & UShort.MAX_VALUE;
        int i13 = i11 - 1;
        while (i10 <= i13) {
            int i14 = (i10 + i13) >>> 1;
            int iUintCompare = UnsignedKt.uintCompare(sArr[i14], i12);
            if (iUintCompare < 0) {
                i10 = i14 + 1;
            } else {
                if (iUintCompare <= 0) {
                    return i14;
                }
                i13 = i14 - 1;
            }
        }
        return -(i10 + 1);
    }

    /* JADX INFO: renamed from: binarySearch-EtDCXyQ$default, reason: not valid java name */
    public static /* synthetic */ int m6563binarySearchEtDCXyQ$default(short[] sArr, short s5, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = UShortArray.m6428getSizeimpl(sArr);
        }
        return m6562binarySearchEtDCXyQ(sArr, s5, i10, i11);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: binarySearch-K6DWlUc, reason: not valid java name */
    public static final int m6564binarySearchK6DWlUc(long[] jArr, long j10, int i10, int i11) {
        jArr.getClass();
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(i10, i11, ULongArray.m6323getSizeimpl(jArr));
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            int iUlongCompare = UnsignedKt.ulongCompare(jArr[i13], j10);
            if (iUlongCompare < 0) {
                i10 = i13 + 1;
            } else {
                if (iUlongCompare <= 0) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    /* JADX INFO: renamed from: binarySearch-K6DWlUc$default, reason: not valid java name */
    public static /* synthetic */ int m6565binarySearchK6DWlUc$default(long[] jArr, long j10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = ULongArray.m6323getSizeimpl(jArr);
        }
        return m6564binarySearchK6DWlUc(jArr, j10, i10, i11);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: binarySearch-WpHrYlw, reason: not valid java name */
    public static final int m6566binarySearchWpHrYlw(byte[] bArr, byte b10, int i10, int i11) {
        bArr.getClass();
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(i10, i11, UByteArray.m6165getSizeimpl(bArr));
        int i12 = b10 & UByte.MAX_VALUE;
        int i13 = i11 - 1;
        while (i10 <= i13) {
            int i14 = (i10 + i13) >>> 1;
            int iUintCompare = UnsignedKt.uintCompare(bArr[i14], i12);
            if (iUintCompare < 0) {
                i10 = i14 + 1;
            } else {
                if (iUintCompare <= 0) {
                    return i14;
                }
                i13 = i14 - 1;
            }
        }
        return -(i10 + 1);
    }

    /* JADX INFO: renamed from: binarySearch-WpHrYlw$default, reason: not valid java name */
    public static /* synthetic */ int m6567binarySearchWpHrYlw$default(byte[] bArr, byte b10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = UByteArray.m6165getSizeimpl(bArr);
        }
        return m6566binarySearchWpHrYlw(bArr, b10, i10, i11);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* JADX INFO: renamed from: elementAt-PpDY95g, reason: not valid java name */
    private static final byte m6568elementAtPpDY95g(byte[] bArr, int i10) {
        bArr.getClass();
        return UByteArray.m6164getw2LRezQ(bArr, i10);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* JADX INFO: renamed from: elementAt-nggk6HY, reason: not valid java name */
    private static final short m6569elementAtnggk6HY(short[] sArr, int i10) {
        sArr.getClass();
        return UShortArray.m6427getMh2AYeg(sArr, i10);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* JADX INFO: renamed from: elementAt-qFRl0hI, reason: not valid java name */
    private static final int m6570elementAtqFRl0hI(int[] iArr, int i10) {
        iArr.getClass();
        return UIntArray.m6243getpVg5ArA(iArr, i10);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* JADX INFO: renamed from: elementAt-r7IrZao, reason: not valid java name */
    private static final long m6571elementAtr7IrZao(long[] jArr, int i10) {
        jArr.getClass();
        return ULongArray.m6322getsVKNKU(jArr, i10);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use maxOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxOrNull()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: max--ajY-9A, reason: not valid java name */
    public static final /* synthetic */ UInt m6572maxajY9A(int[] iArr) {
        iArr.getClass();
        return UArraysKt___UArraysKt.m6940maxOrNullajY9A(iArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use maxOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxOrNull()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: max-GBYM_sE, reason: not valid java name */
    public static final /* synthetic */ UByte m6573maxGBYM_sE(byte[] bArr) {
        bArr.getClass();
        return UArraysKt___UArraysKt.m6941maxOrNullGBYM_sE(bArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use maxOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxOrNull()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: max-QwZRm1k, reason: not valid java name */
    public static final /* synthetic */ ULong m6574maxQwZRm1k(long[] jArr) {
        jArr.getClass();
        return UArraysKt___UArraysKt.m6942maxOrNullQwZRm1k(jArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use maxOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxOrNull()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: max-rL5Bavg, reason: not valid java name */
    public static final /* synthetic */ UShort m6575maxrL5Bavg(short[] sArr) {
        sArr.getClass();
        return UArraysKt___UArraysKt.m6943maxOrNullrL5Bavg(sArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use maxByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: maxBy-JOV_ifY, reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UByte m6576maxByJOV_ifY(byte[] bArr, Function1<? super UByte, ? extends R> function1) {
        bArr.getClass();
        function1.getClass();
        if (UByteArray.m6167isEmptyimpl(bArr)) {
            return null;
        }
        byte bM6164getw2LRezQ = UByteArray.m6164getw2LRezQ(bArr, 0);
        int lastIndex = ArraysKt.getLastIndex(bArr);
        if (lastIndex == 0) {
            return UByte.m6100boximpl(bM6164getw2LRezQ);
        }
        R rInvoke = function1.invoke(UByte.m6100boximpl(bM6164getw2LRezQ));
        int i10 = 1;
        if (1 <= lastIndex) {
            while (true) {
                byte bM6164getw2LRezQ2 = UByteArray.m6164getw2LRezQ(bArr, i10);
                R rInvoke2 = function1.invoke(UByte.m6100boximpl(bM6164getw2LRezQ2));
                if (rInvoke.compareTo(rInvoke2) < 0) {
                    bM6164getw2LRezQ = bM6164getw2LRezQ2;
                    rInvoke = rInvoke2;
                }
                if (i10 == lastIndex) {
                    break;
                }
                i10++;
            }
        }
        return UByte.m6100boximpl(bM6164getw2LRezQ);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use maxByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: maxBy-MShoTSo, reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> ULong m6577maxByMShoTSo(long[] jArr, Function1<? super ULong, ? extends R> function1) {
        jArr.getClass();
        function1.getClass();
        if (ULongArray.m6325isEmptyimpl(jArr)) {
            return null;
        }
        long jM6322getsVKNKU = ULongArray.m6322getsVKNKU(jArr, 0);
        int lastIndex = ArraysKt.getLastIndex(jArr);
        if (lastIndex == 0) {
            return ULong.m6256boximpl(jM6322getsVKNKU);
        }
        R rInvoke = function1.invoke(ULong.m6256boximpl(jM6322getsVKNKU));
        int i10 = 1;
        if (1 <= lastIndex) {
            while (true) {
                long jM6322getsVKNKU2 = ULongArray.m6322getsVKNKU(jArr, i10);
                R rInvoke2 = function1.invoke(ULong.m6256boximpl(jM6322getsVKNKU2));
                if (rInvoke.compareTo(rInvoke2) < 0) {
                    jM6322getsVKNKU = jM6322getsVKNKU2;
                    rInvoke = rInvoke2;
                }
                if (i10 == lastIndex) {
                    break;
                }
                i10++;
            }
        }
        return ULong.m6256boximpl(jM6322getsVKNKU);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use maxByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: maxBy-jgv0xPQ, reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UInt m6578maxByjgv0xPQ(int[] iArr, Function1<? super UInt, ? extends R> function1) {
        iArr.getClass();
        function1.getClass();
        if (UIntArray.m6246isEmptyimpl(iArr)) {
            return null;
        }
        int iM6243getpVg5ArA = UIntArray.m6243getpVg5ArA(iArr, 0);
        int lastIndex = ArraysKt.getLastIndex(iArr);
        if (lastIndex == 0) {
            return UInt.m6177boximpl(iM6243getpVg5ArA);
        }
        R rInvoke = function1.invoke(UInt.m6177boximpl(iM6243getpVg5ArA));
        int i10 = 1;
        if (1 <= lastIndex) {
            while (true) {
                int iM6243getpVg5ArA2 = UIntArray.m6243getpVg5ArA(iArr, i10);
                R rInvoke2 = function1.invoke(UInt.m6177boximpl(iM6243getpVg5ArA2));
                if (rInvoke.compareTo(rInvoke2) < 0) {
                    iM6243getpVg5ArA = iM6243getpVg5ArA2;
                    rInvoke = rInvoke2;
                }
                if (i10 == lastIndex) {
                    break;
                }
                i10++;
            }
        }
        return UInt.m6177boximpl(iM6243getpVg5ArA);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use maxByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: maxBy-xTcfx_M, reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UShort m6579maxByxTcfx_M(short[] sArr, Function1<? super UShort, ? extends R> function1) {
        sArr.getClass();
        function1.getClass();
        if (UShortArray.m6430isEmptyimpl(sArr)) {
            return null;
        }
        short sM6427getMh2AYeg = UShortArray.m6427getMh2AYeg(sArr, 0);
        int lastIndex = ArraysKt.getLastIndex(sArr);
        if (lastIndex == 0) {
            return UShort.m6363boximpl(sM6427getMh2AYeg);
        }
        R rInvoke = function1.invoke(UShort.m6363boximpl(sM6427getMh2AYeg));
        int i10 = 1;
        if (1 <= lastIndex) {
            while (true) {
                short sM6427getMh2AYeg2 = UShortArray.m6427getMh2AYeg(sArr, i10);
                R rInvoke2 = function1.invoke(UShort.m6363boximpl(sM6427getMh2AYeg2));
                if (rInvoke.compareTo(rInvoke2) < 0) {
                    sM6427getMh2AYeg = sM6427getMh2AYeg2;
                    rInvoke = rInvoke2;
                }
                if (i10 == lastIndex) {
                    break;
                }
                i10++;
            }
        }
        return UShort.m6363boximpl(sM6427getMh2AYeg);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use maxWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: maxWith-XMRcp5o, reason: not valid java name */
    public static final /* synthetic */ UByte m6580maxWithXMRcp5o(byte[] bArr, Comparator comparator) {
        bArr.getClass();
        comparator.getClass();
        return UArraysKt___UArraysKt.m6948maxWithOrNullXMRcp5o(bArr, comparator);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use maxWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: maxWith-YmdZ_VM, reason: not valid java name */
    public static final /* synthetic */ UInt m6581maxWithYmdZ_VM(int[] iArr, Comparator comparator) {
        iArr.getClass();
        comparator.getClass();
        return UArraysKt___UArraysKt.m6949maxWithOrNullYmdZ_VM(iArr, comparator);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use maxWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: maxWith-eOHTfZs, reason: not valid java name */
    public static final /* synthetic */ UShort m6582maxWitheOHTfZs(short[] sArr, Comparator comparator) {
        sArr.getClass();
        comparator.getClass();
        return UArraysKt___UArraysKt.m6950maxWithOrNulleOHTfZs(sArr, comparator);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use maxWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: maxWith-zrEWJaI, reason: not valid java name */
    public static final /* synthetic */ ULong m6583maxWithzrEWJaI(long[] jArr, Comparator comparator) {
        jArr.getClass();
        comparator.getClass();
        return UArraysKt___UArraysKt.m6951maxWithOrNullzrEWJaI(jArr, comparator);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use minOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minOrNull()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: min--ajY-9A, reason: not valid java name */
    public static final /* synthetic */ UInt m6584minajY9A(int[] iArr) {
        iArr.getClass();
        return UArraysKt___UArraysKt.m6996minOrNullajY9A(iArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use minOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minOrNull()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: min-GBYM_sE, reason: not valid java name */
    public static final /* synthetic */ UByte m6585minGBYM_sE(byte[] bArr) {
        bArr.getClass();
        return UArraysKt___UArraysKt.m6997minOrNullGBYM_sE(bArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use minOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minOrNull()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: min-QwZRm1k, reason: not valid java name */
    public static final /* synthetic */ ULong m6586minQwZRm1k(long[] jArr) {
        jArr.getClass();
        return UArraysKt___UArraysKt.m6998minOrNullQwZRm1k(jArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use minOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minOrNull()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: min-rL5Bavg, reason: not valid java name */
    public static final /* synthetic */ UShort m6587minrL5Bavg(short[] sArr) {
        sArr.getClass();
        return UArraysKt___UArraysKt.m6999minOrNullrL5Bavg(sArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use minByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: minBy-JOV_ifY, reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UByte m6588minByJOV_ifY(byte[] bArr, Function1<? super UByte, ? extends R> function1) {
        bArr.getClass();
        function1.getClass();
        if (UByteArray.m6167isEmptyimpl(bArr)) {
            return null;
        }
        byte bM6164getw2LRezQ = UByteArray.m6164getw2LRezQ(bArr, 0);
        int lastIndex = ArraysKt.getLastIndex(bArr);
        if (lastIndex == 0) {
            return UByte.m6100boximpl(bM6164getw2LRezQ);
        }
        R rInvoke = function1.invoke(UByte.m6100boximpl(bM6164getw2LRezQ));
        int i10 = 1;
        if (1 <= lastIndex) {
            while (true) {
                byte bM6164getw2LRezQ2 = UByteArray.m6164getw2LRezQ(bArr, i10);
                R rInvoke2 = function1.invoke(UByte.m6100boximpl(bM6164getw2LRezQ2));
                if (rInvoke.compareTo(rInvoke2) > 0) {
                    bM6164getw2LRezQ = bM6164getw2LRezQ2;
                    rInvoke = rInvoke2;
                }
                if (i10 == lastIndex) {
                    break;
                }
                i10++;
            }
        }
        return UByte.m6100boximpl(bM6164getw2LRezQ);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use minByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: minBy-MShoTSo, reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> ULong m6589minByMShoTSo(long[] jArr, Function1<? super ULong, ? extends R> function1) {
        jArr.getClass();
        function1.getClass();
        if (ULongArray.m6325isEmptyimpl(jArr)) {
            return null;
        }
        long jM6322getsVKNKU = ULongArray.m6322getsVKNKU(jArr, 0);
        int lastIndex = ArraysKt.getLastIndex(jArr);
        if (lastIndex == 0) {
            return ULong.m6256boximpl(jM6322getsVKNKU);
        }
        R rInvoke = function1.invoke(ULong.m6256boximpl(jM6322getsVKNKU));
        int i10 = 1;
        if (1 <= lastIndex) {
            while (true) {
                long jM6322getsVKNKU2 = ULongArray.m6322getsVKNKU(jArr, i10);
                R rInvoke2 = function1.invoke(ULong.m6256boximpl(jM6322getsVKNKU2));
                if (rInvoke.compareTo(rInvoke2) > 0) {
                    jM6322getsVKNKU = jM6322getsVKNKU2;
                    rInvoke = rInvoke2;
                }
                if (i10 == lastIndex) {
                    break;
                }
                i10++;
            }
        }
        return ULong.m6256boximpl(jM6322getsVKNKU);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use minByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: minBy-jgv0xPQ, reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UInt m6590minByjgv0xPQ(int[] iArr, Function1<? super UInt, ? extends R> function1) {
        iArr.getClass();
        function1.getClass();
        if (UIntArray.m6246isEmptyimpl(iArr)) {
            return null;
        }
        int iM6243getpVg5ArA = UIntArray.m6243getpVg5ArA(iArr, 0);
        int lastIndex = ArraysKt.getLastIndex(iArr);
        if (lastIndex == 0) {
            return UInt.m6177boximpl(iM6243getpVg5ArA);
        }
        R rInvoke = function1.invoke(UInt.m6177boximpl(iM6243getpVg5ArA));
        int i10 = 1;
        if (1 <= lastIndex) {
            while (true) {
                int iM6243getpVg5ArA2 = UIntArray.m6243getpVg5ArA(iArr, i10);
                R rInvoke2 = function1.invoke(UInt.m6177boximpl(iM6243getpVg5ArA2));
                if (rInvoke.compareTo(rInvoke2) > 0) {
                    iM6243getpVg5ArA = iM6243getpVg5ArA2;
                    rInvoke = rInvoke2;
                }
                if (i10 == lastIndex) {
                    break;
                }
                i10++;
            }
        }
        return UInt.m6177boximpl(iM6243getpVg5ArA);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use minByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: minBy-xTcfx_M, reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UShort m6591minByxTcfx_M(short[] sArr, Function1<? super UShort, ? extends R> function1) {
        sArr.getClass();
        function1.getClass();
        if (UShortArray.m6430isEmptyimpl(sArr)) {
            return null;
        }
        short sM6427getMh2AYeg = UShortArray.m6427getMh2AYeg(sArr, 0);
        int lastIndex = ArraysKt.getLastIndex(sArr);
        if (lastIndex == 0) {
            return UShort.m6363boximpl(sM6427getMh2AYeg);
        }
        R rInvoke = function1.invoke(UShort.m6363boximpl(sM6427getMh2AYeg));
        int i10 = 1;
        if (1 <= lastIndex) {
            while (true) {
                short sM6427getMh2AYeg2 = UShortArray.m6427getMh2AYeg(sArr, i10);
                R rInvoke2 = function1.invoke(UShort.m6363boximpl(sM6427getMh2AYeg2));
                if (rInvoke.compareTo(rInvoke2) > 0) {
                    sM6427getMh2AYeg = sM6427getMh2AYeg2;
                    rInvoke = rInvoke2;
                }
                if (i10 == lastIndex) {
                    break;
                }
                i10++;
            }
        }
        return UShort.m6363boximpl(sM6427getMh2AYeg);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use minWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: minWith-XMRcp5o, reason: not valid java name */
    public static final /* synthetic */ UByte m6592minWithXMRcp5o(byte[] bArr, Comparator comparator) {
        bArr.getClass();
        comparator.getClass();
        return UArraysKt___UArraysKt.m7004minWithOrNullXMRcp5o(bArr, comparator);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use minWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: minWith-YmdZ_VM, reason: not valid java name */
    public static final /* synthetic */ UInt m6593minWithYmdZ_VM(int[] iArr, Comparator comparator) {
        iArr.getClass();
        comparator.getClass();
        return UArraysKt___UArraysKt.m7005minWithOrNullYmdZ_VM(iArr, comparator);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use minWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: minWith-eOHTfZs, reason: not valid java name */
    public static final /* synthetic */ UShort m6594minWitheOHTfZs(short[] sArr, Comparator comparator) {
        sArr.getClass();
        comparator.getClass();
        return UArraysKt___UArraysKt.m7006minWithOrNulleOHTfZs(sArr, comparator);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use minWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: minWith-zrEWJaI, reason: not valid java name */
    public static final /* synthetic */ ULong m6595minWithzrEWJaI(long[] jArr, Comparator comparator) {
        jArr.getClass();
        comparator.getClass();
        return UArraysKt___UArraysKt.m7007minWithOrNullzrEWJaI(jArr, comparator);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(int[] iArr, Function1<? super UInt, ? extends BigDecimal> function1) {
        iArr.getClass();
        function1.getClass();
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(0L);
        bigDecimalValueOf.getClass();
        int iM6244getSizeimpl = UIntArray.m6244getSizeimpl(iArr);
        for (int i10 = 0; i10 < iM6244getSizeimpl; i10++) {
            bigDecimalValueOf = bigDecimalValueOf.add((BigDecimal) AbstractC2082a.m3239e(iArr, i10, function1));
            bigDecimalValueOf.getClass();
        }
        return bigDecimalValueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(int[] iArr, Function1<? super UInt, ? extends BigInteger> function1) {
        iArr.getClass();
        function1.getClass();
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0L);
        bigIntegerValueOf.getClass();
        int iM6244getSizeimpl = UIntArray.m6244getSizeimpl(iArr);
        for (int i10 = 0; i10 < iM6244getSizeimpl; i10++) {
            bigIntegerValueOf = bigIntegerValueOf.add((BigInteger) AbstractC2082a.m3239e(iArr, i10, function1));
            bigIntegerValueOf.getClass();
        }
        return bigIntegerValueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(long[] jArr, Function1<? super ULong, ? extends BigDecimal> function1) {
        jArr.getClass();
        function1.getClass();
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(0L);
        bigDecimalValueOf.getClass();
        int iM6323getSizeimpl = ULongArray.m6323getSizeimpl(jArr);
        for (int i10 = 0; i10 < iM6323getSizeimpl; i10++) {
            bigDecimalValueOf = bigDecimalValueOf.add((BigDecimal) AbstractC1178q.m2071e(jArr, i10, function1));
            bigDecimalValueOf.getClass();
        }
        return bigDecimalValueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(long[] jArr, Function1<? super ULong, ? extends BigInteger> function1) {
        jArr.getClass();
        function1.getClass();
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0L);
        bigIntegerValueOf.getClass();
        int iM6323getSizeimpl = ULongArray.m6323getSizeimpl(jArr);
        for (int i10 = 0; i10 < iM6323getSizeimpl; i10++) {
            bigIntegerValueOf = bigIntegerValueOf.add((BigInteger) AbstractC1178q.m2071e(jArr, i10, function1));
            bigIntegerValueOf.getClass();
        }
        return bigIntegerValueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(byte[] bArr, Function1<? super UByte, ? extends BigDecimal> function1) {
        bArr.getClass();
        function1.getClass();
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(0L);
        bigDecimalValueOf.getClass();
        int iM6165getSizeimpl = UByteArray.m6165getSizeimpl(bArr);
        for (int i10 = 0; i10 < iM6165getSizeimpl; i10++) {
            bigDecimalValueOf = bigDecimalValueOf.add((BigDecimal) AbstractC2082a.m3238d(bArr, i10, function1));
            bigDecimalValueOf.getClass();
        }
        return bigDecimalValueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(byte[] bArr, Function1<? super UByte, ? extends BigInteger> function1) {
        bArr.getClass();
        function1.getClass();
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0L);
        bigIntegerValueOf.getClass();
        int iM6165getSizeimpl = UByteArray.m6165getSizeimpl(bArr);
        for (int i10 = 0; i10 < iM6165getSizeimpl; i10++) {
            bigIntegerValueOf = bigIntegerValueOf.add((BigInteger) AbstractC2082a.m3238d(bArr, i10, function1));
            bigIntegerValueOf.getClass();
        }
        return bigIntegerValueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(short[] sArr, Function1<? super UShort, ? extends BigDecimal> function1) {
        sArr.getClass();
        function1.getClass();
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(0L);
        bigDecimalValueOf.getClass();
        int iM6428getSizeimpl = UShortArray.m6428getSizeimpl(sArr);
        for (int i10 = 0; i10 < iM6428getSizeimpl; i10++) {
            bigDecimalValueOf = bigDecimalValueOf.add((BigDecimal) AbstractC1178q.m2072f(sArr, i10, function1));
            bigDecimalValueOf.getClass();
        }
        return bigDecimalValueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(short[] sArr, Function1<? super UShort, ? extends BigInteger> function1) {
        sArr.getClass();
        function1.getClass();
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0L);
        bigIntegerValueOf.getClass();
        int iM6428getSizeimpl = UShortArray.m6428getSizeimpl(sArr);
        for (int i10 = 0; i10 < iM6428getSizeimpl; i10++) {
            bigIntegerValueOf = bigIntegerValueOf.add((BigInteger) AbstractC1178q.m2072f(sArr, i10, function1));
            bigIntegerValueOf.getClass();
        }
        return bigIntegerValueOf;
    }
}

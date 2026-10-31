package kotlin.text;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.navigation.C0674b;
import java.util.Arrays;
import kotlin.ExperimentalStdlibApi;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.WasExperimental;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u0000r\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0019\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0005\n\u0002\b\t\n\u0002\u0010\n\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u0001\n\u0000\u001a\u0016\u0010\u000b\u001a\u00020\u0001*\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a*\u0010\u000b\u001a\u00020\u0001*\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a,\u0010\u0012\u001a\u00020\u0001*\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0004H\u0002\u001a,\u0010\u0016\u001a\u00020\u0001*\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0004H\u0002\u001a,\u0010\u0017\u001a\u00020\u0001*\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0004H\u0002\u001a,\u0010\u0018\u001a\u00020\u0001*\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0004H\u0002\u001a<\u0010\u0019\u001a\u00020\u0010*\u00020\f2\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0010H\u0002\u001a,\u0010\u0019\u001a\u00020\u0010*\u00020\f2\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0010H\u0002\u001a(\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u0010H\u0002\u001a@\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u00102\u0006\u0010'\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u0010H\u0000\u001a\u0010\u0010(\u001a\u00020\u00102\u0006\u0010)\u001a\u00020*H\u0002\u001a\u0016\u0010+\u001a\u00020\f*\u00020\u00012\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a*\u0010+\u001a\u00020\f*\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0002\u001a&\u0010,\u001a\u0004\u0018\u00010\f*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0002\u001a&\u0010-\u001a\u0004\u0018\u00010\f*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0002\u001a&\u0010.\u001a\u0004\u0018\u00010\f*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0002\u001a$\u0010/\u001a\u00020\f*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0002\u001a\u0014\u00100\u001a\u000201*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0010H\u0002\u001a@\u00102\u001a\u00020\u00102\u0006\u00103\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u00102\u0006\u0010'\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u0010H\u0000\u001a \u00104\u001a\u00020*2\u0006\u00105\u001a\u00020*2\u0006\u00106\u001a\u00020\u00102\u0006\u00107\u001a\u00020\u0010H\u0002\u001a \u00108\u001a\u00020*2\u0006\u00104\u001a\u00020*2\u0006\u00105\u001a\u00020*2\u0006\u00107\u001a\u00020\u0010H\u0002\u001a\u001c\u00109\u001a\u00020\u0010*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u001a\u0016\u0010\u000b\u001a\u00020\u0001*\u0002012\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a\u0016\u0010:\u001a\u000201*\u00020\u00012\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a*\u0010:\u001a\u000201*\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0002\u001a\u0016\u0010\u000b\u001a\u00020\u0001*\u00020;2\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a\u0016\u0010<\u001a\u00020;*\u00020\u00012\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a*\u0010<\u001a\u00020;*\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0002\u001a\u0016\u0010\u000b\u001a\u00020\u0001*\u00020\u00102\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a\u0016\u0010=\u001a\u00020\u0010*\u00020\u00012\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a*\u0010=\u001a\u00020\u0010*\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0000\u001a\u0016\u0010\u000b\u001a\u00020\u0001*\u00020*2\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a\u0016\u0010>\u001a\u00020**\u00020\u00012\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a*\u0010>\u001a\u00020**\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0000\u001a$\u0010?\u001a\u00020\u0001*\u00020*2\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020\u00012\u0006\u0010C\u001a\u00020\u0010H\u0002\u001a\u001c\u0010D\u001a\u00020\u0010*\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0010H\u0002\u001a,\u0010E\u001a\u00020\u0010*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010F\u001a\u00020\u0010H\u0002\u001a,\u0010G\u001a\u00020**\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010F\u001a\u00020\u0010H\u0002\u001a<\u0010H\u001a\u00020I*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010J\u001a\u00020\u00012\u0006\u0010K\u001a\u00020\u00012\u0006\u0010L\u001a\u00020M2\u0006\u0010F\u001a\u00020\u0010H\u0002\u001a$\u0010N\u001a\u00020I*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010F\u001a\u00020\u0010H\u0002\u001a\u001c\u0010O\u001a\u00020I*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u001a\u001c\u0010P\u001a\u00020\u0010*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u001a\u001c\u0010Q\u001a\u00020**\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u001a5\u0010R\u001a\u00020\u0010*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010S\u001a\u00020\u00012\u0006\u0010L\u001a\u00020M2\u0006\u0010T\u001a\u00020\u0001H\u0082\b\u001a\u0015\u0010U\u001a\u00020\u0010*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0010H\u0082\b\u001a\u0015\u0010V\u001a\u00020**\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0010H\u0082\b\u001a,\u0010W\u001a\u00020I*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010X\u001a\u00020\u00012\u0006\u0010Y\u001a\u00020\u0010H\u0002\u001a,\u0010Z\u001a\u00020I*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010S\u001a\u00020\u00012\u0006\u0010T\u001a\u00020\u0001H\u0002\u001a,\u0010[\u001a\u00020I*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010J\u001a\u00020\u00012\u0006\u0010K\u001a\u00020\u0001H\u0002\u001a\u0014\u0010\\\u001a\u00020]*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0010H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006^"}, m3159d2 = {"LOWER_CASE_HEX_DIGITS", "", "UPPER_CASE_HEX_DIGITS", "BYTE_TO_LOWER_CASE_HEX_DIGITS", "", "getBYTE_TO_LOWER_CASE_HEX_DIGITS", "()[I", "BYTE_TO_UPPER_CASE_HEX_DIGITS", "HEX_DIGITS_TO_DECIMAL", "HEX_DIGITS_TO_LONG_DECIMAL", "", "toHexString", "", "format", "Lkotlin/text/HexFormat;", "startIndex", "", "endIndex", "toHexStringNoLineAndGroupSeparator", "bytesFormat", "Lkotlin/text/HexFormat$BytesHexFormat;", "byteToDigits", "toHexStringShortByteSeparatorNoPrefixAndSuffix", "toHexStringNoLineAndGroupSeparatorSlowPath", "toHexStringSlowPath", "formatByteAt", "index", "bytePrefix", "byteSuffix", "destination", "", "destinationOffset", "formattedStringLength", "numberOfBytes", "byteSeparatorLength", "bytePrefixLength", "byteSuffixLength", "bytesPerLine", "bytesPerGroup", "groupSeparatorLength", "checkFormatLength", "formatLength", "", "hexToByteArray", "hexToByteArrayNoLineAndGroupSeparator", "hexToByteArrayShortByteSeparatorNoPrefixAndSuffix", "hexToByteArrayNoLineAndGroupSeparatorSlowPath", "hexToByteArraySlowPath", "parseByteAt", "", "parsedByteArrayMaxSize", "stringLength", "charsPerSet", "charsPerElement", "elementsPerSet", "elementSeparatorLength", "wholeElementsPerSet", "checkNewLineAt", "hexToByte", "", "hexToShort", "hexToInt", "hexToLong", "toHexStringImpl", "numberFormat", "Lkotlin/text/HexFormat$NumberHexFormat;", "digits", "bits", "toCharArrayIfNotEmpty", "hexToIntImpl", "typeHexLength", "hexToLongImpl", "checkPrefixSuffixNumberOfDigits", "", "prefix", "suffix", "ignoreCase", "", "checkNumberOfDigits", "checkZeroDigits", "parseInt", "parseLong", "checkContainsAt", "part", "partName", "decimalFromHexDigitAt", "longDecimalFromHexDigitAt", "throwInvalidNumberOfDigits", "specifier", "expected", "throwNotContainedAt", "throwInvalidPrefixSuffix", "throwInvalidDigitAt", "", "kotlin-stdlib"}, m3160k = 2, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nHexExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,1237:1\n1186#1,7:1239\n1186#1,7:1246\n1186#1,7:1253\n1186#1,7:1260\n1186#1,7:1267\n1186#1,7:1274\n1186#1,7:1281\n1186#1,7:1288\n1197#1,5:1295\n1197#1,5:1300\n1186#1,7:1305\n1186#1,7:1312\n1197#1,5:1319\n1206#1,5:1324\n1#2:1238\n1188#3,3:1329\n1188#3,3:1332\n1188#3,3:1335\n1188#3,3:1338\n*S KotlinDebug\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n*L\n450#1:1239,7\n482#1:1246,7\n486#1:1253,7\n489#1:1260,7\n529#1:1267,7\n532#1:1274,7\n537#1:1281,7\n542#1:1288,7\n549#1:1295,5\n550#1:1300,5\n1141#1:1305,7\n1143#1:1312,7\n1171#1:1319,5\n1179#1:1324,5\n42#1:1329,3\n43#1:1332,3\n54#1:1335,3\n55#1:1338,3\n*E\n"})
public final class HexExtensionsKt {
    private static final int[] BYTE_TO_LOWER_CASE_HEX_DIGITS;
    private static final int[] BYTE_TO_UPPER_CASE_HEX_DIGITS;
    private static final int[] HEX_DIGITS_TO_DECIMAL;
    private static final long[] HEX_DIGITS_TO_LONG_DECIMAL;
    private static final String LOWER_CASE_HEX_DIGITS = "0123456789abcdef";
    private static final String UPPER_CASE_HEX_DIGITS = "0123456789ABCDEF";

    static {
        int[] iArr = new int[256];
        int i10 = 0;
        for (int i11 = 0; i11 < 256; i11++) {
            iArr[i11] = LOWER_CASE_HEX_DIGITS.charAt(i11 & 15) | (LOWER_CASE_HEX_DIGITS.charAt(i11 >> 4) << '\b');
        }
        BYTE_TO_LOWER_CASE_HEX_DIGITS = iArr;
        int[] iArr2 = new int[256];
        for (int i12 = 0; i12 < 256; i12++) {
            iArr2[i12] = UPPER_CASE_HEX_DIGITS.charAt(i12 & 15) | (UPPER_CASE_HEX_DIGITS.charAt(i12 >> 4) << '\b');
        }
        BYTE_TO_UPPER_CASE_HEX_DIGITS = iArr2;
        int[] iArr3 = new int[256];
        for (int i13 = 0; i13 < 256; i13++) {
            iArr3[i13] = -1;
        }
        int i14 = 0;
        int i15 = 0;
        while (i14 < LOWER_CASE_HEX_DIGITS.length()) {
            iArr3[LOWER_CASE_HEX_DIGITS.charAt(i14)] = i15;
            i14++;
            i15++;
        }
        int i16 = 0;
        int i17 = 0;
        while (i16 < UPPER_CASE_HEX_DIGITS.length()) {
            iArr3[UPPER_CASE_HEX_DIGITS.charAt(i16)] = i17;
            i16++;
            i17++;
        }
        HEX_DIGITS_TO_DECIMAL = iArr3;
        long[] jArr = new long[256];
        for (int i18 = 0; i18 < 256; i18++) {
            jArr[i18] = -1;
        }
        int i19 = 0;
        int i20 = 0;
        while (i19 < LOWER_CASE_HEX_DIGITS.length()) {
            jArr[LOWER_CASE_HEX_DIGITS.charAt(i19)] = i20;
            i19++;
            i20++;
        }
        int i21 = 0;
        while (i10 < UPPER_CASE_HEX_DIGITS.length()) {
            jArr[UPPER_CASE_HEX_DIGITS.charAt(i10)] = i21;
            i10++;
            i21++;
        }
        HEX_DIGITS_TO_LONG_DECIMAL = jArr;
    }

    private static final long charsPerSet(long j10, int i10, int i11) {
        if (i10 <= 0) {
            C1929i.m3029k("Failed requirement.");
            return 0L;
        }
        long j11 = i10;
        return ((j11 - 1) * ((long) i11)) + (j10 * j11);
    }

    private static final int checkContainsAt(String str, int i10, int i11, String str2, boolean z9, String str3) {
        if (str2.length() == 0) {
            return i10;
        }
        int length = str2.length();
        for (int i12 = 0; i12 < length; i12++) {
            if (!CharsKt__CharKt.equals(str2.charAt(i12), str.charAt(i10 + i12), z9)) {
                throwNotContainedAt(str, i10, i11, str2, str3);
            }
        }
        return str2.length() + i10;
    }

    private static final int checkFormatLength(long j10) {
        if (0 <= j10 && j10 <= 2147483647L) {
            return (int) j10;
        }
        C0674b.m848o(ULong.m6308toStringimpl(ULong.m6262constructorimpl(j10)), "The resulting string length is too big: ");
        return 0;
    }

    private static final int checkNewLineAt(String str, int i10, int i11) {
        if (str.charAt(i10) == '\r') {
            int i12 = i10 + 1;
            return (i12 >= i11 || str.charAt(i12) != '\n') ? i12 : i10 + 2;
        }
        if (str.charAt(i10) == '\n') {
            return i10 + 1;
        }
        StringBuilder sbM166q = AbstractC0074a.m166q(i10, "Expected a new line at index ", ", but was ");
        sbM166q.append(str.charAt(i10));
        throw new NumberFormatException(sbM166q.toString());
    }

    private static final void checkNumberOfDigits(String str, int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if (i13 < 1) {
            throwInvalidNumberOfDigits(str, i10, i11, "at least", 1);
        } else if (i13 > i12) {
            checkZeroDigits(str, i10, (i13 + i10) - i12);
        }
    }

    private static final void checkPrefixSuffixNumberOfDigits(String str, int i10, int i11, String str2, String str3, boolean z9, int i12) {
        if ((i11 - i10) - str2.length() <= str3.length()) {
            throwInvalidPrefixSuffix(str, i10, i11, str2, str3);
        }
        if (str2.length() != 0) {
            int length = str2.length();
            for (int i13 = 0; i13 < length; i13++) {
                if (!CharsKt__CharKt.equals(str2.charAt(i13), str.charAt(i10 + i13), z9)) {
                    throwNotContainedAt(str, i10, i11, str2, "prefix");
                }
            }
            i10 += str2.length();
        }
        int length2 = i11 - str3.length();
        if (str3.length() != 0) {
            int length3 = str3.length();
            for (int i14 = 0; i14 < length3; i14++) {
                if (!CharsKt__CharKt.equals(str3.charAt(i14), str.charAt(length2 + i14), z9)) {
                    throwNotContainedAt(str, length2, i11, str3, "suffix");
                }
            }
        }
        checkNumberOfDigits(str, i10, length2, i12);
    }

    private static final void checkZeroDigits(String str, int i10, int i11) {
        while (i10 < i11) {
            if (str.charAt(i10) != '0') {
                StringBuilder sbM166q = AbstractC0074a.m166q(i10, "Expected the hexadecimal digit '0' at index ", ", but was '");
                sbM166q.append(str.charAt(i10));
                sbM166q.append("'.\nThe result won't fit the type being parsed.");
                throw new NumberFormatException(sbM166q.toString());
            }
            i10++;
        }
    }

    private static final int decimalFromHexDigitAt(String str, int i10) {
        int i11;
        char cCharAt = str.charAt(i10);
        if ((cCharAt >>> '\b') == 0 && (i11 = HEX_DIGITS_TO_DECIMAL[cCharAt]) >= 0) {
            return i11;
        }
        throwInvalidDigitAt(str, i10);
        throw new KotlinNothingValueException();
    }

    private static final int formatByteAt(byte[] bArr, int i10, int[] iArr, char[] cArr, int i11) {
        int i12 = iArr[bArr[i10] & UByte.MAX_VALUE];
        cArr[i11] = (char) (i12 >> 8);
        cArr[i11 + 1] = (char) (i12 & 255);
        return i11 + 2;
    }

    public static final int formattedStringLength(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        if (i10 <= 0) {
            C1929i.m3029k("Failed requirement.");
            return 0;
        }
        int i17 = i10 - 1;
        int i18 = i17 / i11;
        int i19 = (i11 - 1) / i12;
        int i20 = i10 % i11;
        if (i20 != 0) {
            i11 = i20;
        }
        int i21 = (i19 * i18) + ((i11 - 1) / i12);
        return checkFormatLength(((((long) i15) + 2 + ((long) i16)) * ((long) i10)) + (((long) ((i17 - i18) - i21)) * ((long) i14)) + (((long) i21) * ((long) i13)) + ((long) i18));
    }

    public static final int[] getBYTE_TO_LOWER_CASE_HEX_DIGITS() {
        return BYTE_TO_LOWER_CASE_HEX_DIGITS;
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final byte hexToByte(String str, HexFormat hexFormat) {
        str.getClass();
        hexFormat.getClass();
        return hexToByte(str, 0, str.length(), hexFormat);
    }

    public static /* synthetic */ byte hexToByte$default(String str, int i10, int i11, HexFormat hexFormat, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToByte(str, i10, i11, hexFormat);
    }

    private static final byte[] hexToByteArray(String str, int i10, int i11, HexFormat hexFormat) {
        byte[] bArrHexToByteArrayNoLineAndGroupSeparator;
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i10, i11, str.length());
        if (i10 == i11) {
            return new byte[0];
        }
        HexFormat.BytesHexFormat bytes = hexFormat.getBytes();
        return (!bytes.getNoLineAndGroupSeparator() || (bArrHexToByteArrayNoLineAndGroupSeparator = hexToByteArrayNoLineAndGroupSeparator(str, i10, i11, bytes)) == null) ? hexToByteArraySlowPath(str, i10, i11, bytes) : bArrHexToByteArrayNoLineAndGroupSeparator;
    }

    public static /* synthetic */ byte[] hexToByteArray$default(String str, int i10, int i11, HexFormat hexFormat, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToByteArray(str, i10, i11, hexFormat);
    }

    private static final byte[] hexToByteArrayNoLineAndGroupSeparator(String str, int i10, int i11, HexFormat.BytesHexFormat bytesHexFormat) {
        return bytesHexFormat.getShortByteSeparatorNoPrefixAndSuffix() ? hexToByteArrayShortByteSeparatorNoPrefixAndSuffix(str, i10, i11, bytesHexFormat) : hexToByteArrayNoLineAndGroupSeparatorSlowPath(str, i10, i11, bytesHexFormat);
    }

    private static final byte[] hexToByteArrayNoLineAndGroupSeparatorSlowPath(String str, int i10, int i11, HexFormat.BytesHexFormat bytesHexFormat) {
        String bytePrefix = bytesHexFormat.getBytePrefix();
        String byteSuffix = bytesHexFormat.getByteSuffix();
        String byteSeparator = bytesHexFormat.getByteSeparator();
        long length = byteSeparator.length();
        long length2 = ((long) bytePrefix.length()) + 2 + ((long) byteSuffix.length()) + length;
        long j10 = i11 - i10;
        int i12 = (int) ((j10 + length) / length2);
        if ((((long) i12) * length2) - length != j10) {
            return null;
        }
        boolean ignoreCase$kotlin_stdlib = bytesHexFormat.getIgnoreCase();
        byte[] bArr = new byte[i12];
        if (bytePrefix.length() != 0) {
            int length3 = bytePrefix.length();
            for (int i13 = 0; i13 < length3; i13++) {
                if (!CharsKt__CharKt.equals(bytePrefix.charAt(i13), str.charAt(i10 + i13), ignoreCase$kotlin_stdlib)) {
                    throwNotContainedAt(str, i10, i11, bytePrefix, "byte prefix");
                }
            }
            i10 += bytePrefix.length();
        }
        String strM149D = AbstractC0074a.m149D(byteSuffix, byteSeparator, bytePrefix);
        int i14 = i12 - 1;
        for (int i15 = 0; i15 < i14; i15++) {
            bArr[i15] = parseByteAt(str, i10);
            i10 += 2;
            if (strM149D.length() != 0) {
                int length4 = strM149D.length();
                for (int i16 = 0; i16 < length4; i16++) {
                    if (!CharsKt__CharKt.equals(strM149D.charAt(i16), str.charAt(i10 + i16), ignoreCase$kotlin_stdlib)) {
                        throwNotContainedAt(str, i10, i11, strM149D, "byte suffix + byte separator + byte prefix");
                    }
                }
                i10 = strM149D.length() + i10;
            }
        }
        bArr[i14] = parseByteAt(str, i10);
        int i17 = i10 + 2;
        if (byteSuffix.length() == 0) {
            return bArr;
        }
        int length5 = byteSuffix.length();
        for (int i18 = 0; i18 < length5; i18++) {
            if (!CharsKt__CharKt.equals(byteSuffix.charAt(i18), str.charAt(i17 + i18), ignoreCase$kotlin_stdlib)) {
                throwNotContainedAt(str, i17, i11, byteSuffix, "byte suffix");
            }
        }
        return bArr;
    }

    private static final byte[] hexToByteArrayShortByteSeparatorNoPrefixAndSuffix(String str, int i10, int i11, HexFormat.BytesHexFormat bytesHexFormat) {
        int length = bytesHexFormat.getByteSeparator().length();
        if (length > 1) {
            C1929i.m3029k("Failed requirement.");
            return null;
        }
        int i12 = i11 - i10;
        int i13 = 2;
        if (length == 0) {
            if ((i12 & 1) != 0) {
                return null;
            }
            int i14 = i12 >> 1;
            byte[] bArr = new byte[i14];
            int i15 = 0;
            for (int i16 = 0; i16 < i14; i16++) {
                bArr[i16] = parseByteAt(str, i15);
                i15 += 2;
            }
            return bArr;
        }
        if (i12 % 3 != 2) {
            return null;
        }
        int i17 = (i12 / 3) + 1;
        byte[] bArr2 = new byte[i17];
        char cCharAt = bytesHexFormat.getByteSeparator().charAt(0);
        bArr2[0] = parseByteAt(str, 0);
        for (int i18 = 1; i18 < i17; i18++) {
            if (str.charAt(i13) != cCharAt) {
                String byteSeparator = bytesHexFormat.getByteSeparator();
                boolean ignoreCase$kotlin_stdlib = bytesHexFormat.getIgnoreCase();
                if (byteSeparator.length() != 0) {
                    int length2 = byteSeparator.length();
                    for (int i19 = 0; i19 < length2; i19++) {
                        if (!CharsKt__CharKt.equals(byteSeparator.charAt(i19), str.charAt(i13 + i19), ignoreCase$kotlin_stdlib)) {
                            throwNotContainedAt(str, i13, i11, byteSeparator, "byte separator");
                        }
                    }
                    byteSeparator.length();
                }
            }
            bArr2[i18] = parseByteAt(str, i13 + 1);
            i13 += 3;
        }
        return bArr2;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:35:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:42:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:45:0x010d  */
    /* JADX WARN: Code duplicated, block: B:46:0x0110  */
    /* JADX WARN: Code duplicated, block: B:48:0x0117  */
    /* JADX WARN: Code duplicated, block: B:50:0x0129  */
    /* JADX WARN: Code duplicated, block: B:63:0x00e9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x012e A[SYNTHETIC] */
    private static final byte[] hexToByteArraySlowPath(String str, int i10, int i11, HexFormat.BytesHexFormat bytesHexFormat) {
        int i12;
        int i13;
        int i14;
        int length;
        int i15;
        int i16;
        int length2;
        int i17;
        int bytesPerLine = bytesHexFormat.getBytesPerLine();
        int bytesPerGroup = bytesHexFormat.getBytesPerGroup();
        String bytePrefix = bytesHexFormat.getBytePrefix();
        String byteSuffix = bytesHexFormat.getByteSuffix();
        String byteSeparator = bytesHexFormat.getByteSeparator();
        String groupSeparator = bytesHexFormat.getGroupSeparator();
        boolean ignoreCase$kotlin_stdlib = bytesHexFormat.getIgnoreCase();
        int i18 = parsedByteArrayMaxSize(i11 - i10, bytesPerLine, bytesPerGroup, groupSeparator.length(), byteSeparator.length(), bytePrefix.length(), byteSuffix.length());
        byte[] bArr = new byte[i18];
        int length3 = i10;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        while (length3 < i11) {
            if (i20 == bytesPerLine) {
                length3 = checkNewLineAt(str, length3, i11);
                i12 = bytesPerLine;
                i13 = bytesPerGroup;
                i20 = 0;
            } else {
                if (i21 != bytesPerGroup) {
                    i12 = bytesPerLine;
                    i13 = bytesPerGroup;
                    if (i21 != 0 && byteSeparator.length() != 0) {
                        int length4 = byteSeparator.length();
                        int i22 = 0;
                        while (i22 < length4) {
                            int i23 = length4;
                            if (!CharsKt__CharKt.equals(byteSeparator.charAt(i22), str.charAt(length3 + i22), ignoreCase$kotlin_stdlib)) {
                                throwNotContainedAt(str, length3, i11, byteSeparator, "byte separator");
                            }
                            i22++;
                            length4 = i23;
                        }
                        length3 += byteSeparator.length();
                    }
                } else if (groupSeparator.length() == 0) {
                    i12 = bytesPerLine;
                    i13 = bytesPerGroup;
                } else {
                    int length5 = groupSeparator.length();
                    int i24 = 0;
                    while (i24 < length5) {
                        int i25 = bytesPerLine;
                        int i26 = bytesPerGroup;
                        if (!CharsKt__CharKt.equals(groupSeparator.charAt(i24), str.charAt(length3 + i24), ignoreCase$kotlin_stdlib)) {
                            throwNotContainedAt(str, length3, i11, groupSeparator, "group separator");
                        }
                        i24++;
                        bytesPerLine = i25;
                        bytesPerGroup = i26;
                    }
                    i12 = bytesPerLine;
                    i13 = bytesPerGroup;
                    length3 += groupSeparator.length();
                }
                i20++;
                i21++;
                if (bytePrefix.length() != 0) {
                    length2 = bytePrefix.length();
                    i17 = 0;
                    while (i17 < length2) {
                        int i27 = length2;
                        if (!CharsKt__CharKt.equals(bytePrefix.charAt(i17), str.charAt(length3 + i17), ignoreCase$kotlin_stdlib)) {
                            throwNotContainedAt(str, length3, i11, bytePrefix, "byte prefix");
                        }
                        i17++;
                        length2 = i27;
                    }
                    length3 += bytePrefix.length();
                }
                if (i11 - 2 < length3) {
                    throwInvalidNumberOfDigits(str, length3, i11, "exactly", 2);
                }
                i14 = i19 + 1;
                bArr[i19] = parseByteAt(str, length3);
                length3 += 2;
                if (byteSuffix.length() == 0) {
                    i16 = i14;
                } else {
                    length = byteSuffix.length();
                    i15 = 0;
                    while (i15 < length) {
                        int i28 = i14;
                        if (!CharsKt__CharKt.equals(byteSuffix.charAt(i15), str.charAt(length3 + i15), ignoreCase$kotlin_stdlib)) {
                            throwNotContainedAt(str, length3, i11, byteSuffix, "byte suffix");
                        }
                        i15++;
                        i14 = i28;
                    }
                    i16 = i14;
                    length3 = byteSuffix.length() + length3;
                }
                i19 = i16;
                bytesPerLine = i12;
                bytesPerGroup = i13;
            }
            i21 = 0;
            i20++;
            i21++;
            if (bytePrefix.length() != 0) {
                length2 = bytePrefix.length();
                i17 = 0;
                while (i17 < length2) {
                    int i29 = length2;
                    if (!CharsKt__CharKt.equals(bytePrefix.charAt(i17), str.charAt(length3 + i17), ignoreCase$kotlin_stdlib)) {
                        throwNotContainedAt(str, length3, i11, bytePrefix, "byte prefix");
                    }
                    i17++;
                    length2 = i29;
                }
                length3 += bytePrefix.length();
            }
            if (i11 - 2 < length3) {
                throwInvalidNumberOfDigits(str, length3, i11, "exactly", 2);
            }
            i14 = i19 + 1;
            bArr[i19] = parseByteAt(str, length3);
            length3 += 2;
            if (byteSuffix.length() == 0) {
                i16 = i14;
            } else {
                length = byteSuffix.length();
                i15 = 0;
                while (i15 < length) {
                    int i210 = i14;
                    if (!CharsKt__CharKt.equals(byteSuffix.charAt(i15), str.charAt(length3 + i15), ignoreCase$kotlin_stdlib)) {
                        throwNotContainedAt(str, length3, i11, byteSuffix, "byte suffix");
                    }
                    i15++;
                    i14 = i210;
                }
                i16 = i14;
                length3 = byteSuffix.length() + length3;
            }
            i19 = i16;
            bytesPerLine = i12;
            bytesPerGroup = i13;
        }
        return i19 == i18 ? bArr : Arrays.copyOf(bArr, i19);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final int hexToInt(String str, HexFormat hexFormat) {
        str.getClass();
        hexFormat.getClass();
        return hexToInt(str, 0, str.length(), hexFormat);
    }

    public static /* synthetic */ int hexToInt$default(String str, int i10, int i11, HexFormat hexFormat, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToInt(str, i10, i11, hexFormat);
    }

    private static final int hexToIntImpl(String str, int i10, int i11, HexFormat hexFormat, int i12) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i10, i11, str.length());
        HexFormat.NumberHexFormat number = hexFormat.getNumber();
        if (number.getIsDigitsOnly()) {
            checkNumberOfDigits(str, i10, i11, i12);
            return parseInt(str, i10, i11);
        }
        String prefix = number.getPrefix();
        String suffix = number.getSuffix();
        checkPrefixSuffixNumberOfDigits(str, i10, i11, prefix, suffix, number.getIgnoreCase(), i12);
        return parseInt(str, prefix.length() + i10, i11 - suffix.length());
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final long hexToLong(String str, HexFormat hexFormat) {
        str.getClass();
        hexFormat.getClass();
        return hexToLong(str, 0, str.length(), hexFormat);
    }

    public static /* synthetic */ long hexToLong$default(String str, int i10, int i11, HexFormat hexFormat, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToLong(str, i10, i11, hexFormat);
    }

    private static final long hexToLongImpl(String str, int i10, int i11, HexFormat hexFormat, int i12) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i10, i11, str.length());
        HexFormat.NumberHexFormat number = hexFormat.getNumber();
        if (number.getIsDigitsOnly()) {
            checkNumberOfDigits(str, i10, i11, i12);
            return parseLong(str, i10, i11);
        }
        String prefix = number.getPrefix();
        String suffix = number.getSuffix();
        checkPrefixSuffixNumberOfDigits(str, i10, i11, prefix, suffix, number.getIgnoreCase(), i12);
        return parseLong(str, prefix.length() + i10, i11 - suffix.length());
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final short hexToShort(String str, HexFormat hexFormat) {
        str.getClass();
        hexFormat.getClass();
        return hexToShort(str, 0, str.length(), hexFormat);
    }

    public static /* synthetic */ short hexToShort$default(String str, int i10, int i11, HexFormat hexFormat, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToShort(str, i10, i11, hexFormat);
    }

    private static final long longDecimalFromHexDigitAt(String str, int i10) {
        char cCharAt = str.charAt(i10);
        if ((cCharAt >>> '\b') == 0) {
            long j10 = HEX_DIGITS_TO_LONG_DECIMAL[cCharAt];
            if (j10 >= 0) {
                return j10;
            }
        }
        throwInvalidDigitAt(str, i10);
        throw new KotlinNothingValueException();
    }

    private static final byte parseByteAt(String str, int i10) {
        int[] iArr;
        int i11;
        int i12;
        char cCharAt = str.charAt(i10);
        if ((cCharAt >>> '\b') != 0 || (i11 = (iArr = HEX_DIGITS_TO_DECIMAL)[cCharAt]) < 0) {
            throwInvalidDigitAt(str, i10);
            throw new KotlinNothingValueException();
        }
        int i13 = i10 + 1;
        char cCharAt2 = str.charAt(i13);
        if ((cCharAt2 >>> '\b') == 0 && (i12 = iArr[cCharAt2]) >= 0) {
            return (byte) ((i11 << 4) | i12);
        }
        throwInvalidDigitAt(str, i13);
        throw new KotlinNothingValueException();
    }

    private static final int parseInt(String str, int i10, int i11) {
        int i12;
        int i13 = 0;
        while (i10 < i11) {
            int i14 = i13 << 4;
            char cCharAt = str.charAt(i10);
            if ((cCharAt >>> '\b') != 0 || (i12 = HEX_DIGITS_TO_DECIMAL[cCharAt]) < 0) {
                throwInvalidDigitAt(str, i10);
                throw new KotlinNothingValueException();
            }
            i13 = i14 | i12;
            i10++;
        }
        return i13;
    }

    private static final long parseLong(String str, int i10, int i11) {
        long j10 = 0;
        while (i10 < i11) {
            long j11 = j10 << 4;
            char cCharAt = str.charAt(i10);
            if ((cCharAt >>> '\b') == 0) {
                long j12 = HEX_DIGITS_TO_LONG_DECIMAL[cCharAt];
                if (j12 >= 0) {
                    j10 = j11 | j12;
                    i10++;
                }
            }
            throwInvalidDigitAt(str, i10);
            throw new KotlinNothingValueException();
        }
        return j10;
    }

    public static final int parsedByteArrayMaxSize(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        long jCharsPerSet;
        if (i10 <= 0) {
            C1929i.m3029k("Failed requirement.");
            return 0;
        }
        long j10 = ((long) i15) + 2 + ((long) i16);
        long jCharsPerSet2 = charsPerSet(j10, i12, i14);
        if (i11 <= i12) {
            jCharsPerSet = charsPerSet(j10, i11, i14);
        } else {
            jCharsPerSet = charsPerSet(jCharsPerSet2, i11 / i12, i13);
            int i17 = i11 % i12;
            if (i17 != 0) {
                jCharsPerSet = jCharsPerSet + ((long) i13) + charsPerSet(j10, i17, i14);
            }
        }
        long j11 = i10;
        long jWholeElementsPerSet = wholeElementsPerSet(j11, jCharsPerSet, 1);
        long j12 = j11 - ((jCharsPerSet + 1) * jWholeElementsPerSet);
        long jWholeElementsPerSet2 = wholeElementsPerSet(j12, jCharsPerSet2, i13);
        long j13 = j12 - ((jCharsPerSet2 + ((long) i13)) * jWholeElementsPerSet2);
        long jWholeElementsPerSet3 = wholeElementsPerSet(j13, j10, i14);
        return (int) ((jWholeElementsPerSet2 * ((long) i12)) + (jWholeElementsPerSet * ((long) i11)) + jWholeElementsPerSet3 + ((long) (j13 - ((j10 + ((long) i14)) * jWholeElementsPerSet3) > 0 ? 1 : 0)));
    }

    private static final Void throwInvalidDigitAt(String str, int i10) {
        StringBuilder sbM166q = AbstractC0074a.m166q(i10, "Expected a hexadecimal digit at index ", ", but was ");
        sbM166q.append(str.charAt(i10));
        throw new NumberFormatException(sbM166q.toString());
    }

    private static final void throwInvalidNumberOfDigits(String str, int i10, int i11, String str2, int i12) {
        str.getClass();
        throw new NumberFormatException("Expected " + str2 + ' ' + i12 + " hexadecimal digits at index " + i10 + ", but was \"" + str.substring(i10, i11) + "\" of length " + (i11 - i10));
    }

    private static final void throwInvalidPrefixSuffix(String str, int i10, int i11, String str2, String str3) {
        str.getClass();
        throw new NumberFormatException("Expected a hexadecimal number with prefix \"" + str2 + "\" and suffix \"" + str3 + "\", but was " + str.substring(i10, i11));
    }

    private static final void throwNotContainedAt(String str, int i10, int i11, String str2, String str3) {
        int iCoerceAtMost = RangesKt.coerceAtMost(str2.length() + i10, i11);
        str.getClass();
        throw new NumberFormatException("Expected " + str3 + " \"" + str2 + "\" at index " + i10 + ", but was " + str.substring(i10, iCoerceAtMost));
    }

    private static final int toCharArrayIfNotEmpty(String str, char[] cArr, int i10) {
        int length = str.length();
        if (length != 0) {
            if (length != 1) {
                str.getChars(0, str.length(), cArr, i10);
            } else {
                cArr[i10] = str.charAt(0);
            }
        }
        return str.length() + i10;
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final String toHexString(long j10, HexFormat hexFormat) {
        hexFormat.getClass();
        String str = hexFormat.getUpperCase() ? UPPER_CASE_HEX_DIGITS : LOWER_CASE_HEX_DIGITS;
        HexFormat.NumberHexFormat number = hexFormat.getNumber();
        if (!number.getIsDigitsOnlyAndNoPadding()) {
            return toHexStringImpl(j10, number, str, 64);
        }
        char[] cArr = {str.charAt((int) ((j10 >> 60) & 15)), str.charAt((int) ((j10 >> 56) & 15)), str.charAt((int) ((j10 >> 52) & 15)), str.charAt((int) ((j10 >> 48) & 15)), str.charAt((int) ((j10 >> 44) & 15)), str.charAt((int) ((j10 >> 40) & 15)), str.charAt((int) ((j10 >> 36) & 15)), str.charAt((int) ((j10 >> 32) & 15)), str.charAt((int) ((j10 >> 28) & 15)), str.charAt((int) ((j10 >> 24) & 15)), str.charAt((int) ((j10 >> 20) & 15)), str.charAt((int) ((j10 >> 16) & 15)), str.charAt((int) ((j10 >> 12) & 15)), str.charAt((int) ((j10 >> 8) & 15)), str.charAt((int) ((j10 >> 4) & 15)), str.charAt((int) (j10 & 15))};
        return number.getRemoveLeadingZeros() ? StringsKt__StringsJVMKt.concatToString$default(cArr, RangesKt.coerceAtMost(Long.numberOfLeadingZeros(j10) >> 2, 15), 0, 2, null) : StringsKt__StringsJVMKt.concatToString(cArr);
    }

    public static /* synthetic */ String toHexString$default(byte[] bArr, int i10, int i11, HexFormat hexFormat, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = bArr.length;
        }
        if ((i12 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(bArr, i10, i11, hexFormat);
    }

    private static final String toHexStringImpl(long j10, HexFormat.NumberHexFormat numberHexFormat, String str, int i10) {
        if ((i10 & 3) != 0) {
            C1929i.m3029k("Failed requirement.");
            return null;
        }
        int i11 = i10 >> 2;
        int minLength = numberHexFormat.getMinLength();
        int iCoerceAtLeast = RangesKt.coerceAtLeast(minLength - i11, 0);
        String prefix = numberHexFormat.getPrefix();
        String suffix = numberHexFormat.getSuffix();
        boolean removeLeadingZeros = numberHexFormat.getRemoveLeadingZeros();
        int iCheckFormatLength = checkFormatLength(((long) prefix.length()) + ((long) iCoerceAtLeast) + ((long) i11) + ((long) suffix.length()));
        char[] cArr = new char[iCheckFormatLength];
        int charArrayIfNotEmpty = toCharArrayIfNotEmpty(prefix, cArr, 0);
        if (iCoerceAtLeast > 0) {
            int i12 = iCoerceAtLeast + charArrayIfNotEmpty;
            ArraysKt.fill(cArr, str.charAt(0), charArrayIfNotEmpty, i12);
            charArrayIfNotEmpty = i12;
        }
        int i13 = i10;
        for (int i14 = 0; i14 < i11; i14++) {
            i13 -= 4;
            int i15 = (int) ((j10 >> i13) & 15);
            removeLeadingZeros = removeLeadingZeros && i15 == 0 && (i13 >> 2) >= minLength;
            if (!removeLeadingZeros) {
                cArr[charArrayIfNotEmpty] = str.charAt(i15);
                charArrayIfNotEmpty++;
            }
        }
        int charArrayIfNotEmpty2 = toCharArrayIfNotEmpty(suffix, cArr, charArrayIfNotEmpty);
        return charArrayIfNotEmpty2 == iCheckFormatLength ? StringsKt__StringsJVMKt.concatToString(cArr) : StringsKt__StringsJVMKt.concatToString$default(cArr, 0, charArrayIfNotEmpty2, 1, null);
    }

    private static final String toHexStringNoLineAndGroupSeparator(byte[] bArr, int i10, int i11, HexFormat.BytesHexFormat bytesHexFormat, int[] iArr) {
        return bytesHexFormat.getShortByteSeparatorNoPrefixAndSuffix() ? toHexStringShortByteSeparatorNoPrefixAndSuffix(bArr, i10, i11, bytesHexFormat, iArr) : toHexStringNoLineAndGroupSeparatorSlowPath(bArr, i10, i11, bytesHexFormat, iArr);
    }

    private static final String toHexStringNoLineAndGroupSeparatorSlowPath(byte[] bArr, int i10, int i11, HexFormat.BytesHexFormat bytesHexFormat, int[] iArr) {
        String bytePrefix = bytesHexFormat.getBytePrefix();
        String byteSuffix = bytesHexFormat.getByteSuffix();
        String byteSeparator = bytesHexFormat.getByteSeparator();
        char[] cArr = new char[formattedStringLength(i11 - i10, byteSeparator.length(), bytePrefix.length(), byteSuffix.length())];
        int byteAt = formatByteAt(bArr, i10, bytePrefix, byteSuffix, iArr, cArr, 0);
        for (int i12 = i10 + 1; i12 < i11; i12++) {
            byteAt = formatByteAt(bArr, i12, bytePrefix, byteSuffix, iArr, cArr, toCharArrayIfNotEmpty(byteSeparator, cArr, byteAt));
        }
        return StringsKt__StringsJVMKt.concatToString(cArr);
    }

    private static final String toHexStringShortByteSeparatorNoPrefixAndSuffix(byte[] bArr, int i10, int i11, HexFormat.BytesHexFormat bytesHexFormat, int[] iArr) {
        int length = bytesHexFormat.getByteSeparator().length();
        if (length > 1) {
            C1929i.m3029k("Failed requirement.");
            return null;
        }
        int i12 = i11 - i10;
        int byteAt = 0;
        if (length == 0) {
            char[] cArr = new char[checkFormatLength(((long) i12) * 2)];
            while (i10 < i11) {
                byteAt = formatByteAt(bArr, i10, iArr, cArr, byteAt);
                i10++;
            }
            return StringsKt__StringsJVMKt.concatToString(cArr);
        }
        char[] cArr2 = new char[checkFormatLength((((long) i12) * 3) - 1)];
        char cCharAt = bytesHexFormat.getByteSeparator().charAt(0);
        int byteAt2 = formatByteAt(bArr, i10, iArr, cArr2, 0);
        for (int i13 = i10 + 1; i13 < i11; i13++) {
            cArr2[byteAt2] = cCharAt;
            byteAt2 = formatByteAt(bArr, i13, iArr, cArr2, byteAt2 + 1);
        }
        return StringsKt__StringsJVMKt.concatToString(cArr2);
    }

    private static final String toHexStringSlowPath(byte[] bArr, int i10, int i11, HexFormat.BytesHexFormat bytesHexFormat, int[] iArr) {
        int i12;
        int i13;
        int bytesPerLine = bytesHexFormat.getBytesPerLine();
        int bytesPerGroup = bytesHexFormat.getBytesPerGroup();
        String bytePrefix = bytesHexFormat.getBytePrefix();
        String byteSuffix = bytesHexFormat.getByteSuffix();
        String byteSeparator = bytesHexFormat.getByteSeparator();
        String groupSeparator = bytesHexFormat.getGroupSeparator();
        int i14 = formattedStringLength(i11 - i10, bytesPerLine, bytesPerGroup, groupSeparator.length(), byteSeparator.length(), bytePrefix.length(), byteSuffix.length());
        char[] cArr = new char[i14];
        int i15 = i10;
        int charArrayIfNotEmpty = 0;
        int i16 = 0;
        int i17 = 0;
        while (i15 < i11) {
            if (i16 == bytesPerLine) {
                cArr[charArrayIfNotEmpty] = '\n';
                charArrayIfNotEmpty++;
                i12 = 0;
                i13 = 0;
            } else if (i17 == bytesPerGroup) {
                charArrayIfNotEmpty = toCharArrayIfNotEmpty(groupSeparator, cArr, charArrayIfNotEmpty);
                i12 = i16;
                i13 = 0;
            } else {
                i12 = i16;
                i13 = i17;
            }
            if (i13 != 0) {
                charArrayIfNotEmpty = toCharArrayIfNotEmpty(byteSeparator, cArr, charArrayIfNotEmpty);
            }
            String str = bytePrefix;
            int byteAt = formatByteAt(bArr, i15, str, byteSuffix, iArr, cArr, charArrayIfNotEmpty);
            i15++;
            i17 = i13 + 1;
            charArrayIfNotEmpty = byteAt;
            bytePrefix = str;
            i16 = i12 + 1;
        }
        if (charArrayIfNotEmpty == i14) {
            return StringsKt__StringsJVMKt.concatToString(cArr);
        }
        C1929i.m3030l("Check failed.");
        return null;
    }

    private static final long wholeElementsPerSet(long j10, long j11, int i10) {
        if (j10 <= 0 || j11 <= 0) {
            return 0L;
        }
        long j12 = i10;
        return (j10 + j12) / (j11 + j12);
    }

    private static final byte hexToByte(String str, int i10, int i11, HexFormat hexFormat) {
        return (byte) hexToIntImpl(str, i10, i11, hexFormat, 2);
    }

    public static final int hexToInt(String str, int i10, int i11, HexFormat hexFormat) {
        str.getClass();
        hexFormat.getClass();
        return hexToIntImpl(str, i10, i11, hexFormat, 8);
    }

    public static final long hexToLong(String str, int i10, int i11, HexFormat hexFormat) {
        str.getClass();
        hexFormat.getClass();
        return hexToLongImpl(str, i10, i11, hexFormat, 16);
    }

    private static final short hexToShort(String str, int i10, int i11, HexFormat hexFormat) {
        return (short) hexToIntImpl(str, i10, i11, hexFormat, 4);
    }

    private static final int formatByteAt(byte[] bArr, int i10, String str, String str2, int[] iArr, char[] cArr, int i11) {
        return toCharArrayIfNotEmpty(str2, cArr, formatByteAt(bArr, i10, iArr, cArr, toCharArrayIfNotEmpty(str, cArr, i11)));
    }

    public static /* synthetic */ String toHexString$default(byte[] bArr, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(bArr, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(byte b10, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(b10, hexFormat);
    }

    public static /* synthetic */ byte hexToByte$default(String str, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToByte(str, hexFormat);
    }

    public static /* synthetic */ byte[] hexToByteArray$default(String str, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToByteArray(str, hexFormat);
    }

    public static /* synthetic */ int hexToInt$default(String str, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToInt(str, hexFormat);
    }

    public static /* synthetic */ long hexToLong$default(String str, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToLong(str, hexFormat);
    }

    public static /* synthetic */ short hexToShort$default(String str, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToShort(str, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(short s5, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(s5, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(int i10, HexFormat hexFormat, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(i10, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(long j10, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(j10, hexFormat);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final byte[] hexToByteArray(String str, HexFormat hexFormat) {
        str.getClass();
        hexFormat.getClass();
        return hexToByteArray(str, 0, str.length(), hexFormat);
    }

    private static final int formattedStringLength(int i10, int i11, int i12, int i13) {
        if (i10 > 0) {
            long j10 = i11;
            return checkFormatLength((((long) i10) * (((((long) i12) + 2) + ((long) i13)) + j10)) - j10);
        }
        C1929i.m3029k("Failed requirement.");
        return 0;
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final String toHexString(byte[] bArr, int i10, int i11, HexFormat hexFormat) {
        bArr.getClass();
        hexFormat.getClass();
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i10, i11, bArr.length);
        if (i10 == i11) {
            return "";
        }
        int[] iArr = hexFormat.getUpperCase() ? BYTE_TO_UPPER_CASE_HEX_DIGITS : BYTE_TO_LOWER_CASE_HEX_DIGITS;
        HexFormat.BytesHexFormat bytes = hexFormat.getBytes();
        if (bytes.getNoLineAndGroupSeparator()) {
            return toHexStringNoLineAndGroupSeparator(bArr, i10, i11, bytes, iArr);
        }
        return toHexStringSlowPath(bArr, i10, i11, bytes, iArr);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final String toHexString(byte b10, HexFormat hexFormat) {
        hexFormat.getClass();
        String str = hexFormat.getUpperCase() ? UPPER_CASE_HEX_DIGITS : LOWER_CASE_HEX_DIGITS;
        HexFormat.NumberHexFormat number = hexFormat.getNumber();
        if (number.getIsDigitsOnlyAndNoPadding()) {
            char[] cArr = {str.charAt((b10 >> 4) & 15), str.charAt(b10 & 15)};
            if (number.getRemoveLeadingZeros()) {
                return StringsKt__StringsJVMKt.concatToString$default(cArr, RangesKt.coerceAtMost((Integer.numberOfLeadingZeros(b10 & UByte.MAX_VALUE) - 24) >> 2, 1), 0, 2, null);
            }
            return StringsKt__StringsJVMKt.concatToString(cArr);
        }
        return toHexStringImpl(b10, number, str, 8);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final String toHexString(short s5, HexFormat hexFormat) {
        hexFormat.getClass();
        String str = hexFormat.getUpperCase() ? UPPER_CASE_HEX_DIGITS : LOWER_CASE_HEX_DIGITS;
        HexFormat.NumberHexFormat number = hexFormat.getNumber();
        if (number.getIsDigitsOnlyAndNoPadding()) {
            char[] cArr = {str.charAt((s5 >> 12) & 15), str.charAt((s5 >> 8) & 15), str.charAt((s5 >> 4) & 15), str.charAt(s5 & 15)};
            if (number.getRemoveLeadingZeros()) {
                return StringsKt__StringsJVMKt.concatToString$default(cArr, RangesKt.coerceAtMost((Integer.numberOfLeadingZeros(s5 & UShort.MAX_VALUE) - 16) >> 2, 3), 0, 2, null);
            }
            return StringsKt__StringsJVMKt.concatToString(cArr);
        }
        return toHexStringImpl(s5, number, str, 16);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final String toHexString(int i10, HexFormat hexFormat) {
        hexFormat.getClass();
        String str = hexFormat.getUpperCase() ? UPPER_CASE_HEX_DIGITS : LOWER_CASE_HEX_DIGITS;
        HexFormat.NumberHexFormat number = hexFormat.getNumber();
        if (number.getIsDigitsOnlyAndNoPadding()) {
            char[] cArr = {str.charAt((i10 >> 28) & 15), str.charAt((i10 >> 24) & 15), str.charAt((i10 >> 20) & 15), str.charAt((i10 >> 16) & 15), str.charAt((i10 >> 12) & 15), str.charAt((i10 >> 8) & 15), str.charAt((i10 >> 4) & 15), str.charAt(i10 & 15)};
            if (number.getRemoveLeadingZeros()) {
                return StringsKt__StringsJVMKt.concatToString$default(cArr, RangesKt.coerceAtMost(Integer.numberOfLeadingZeros(i10) >> 2, 7), 0, 2, null);
            }
            return StringsKt__StringsJVMKt.concatToString(cArr);
        }
        return toHexStringImpl(i10, number, str, 32);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final String toHexString(byte[] bArr, HexFormat hexFormat) {
        bArr.getClass();
        hexFormat.getClass();
        return toHexString(bArr, 0, bArr.length, hexFormat);
    }
}

package kotlin.time;

import java.io.IOException;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Typography;
import okhttp3.HttpUrl;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.net.nntp.NNTPReply;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\f\n\u0002\u0010\u0015\n\u0002\b\u0006\u001a\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0003\u001a\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u0003\u001a'\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\t2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0082\b\u001a'\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\t2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0082\b\u001a\u0010\u0010%\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u0015H\u0000\u001a\u0014\u0010'\u001a\u00020\u0015*\u00020\u00152\u0006\u0010%\u001a\u00020\u0001H\u0002\u001a\u0014\u0010-\u001a\u00020\u0012*\u00020\u00102\u0006\u0010.\u001a\u00020\u0015H\u0002\"\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0000\u0010\u0005\"\u001f\u0010\u0006\u001a\u00020\u0001*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0007\u0010\u0004\u001a\u0004\b\u0006\u0010\u0005\"\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010!\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\"\u001a\u00020\u0015X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010#\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010$\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010*\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010+\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010,\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"isDistantPast", HttpUrl.FRAGMENT_ENCODE_SET, "Lkotlin/time/Instant;", "isDistantPast$annotations", "(Lkotlin/time/Instant;)V", "(Lkotlin/time/Instant;)Z", "isDistantFuture", "isDistantFuture$annotations", "DISTANT_PAST_SECONDS", HttpUrl.FRAGMENT_ENCODE_SET, "DISTANT_FUTURE_SECONDS", "MIN_SECOND", "MAX_SECOND", "parseIso", "Lkotlin/time/InstantParseResult;", "isoString", HttpUrl.FRAGMENT_ENCODE_SET, "formatIso", HttpUrl.FRAGMENT_ENCODE_SET, "instant", "DAYS_PER_CYCLE", HttpUrl.FRAGMENT_ENCODE_SET, "DAYS_0000_TO_1970", "safeAddOrElse", "a", "b", "action", "Lkotlin/Function0;", HttpUrl.FRAGMENT_ENCODE_SET, "safeMultiplyOrElse", "SECONDS_PER_HOUR", "SECONDS_PER_MINUTE", "HOURS_PER_DAY", "SECONDS_PER_DAY", "NANOS_PER_SECOND", "NANOS_PER_MILLI", "MILLIS_PER_SECOND", "isLeapYear", "year", "monthLength", "POWERS_OF_TEN", HttpUrl.FRAGMENT_ENCODE_SET, "asciiDigitPositionsInIsoStringAfterYear", "colonsInIsoOffsetString", "asciiDigitsInIsoOffsetString", "truncateForErrorMessage", "maxLength", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Instant.kt\nkotlin/time/UnboundLocalDateTime\n*L\n1#1,864:1\n1#2:865\n479#3,28:866\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n*L\n689#1:866,28\n*E\n"})
public final class InstantKt {
    private static final int DAYS_0000_TO_1970 = 719528;
    private static final int DAYS_PER_CYCLE = 146097;
    private static final long DISTANT_FUTURE_SECONDS = 3093527980800L;
    private static final long DISTANT_PAST_SECONDS = -3217862419201L;
    private static final int HOURS_PER_DAY = 24;
    private static final long MAX_SECOND = 31556889864403199L;
    private static final long MIN_SECOND = -31557014167219200L;
    private static final int NANOS_PER_MILLI = 1000000;
    public static final int NANOS_PER_SECOND = 1000000000;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final int MILLIS_PER_SECOND = 1000;
    private static final int[] POWERS_OF_TEN = {1, 10, 100, MILLIS_PER_SECOND, 10000, 100000, 1000000, 10000000, 100000000, 1000000000};
    private static final int[] asciiDigitPositionsInIsoStringAfterYear = {1, 2, 4, 5, 7, 8, 10, 11, 13, 14};
    private static final int[] colonsInIsoOffsetString = {3, 6};
    private static final int[] asciiDigitsInIsoOffsetString = {1, 2, 4, 5, 7, 8};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean a(char c) {
        return parseIso$lambda$6(c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ String access$formatIso(Instant instant) {
        return formatIso(instant);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ InstantParseResult access$parseIso(CharSequence charSequence) {
        return parseIso(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ String access$truncateForErrorMessage(CharSequence charSequence, int i) {
        return truncateForErrorMessage(charSequence, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean b(char c) {
        return parseIso$lambda$0(c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean c(char c) {
        return parseIso$lambda$4(c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean d(char c) {
        return parseIso$lambda$10(c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean e(char c) {
        return parseIso$lambda$2(c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean f(char c) {
        return parseIso$lambda$8(c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalTime
    private static final String formatIso(Instant instant) throws IOException {
        int[] iArr;
        StringBuilder sb = new StringBuilder();
        UnboundLocalDateTime unboundLocalDateTimeFromInstant = UnboundLocalDateTime.Companion.fromInstant(instant);
        int year = unboundLocalDateTimeFromInstant.getYear();
        int i = 0;
        if (Math.abs(year) < MILLIS_PER_SECOND) {
            StringBuilder sb2 = new StringBuilder();
            if (year >= 0) {
                sb2.append(year + 10000);
                sb2.deleteCharAt(0).getClass();
            } else {
                sb2.append(year - 10000);
                sb2.deleteCharAt(1).getClass();
            }
            sb.append((CharSequence) sb2);
        } else {
            if (year >= 10000) {
                sb.append('+');
            }
            sb.append(year);
        }
        sb.append('-');
        formatIso$lambda$13$appendTwoDigits(sb, sb, unboundLocalDateTimeFromInstant.getMonth());
        sb.append('-');
        formatIso$lambda$13$appendTwoDigits(sb, sb, unboundLocalDateTimeFromInstant.getDay());
        sb.append('T');
        formatIso$lambda$13$appendTwoDigits(sb, sb, unboundLocalDateTimeFromInstant.getHour());
        sb.append(':');
        formatIso$lambda$13$appendTwoDigits(sb, sb, unboundLocalDateTimeFromInstant.getMinute());
        sb.append(':');
        formatIso$lambda$13$appendTwoDigits(sb, sb, unboundLocalDateTimeFromInstant.getSecond());
        if (unboundLocalDateTimeFromInstant.getNanosecond() != 0) {
            sb.append(FilenameUtils.EXTENSION_SEPARATOR);
            while (true) {
                int nanosecond = unboundLocalDateTimeFromInstant.getNanosecond();
                iArr = POWERS_OF_TEN;
                int i2 = i + 1;
                if (nanosecond % iArr[i2] != 0) {
                    break;
                }
                i = i2;
            }
            int i3 = i - (i % 3);
            String strValueOf = String.valueOf((unboundLocalDateTimeFromInstant.getNanosecond() / iArr[i3]) + iArr[9 - i3]);
            strValueOf.getClass();
            sb.append(strValueOf.substring(1));
        }
        sb.append('Z');
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void formatIso$lambda$13$appendTwoDigits(Appendable appendable, StringBuilder sb, int i) throws IOException {
        if (i < 10) {
            appendable.append('0');
        }
        sb.append(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final boolean isDistantFuture(Instant instant) {
        instant.getClass();
        return instant.compareTo2(Instant.Companion.getDISTANT_FUTURE()) >= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final boolean isDistantPast(Instant instant) {
        instant.getClass();
        return instant.compareTo2(Instant.Companion.getDISTANT_PAST()) <= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final boolean isLeapYear(int i) {
        if ((i & 3) == 0) {
            return i % 100 != 0 || i % NNTPReply.SERVICE_DISCONTINUED == 0;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final int monthLength(int i, boolean z) {
        if (i != 2) {
            return (i == 4 || i == 6 || i == 9 || i == 11) ? 30 : 31;
        }
        return z ? 29 : 28;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalTime
    private static final InstantParseResult parseIso(CharSequence charSequence) {
        int i;
        int i2;
        int i3;
        int i4;
        char cCharAt;
        char cCharAt2;
        if (charSequence.length() == 0) {
            return new InstantParseResult$Failure("An empty string is not a valid Instant", charSequence);
        }
        char cCharAt3 = charSequence.charAt(0);
        if (cCharAt3 == '+' || cCharAt3 == '-') {
            i = 1;
        } else {
            i = 0;
            cCharAt3 = ' ';
        }
        int iCharAt = 0;
        int i5 = i;
        while (i5 < charSequence.length() && '0' <= (cCharAt2 = charSequence.charAt(i5)) && cCharAt2 < ':') {
            iCharAt = (iCharAt * 10) + (charSequence.charAt(i5) - '0');
            i5++;
        }
        int i6 = i5 - i;
        if (i6 > 10) {
            return parseIso$parseFailure(charSequence, ai.onnxruntime.a.f(i6, "Expected at most 10 digits for the year number, got ", " digits"));
        }
        if (i6 == 10 && Intrinsics.compare(charSequence.charAt(i), 50) >= 0) {
            return parseIso$parseFailure(charSequence, ai.onnxruntime.a.f(i6, "Expected at most 9 digits for the year number or year 1000000000, got ", " digits"));
        }
        if (i6 < 4) {
            return parseIso$parseFailure(charSequence, ai.onnxruntime.a.f(i6, "The year number must be padded to 4 digits, got ", " digits"));
        }
        if (cCharAt3 == '+' && i6 == 4) {
            return parseIso$parseFailure(charSequence, "The '+' sign at the start is only valid for year numbers longer than 4 digits");
        }
        if (cCharAt3 == ' ' && i6 != 4) {
            return parseIso$parseFailure(charSequence, "A '+' or '-' sign is required for year numbers longer than 4 digits");
        }
        if (cCharAt3 == '-') {
            iCharAt = -iCharAt;
        }
        int i7 = iCharAt;
        int i8 = i5 + 16;
        if (charSequence.length() < i8) {
            return parseIso$parseFailure(charSequence, "The input string is too short");
        }
        InstantParseResult$Failure iso$expect = parseIso$expect(charSequence, "'-'", i5, new b(0));
        if (iso$expect != null) {
            return iso$expect;
        }
        InstantParseResult$Failure iso$expect2 = parseIso$expect(charSequence, "'-'", i5 + 3, new b(1));
        if (iso$expect2 != null) {
            return iso$expect2;
        }
        InstantParseResult$Failure iso$expect3 = parseIso$expect(charSequence, "'T' or 't'", i5 + 6, new b(2));
        if (iso$expect3 != null) {
            return iso$expect3;
        }
        InstantParseResult$Failure iso$expect4 = parseIso$expect(charSequence, "':'", i5 + 9, new b(3));
        if (iso$expect4 != null) {
            return iso$expect4;
        }
        InstantParseResult$Failure iso$expect5 = parseIso$expect(charSequence, "':'", i5 + 12, new b(4));
        if (iso$expect5 != null) {
            return iso$expect5;
        }
        for (int i10 : asciiDigitPositionsInIsoStringAfterYear) {
            InstantParseResult$Failure iso$expect6 = parseIso$expect(charSequence, "an ASCII digit", i10 + i5, new b(5));
            if (iso$expect6 != null) {
                return iso$expect6;
            }
        }
        int iso$twoDigitNumber = parseIso$twoDigitNumber(charSequence, i5 + 1);
        int iso$twoDigitNumber2 = parseIso$twoDigitNumber(charSequence, i5 + 4);
        int iso$twoDigitNumber3 = parseIso$twoDigitNumber(charSequence, i5 + 7);
        int iso$twoDigitNumber4 = parseIso$twoDigitNumber(charSequence, i5 + 10);
        int iso$twoDigitNumber5 = parseIso$twoDigitNumber(charSequence, i5 + 13);
        int i11 = i5 + 15;
        if (charSequence.charAt(i11) == '.') {
            i11 = i8;
            int iCharAt2 = 0;
            while (i11 < charSequence.length() && '0' <= (cCharAt = charSequence.charAt(i11)) && cCharAt < ':') {
                iCharAt2 = (iCharAt2 * 10) + (charSequence.charAt(i11) - '0');
                i11++;
            }
            int i12 = i11 - i8;
            if (1 > i12 || i12 >= 10) {
                return parseIso$parseFailure(charSequence, ai.onnxruntime.a.f(i12, "1..9 digits are supported for the fraction of the second, got ", " digits"));
            }
            i2 = iCharAt2 * POWERS_OF_TEN[9 - i12];
        } else {
            i2 = 0;
        }
        if (i11 >= charSequence.length()) {
            return parseIso$parseFailure(charSequence, "The UTC offset at the end of the string is missing");
        }
        char cCharAt4 = charSequence.charAt(i11);
        if (cCharAt4 == '+' || cCharAt4 == '-') {
            int length = charSequence.length() - i11;
            if (length > 9) {
                return parseIso$parseFailure(charSequence, ai.onnxruntime.a.p(new StringBuilder("The UTC offset string \""), truncateForErrorMessage(charSequence.subSequence(i11, charSequence.length()).toString(), 16), "\" is too long"));
            }
            if (length % 3 != 0) {
                return parseIso$parseFailure(charSequence, "Invalid UTC offset string \"" + charSequence.subSequence(i11, charSequence.length()).toString() + Typography.quote);
            }
            for (int i13 : colonsInIsoOffsetString) {
                int i14 = i11 + i13;
                if (i14 >= charSequence.length()) {
                    break;
                }
                if (charSequence.charAt(i14) != ':') {
                    StringBuilder sbQ = ai.onnxruntime.a.q(i14, "Expected ':' at index ", ", got '");
                    sbQ.append(charSequence.charAt(i14));
                    sbQ.append('\'');
                    return parseIso$parseFailure(charSequence, sbQ.toString());
                }
            }
            int[] iArr = asciiDigitsInIsoOffsetString;
            int length2 = iArr.length;
            int i15 = 0;
            while (i15 < length2) {
                int i16 = iArr[i15] + i11;
                if (i16 >= charSequence.length()) {
                    break;
                }
                char cCharAt5 = charSequence.charAt(i16);
                int[] iArr2 = iArr;
                if ('0' > cCharAt5 || cCharAt5 >= ':') {
                    StringBuilder sbQ2 = ai.onnxruntime.a.q(i16, "Expected an ASCII digit at index ", ", got '");
                    sbQ2.append(charSequence.charAt(i16));
                    sbQ2.append('\'');
                    return parseIso$parseFailure(charSequence, sbQ2.toString());
                }
                i15++;
                iArr = iArr2;
            }
            int iso$twoDigitNumber6 = parseIso$twoDigitNumber(charSequence, i11 + 1);
            i3 = 3;
            int iso$twoDigitNumber7 = length > 3 ? parseIso$twoDigitNumber(charSequence, i11 + 4) : 0;
            int iso$twoDigitNumber8 = length > 6 ? parseIso$twoDigitNumber(charSequence, i11 + 7) : 0;
            if (iso$twoDigitNumber7 > 59) {
                return parseIso$parseFailure(charSequence, ai.onnxruntime.a.e(iso$twoDigitNumber7, "Expected offset-minute-of-hour in 0..59, got "));
            }
            if (iso$twoDigitNumber8 > 59) {
                return parseIso$parseFailure(charSequence, ai.onnxruntime.a.e(iso$twoDigitNumber8, "Expected offset-second-of-minute in 0..59, got "));
            }
            if (iso$twoDigitNumber6 > 17 && (iso$twoDigitNumber6 != 18 || iso$twoDigitNumber7 != 0 || iso$twoDigitNumber8 != 0)) {
                return parseIso$parseFailure(charSequence, "Expected an offset in -18:00..+18:00, got " + charSequence.subSequence(i11, charSequence.length()).toString());
            }
            i4 = (cCharAt4 == '-' ? -1 : 1) * ((iso$twoDigitNumber7 * SECONDS_PER_MINUTE) + (iso$twoDigitNumber6 * SECONDS_PER_HOUR) + iso$twoDigitNumber8);
        } else {
            if (cCharAt4 != 'Z' && cCharAt4 != 'z') {
                return parseIso$parseFailure(charSequence, "Expected the UTC offset at position " + i11 + ", got '" + cCharAt4 + '\'');
            }
            int i17 = i11 + 1;
            if (charSequence.length() != i17) {
                return parseIso$parseFailure(charSequence, ai.onnxruntime.a.e(i17, "Extra text after the instant at position "));
            }
            i4 = 0;
            i3 = 3;
        }
        if (1 > iso$twoDigitNumber || iso$twoDigitNumber >= 13) {
            return parseIso$parseFailure(charSequence, ai.onnxruntime.a.e(iso$twoDigitNumber, "Expected a month number in 1..12, got "));
        }
        if (1 > iso$twoDigitNumber2 || iso$twoDigitNumber2 > monthLength(iso$twoDigitNumber, isLeapYear(i7))) {
            StringBuilder sbV = ai.onnxruntime.a.v("Expected a valid day-of-month for month ", iso$twoDigitNumber, i7, " of year ", ", got ");
            sbV.append(iso$twoDigitNumber2);
            return parseIso$parseFailure(charSequence, sbV.toString());
        }
        if (iso$twoDigitNumber3 > 23) {
            return parseIso$parseFailure(charSequence, ai.onnxruntime.a.e(iso$twoDigitNumber3, "Expected hour in 0..23, got "));
        }
        if (iso$twoDigitNumber4 > 59) {
            return parseIso$parseFailure(charSequence, ai.onnxruntime.a.e(iso$twoDigitNumber4, "Expected minute-of-hour in 0..59, got "));
        }
        if (iso$twoDigitNumber5 > 59) {
            return parseIso$parseFailure(charSequence, ai.onnxruntime.a.e(iso$twoDigitNumber5, "Expected second-of-minute in 0..59, got "));
        }
        UnboundLocalDateTime unboundLocalDateTime = new UnboundLocalDateTime(i7, iso$twoDigitNumber, iso$twoDigitNumber2, iso$twoDigitNumber3, iso$twoDigitNumber4, iso$twoDigitNumber5, i2);
        long year = unboundLocalDateTime.getYear();
        long j = ((long) 365) * year;
        long month = (year >= 0 ? ((year + ((long) 399)) / ((long) NNTPReply.SERVICE_DISCONTINUED)) + (((((long) i3) + year) / ((long) 4)) - ((((long) 99) + year) / ((long) 100))) + j : j - ((year / ((long) (-400))) + ((year / ((long) (-4))) - (year / ((long) (-100)))))) + ((long) (((unboundLocalDateTime.getMonth() * 367) - 362) / 12)) + ((long) (unboundLocalDateTime.getDay() - 1));
        if (unboundLocalDateTime.getMonth() > 2) {
            month = !isLeapYear(unboundLocalDateTime.getYear()) ? month - 2 : (-1) + month;
        }
        return new InstantParseResult$Success((((month - ((long) DAYS_0000_TO_1970)) * ((long) SECONDS_PER_DAY)) + ((long) (((unboundLocalDateTime.getMinute() * SECONDS_PER_MINUTE) + (unboundLocalDateTime.getHour() * SECONDS_PER_HOUR)) + unboundLocalDateTime.getSecond()))) - ((long) i4), unboundLocalDateTime.getNanosecond());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final InstantParseResult$Failure parseIso$expect(CharSequence charSequence, String str, int i, Function1<? super Character, Boolean> function1) {
        char cCharAt = charSequence.charAt(i);
        if (((Boolean) function1.invoke(Character.valueOf(cCharAt))).booleanValue()) {
            return null;
        }
        return parseIso$parseFailure(charSequence, "Expected " + str + ", but got '" + cCharAt + "' at position " + i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final boolean parseIso$lambda$0(char c) {
        return c == '-';
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final boolean parseIso$lambda$10(char c) {
        return '0' <= c && c < ':';
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final boolean parseIso$lambda$2(char c) {
        return c == '-';
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final boolean parseIso$lambda$4(char c) {
        return c == 'T' || c == 't';
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final boolean parseIso$lambda$6(char c) {
        return c == ':';
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final boolean parseIso$lambda$8(char c) {
        return c == ':';
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final InstantParseResult$Failure parseIso$parseFailure(CharSequence charSequence, String str) {
        StringBuilder sbW = ai.onnxruntime.a.w(str, " when parsing an Instant from \"");
        sbW.append(truncateForErrorMessage(charSequence, 64));
        sbW.append(Typography.quote);
        return new InstantParseResult$Failure(sbW.toString(), charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final int parseIso$twoDigitNumber(CharSequence charSequence, int i) {
        return (charSequence.charAt(i + 1) - '0') + ((charSequence.charAt(i) - '0') * 10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.KotlinNothingValueException */
    private static final long safeAddOrElse(long j, long j2, Function0 function0) throws KotlinNothingValueException {
        long j3 = j + j2;
        if ((j ^ j3) >= 0 || (j ^ j2) < 0) {
            return j3;
        }
        function0.invoke();
        throw new KotlinNothingValueException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.KotlinNothingValueException */
    private static final long safeMultiplyOrElse(long j, long j2, Function0 function0) throws KotlinNothingValueException {
        if (j2 == 1) {
            return j;
        }
        if (j == 1) {
            return j2;
        }
        if (j == 0 || j2 == 0) {
            return 0L;
        }
        long j3 = j * j2;
        if (j3 / j2 == j && ((j != Long.MIN_VALUE || j2 != -1) && (j2 != Long.MIN_VALUE || j != -1))) {
            return j3;
        }
        function0.invoke();
        throw new KotlinNothingValueException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final String truncateForErrorMessage(CharSequence charSequence, int i) {
        if (charSequence.length() <= i) {
            return charSequence.toString();
        }
        return charSequence.subSequence(0, i).toString() + "...";
    }

    @SinceKotlin(version = "2.1")
    @InlineOnly
    @ExperimentalTime
    public static /* synthetic */ void isDistantFuture$annotations(Instant instant) {
    }

    @SinceKotlin(version = "2.1")
    @InlineOnly
    @ExperimentalTime
    public static /* synthetic */ void isDistantPast$annotations(Instant instant) {
    }
}

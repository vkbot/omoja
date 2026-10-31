package kotlin.time;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.widget.ConstraintLayout;
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
import org.apache.commons.net.nntp.NNTPReply;
import org.apache.commons.p161io.FilenameUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u0000F\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\f\n\u0002\u0010\u0015\n\u0002\b\u0006\u001a\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0003\u001a\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u0003\u001a'\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\t2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0082\b\u001a'\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\t2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0082\b\u001a\u0010\u0010%\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u0015H\u0000\u001a\u0014\u0010'\u001a\u00020\u0015*\u00020\u00152\u0006\u0010%\u001a\u00020\u0001H\u0002\u001a\u0014\u0010-\u001a\u00020\u0012*\u00020\u00102\u0006\u0010.\u001a\u00020\u0015H\u0002\"\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0000\u0010\u0005\"\u001f\u0010\u0006\u001a\u00020\u0001*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0007\u0010\u0004\u001a\u0004\b\u0006\u0010\u0005\"\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010!\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\"\u001a\u00020\u0015X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010#\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010$\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010*\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010+\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010,\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, m3159d2 = {"isDistantPast", "", "Lkotlin/time/Instant;", "isDistantPast$annotations", "(Lkotlin/time/Instant;)V", "(Lkotlin/time/Instant;)Z", "isDistantFuture", "isDistantFuture$annotations", "DISTANT_PAST_SECONDS", "", "DISTANT_FUTURE_SECONDS", "MIN_SECOND", "MAX_SECOND", "parseIso", "Lkotlin/time/InstantParseResult;", "isoString", "", "formatIso", "", "instant", "DAYS_PER_CYCLE", "", "DAYS_0000_TO_1970", "safeAddOrElse", "a", "b", "action", "Lkotlin/Function0;", "", "safeMultiplyOrElse", "SECONDS_PER_HOUR", "SECONDS_PER_MINUTE", "HOURS_PER_DAY", "SECONDS_PER_DAY", "NANOS_PER_SECOND", "NANOS_PER_MILLI", "MILLIS_PER_SECOND", "isLeapYear", "year", "monthLength", "POWERS_OF_TEN", "", "asciiDigitPositionsInIsoStringAfterYear", "colonsInIsoOffsetString", "asciiDigitsInIsoOffsetString", "truncateForErrorMessage", "maxLength", "kotlin-stdlib"}, m3160k = 2, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Instant.kt\nkotlin/time/UnboundLocalDateTime\n*L\n1#1,864:1\n1#2:865\n479#3,28:866\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n*L\n689#1:866,28\n*E\n"})
public final class InstantKt {
    private static final int DAYS_0000_TO_1970 = 719528;
    private static final int DAYS_PER_CYCLE = 146097;
    private static final long DISTANT_FUTURE_SECONDS = 3093527980800L;
    private static final long DISTANT_PAST_SECONDS = -3217862419201L;
    private static final int HOURS_PER_DAY = 24;
    private static final long MAX_SECOND = 31556889864403199L;
    private static final int MILLIS_PER_SECOND = 1000;
    private static final long MIN_SECOND = -31557014167219200L;
    private static final int NANOS_PER_MILLI = 1000000;
    public static final int NANOS_PER_SECOND = 1000000000;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final int[] POWERS_OF_TEN = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000};
    private static final int[] asciiDigitPositionsInIsoStringAfterYear = {1, 2, 4, 5, 7, 8, 10, 11, 13, 14};
    private static final int[] colonsInIsoOffsetString = {3, 6};
    private static final int[] asciiDigitsInIsoOffsetString = {1, 2, 4, 5, 7, 8};

    /* JADX INFO: Access modifiers changed from: private */
    @ExperimentalTime
    public static final String formatIso(Instant instant) throws IOException {
        int[] iArr;
        StringBuilder sb = new StringBuilder();
        UnboundLocalDateTime unboundLocalDateTimeFromInstant = UnboundLocalDateTime.INSTANCE.fromInstant(instant);
        int year = unboundLocalDateTimeFromInstant.getYear();
        int i10 = 0;
        if (Math.abs(year) < 1000) {
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
                int i11 = i10 + 1;
                if (nanosecond % iArr[i11] != 0) {
                    break;
                }
                i10 = i11;
            }
            int i12 = i10 - (i10 % 3);
            String strValueOf = String.valueOf((unboundLocalDateTimeFromInstant.getNanosecond() / iArr[i12]) + iArr[9 - i12]);
            strValueOf.getClass();
            sb.append(strValueOf.substring(1));
        }
        sb.append('Z');
        return sb.toString();
    }

    private static final void formatIso$lambda$13$appendTwoDigits(Appendable appendable, StringBuilder sb, int i10) throws IOException {
        if (i10 < 10) {
            appendable.append('0');
        }
        sb.append(i10);
    }

    private static final boolean isDistantFuture(Instant instant) {
        instant.getClass();
        return instant.compareTo(Instant.INSTANCE.getDISTANT_FUTURE()) >= 0;
    }

    private static final boolean isDistantPast(Instant instant) {
        instant.getClass();
        return instant.compareTo(Instant.INSTANCE.getDISTANT_PAST()) <= 0;
    }

    public static final boolean isLeapYear(int i10) {
        if ((i10 & 3) == 0) {
            return i10 % 100 != 0 || i10 % NNTPReply.SERVICE_DISCONTINUED == 0;
        }
        return false;
    }

    private static final int monthLength(int i10, boolean z9) {
        if (i10 != 2) {
            return (i10 == 4 || i10 == 6 || i10 == 9 || i10 == 11) ? 30 : 31;
        }
        return z9 ? 29 : 28;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ExperimentalTime
    public static final InstantParseResult parseIso(CharSequence charSequence) {
        int i10;
        int i11;
        int i12;
        int i13;
        char cCharAt;
        char cCharAt2;
        if (charSequence.length() == 0) {
            return new InstantParseResult.Failure("An empty string is not a valid Instant", charSequence);
        }
        char cCharAt3 = charSequence.charAt(0);
        if (cCharAt3 == '+' || cCharAt3 == '-') {
            i10 = 1;
        } else {
            i10 = 0;
            cCharAt3 = ' ';
        }
        int iCharAt = 0;
        int i14 = i10;
        while (i14 < charSequence.length() && '0' <= (cCharAt2 = charSequence.charAt(i14)) && cCharAt2 < ':') {
            iCharAt = (iCharAt * 10) + (charSequence.charAt(i14) - '0');
            i14++;
        }
        int i15 = i14 - i10;
        if (i15 > 10) {
            return parseIso$parseFailure(charSequence, AbstractC0074a.m155f(i15, "Expected at most 10 digits for the year number, got ", " digits"));
        }
        if (i15 == 10 && Intrinsics.compare((int) charSequence.charAt(i10), 50) >= 0) {
            return parseIso$parseFailure(charSequence, AbstractC0074a.m155f(i15, "Expected at most 9 digits for the year number or year 1000000000, got ", " digits"));
        }
        if (i15 < 4) {
            return parseIso$parseFailure(charSequence, AbstractC0074a.m155f(i15, "The year number must be padded to 4 digits, got ", " digits"));
        }
        if (cCharAt3 == '+' && i15 == 4) {
            return parseIso$parseFailure(charSequence, "The '+' sign at the start is only valid for year numbers longer than 4 digits");
        }
        if (cCharAt3 == ' ' && i15 != 4) {
            return parseIso$parseFailure(charSequence, "A '+' or '-' sign is required for year numbers longer than 4 digits");
        }
        if (cCharAt3 == '-') {
            iCharAt = -iCharAt;
        }
        int i16 = iCharAt;
        int i17 = i14 + 16;
        if (charSequence.length() < i17) {
            return parseIso$parseFailure(charSequence, "The input string is too short");
        }
        final int i18 = 0;
        InstantParseResult.Failure iso$expect = parseIso$expect(charSequence, "'-'", i14, new Function1() { // from class: kotlin.time.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean iso$lambda$0;
                int i19 = i18;
                char cCharValue = ((Character) obj).charValue();
                switch (i19) {
                    case 0:
                        iso$lambda$0 = InstantKt.parseIso$lambda$0(cCharValue);
                        break;
                    case 1:
                        iso$lambda$0 = InstantKt.parseIso$lambda$2(cCharValue);
                        break;
                    case 2:
                        iso$lambda$0 = InstantKt.parseIso$lambda$4(cCharValue);
                        break;
                    case 3:
                        iso$lambda$0 = InstantKt.parseIso$lambda$6(cCharValue);
                        break;
                    case 4:
                        iso$lambda$0 = InstantKt.parseIso$lambda$8(cCharValue);
                        break;
                    default:
                        iso$lambda$0 = InstantKt.parseIso$lambda$10(cCharValue);
                        break;
                }
                return Boolean.valueOf(iso$lambda$0);
            }
        });
        if (iso$expect != null) {
            return iso$expect;
        }
        final int i19 = 1;
        InstantParseResult.Failure iso$expect2 = parseIso$expect(charSequence, "'-'", i14 + 3, new Function1() { // from class: kotlin.time.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean iso$lambda$0;
                int i110 = i19;
                char cCharValue = ((Character) obj).charValue();
                switch (i110) {
                    case 0:
                        iso$lambda$0 = InstantKt.parseIso$lambda$0(cCharValue);
                        break;
                    case 1:
                        iso$lambda$0 = InstantKt.parseIso$lambda$2(cCharValue);
                        break;
                    case 2:
                        iso$lambda$0 = InstantKt.parseIso$lambda$4(cCharValue);
                        break;
                    case 3:
                        iso$lambda$0 = InstantKt.parseIso$lambda$6(cCharValue);
                        break;
                    case 4:
                        iso$lambda$0 = InstantKt.parseIso$lambda$8(cCharValue);
                        break;
                    default:
                        iso$lambda$0 = InstantKt.parseIso$lambda$10(cCharValue);
                        break;
                }
                return Boolean.valueOf(iso$lambda$0);
            }
        });
        if (iso$expect2 != null) {
            return iso$expect2;
        }
        final int i20 = 2;
        InstantParseResult.Failure iso$expect3 = parseIso$expect(charSequence, "'T' or 't'", i14 + 6, new Function1() { // from class: kotlin.time.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean iso$lambda$0;
                int i110 = i20;
                char cCharValue = ((Character) obj).charValue();
                switch (i110) {
                    case 0:
                        iso$lambda$0 = InstantKt.parseIso$lambda$0(cCharValue);
                        break;
                    case 1:
                        iso$lambda$0 = InstantKt.parseIso$lambda$2(cCharValue);
                        break;
                    case 2:
                        iso$lambda$0 = InstantKt.parseIso$lambda$4(cCharValue);
                        break;
                    case 3:
                        iso$lambda$0 = InstantKt.parseIso$lambda$6(cCharValue);
                        break;
                    case 4:
                        iso$lambda$0 = InstantKt.parseIso$lambda$8(cCharValue);
                        break;
                    default:
                        iso$lambda$0 = InstantKt.parseIso$lambda$10(cCharValue);
                        break;
                }
                return Boolean.valueOf(iso$lambda$0);
            }
        });
        if (iso$expect3 != null) {
            return iso$expect3;
        }
        final int i21 = 3;
        InstantParseResult.Failure iso$expect4 = parseIso$expect(charSequence, "':'", i14 + 9, new Function1() { // from class: kotlin.time.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean iso$lambda$0;
                int i110 = i21;
                char cCharValue = ((Character) obj).charValue();
                switch (i110) {
                    case 0:
                        iso$lambda$0 = InstantKt.parseIso$lambda$0(cCharValue);
                        break;
                    case 1:
                        iso$lambda$0 = InstantKt.parseIso$lambda$2(cCharValue);
                        break;
                    case 2:
                        iso$lambda$0 = InstantKt.parseIso$lambda$4(cCharValue);
                        break;
                    case 3:
                        iso$lambda$0 = InstantKt.parseIso$lambda$6(cCharValue);
                        break;
                    case 4:
                        iso$lambda$0 = InstantKt.parseIso$lambda$8(cCharValue);
                        break;
                    default:
                        iso$lambda$0 = InstantKt.parseIso$lambda$10(cCharValue);
                        break;
                }
                return Boolean.valueOf(iso$lambda$0);
            }
        });
        if (iso$expect4 != null) {
            return iso$expect4;
        }
        final int i22 = 4;
        InstantParseResult.Failure iso$expect5 = parseIso$expect(charSequence, "':'", i14 + 12, new Function1() { // from class: kotlin.time.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean iso$lambda$0;
                int i110 = i22;
                char cCharValue = ((Character) obj).charValue();
                switch (i110) {
                    case 0:
                        iso$lambda$0 = InstantKt.parseIso$lambda$0(cCharValue);
                        break;
                    case 1:
                        iso$lambda$0 = InstantKt.parseIso$lambda$2(cCharValue);
                        break;
                    case 2:
                        iso$lambda$0 = InstantKt.parseIso$lambda$4(cCharValue);
                        break;
                    case 3:
                        iso$lambda$0 = InstantKt.parseIso$lambda$6(cCharValue);
                        break;
                    case 4:
                        iso$lambda$0 = InstantKt.parseIso$lambda$8(cCharValue);
                        break;
                    default:
                        iso$lambda$0 = InstantKt.parseIso$lambda$10(cCharValue);
                        break;
                }
                return Boolean.valueOf(iso$lambda$0);
            }
        });
        if (iso$expect5 != null) {
            return iso$expect5;
        }
        for (int i23 : asciiDigitPositionsInIsoStringAfterYear) {
            final int i24 = 5;
            InstantParseResult.Failure iso$expect6 = parseIso$expect(charSequence, "an ASCII digit", i23 + i14, new Function1() { // from class: kotlin.time.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean iso$lambda$0;
                    int i110 = i24;
                    char cCharValue = ((Character) obj).charValue();
                    switch (i110) {
                        case 0:
                            iso$lambda$0 = InstantKt.parseIso$lambda$0(cCharValue);
                            break;
                        case 1:
                            iso$lambda$0 = InstantKt.parseIso$lambda$2(cCharValue);
                            break;
                        case 2:
                            iso$lambda$0 = InstantKt.parseIso$lambda$4(cCharValue);
                            break;
                        case 3:
                            iso$lambda$0 = InstantKt.parseIso$lambda$6(cCharValue);
                            break;
                        case 4:
                            iso$lambda$0 = InstantKt.parseIso$lambda$8(cCharValue);
                            break;
                        default:
                            iso$lambda$0 = InstantKt.parseIso$lambda$10(cCharValue);
                            break;
                    }
                    return Boolean.valueOf(iso$lambda$0);
                }
            });
            if (iso$expect6 != null) {
                return iso$expect6;
            }
        }
        int iso$twoDigitNumber = parseIso$twoDigitNumber(charSequence, i14 + 1);
        int iso$twoDigitNumber2 = parseIso$twoDigitNumber(charSequence, i14 + 4);
        int iso$twoDigitNumber3 = parseIso$twoDigitNumber(charSequence, i14 + 7);
        int iso$twoDigitNumber4 = parseIso$twoDigitNumber(charSequence, i14 + 10);
        int iso$twoDigitNumber5 = parseIso$twoDigitNumber(charSequence, i14 + 13);
        int i25 = i14 + 15;
        if (charSequence.charAt(i25) == '.') {
            i25 = i17;
            int iCharAt2 = 0;
            while (i25 < charSequence.length() && '0' <= (cCharAt = charSequence.charAt(i25)) && cCharAt < ':') {
                iCharAt2 = (iCharAt2 * 10) + (charSequence.charAt(i25) - '0');
                i25++;
            }
            int i26 = i25 - i17;
            if (1 > i26 || i26 >= 10) {
                return parseIso$parseFailure(charSequence, AbstractC0074a.m155f(i26, "1..9 digits are supported for the fraction of the second, got ", " digits"));
            }
            i11 = iCharAt2 * POWERS_OF_TEN[9 - i26];
        } else {
            i11 = 0;
        }
        if (i25 >= charSequence.length()) {
            return parseIso$parseFailure(charSequence, "The UTC offset at the end of the string is missing");
        }
        char cCharAt4 = charSequence.charAt(i25);
        if (cCharAt4 == '+' || cCharAt4 == '-') {
            int length = charSequence.length() - i25;
            if (length > 9) {
                return parseIso$parseFailure(charSequence, AbstractC0074a.m165p(new StringBuilder("The UTC offset string \""), truncateForErrorMessage(charSequence.subSequence(i25, charSequence.length()).toString(), 16), "\" is too long"));
            }
            if (length % 3 != 0) {
                return parseIso$parseFailure(charSequence, "Invalid UTC offset string \"" + charSequence.subSequence(i25, charSequence.length()).toString() + Typography.quote);
            }
            for (int i27 : colonsInIsoOffsetString) {
                int i28 = i25 + i27;
                if (i28 >= charSequence.length()) {
                    break;
                }
                if (charSequence.charAt(i28) != ':') {
                    StringBuilder sbM166q = AbstractC0074a.m166q(i28, "Expected ':' at index ", ", got '");
                    sbM166q.append(charSequence.charAt(i28));
                    sbM166q.append('\'');
                    return parseIso$parseFailure(charSequence, sbM166q.toString());
                }
            }
            int[] iArr = asciiDigitsInIsoOffsetString;
            int length2 = iArr.length;
            int i29 = 0;
            while (i29 < length2) {
                int i30 = iArr[i29] + i25;
                if (i30 >= charSequence.length()) {
                    break;
                }
                char cCharAt5 = charSequence.charAt(i30);
                int[] iArr2 = iArr;
                if ('0' > cCharAt5 || cCharAt5 >= ':') {
                    StringBuilder sbM166q2 = AbstractC0074a.m166q(i30, "Expected an ASCII digit at index ", ", got '");
                    sbM166q2.append(charSequence.charAt(i30));
                    sbM166q2.append('\'');
                    return parseIso$parseFailure(charSequence, sbM166q2.toString());
                }
                i29++;
                iArr = iArr2;
            }
            int iso$twoDigitNumber6 = parseIso$twoDigitNumber(charSequence, i25 + 1);
            i12 = 3;
            int iso$twoDigitNumber7 = length > 3 ? parseIso$twoDigitNumber(charSequence, i25 + 4) : 0;
            int iso$twoDigitNumber8 = length > 6 ? parseIso$twoDigitNumber(charSequence, i25 + 7) : 0;
            if (iso$twoDigitNumber7 > 59) {
                return parseIso$parseFailure(charSequence, AbstractC0074a.m154e(iso$twoDigitNumber7, "Expected offset-minute-of-hour in 0..59, got "));
            }
            if (iso$twoDigitNumber8 > 59) {
                return parseIso$parseFailure(charSequence, AbstractC0074a.m154e(iso$twoDigitNumber8, "Expected offset-second-of-minute in 0..59, got "));
            }
            if (iso$twoDigitNumber6 > 17 && (iso$twoDigitNumber6 != 18 || iso$twoDigitNumber7 != 0 || iso$twoDigitNumber8 != 0)) {
                return parseIso$parseFailure(charSequence, "Expected an offset in -18:00..+18:00, got " + charSequence.subSequence(i25, charSequence.length()).toString());
            }
            i13 = (cCharAt4 == '-' ? -1 : 1) * ((iso$twoDigitNumber7 * SECONDS_PER_MINUTE) + (iso$twoDigitNumber6 * SECONDS_PER_HOUR) + iso$twoDigitNumber8);
        } else {
            if (cCharAt4 != 'Z' && cCharAt4 != 'z') {
                return parseIso$parseFailure(charSequence, "Expected the UTC offset at position " + i25 + ", got '" + cCharAt4 + '\'');
            }
            int i31 = i25 + 1;
            if (charSequence.length() != i31) {
                return parseIso$parseFailure(charSequence, AbstractC0074a.m154e(i31, "Extra text after the instant at position "));
            }
            i13 = 0;
            i12 = 3;
        }
        if (1 > iso$twoDigitNumber || iso$twoDigitNumber >= 13) {
            return parseIso$parseFailure(charSequence, AbstractC0074a.m154e(iso$twoDigitNumber, "Expected a month number in 1..12, got "));
        }
        if (1 > iso$twoDigitNumber2 || iso$twoDigitNumber2 > monthLength(iso$twoDigitNumber, isLeapYear(i16))) {
            StringBuilder sbM171v = AbstractC0074a.m171v("Expected a valid day-of-month for month ", iso$twoDigitNumber, i16, " of year ", ", got ");
            sbM171v.append(iso$twoDigitNumber2);
            return parseIso$parseFailure(charSequence, sbM171v.toString());
        }
        if (iso$twoDigitNumber3 > 23) {
            return parseIso$parseFailure(charSequence, AbstractC0074a.m154e(iso$twoDigitNumber3, "Expected hour in 0..23, got "));
        }
        if (iso$twoDigitNumber4 > 59) {
            return parseIso$parseFailure(charSequence, AbstractC0074a.m154e(iso$twoDigitNumber4, "Expected minute-of-hour in 0..59, got "));
        }
        if (iso$twoDigitNumber5 > 59) {
            return parseIso$parseFailure(charSequence, AbstractC0074a.m154e(iso$twoDigitNumber5, "Expected second-of-minute in 0..59, got "));
        }
        UnboundLocalDateTime unboundLocalDateTime = new UnboundLocalDateTime(i16, iso$twoDigitNumber, iso$twoDigitNumber2, iso$twoDigitNumber3, iso$twoDigitNumber4, iso$twoDigitNumber5, i11);
        long year = unboundLocalDateTime.getYear();
        long j10 = ((long) 365) * year;
        long month = (year >= 0 ? ((year + ((long) 399)) / ((long) NNTPReply.SERVICE_DISCONTINUED)) + (((((long) i12) + year) / ((long) 4)) - ((((long) 99) + year) / ((long) 100))) + j10 : j10 - ((year / ((long) (-400))) + ((year / ((long) (-4))) - (year / ((long) (-100)))))) + ((long) (((unboundLocalDateTime.getMonth() * 367) - 362) / 12)) + ((long) (unboundLocalDateTime.getDay() - 1));
        if (unboundLocalDateTime.getMonth() > 2) {
            month = !isLeapYear(unboundLocalDateTime.getYear()) ? month - 2 : (-1) + month;
        }
        return new InstantParseResult.Success((((month - ((long) DAYS_0000_TO_1970)) * ((long) SECONDS_PER_DAY)) + ((long) (((unboundLocalDateTime.getMinute() * SECONDS_PER_MINUTE) + (unboundLocalDateTime.getHour() * SECONDS_PER_HOUR)) + unboundLocalDateTime.getSecond()))) - ((long) i13), unboundLocalDateTime.getNanosecond());
    }

    private static final InstantParseResult.Failure parseIso$expect(CharSequence charSequence, String str, int i10, Function1<? super Character, Boolean> function1) {
        char cCharAt = charSequence.charAt(i10);
        if (function1.invoke(Character.valueOf(cCharAt)).booleanValue()) {
            return null;
        }
        return parseIso$parseFailure(charSequence, "Expected " + str + ", but got '" + cCharAt + "' at position " + i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$0(char c) {
        return c == '-';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$10(char c) {
        return '0' <= c && c < ':';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$2(char c) {
        return c == '-';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$4(char c) {
        return c == 'T' || c == 't';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$6(char c) {
        return c == ':';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$8(char c) {
        return c == ':';
    }

    private static final InstantParseResult.Failure parseIso$parseFailure(CharSequence charSequence, String str) {
        StringBuilder sbM172w = AbstractC0074a.m172w(str, " when parsing an Instant from \"");
        sbM172w.append(truncateForErrorMessage(charSequence, 64));
        sbM172w.append(Typography.quote);
        return new InstantParseResult.Failure(sbM172w.toString(), charSequence);
    }

    private static final int parseIso$twoDigitNumber(CharSequence charSequence, int i10) {
        return (charSequence.charAt(i10 + 1) - '0') + ((charSequence.charAt(i10) - '0') * 10);
    }

    private static final long safeAddOrElse(long j10, long j11, Function0 function0) {
        long j12 = j10 + j11;
        if ((j10 ^ j12) >= 0 || (j10 ^ j11) < 0) {
            return j12;
        }
        function0.invoke();
        throw new KotlinNothingValueException();
    }

    private static final long safeMultiplyOrElse(long j10, long j11, Function0 function0) {
        if (j11 == 1) {
            return j10;
        }
        if (j10 == 1) {
            return j11;
        }
        if (j10 == 0 || j11 == 0) {
            return 0L;
        }
        long j12 = j10 * j11;
        if (j12 / j11 == j10 && ((j10 != Long.MIN_VALUE || j11 != -1) && (j11 != Long.MIN_VALUE || j10 != -1))) {
            return j12;
        }
        function0.invoke();
        throw new KotlinNothingValueException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String truncateForErrorMessage(CharSequence charSequence, int i10) {
        if (charSequence.length() <= i10) {
            return charSequence.toString();
        }
        return charSequence.subSequence(0, i10).toString() + "...";
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

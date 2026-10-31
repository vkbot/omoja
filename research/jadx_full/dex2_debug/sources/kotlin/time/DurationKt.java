package kotlin.time;

import j1.i;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.HttpUrl;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\b\u0015\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0005\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0007\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\t\u001a\u001c\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0001H\u0087\n¢\u0006\u0004\b\f\u0010\r\u001a\u001c\u0010\n\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0001H\u0087\n¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001d\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002¢\u0006\u0002\u0010\u0015\u001a\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u001a)\u0010\u0017\u001a\u00020\u0012*\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00022\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00140\u001aH\u0082\b\u001a)\u0010\u001c\u001a\u00020\u0002*\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00022\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00140\u001aH\u0082\b\u001a\u0010\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0006H\u0002\u001a\u0010\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006H\u0002\u001a\u0015\u0010%\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u0006H\u0002¢\u0006\u0002\u0010'\u001a\u0015\u0010(\u001a\u00020\u00012\u0006\u0010)\u001a\u00020\u0006H\u0002¢\u0006\u0002\u0010'\u001a\u001d\u0010*\u001a\u00020\u00012\u0006\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u0002H\u0002¢\u0006\u0002\u0010-\u001a\u0015\u0010.\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0006H\u0002¢\u0006\u0002\u0010'\u001a\u0015\u0010/\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u0006H\u0002¢\u0006\u0002\u0010'\"\u000e\u0010\u001d\u001a\u00020\u0002X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"toDuration", "Lkotlin/time/Duration;", HttpUrl.FRAGMENT_ENCODE_SET, "unit", "Lkotlin/time/DurationUnit;", "(ILkotlin/time/DurationUnit;)J", HttpUrl.FRAGMENT_ENCODE_SET, "(JLkotlin/time/DurationUnit;)J", HttpUrl.FRAGMENT_ENCODE_SET, "(DLkotlin/time/DurationUnit;)J", "times", "duration", "times-mvk6XK0", "(IJ)J", "times-kIfJnKk", "(DJ)J", "parseDuration", "value", HttpUrl.FRAGMENT_ENCODE_SET, "strictIso", HttpUrl.FRAGMENT_ENCODE_SET, "(Ljava/lang/String;Z)J", "parseOverLongIsoComponent", "substringWhile", "startIndex", "predicate", "Lkotlin/Function1;", HttpUrl.FRAGMENT_ENCODE_SET, "skipWhile", "NANOS_IN_MILLIS", "MAX_NANOS", "MAX_MILLIS", "MAX_NANOS_IN_MILLIS", "nanosToMillis", "nanos", "millisToNanos", "millis", "durationOfNanos", "normalNanos", "(J)J", "durationOfMillis", "normalMillis", "durationOf", "normalValue", "unitDiscriminator", "(JI)J", "durationOfNanosNormalized", "durationOfMillisNormalized", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1062:1\n1015#1,6:1064\n1018#1,3:1070\n1015#1,6:1073\n1015#1,6:1079\n1018#1,3:1085\n1#2:1063\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n930#1:1064,6\n964#1:1070,3\n967#1:1073,6\n970#1:1079,6\n1015#1:1085,3\n*E\n"})
public final class DurationKt {
    public static final long MAX_MILLIS = 4611686018427387903L;
    public static final long MAX_NANOS = 4611686018426999999L;
    private static final long MAX_NANOS_IN_MILLIS = 4611686018426L;
    public static final int NANOS_IN_MILLIS = 1000000;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ long access$durationOf(long j, int i) {
        return durationOf(j, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ long access$durationOfMillis(long j) {
        return durationOfMillis(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ long access$durationOfMillisNormalized(long j) {
        return durationOfMillisNormalized(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ long access$durationOfNanos(long j) {
        return durationOfNanos(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ long access$durationOfNanosNormalized(long j) {
        return durationOfNanosNormalized(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ long access$millisToNanos(long j) {
        return millisToNanos(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ long access$nanosToMillis(long j) {
        return nanosToMillis(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ long access$parseDuration(String str, boolean z) {
        return parseDuration(str, z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final long durationOf(long j, int i) {
        return Duration.m35constructorimpl((j << 1) + ((long) i));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final long durationOfMillis(long j) {
        return Duration.m35constructorimpl((j << 1) + 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final long durationOfMillisNormalized(long j) {
        return (-4611686018426L > j || j >= 4611686018427L) ? durationOfMillis(RangesKt.coerceIn(j, -4611686018427387903L, MAX_MILLIS)) : durationOfNanos(millisToNanos(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final long durationOfNanos(long j) {
        return Duration.m35constructorimpl(j << 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final long durationOfNanosNormalized(long j) {
        return (-4611686018426999999L > j || j >= 4611686018427000000L) ? durationOfMillis(nanosToMillis(j)) : durationOfNanos(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final long millisToNanos(long j) {
        return j * ((long) NANOS_IN_MILLIS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final long nanosToMillis(long j) {
        return j / ((long) NANOS_IN_MILLIS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:128:0x021c  */
    /* JADX WARN: Code duplicated, block: B:130:0x0221 A[RETURN] */
    private static final long parseDuration(String str, boolean z) {
        int i;
        long jM64plusLRDsOJo;
        boolean z2;
        boolean z3;
        char cCharAt;
        char cCharAt2;
        char cCharAt3;
        int length = str.length();
        if (length == 0) {
            i.k("The string is empty");
            return 0L;
        }
        Duration$Companion duration$Companion = Duration.Companion;
        long jM126getZEROUwyO8pc = duration$Companion.m126getZEROUwyO8pc();
        char cCharAt4 = str.charAt(0);
        int i2 = (cCharAt4 == '+' || cCharAt4 == '-') ? 1 : 0;
        boolean z4 = i2 > 0;
        boolean z5 = z4 && StringsKt.L(str);
        if (length <= i2) {
            i.k("No components");
            return 0L;
        }
        char cCharAt5 = str.charAt(i2);
        int i3 = 6;
        char c = FilenameUtils.EXTENSION_SEPARATOR;
        String str2 = "Unexpected order of duration components";
        char c2 = ':';
        if (cCharAt5 != 'P') {
            if (z) {
                l9.i.a();
                return 0L;
            }
            if (StringsKt.z(i2, Math.max(length - i2, 8), str)) {
                jM126getZEROUwyO8pc = duration$Companion.m124getINFINITEUwyO8pc();
            } else {
                boolean z6 = !z4;
                if (z4 && str.charAt(i2) == '(' && StringsKt.last(str) == ')') {
                    int i4 = i2 + 1;
                    length--;
                    if (i4 == length) {
                        i.k("No components");
                        return 0L;
                    }
                    i = i4;
                    jM64plusLRDsOJo = jM126getZEROUwyO8pc;
                    z2 = true;
                } else {
                    i = i2;
                    jM64plusLRDsOJo = jM126getZEROUwyO8pc;
                    z2 = z6;
                }
                DurationUnit durationUnit = null;
                boolean z7 = false;
                while (i < length) {
                    if (z7 && z2) {
                        while (i < str.length() && str.charAt(i) == ' ') {
                            i++;
                        }
                    }
                    int i5 = i;
                    while (i5 < str.length() && (('0' <= (cCharAt2 = str.charAt(i5)) && cCharAt2 < c2) || cCharAt2 == '.')) {
                        i5++;
                    }
                    String strSubstring = str.substring(i, i5);
                    if (strSubstring.length() == 0) {
                        l9.i.a();
                        return 0L;
                    }
                    int length2 = strSubstring.length() + i;
                    int i6 = length2;
                    while (i6 < str.length() && 'a' <= (cCharAt = str.charAt(i6)) && cCharAt < '{') {
                        i6++;
                    }
                    String strSubstring2 = str.substring(length2, i6);
                    int length3 = length2 + strSubstring2.length();
                    DurationUnit durationUnitDurationUnitByShortName = DurationUnitKt__DurationUnitKt.durationUnitByShortName(strSubstring2);
                    if (durationUnit != null && durationUnit.compareTo(durationUnitDurationUnitByShortName) <= 0) {
                        i.k("Unexpected order of duration components");
                        return 0L;
                    }
                    int iV = StringsKt.v(strSubstring, FilenameUtils.EXTENSION_SEPARATOR, 0, 6);
                    if (iV > 0) {
                        jM64plusLRDsOJo = Duration.m64plusLRDsOJo(Duration.m64plusLRDsOJo(jM64plusLRDsOJo, toDuration(Long.parseLong(strSubstring.substring(0, iV)), durationUnitDurationUnitByShortName)), toDuration(Double.parseDouble(strSubstring.substring(iV)), durationUnitDurationUnitByShortName));
                        if (length3 < length) {
                            i.k("Fractional component must be last");
                            return 0L;
                        }
                    } else {
                        jM64plusLRDsOJo = Duration.m64plusLRDsOJo(jM64plusLRDsOJo, toDuration(Long.parseLong(strSubstring), durationUnitDurationUnitByShortName));
                    }
                    durationUnit = durationUnitDurationUnitByShortName;
                    i = length3;
                    z7 = true;
                    z5 = z5;
                    c2 = ':';
                }
                z3 = z5;
                jM126getZEROUwyO8pc = jM64plusLRDsOJo;
            }
            if (z3) {
                return Duration.m79unaryMinusUwyO8pc(jM126getZEROUwyO8pc);
            }
            return jM126getZEROUwyO8pc;
        }
        int i7 = i2 + 1;
        if (i7 == length) {
            l9.i.a();
            return 0L;
        }
        DurationUnit durationUnit2 = null;
        boolean z9 = false;
        while (i7 < length) {
            if (str.charAt(i7) != 'T') {
                int i8 = i7;
                while (i8 < str.length() && (('0' <= (cCharAt3 = str.charAt(i8)) && cCharAt3 < ':') || StringsKt.n("+-.", cCharAt3))) {
                    i8++;
                }
                String strSubstring3 = str.substring(i7, i8);
                if (strSubstring3.length() == 0) {
                    l9.i.a();
                    return 0L;
                }
                int length4 = strSubstring3.length() + i7;
                if (length4 < 0 || length4 >= str.length()) {
                    i.k("Missing unit for value ".concat(strSubstring3));
                    return 0L;
                }
                char cCharAt6 = str.charAt(length4);
                int i10 = length4 + 1;
                DurationUnit durationUnitDurationUnitByIsoChar = DurationUnitKt__DurationUnitKt.durationUnitByIsoChar(cCharAt6, z9);
                if (durationUnit2 != null && durationUnit2.compareTo(durationUnitDurationUnitByIsoChar) <= 0) {
                    i.k(str2);
                    return 0L;
                }
                int iV2 = StringsKt.v(strSubstring3, c, 0, i3);
                jM126getZEROUwyO8pc = (durationUnitDurationUnitByIsoChar != DurationUnit.SECONDS || iV2 <= 0) ? Duration.m64plusLRDsOJo(jM126getZEROUwyO8pc, toDuration(parseOverLongIsoComponent(strSubstring3), durationUnitDurationUnitByIsoChar)) : Duration.m64plusLRDsOJo(Duration.m64plusLRDsOJo(jM126getZEROUwyO8pc, toDuration(parseOverLongIsoComponent(strSubstring3.substring(0, iV2)), durationUnitDurationUnitByIsoChar)), toDuration(Double.parseDouble(strSubstring3.substring(iV2)), durationUnitDurationUnitByIsoChar));
                durationUnit2 = durationUnitDurationUnitByIsoChar;
                i7 = i10;
                str2 = str2;
                i3 = 6;
                c = FilenameUtils.EXTENSION_SEPARATOR;
            } else {
                if (z9 || (i7 = i7 + 1) == length) {
                    l9.i.a();
                    return 0L;
                }
                z9 = true;
            }
        }
        z3 = z5;
        if (z3) {
            return Duration.m79unaryMinusUwyO8pc(jM126getZEROUwyO8pc);
        }
        return jM126getZEROUwyO8pc;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final long parseOverLongIsoComponent(String str) {
        char cCharAt;
        int length = str.length();
        int i = (length <= 0 || !StringsKt.n("+-", str.charAt(0))) ? 0 : 1;
        if (length - i > 16) {
            int i2 = i;
            while (true) {
                if (i >= length) {
                    if (length - i2 <= 16) {
                        break;
                    }
                    return str.charAt(0) == '-' ? Long.MIN_VALUE : Long.MAX_VALUE;
                }
                char cCharAt2 = str.charAt(i);
                if (cCharAt2 == '0') {
                    if (i2 == i) {
                        i2++;
                    }
                } else if ('1' > cCharAt2 || cCharAt2 >= ':') {
                    break;
                }
                i++;
            }
        }
        return (!StringsKt.M(str, "+") || length <= 1 || '0' > (cCharAt = str.charAt(1)) || cCharAt >= ':') ? Long.parseLong(str) : Long.parseLong(StringsKt.p(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final int skipWhile(String str, int i, Function1<? super Character, Boolean> function1) {
        while (i < str.length() && ((Boolean) function1.invoke(Character.valueOf(str.charAt(i)))).booleanValue()) {
            i++;
        }
        return i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final String substringWhile(String str, int i, Function1<? super Character, Boolean> function1) {
        int i2 = i;
        while (i2 < str.length() && ((Boolean) function1.invoke(Character.valueOf(str.charAt(i2)))).booleanValue()) {
            i2++;
        }
        return str.substring(i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.6")
    @InlineOnly
    /* JADX INFO: renamed from: times-kIfJnKk, reason: not valid java name */
    private static final long m131timeskIfJnKk(double d, long j) {
        return Duration.m65timesUwyO8pc(j, d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.6")
    @InlineOnly
    /* JADX INFO: renamed from: times-mvk6XK0, reason: not valid java name */
    private static final long m132timesmvk6XK0(int i, long j) {
        return Duration.m66timesUwyO8pc(j, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.6")
    public static final long toDuration(double d, DurationUnit durationUnit) {
        durationUnit.getClass();
        double dConvertDurationUnit = DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d, durationUnit, DurationUnit.NANOSECONDS);
        if (Double.isNaN(dConvertDurationUnit)) {
            i.k("Duration value cannot be NaN.");
            return 0L;
        }
        long jRoundToLong = MathKt.roundToLong(dConvertDurationUnit);
        return (-4611686018426999999L > jRoundToLong || jRoundToLong >= 4611686018427000000L) ? durationOfMillisNormalized(MathKt.roundToLong(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d, durationUnit, DurationUnit.MILLISECONDS))) : durationOfNanos(jRoundToLong);
    }

    @SinceKotlin(version = "1.6")
    public static final long toDuration(long j, DurationUnit durationUnit) {
        durationUnit.getClass();
        DurationUnit durationUnit2 = DurationUnit.NANOSECONDS;
        long jConvertDurationUnitOverflow = DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(MAX_NANOS, durationUnit2, durationUnit);
        if ((-jConvertDurationUnitOverflow) <= j && j <= jConvertDurationUnitOverflow) {
            return durationOfNanos(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(j, durationUnit, durationUnit2));
        }
        return durationOfMillis(RangesKt.coerceIn(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(j, durationUnit, DurationUnit.MILLISECONDS), -4611686018427387903L, MAX_MILLIS));
    }

    @SinceKotlin(version = "1.6")
    public static final long toDuration(int i, DurationUnit durationUnit) {
        durationUnit.getClass();
        if (durationUnit.compareTo(DurationUnit.SECONDS) <= 0) {
            return durationOfNanos(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(i, durationUnit, DurationUnit.NANOSECONDS));
        }
        return toDuration(i, durationUnit);
    }
}

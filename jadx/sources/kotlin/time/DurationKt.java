package kotlin.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import org.apache.commons.p161io.FilenameUtils;
import p099j1.C1929i;
import p130l9.C2237i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\b\u0015\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0005\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0007\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\t\u001a\u001c\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0001H\u0087\n¢\u0006\u0004\b\f\u0010\r\u001a\u001c\u0010\n\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0001H\u0087\n¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001d\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002¢\u0006\u0002\u0010\u0015\u001a\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u001a)\u0010\u0017\u001a\u00020\u0012*\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00022\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00140\u001aH\u0082\b\u001a)\u0010\u001c\u001a\u00020\u0002*\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00022\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00140\u001aH\u0082\b\u001a\u0010\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0006H\u0002\u001a\u0010\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006H\u0002\u001a\u0015\u0010%\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u0006H\u0002¢\u0006\u0002\u0010'\u001a\u0015\u0010(\u001a\u00020\u00012\u0006\u0010)\u001a\u00020\u0006H\u0002¢\u0006\u0002\u0010'\u001a\u001d\u0010*\u001a\u00020\u00012\u0006\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u0002H\u0002¢\u0006\u0002\u0010-\u001a\u0015\u0010.\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0006H\u0002¢\u0006\u0002\u0010'\u001a\u0015\u0010/\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u0006H\u0002¢\u0006\u0002\u0010'\"\u000e\u0010\u001d\u001a\u00020\u0002X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u00060"}, m3159d2 = {"toDuration", "Lkotlin/time/Duration;", "", "unit", "Lkotlin/time/DurationUnit;", "(ILkotlin/time/DurationUnit;)J", "", "(JLkotlin/time/DurationUnit;)J", "", "(DLkotlin/time/DurationUnit;)J", "times", TypedValues.TransitionType.S_DURATION, "times-mvk6XK0", "(IJ)J", "times-kIfJnKk", "(DJ)J", "parseDuration", "value", "", "strictIso", "", "(Ljava/lang/String;Z)J", "parseOverLongIsoComponent", "substringWhile", "startIndex", "predicate", "Lkotlin/Function1;", "", "skipWhile", "NANOS_IN_MILLIS", "MAX_NANOS", "MAX_MILLIS", "MAX_NANOS_IN_MILLIS", "nanosToMillis", "nanos", "millisToNanos", "millis", "durationOfNanos", "normalNanos", "(J)J", "durationOfMillis", "normalMillis", "durationOf", "normalValue", "unitDiscriminator", "(JI)J", "durationOfNanosNormalized", "durationOfMillisNormalized", "kotlin-stdlib"}, m3160k = 2, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1062:1\n1015#1,6:1064\n1018#1,3:1070\n1015#1,6:1073\n1015#1,6:1079\n1018#1,3:1085\n1#2:1063\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n930#1:1064,6\n964#1:1070,3\n967#1:1073,6\n970#1:1079,6\n1015#1:1085,3\n*E\n"})
public final class DurationKt {
    public static final long MAX_MILLIS = 4611686018427387903L;
    public static final long MAX_NANOS = 4611686018426999999L;
    private static final long MAX_NANOS_IN_MILLIS = 4611686018426L;
    public static final int NANOS_IN_MILLIS = 1000000;

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOf(long j10, int i10) {
        return Duration.m7412constructorimpl((j10 << 1) + ((long) i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfMillis(long j10) {
        return Duration.m7412constructorimpl((j10 << 1) + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfMillisNormalized(long j10) {
        return (-4611686018426L > j10 || j10 >= 4611686018427L) ? durationOfMillis(RangesKt.coerceIn(j10, -4611686018427387903L, MAX_MILLIS)) : durationOfNanos(millisToNanos(j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfNanos(long j10) {
        return Duration.m7412constructorimpl(j10 << 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfNanosNormalized(long j10) {
        return (-4611686018426999999L > j10 || j10 >= 4611686018427000000L) ? durationOfMillis(nanosToMillis(j10)) : durationOfNanos(j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long millisToNanos(long j10) {
        return j10 * ((long) NANOS_IN_MILLIS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long nanosToMillis(long j10) {
        return j10 / ((long) NANOS_IN_MILLIS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:128:0x021c  */
    /* JADX WARN: Code duplicated, block: B:130:0x0221 A[RETURN] */
    public static final long parseDuration(String str, boolean z9) {
        int i10;
        long jM7441plusLRDsOJo;
        boolean z10;
        boolean z11;
        char cCharAt;
        char cCharAt2;
        char cCharAt3;
        int length = str.length();
        if (length == 0) {
            C1929i.m3029k("The string is empty");
            return 0L;
        }
        Duration.Companion companion = Duration.INSTANCE;
        long jM7503getZEROUwyO8pc = companion.m7503getZEROUwyO8pc();
        char cCharAt4 = str.charAt(0);
        int i11 = (cCharAt4 == '+' || cCharAt4 == '-') ? 1 : 0;
        boolean z12 = i11 > 0;
        boolean z13 = z12 && StringsKt__StringsKt.startsWith$default((CharSequence) str, '-', false, 2, (Object) null);
        if (length <= i11) {
            C1929i.m3029k("No components");
            return 0L;
        }
        char cCharAt5 = str.charAt(i11);
        int i12 = 6;
        char c = FilenameUtils.EXTENSION_SEPARATOR;
        String str2 = "Unexpected order of duration components";
        char c10 = ':';
        if (cCharAt5 != 'P') {
            if (z9) {
                C2237i.m3594a();
                return 0L;
            }
            if (StringsKt__StringsJVMKt.regionMatches(str, i11, "Infinity", 0, Math.max(length - i11, 8), true)) {
                jM7503getZEROUwyO8pc = companion.m7501getINFINITEUwyO8pc();
            } else {
                boolean z14 = !z12;
                if (z12 && str.charAt(i11) == '(' && StringsKt.last(str) == ')') {
                    int i13 = i11 + 1;
                    length--;
                    if (i13 == length) {
                        C1929i.m3029k("No components");
                        return 0L;
                    }
                    i10 = i13;
                    jM7441plusLRDsOJo = jM7503getZEROUwyO8pc;
                    z10 = true;
                } else {
                    i10 = i11;
                    jM7441plusLRDsOJo = jM7503getZEROUwyO8pc;
                    z10 = z14;
                }
                DurationUnit durationUnit = null;
                boolean z15 = false;
                while (i10 < length) {
                    if (z15 && z10) {
                        while (i10 < str.length() && str.charAt(i10) == ' ') {
                            i10++;
                        }
                    }
                    int i14 = i10;
                    while (i14 < str.length() && (('0' <= (cCharAt2 = str.charAt(i14)) && cCharAt2 < c10) || cCharAt2 == '.')) {
                        i14++;
                    }
                    String strSubstring = str.substring(i10, i14);
                    if (strSubstring.length() == 0) {
                        C2237i.m3594a();
                        return 0L;
                    }
                    int length2 = strSubstring.length() + i10;
                    int i15 = length2;
                    while (i15 < str.length() && 'a' <= (cCharAt = str.charAt(i15)) && cCharAt < '{') {
                        i15++;
                    }
                    String strSubstring2 = str.substring(length2, i15);
                    int length3 = length2 + strSubstring2.length();
                    DurationUnit durationUnitDurationUnitByShortName = DurationUnitKt__DurationUnitKt.durationUnitByShortName(strSubstring2);
                    if (durationUnit != null && durationUnit.compareTo(durationUnitDurationUnitByShortName) <= 0) {
                        C1929i.m3029k("Unexpected order of duration components");
                        return 0L;
                    }
                    int iIndexOf$default = StringsKt__StringsKt.indexOf$default(strSubstring, FilenameUtils.EXTENSION_SEPARATOR, 0, false, 6, (Object) null);
                    if (iIndexOf$default > 0) {
                        jM7441plusLRDsOJo = Duration.m7441plusLRDsOJo(Duration.m7441plusLRDsOJo(jM7441plusLRDsOJo, toDuration(Long.parseLong(strSubstring.substring(0, iIndexOf$default)), durationUnitDurationUnitByShortName)), toDuration(Double.parseDouble(strSubstring.substring(iIndexOf$default)), durationUnitDurationUnitByShortName));
                        if (length3 < length) {
                            C1929i.m3029k("Fractional component must be last");
                            return 0L;
                        }
                    } else {
                        jM7441plusLRDsOJo = Duration.m7441plusLRDsOJo(jM7441plusLRDsOJo, toDuration(Long.parseLong(strSubstring), durationUnitDurationUnitByShortName));
                    }
                    durationUnit = durationUnitDurationUnitByShortName;
                    i10 = length3;
                    z15 = true;
                    z13 = z13;
                    c10 = ':';
                }
                z11 = z13;
                jM7503getZEROUwyO8pc = jM7441plusLRDsOJo;
            }
            if (z11) {
                return Duration.m7456unaryMinusUwyO8pc(jM7503getZEROUwyO8pc);
            }
            return jM7503getZEROUwyO8pc;
        }
        int i16 = i11 + 1;
        if (i16 == length) {
            C2237i.m3594a();
            return 0L;
        }
        DurationUnit durationUnit2 = null;
        boolean z16 = false;
        while (i16 < length) {
            if (str.charAt(i16) != 'T') {
                int i17 = i16;
                while (i17 < str.length() && (('0' <= (cCharAt3 = str.charAt(i17)) && cCharAt3 < ':') || StringsKt__StringsKt.contains$default("+-.", cCharAt3, false, 2, (Object) null))) {
                    i17++;
                }
                String strSubstring3 = str.substring(i16, i17);
                if (strSubstring3.length() == 0) {
                    C2237i.m3594a();
                    return 0L;
                }
                int length4 = strSubstring3.length() + i16;
                if (length4 < 0 || length4 >= str.length()) {
                    C1929i.m3029k("Missing unit for value ".concat(strSubstring3));
                    return 0L;
                }
                char cCharAt6 = str.charAt(length4);
                int i18 = length4 + 1;
                DurationUnit durationUnitDurationUnitByIsoChar = DurationUnitKt__DurationUnitKt.durationUnitByIsoChar(cCharAt6, z16);
                if (durationUnit2 != null && durationUnit2.compareTo(durationUnitDurationUnitByIsoChar) <= 0) {
                    C1929i.m3029k(str2);
                    return 0L;
                }
                int iIndexOf$default2 = StringsKt__StringsKt.indexOf$default(strSubstring3, c, 0, false, i12, (Object) null);
                jM7503getZEROUwyO8pc = (durationUnitDurationUnitByIsoChar != DurationUnit.SECONDS || iIndexOf$default2 <= 0) ? Duration.m7441plusLRDsOJo(jM7503getZEROUwyO8pc, toDuration(parseOverLongIsoComponent(strSubstring3), durationUnitDurationUnitByIsoChar)) : Duration.m7441plusLRDsOJo(Duration.m7441plusLRDsOJo(jM7503getZEROUwyO8pc, toDuration(parseOverLongIsoComponent(strSubstring3.substring(0, iIndexOf$default2)), durationUnitDurationUnitByIsoChar)), toDuration(Double.parseDouble(strSubstring3.substring(iIndexOf$default2)), durationUnitDurationUnitByIsoChar));
                durationUnit2 = durationUnitDurationUnitByIsoChar;
                i16 = i18;
                str2 = str2;
                i12 = 6;
                c = FilenameUtils.EXTENSION_SEPARATOR;
            } else {
                if (z16 || (i16 = i16 + 1) == length) {
                    C2237i.m3594a();
                    return 0L;
                }
                z16 = true;
            }
        }
        z11 = z13;
        if (z11) {
            return Duration.m7456unaryMinusUwyO8pc(jM7503getZEROUwyO8pc);
        }
        return jM7503getZEROUwyO8pc;
    }

    private static final long parseOverLongIsoComponent(String str) {
        char cCharAt;
        int length = str.length();
        int i10 = (length <= 0 || !StringsKt__StringsKt.contains$default("+-", str.charAt(0), false, 2, (Object) null)) ? 0 : 1;
        if (length - i10 > 16) {
            int i11 = i10;
            while (true) {
                if (i10 >= length) {
                    if (length - i11 <= 16) {
                        break;
                    }
                    return str.charAt(0) == '-' ? Long.MIN_VALUE : Long.MAX_VALUE;
                }
                char cCharAt2 = str.charAt(i10);
                if (cCharAt2 == '0') {
                    if (i11 == i10) {
                        i11++;
                    }
                } else if ('1' > cCharAt2 || cCharAt2 >= ':') {
                    break;
                }
                i10++;
            }
        }
        return (!StringsKt__StringsJVMKt.startsWith$default(str, "+", false, 2, null) || length <= 1 || '0' > (cCharAt = str.charAt(1)) || cCharAt >= ':') ? Long.parseLong(str) : Long.parseLong(StringsKt___StringsKt.drop(str, 1));
    }

    private static final int skipWhile(String str, int i10, Function1<? super Character, Boolean> function1) {
        while (i10 < str.length() && function1.invoke(Character.valueOf(str.charAt(i10))).booleanValue()) {
            i10++;
        }
        return i10;
    }

    private static final String substringWhile(String str, int i10, Function1<? super Character, Boolean> function1) {
        int i11 = i10;
        while (i11 < str.length() && function1.invoke(Character.valueOf(str.charAt(i11))).booleanValue()) {
            i11++;
        }
        return str.substring(i10, i11);
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    /* JADX INFO: renamed from: times-kIfJnKk, reason: not valid java name */
    private static final long m7508timeskIfJnKk(double d, long j10) {
        return Duration.m7442timesUwyO8pc(j10, d);
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    /* JADX INFO: renamed from: times-mvk6XK0, reason: not valid java name */
    private static final long m7509timesmvk6XK0(int i10, long j10) {
        return Duration.m7443timesUwyO8pc(j10, i10);
    }

    @SinceKotlin(version = "1.6")
    public static final long toDuration(double d, DurationUnit durationUnit) {
        durationUnit.getClass();
        double dConvertDurationUnit = DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d, durationUnit, DurationUnit.NANOSECONDS);
        if (Double.isNaN(dConvertDurationUnit)) {
            C1929i.m3029k("Duration value cannot be NaN.");
            return 0L;
        }
        long jRoundToLong = MathKt.roundToLong(dConvertDurationUnit);
        return (-4611686018426999999L > jRoundToLong || jRoundToLong >= 4611686018427000000L) ? durationOfMillisNormalized(MathKt.roundToLong(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d, durationUnit, DurationUnit.MILLISECONDS))) : durationOfNanos(jRoundToLong);
    }

    @SinceKotlin(version = "1.6")
    public static final long toDuration(long j10, DurationUnit durationUnit) {
        durationUnit.getClass();
        DurationUnit durationUnit2 = DurationUnit.NANOSECONDS;
        long jConvertDurationUnitOverflow = DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(MAX_NANOS, durationUnit2, durationUnit);
        if ((-jConvertDurationUnitOverflow) <= j10 && j10 <= jConvertDurationUnitOverflow) {
            return durationOfNanos(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(j10, durationUnit, durationUnit2));
        }
        return durationOfMillis(RangesKt.coerceIn(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(j10, durationUnit, DurationUnit.MILLISECONDS), -4611686018427387903L, MAX_MILLIS));
    }

    @SinceKotlin(version = "1.6")
    public static final long toDuration(int i10, DurationUnit durationUnit) {
        durationUnit.getClass();
        if (durationUnit.compareTo(DurationUnit.SECONDS) <= 0) {
            return durationOfNanos(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(i10, durationUnit, DurationUnit.NANOSECONDS));
        }
        return toDuration(i10, durationUnit);
    }
}

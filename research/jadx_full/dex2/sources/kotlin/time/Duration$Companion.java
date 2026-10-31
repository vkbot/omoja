package kotlin.time;

import kotlin.Metadata;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0007J\u0015\u00100\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u000201¢\u0006\u0004\b2\u00103J\u0015\u00104\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u000201¢\u0006\u0004\b5\u00103J\u0015\u00106\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u000201¢\u0006\u0002\b7J\u0015\u00108\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u000201¢\u0006\u0002\b9R\u0013\u0010\u0004\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\n\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\u0005X\u0080\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\f\u0010\u0007R\u001f\u0010\u0013\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001f\u0010\u0013\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u001a\u001a\u0004\b\u0017\u0010\u001bR\u001f\u0010\u0013\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u001c\u001a\u0004\b\u0017\u0010\u001dR\u001f\u0010\u001e\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u0016\u001a\u0004\b \u0010\u0018R\u001f\u0010\u001e\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u001a\u001a\u0004\b \u0010\u001bR\u001f\u0010\u001e\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u001c\u001a\u0004\b \u0010\u001dR\u001f\u0010!\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010\u0016\u001a\u0004\b#\u0010\u0018R\u001f\u0010!\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010\u001a\u001a\u0004\b#\u0010\u001bR\u001f\u0010!\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010\u001c\u001a\u0004\b#\u0010\u001dR\u001f\u0010$\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b%\u0010\u0016\u001a\u0004\b&\u0010\u0018R\u001f\u0010$\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b%\u0010\u001a\u001a\u0004\b&\u0010\u001bR\u001f\u0010$\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b%\u0010\u001c\u001a\u0004\b&\u0010\u001dR\u001f\u0010'\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b(\u0010\u0016\u001a\u0004\b)\u0010\u0018R\u001f\u0010'\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b(\u0010\u001a\u001a\u0004\b)\u0010\u001bR\u001f\u0010'\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b(\u0010\u001c\u001a\u0004\b)\u0010\u001dR\u001f\u0010*\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010\u0016\u001a\u0004\b,\u0010\u0018R\u001f\u0010*\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010\u001a\u001a\u0004\b,\u0010\u001bR\u001f\u0010*\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010\u001c\u001a\u0004\b,\u0010\u001dR\u001f\u0010-\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b.\u0010\u0016\u001a\u0004\b/\u0010\u0018R\u001f\u0010-\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b.\u0010\u001a\u001a\u0004\b/\u0010\u001bR\u001f\u0010-\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b.\u0010\u001c\u001a\u0004\b/\u0010\u001d¨\u0006:"}, d2 = {"Lkotlin/time/Duration$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "<init>", "()V", "ZERO", "Lkotlin/time/Duration;", "getZERO-UwyO8pc", "()J", "J", "INFINITE", "getINFINITE-UwyO8pc", "NEG_INFINITE", "getNEG_INFINITE-UwyO8pc$kotlin_stdlib", "convert", HttpUrl.FRAGMENT_ENCODE_SET, "value", "sourceUnit", "Lkotlin/time/DurationUnit;", "targetUnit", "nanoseconds", HttpUrl.FRAGMENT_ENCODE_SET, "getNanoseconds-UwyO8pc$annotations", "(I)V", "getNanoseconds-UwyO8pc", "(I)J", HttpUrl.FRAGMENT_ENCODE_SET, "(J)V", "(J)J", "(D)V", "(D)J", "microseconds", "getMicroseconds-UwyO8pc$annotations", "getMicroseconds-UwyO8pc", "milliseconds", "getMilliseconds-UwyO8pc$annotations", "getMilliseconds-UwyO8pc", "seconds", "getSeconds-UwyO8pc$annotations", "getSeconds-UwyO8pc", "minutes", "getMinutes-UwyO8pc$annotations", "getMinutes-UwyO8pc", "hours", "getHours-UwyO8pc$annotations", "getHours-UwyO8pc", "days", "getDays-UwyO8pc$annotations", "getDays-UwyO8pc", "parse", HttpUrl.FRAGMENT_ENCODE_SET, "parse-UwyO8pc", "(Ljava/lang/String;)J", "parseIsoString", "parseIsoString-UwyO8pc", "parseOrNull", "parseOrNull-FghU774", "parseIsoStringOrNull", "parseIsoStringOrNull-FghU774", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class Duration$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ Duration$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getDays-UwyO8pc, reason: not valid java name */
    private final long m83getDaysUwyO8pc(int i) {
        return DurationKt.toDuration(i, DurationUnit.DAYS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getHours-UwyO8pc, reason: not valid java name */
    private final long m89getHoursUwyO8pc(int i) {
        return DurationKt.toDuration(i, DurationUnit.HOURS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getMicroseconds-UwyO8pc, reason: not valid java name */
    private final long m95getMicrosecondsUwyO8pc(int i) {
        return DurationKt.toDuration(i, DurationUnit.MICROSECONDS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getMilliseconds-UwyO8pc, reason: not valid java name */
    private final long m101getMillisecondsUwyO8pc(int i) {
        return DurationKt.toDuration(i, DurationUnit.MILLISECONDS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getMinutes-UwyO8pc, reason: not valid java name */
    private final long m107getMinutesUwyO8pc(int i) {
        return DurationKt.toDuration(i, DurationUnit.MINUTES);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getNanoseconds-UwyO8pc, reason: not valid java name */
    private final long m113getNanosecondsUwyO8pc(int i) {
        return DurationKt.toDuration(i, DurationUnit.NANOSECONDS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getSeconds-UwyO8pc, reason: not valid java name */
    private final long m119getSecondsUwyO8pc(int i) {
        return DurationKt.toDuration(i, DurationUnit.SECONDS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalTime
    public final double convert(double value, DurationUnit sourceUnit, DurationUnit targetUnit) {
        sourceUnit.getClass();
        targetUnit.getClass();
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(value, sourceUnit, targetUnit);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getINFINITE-UwyO8pc, reason: not valid java name */
    public final long m124getINFINITEUwyO8pc() {
        return Duration.access$getINFINITE$cp();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getNEG_INFINITE-UwyO8pc$kotlin_stdlib, reason: not valid java name */
    public final long m125getNEG_INFINITEUwyO8pc$kotlin_stdlib() {
        return Duration.access$getNEG_INFINITE$cp();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getZERO-UwyO8pc, reason: not valid java name */
    public final long m126getZEROUwyO8pc() {
        return Duration.access$getZERO$cp();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: parse-UwyO8pc, reason: not valid java name */
    public final long m127parseUwyO8pc(String value) {
        value.getClass();
        try {
            return DurationKt.access$parseDuration(value, false);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(ai.onnxruntime.a.m("Invalid duration string format: '", value, "'."), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: parseIsoString-UwyO8pc, reason: not valid java name */
    public final long m128parseIsoStringUwyO8pc(String value) {
        value.getClass();
        try {
            return DurationKt.access$parseDuration(value, true);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(ai.onnxruntime.a.m("Invalid ISO duration string format: '", value, "'."), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: parseIsoStringOrNull-FghU774, reason: not valid java name */
    public final Duration m129parseIsoStringOrNullFghU774(String value) {
        value.getClass();
        try {
            return Duration.m33boximpl(DurationKt.access$parseDuration(value, true));
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: parseOrNull-FghU774, reason: not valid java name */
    public final Duration m130parseOrNullFghU774(String value) {
        value.getClass();
        try {
            return Duration.m33boximpl(DurationKt.access$parseDuration(value, false));
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 2 */
    @InlineOnly
    /* JADX INFO: renamed from: getDays-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m86getDaysUwyO8pc$annotations(int i) {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 2 */
    @InlineOnly
    /* JADX INFO: renamed from: getHours-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m92getHoursUwyO8pc$annotations(int i) {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 2 */
    @InlineOnly
    /* JADX INFO: renamed from: getMicroseconds-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m98getMicrosecondsUwyO8pc$annotations(int i) {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 2 */
    @InlineOnly
    /* JADX INFO: renamed from: getMilliseconds-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m104getMillisecondsUwyO8pc$annotations(int i) {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 2 */
    @InlineOnly
    /* JADX INFO: renamed from: getMinutes-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m110getMinutesUwyO8pc$annotations(int i) {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 2 */
    @InlineOnly
    /* JADX INFO: renamed from: getNanoseconds-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m116getNanosecondsUwyO8pc$annotations(int i) {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 2 */
    @InlineOnly
    /* JADX INFO: renamed from: getSeconds-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m122getSecondsUwyO8pc$annotations(int i) {
    }

    @InlineOnly
    /* JADX INFO: renamed from: getDays-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m87getDaysUwyO8pc$annotations(long j) {
    }

    @InlineOnly
    /* JADX INFO: renamed from: getHours-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m93getHoursUwyO8pc$annotations(long j) {
    }

    @InlineOnly
    /* JADX INFO: renamed from: getMicroseconds-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m99getMicrosecondsUwyO8pc$annotations(long j) {
    }

    @InlineOnly
    /* JADX INFO: renamed from: getMilliseconds-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m105getMillisecondsUwyO8pc$annotations(long j) {
    }

    @InlineOnly
    /* JADX INFO: renamed from: getMinutes-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m111getMinutesUwyO8pc$annotations(long j) {
    }

    @InlineOnly
    /* JADX INFO: renamed from: getNanoseconds-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m117getNanosecondsUwyO8pc$annotations(long j) {
    }

    @InlineOnly
    /* JADX INFO: renamed from: getSeconds-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m123getSecondsUwyO8pc$annotations(long j) {
    }

    private Duration$Companion() {
    }

    /* JADX INFO: renamed from: getDays-UwyO8pc, reason: not valid java name */
    private final long m84getDaysUwyO8pc(long j) {
        return DurationKt.toDuration(j, DurationUnit.DAYS);
    }

    /* JADX INFO: renamed from: getHours-UwyO8pc, reason: not valid java name */
    private final long m90getHoursUwyO8pc(long j) {
        return DurationKt.toDuration(j, DurationUnit.HOURS);
    }

    /* JADX INFO: renamed from: getMicroseconds-UwyO8pc, reason: not valid java name */
    private final long m96getMicrosecondsUwyO8pc(long j) {
        return DurationKt.toDuration(j, DurationUnit.MICROSECONDS);
    }

    /* JADX INFO: renamed from: getMilliseconds-UwyO8pc, reason: not valid java name */
    private final long m102getMillisecondsUwyO8pc(long j) {
        return DurationKt.toDuration(j, DurationUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: getMinutes-UwyO8pc, reason: not valid java name */
    private final long m108getMinutesUwyO8pc(long j) {
        return DurationKt.toDuration(j, DurationUnit.MINUTES);
    }

    /* JADX INFO: renamed from: getNanoseconds-UwyO8pc, reason: not valid java name */
    private final long m114getNanosecondsUwyO8pc(long j) {
        return DurationKt.toDuration(j, DurationUnit.NANOSECONDS);
    }

    /* JADX INFO: renamed from: getSeconds-UwyO8pc, reason: not valid java name */
    private final long m120getSecondsUwyO8pc(long j) {
        return DurationKt.toDuration(j, DurationUnit.SECONDS);
    }

    /* JADX INFO: renamed from: getDays-UwyO8pc, reason: not valid java name */
    private final long m82getDaysUwyO8pc(double d) {
        return DurationKt.toDuration(d, DurationUnit.DAYS);
    }

    /* JADX INFO: renamed from: getHours-UwyO8pc, reason: not valid java name */
    private final long m88getHoursUwyO8pc(double d) {
        return DurationKt.toDuration(d, DurationUnit.HOURS);
    }

    /* JADX INFO: renamed from: getMicroseconds-UwyO8pc, reason: not valid java name */
    private final long m94getMicrosecondsUwyO8pc(double d) {
        return DurationKt.toDuration(d, DurationUnit.MICROSECONDS);
    }

    /* JADX INFO: renamed from: getMilliseconds-UwyO8pc, reason: not valid java name */
    private final long m100getMillisecondsUwyO8pc(double d) {
        return DurationKt.toDuration(d, DurationUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: getMinutes-UwyO8pc, reason: not valid java name */
    private final long m106getMinutesUwyO8pc(double d) {
        return DurationKt.toDuration(d, DurationUnit.MINUTES);
    }

    /* JADX INFO: renamed from: getNanoseconds-UwyO8pc, reason: not valid java name */
    private final long m112getNanosecondsUwyO8pc(double d) {
        return DurationKt.toDuration(d, DurationUnit.NANOSECONDS);
    }

    /* JADX INFO: renamed from: getSeconds-UwyO8pc, reason: not valid java name */
    private final long m118getSecondsUwyO8pc(double d) {
        return DurationKt.toDuration(d, DurationUnit.SECONDS);
    }

    @InlineOnly
    /* JADX INFO: renamed from: getDays-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m85getDaysUwyO8pc$annotations(double d) {
    }

    @InlineOnly
    /* JADX INFO: renamed from: getHours-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m91getHoursUwyO8pc$annotations(double d) {
    }

    @InlineOnly
    /* JADX INFO: renamed from: getMicroseconds-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m97getMicrosecondsUwyO8pc$annotations(double d) {
    }

    @InlineOnly
    /* JADX INFO: renamed from: getMilliseconds-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m103getMillisecondsUwyO8pc$annotations(double d) {
    }

    @InlineOnly
    /* JADX INFO: renamed from: getMinutes-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m109getMinutesUwyO8pc$annotations(double d) {
    }

    @InlineOnly
    /* JADX INFO: renamed from: getNanoseconds-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m115getNanosecondsUwyO8pc$annotations(double d) {
    }

    @InlineOnly
    /* JADX INFO: renamed from: getSeconds-UwyO8pc$annotations, reason: not valid java name */
    public static /* synthetic */ void m121getSecondsUwyO8pc$annotations(double d) {
    }
}

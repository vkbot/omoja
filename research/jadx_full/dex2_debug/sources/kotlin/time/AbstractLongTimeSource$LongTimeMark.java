package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0007H\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0001H\u0096\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0013\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\n¨\u0006\u001d"}, d2 = {"Lkotlin/time/AbstractLongTimeSource$LongTimeMark;", "Lkotlin/time/ComparableTimeMark;", "startedAt", HttpUrl.FRAGMENT_ENCODE_SET, "timeSource", "Lkotlin/time/AbstractLongTimeSource;", "offset", "Lkotlin/time/Duration;", "<init>", "(JLkotlin/time/AbstractLongTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "J", "elapsedNow", "elapsedNow-UwyO8pc", "()J", "plus", "duration", "plus-LRDsOJo", "(J)Lkotlin/time/ComparableTimeMark;", "minus", "other", "minus-UwyO8pc", "(Lkotlin/time/ComparableTimeMark;)J", "equals", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, "hashCode", HttpUrl.FRAGMENT_ENCODE_SET, "toString", HttpUrl.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTimeSources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeSources.kt\nkotlin/time/AbstractLongTimeSource$LongTimeMark\n+ 2 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,210:1\n80#2:211\n*S KotlinDebug\n*F\n+ 1 TimeSources.kt\nkotlin/time/AbstractLongTimeSource$LongTimeMark\n*L\n67#1:211\n*E\n"})
public final class AbstractLongTimeSource$LongTimeMark implements ComparableTimeMark {
    private final long offset;
    private final long startedAt;
    private final AbstractLongTimeSource timeSource;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AbstractLongTimeSource$LongTimeMark(long j, AbstractLongTimeSource abstractLongTimeSource, long j2) {
        abstractLongTimeSource.getClass();
        this.startedAt = j;
        this.timeSource = abstractLongTimeSource;
        this.offset = j2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(ComparableTimeMark comparableTimeMark) {
        return compareTo2(comparableTimeMark);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.TimeMark
    /* JADX INFO: renamed from: elapsedNow-UwyO8pc */
    public long mo25elapsedNowUwyO8pc() {
        return Duration.m63minusLRDsOJo(LongSaturatedMathKt.saturatingOriginsDiff(AbstractLongTimeSource.access$adjustedRead(this.timeSource), this.startedAt, this.timeSource.getUnit()), this.offset);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.ComparableTimeMark
    public boolean equals(Object other) {
        return (other instanceof AbstractLongTimeSource$LongTimeMark) && Intrinsics.areEqual(this.timeSource, ((AbstractLongTimeSource$LongTimeMark) other).timeSource) && Duration.m40equalsimpl0(mo27minusUwyO8pc((ComparableTimeMark) other), Duration.Companion.m126getZEROUwyO8pc());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.TimeMark
    public boolean hasNotPassedNow() {
        return ComparableTimeMark$DefaultImpls.hasNotPassedNow(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.TimeMark
    public boolean hasPassedNow() {
        return ComparableTimeMark$DefaultImpls.hasPassedNow(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.ComparableTimeMark
    public int hashCode() {
        return Long.hashCode(this.startedAt) + (Duration.m56hashCodeimpl(this.offset) * 37);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.ComparableTimeMark, kotlin.time.TimeMark
    /* JADX INFO: renamed from: minus-LRDsOJo */
    public ComparableTimeMark mo26minusLRDsOJo(long j) {
        return ComparableTimeMark$DefaultImpls.m30minusLRDsOJo(this, j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.ComparableTimeMark
    /* JADX INFO: renamed from: minus-UwyO8pc */
    public long mo27minusUwyO8pc(ComparableTimeMark other) {
        other.getClass();
        if (other instanceof AbstractLongTimeSource$LongTimeMark) {
            AbstractLongTimeSource$LongTimeMark abstractLongTimeSource$LongTimeMark = (AbstractLongTimeSource$LongTimeMark) other;
            if (Intrinsics.areEqual(this.timeSource, abstractLongTimeSource$LongTimeMark.timeSource)) {
                return Duration.m64plusLRDsOJo(LongSaturatedMathKt.saturatingOriginsDiff(this.startedAt, abstractLongTimeSource$LongTimeMark.startedAt, this.timeSource.getUnit()), Duration.m63minusLRDsOJo(this.offset, abstractLongTimeSource$LongTimeMark.offset));
            }
        }
        androidx.navigation.b.v("Subtracting or comparing time marks from different time sources is not possible: ", this, " and ", other);
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.ComparableTimeMark, kotlin.time.TimeMark
    /* JADX INFO: renamed from: plus-LRDsOJo */
    public ComparableTimeMark mo28plusLRDsOJo(long duration) {
        DurationUnit unit = this.timeSource.getUnit();
        if (Duration.m60isInfiniteimpl(duration)) {
            return new AbstractLongTimeSource$LongTimeMark(LongSaturatedMathKt.m137saturatingAddNuflL3o(this.startedAt, unit, duration), this.timeSource, Duration.Companion.m126getZEROUwyO8pc(), null);
        }
        long jM78truncateToUwyO8pc$kotlin_stdlib = Duration.m78truncateToUwyO8pc$kotlin_stdlib(duration, unit);
        long jM64plusLRDsOJo = Duration.m64plusLRDsOJo(Duration.m63minusLRDsOJo(duration, jM78truncateToUwyO8pc$kotlin_stdlib), this.offset);
        long jM137saturatingAddNuflL3o = LongSaturatedMathKt.m137saturatingAddNuflL3o(this.startedAt, unit, jM78truncateToUwyO8pc$kotlin_stdlib);
        long jM78truncateToUwyO8pc$kotlin_stdlib2 = Duration.m78truncateToUwyO8pc$kotlin_stdlib(jM64plusLRDsOJo, unit);
        long jM137saturatingAddNuflL3o2 = LongSaturatedMathKt.m137saturatingAddNuflL3o(jM137saturatingAddNuflL3o, unit, jM78truncateToUwyO8pc$kotlin_stdlib2);
        long jM63minusLRDsOJo = Duration.m63minusLRDsOJo(jM64plusLRDsOJo, jM78truncateToUwyO8pc$kotlin_stdlib2);
        long jM48getInWholeNanosecondsimpl = Duration.m48getInWholeNanosecondsimpl(jM63minusLRDsOJo);
        if (jM137saturatingAddNuflL3o2 != 0 && jM48getInWholeNanosecondsimpl != 0 && (jM137saturatingAddNuflL3o2 ^ jM48getInWholeNanosecondsimpl) < 0) {
            long duration2 = DurationKt.toDuration(MathKt.getSign(jM48getInWholeNanosecondsimpl), unit);
            jM137saturatingAddNuflL3o2 = LongSaturatedMathKt.m137saturatingAddNuflL3o(jM137saturatingAddNuflL3o2, unit, duration2);
            jM63minusLRDsOJo = Duration.m63minusLRDsOJo(jM63minusLRDsOJo, duration2);
        }
        if ((1 | (jM137saturatingAddNuflL3o2 - 1)) == Long.MAX_VALUE) {
            jM63minusLRDsOJo = Duration.Companion.m126getZEROUwyO8pc();
        }
        return new AbstractLongTimeSource$LongTimeMark(jM137saturatingAddNuflL3o2, this.timeSource, jM63minusLRDsOJo, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "LongTimeMark(" + this.startedAt + DurationUnitKt__DurationUnitKt.shortName(this.timeSource.getUnit()) + " + " + ((Object) Duration.m75toStringimpl(this.offset)) + ", " + this.timeSource + ')';
    }

    @Override // kotlin.time.TimeMark
    /* JADX INFO: renamed from: minus-LRDsOJo */
    public /* bridge */ /* synthetic */ TimeMark mo26minusLRDsOJo(long j) {
        return mo26minusLRDsOJo(j);
    }

    @Override // kotlin.time.ComparableTimeMark
    /* JADX INFO: renamed from: compareTo, reason: avoid collision after fix types in other method */
    public int compareTo2(ComparableTimeMark comparableTimeMark) {
        return ComparableTimeMark$DefaultImpls.compareTo(this, comparableTimeMark);
    }

    public /* synthetic */ AbstractLongTimeSource$LongTimeMark(long j, AbstractLongTimeSource abstractLongTimeSource, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, abstractLongTimeSource, j2);
    }

    @Override // kotlin.time.TimeMark
    /* JADX INFO: renamed from: plus-LRDsOJo */
    public /* bridge */ /* synthetic */ TimeMark mo28plusLRDsOJo(long j) {
        return mo28plusLRDsOJo(j);
    }
}

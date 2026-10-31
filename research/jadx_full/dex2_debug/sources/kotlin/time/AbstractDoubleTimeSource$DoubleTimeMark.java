package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0007H\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0001H\u0096\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0013\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\n¨\u0006\u001d"}, d2 = {"Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;", "Lkotlin/time/ComparableTimeMark;", "startedAt", HttpUrl.FRAGMENT_ENCODE_SET, "timeSource", "Lkotlin/time/AbstractDoubleTimeSource;", "offset", "Lkotlin/time/Duration;", "<init>", "(DLkotlin/time/AbstractDoubleTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "J", "elapsedNow", "elapsedNow-UwyO8pc", "()J", "plus", "duration", "plus-LRDsOJo", "(J)Lkotlin/time/ComparableTimeMark;", "minus", "other", "minus-UwyO8pc", "(Lkotlin/time/ComparableTimeMark;)J", "equals", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, "hashCode", HttpUrl.FRAGMENT_ENCODE_SET, "toString", HttpUrl.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class AbstractDoubleTimeSource$DoubleTimeMark implements ComparableTimeMark {
    private final long offset;
    private final double startedAt;
    private final AbstractDoubleTimeSource timeSource;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AbstractDoubleTimeSource$DoubleTimeMark(double d, AbstractDoubleTimeSource abstractDoubleTimeSource, long j) {
        abstractDoubleTimeSource.getClass();
        this.startedAt = d;
        this.timeSource = abstractDoubleTimeSource;
        this.offset = j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(ComparableTimeMark comparableTimeMark) {
        return compareTo2(comparableTimeMark);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.TimeMark
    /* JADX INFO: renamed from: elapsedNow-UwyO8pc, reason: not valid java name */
    public long mo25elapsedNowUwyO8pc() {
        return Duration.m63minusLRDsOJo(DurationKt.toDuration(this.timeSource.read() - this.startedAt, this.timeSource.getUnit()), this.offset);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.ComparableTimeMark
    public boolean equals(Object other) {
        return (other instanceof AbstractDoubleTimeSource$DoubleTimeMark) && Intrinsics.areEqual(this.timeSource, ((AbstractDoubleTimeSource$DoubleTimeMark) other).timeSource) && Duration.m40equalsimpl0(mo27minusUwyO8pc((ComparableTimeMark) other), Duration.Companion.m126getZEROUwyO8pc());
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
        return Duration.m56hashCodeimpl(Duration.m64plusLRDsOJo(DurationKt.toDuration(this.startedAt, this.timeSource.getUnit()), this.offset));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.ComparableTimeMark, kotlin.time.TimeMark
    /* JADX INFO: renamed from: minus-LRDsOJo, reason: not valid java name */
    public ComparableTimeMark mo26minusLRDsOJo(long j) {
        return ComparableTimeMark$DefaultImpls.m30minusLRDsOJo(this, j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.ComparableTimeMark
    /* JADX INFO: renamed from: minus-UwyO8pc, reason: not valid java name */
    public long mo27minusUwyO8pc(ComparableTimeMark other) {
        other.getClass();
        if (other instanceof AbstractDoubleTimeSource$DoubleTimeMark) {
            AbstractDoubleTimeSource$DoubleTimeMark abstractDoubleTimeSource$DoubleTimeMark = (AbstractDoubleTimeSource$DoubleTimeMark) other;
            if (Intrinsics.areEqual(this.timeSource, abstractDoubleTimeSource$DoubleTimeMark.timeSource)) {
                if (Duration.m40equalsimpl0(this.offset, abstractDoubleTimeSource$DoubleTimeMark.offset) && Duration.m60isInfiniteimpl(this.offset)) {
                    return Duration.Companion.m126getZEROUwyO8pc();
                }
                long jM63minusLRDsOJo = Duration.m63minusLRDsOJo(this.offset, abstractDoubleTimeSource$DoubleTimeMark.offset);
                long duration = DurationKt.toDuration(this.startedAt - abstractDoubleTimeSource$DoubleTimeMark.startedAt, this.timeSource.getUnit());
                return Duration.m40equalsimpl0(duration, Duration.m79unaryMinusUwyO8pc(jM63minusLRDsOJo)) ? Duration.Companion.m126getZEROUwyO8pc() : Duration.m64plusLRDsOJo(duration, jM63minusLRDsOJo);
            }
        }
        androidx.navigation.b.v("Subtracting or comparing time marks from different time sources is not possible: ", this, " and ", other);
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.ComparableTimeMark, kotlin.time.TimeMark
    /* JADX INFO: renamed from: plus-LRDsOJo, reason: not valid java name */
    public ComparableTimeMark mo28plusLRDsOJo(long duration) {
        return new AbstractDoubleTimeSource$DoubleTimeMark(this.startedAt, this.timeSource, Duration.m64plusLRDsOJo(this.offset, duration), null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "DoubleTimeMark(" + this.startedAt + DurationUnitKt__DurationUnitKt.shortName(this.timeSource.getUnit()) + " + " + ((Object) Duration.m75toStringimpl(this.offset)) + ", " + this.timeSource + ')';
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

    public /* synthetic */ AbstractDoubleTimeSource$DoubleTimeMark(double d, AbstractDoubleTimeSource abstractDoubleTimeSource, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(d, abstractDoubleTimeSource, j);
    }

    @Override // kotlin.time.TimeMark
    /* JADX INFO: renamed from: plus-LRDsOJo */
    public /* bridge */ /* synthetic */ TimeMark mo28plusLRDsOJo(long j) {
        return mo28plusLRDsOJo(j);
    }
}

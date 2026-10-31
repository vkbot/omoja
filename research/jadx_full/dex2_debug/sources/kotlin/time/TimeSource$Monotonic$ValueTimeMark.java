package kotlin.time;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.JvmInline;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@SinceKotlin(version = "1.9")
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001B\u0015\b\u0000\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u0006J\u0018\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\tH\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u000f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\tH\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0016\u0010\u0014J\u0018\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0001H\u0096\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0018\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u001a\u0010\u000eJ\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u001cHÖ\u0001J\t\u0010\"\u001a\u00020#HÖ\u0001R\u0014\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004X\u0080\u0004¢\u0006\u0004\n\u0002\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00060\u0003j\u0002`\u0004¨\u0006$"}, d2 = {"Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "Lkotlin/time/ComparableTimeMark;", "reading", HttpUrl.FRAGMENT_ENCODE_SET, "Lkotlin/time/ValueTimeMarkReading;", "constructor-impl", "(J)J", "J", "elapsedNow", "Lkotlin/time/Duration;", "elapsedNow-UwyO8pc", "plus", "duration", "plus-LRDsOJo", "(JJ)J", "minus", "minus-LRDsOJo", "hasPassedNow", HttpUrl.FRAGMENT_ENCODE_SET, "hasPassedNow-impl", "(J)Z", "hasNotPassedNow", "hasNotPassedNow-impl", "other", "minus-UwyO8pc", "(JLkotlin/time/ComparableTimeMark;)J", "minus-6eNON_k", "compareTo", HttpUrl.FRAGMENT_ENCODE_SET, "compareTo-6eNON_k", "(JJ)I", "equals", HttpUrl.FRAGMENT_ENCODE_SET, "hashCode", "toString", HttpUrl.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@JvmInline
@WasExperimental(markerClass = {ExperimentalTime.class})
public final class TimeSource$Monotonic$ValueTimeMark implements ComparableTimeMark {
    private final long reading;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ TimeSource$Monotonic$ValueTimeMark(long j) {
        this.reading = j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TimeSource$Monotonic$ValueTimeMark m148boximpl(long j) {
        return new TimeSource$Monotonic$ValueTimeMark(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: compareTo-6eNON_k, reason: not valid java name */
    public static final int m149compareTo6eNON_k(long j, long j2) {
        return Duration.m34compareToLRDsOJo(m158minus6eNON_k(j, j2), Duration.Companion.m126getZEROUwyO8pc());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: compareTo-impl, reason: not valid java name */
    public static int m150compareToimpl(long j, ComparableTimeMark comparableTimeMark) {
        comparableTimeMark.getClass();
        return m148boximpl(j).compareTo2(comparableTimeMark);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m153equalsimpl(long j, Object obj) {
        return (obj instanceof TimeSource$Monotonic$ValueTimeMark) && j == ((TimeSource$Monotonic$ValueTimeMark) obj).getReading();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m154equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: hasNotPassedNow-impl, reason: not valid java name */
    public static boolean m155hasNotPassedNowimpl(long j) {
        return Duration.m61isNegativeimpl(m152elapsedNowUwyO8pc(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: hasPassedNow-impl, reason: not valid java name */
    public static boolean m156hasPassedNowimpl(long j) {
        return !Duration.m61isNegativeimpl(m152elapsedNowUwyO8pc(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m157hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: minus-6eNON_k, reason: not valid java name */
    public static final long m158minus6eNON_k(long j, long j2) {
        return MonotonicTimeSource.INSTANCE.m140differenceBetweenfRLX17w(j, j2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: minus-LRDsOJo, reason: not valid java name */
    public static long m159minusLRDsOJo(long j, long j2) {
        return MonotonicTimeSource.INSTANCE.m139adjustReading6QKq23U(j, Duration.m79unaryMinusUwyO8pc(j2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: minus-UwyO8pc, reason: not valid java name */
    public static long m160minusUwyO8pc(long j, ComparableTimeMark comparableTimeMark) {
        comparableTimeMark.getClass();
        if (comparableTimeMark instanceof TimeSource$Monotonic$ValueTimeMark) {
            return m158minus6eNON_k(j, ((TimeSource$Monotonic$ValueTimeMark) comparableTimeMark).getReading());
        }
        androidx.navigation.b.y("Subtracting or comparing time marks from different time sources is not possible: ", m162toStringimpl(j), " and ", comparableTimeMark);
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m162toStringimpl(long j) {
        return "ValueTimeMark(reading=" + j + ')';
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
        return m152elapsedNowUwyO8pc(this.reading);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.ComparableTimeMark
    public boolean equals(Object other) {
        return m153equalsimpl(this.reading, other);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.TimeMark
    public boolean hasNotPassedNow() {
        return m155hasNotPassedNowimpl(this.reading);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.TimeMark
    public boolean hasPassedNow() {
        return m156hasPassedNowimpl(this.reading);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.ComparableTimeMark
    public int hashCode() {
        return m157hashCodeimpl(this.reading);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.ComparableTimeMark, kotlin.time.TimeMark
    /* JADX INFO: renamed from: plus-LRDsOJo */
    public /* bridge */ /* synthetic */ ComparableTimeMark mo28plusLRDsOJo(long j) {
        return m148boximpl(m164plusLRDsOJo(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return m162toStringimpl(this.reading);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getReading() {
        return this.reading;
    }

    /* JADX INFO: renamed from: elapsedNow-UwyO8pc, reason: not valid java name */
    public static long m152elapsedNowUwyO8pc(long j) {
        return MonotonicTimeSource.INSTANCE.m141elapsedFrom6eNON_k(j);
    }

    @Override // kotlin.time.ComparableTimeMark
    /* JADX INFO: renamed from: compareTo, reason: avoid collision after fix types in other method */
    public int compareTo2(ComparableTimeMark comparableTimeMark) {
        return ComparableTimeMark$DefaultImpls.compareTo(this, comparableTimeMark);
    }

    @Override // kotlin.time.TimeMark
    /* JADX INFO: renamed from: plus-LRDsOJo */
    public /* bridge */ /* synthetic */ TimeMark mo28plusLRDsOJo(long j) {
        return m148boximpl(m164plusLRDsOJo(j));
    }

    /* JADX DEBUG: Possible override for method kotlin.time.ComparableTimeMark.plus-LRDsOJo(J)Lkotlin/time/ComparableTimeMark; */
    /* JADX DEBUG: Possible override for method kotlin.time.TimeMark.plus-LRDsOJo(J)Lkotlin/time/TimeMark; */
    /* JADX INFO: renamed from: plus-LRDsOJo, reason: not valid java name */
    public long m164plusLRDsOJo(long j) {
        return m161plusLRDsOJo(this.reading, j);
    }

    /* JADX INFO: renamed from: plus-LRDsOJo, reason: not valid java name */
    public static long m161plusLRDsOJo(long j, long j2) {
        return MonotonicTimeSource.INSTANCE.m139adjustReading6QKq23U(j, j2);
    }

    @Override // kotlin.time.TimeMark
    /* JADX INFO: renamed from: minus-LRDsOJo */
    public /* bridge */ /* synthetic */ TimeMark mo26minusLRDsOJo(long j) {
        return m148boximpl(m163minusLRDsOJo(j));
    }

    /* JADX DEBUG: Possible override for method kotlin.time.ComparableTimeMark.minus-LRDsOJo(J)Lkotlin/time/ComparableTimeMark; */
    /* JADX DEBUG: Possible override for method kotlin.time.TimeMark.minus-LRDsOJo(J)Lkotlin/time/TimeMark; */
    /* JADX INFO: renamed from: minus-LRDsOJo, reason: not valid java name */
    public long m163minusLRDsOJo(long j) {
        return m159minusLRDsOJo(this.reading, j);
    }

    @Override // kotlin.time.ComparableTimeMark, kotlin.time.TimeMark
    /* JADX INFO: renamed from: minus-LRDsOJo */
    public /* bridge */ /* synthetic */ ComparableTimeMark mo26minusLRDsOJo(long j) {
        return m148boximpl(m163minusLRDsOJo(j));
    }

    @Override // kotlin.time.ComparableTimeMark
    /* JADX INFO: renamed from: minus-UwyO8pc */
    public long mo27minusUwyO8pc(ComparableTimeMark comparableTimeMark) {
        comparableTimeMark.getClass();
        return m160minusUwyO8pc(this.reading, comparableTimeMark);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m151constructorimpl(long j) {
        return j;
    }
}

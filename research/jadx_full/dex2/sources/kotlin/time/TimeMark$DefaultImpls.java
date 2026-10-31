package kotlin.time;

import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class TimeMark$DefaultImpls {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean hasNotPassedNow(TimeMark timeMark) {
        return Duration.m61isNegativeimpl(timeMark.mo25elapsedNowUwyO8pc());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean hasPassedNow(TimeMark timeMark) {
        return !Duration.m61isNegativeimpl(timeMark.mo25elapsedNowUwyO8pc());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: minus-LRDsOJo, reason: not valid java name */
    public static TimeMark m145minusLRDsOJo(TimeMark timeMark, long j) {
        return timeMark.mo28plusLRDsOJo(Duration.m79unaryMinusUwyO8pc(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: plus-LRDsOJo, reason: not valid java name */
    public static TimeMark m146plusLRDsOJo(TimeMark timeMark, long j) {
        return new AdjustedTimeMark(timeMark, j, null);
    }
}

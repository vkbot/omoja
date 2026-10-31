package kotlin.time;

import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComparableTimeMark$DefaultImpls {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int compareTo(ComparableTimeMark comparableTimeMark, ComparableTimeMark comparableTimeMark2) {
        comparableTimeMark2.getClass();
        return Duration.m34compareToLRDsOJo(comparableTimeMark.mo27minusUwyO8pc(comparableTimeMark2), Duration.Companion.m126getZEROUwyO8pc());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean hasNotPassedNow(ComparableTimeMark comparableTimeMark) {
        return TimeMark$DefaultImpls.hasNotPassedNow(comparableTimeMark);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean hasPassedNow(ComparableTimeMark comparableTimeMark) {
        return TimeMark$DefaultImpls.hasPassedNow(comparableTimeMark);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: minus-LRDsOJo, reason: not valid java name */
    public static ComparableTimeMark m30minusLRDsOJo(ComparableTimeMark comparableTimeMark, long j) {
        return comparableTimeMark.mo28plusLRDsOJo(Duration.m79unaryMinusUwyO8pc(j));
    }
}

package kotlin.time;

import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0004\u001a\u00020\u0005H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"kotlin/time/ClocksKt$asClock$1", "Lkotlin/time/Clock;", "startMark", "Lkotlin/time/TimeMark;", "now", "Lkotlin/time/Instant;", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ClocksKt$asClock$1 implements Clock {
    final /* synthetic */ Instant $origin;
    private final TimeMark startMark;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ClocksKt$asClock$1(TimeSource timeSource, Instant instant) {
        this.$origin = instant;
        this.startMark = timeSource.markNow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.Clock
    public Instant now() {
        return this.$origin.m135plusLRDsOJo(this.startMark.mo25elapsedNowUwyO8pc());
    }
}

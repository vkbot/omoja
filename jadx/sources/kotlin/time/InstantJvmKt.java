package kotlin.time;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.internal.PlatformImplementationsKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a\b\u0010\u0004\u001a\u00020\u0005H\u0001\u001a\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0005H\u0001\"\u0016\u0010\u0000\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0002\u0010\u0003¨\u0006\t"}, m3159d2 = {"systemClock", "Lkotlin/time/Clock;", "getSystemClock$annotations", "()V", "systemClockNow", "Lkotlin/time/Instant;", "serializedInstant", "", "instant", "kotlin-stdlib"}, m3160k = 2, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class InstantJvmKt {
    private static final Clock systemClock = PlatformImplementationsKt.IMPLEMENTATIONS.getSystemClock();

    @ExperimentalTime
    public static final Object serializedInstant(Instant instant) {
        instant.getClass();
        return new InstantSerialized(instant.getEpochSeconds(), instant.getNanosecondsOfSecond());
    }

    @ExperimentalTime
    public static final Instant systemClockNow() {
        return systemClock.now();
    }

    @ExperimentalTime
    private static /* synthetic */ void getSystemClock$annotations() {
    }
}

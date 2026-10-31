package kotlin.internal.jdk8;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import c5.h;
import kotlin.Metadata;
import kotlin.time.Clock;
import kotlin.time.Instant;
import kotlin.time.jdk8.InstantConversionsJDK8Kt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"kotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$1", "Lkotlin/time/Clock;", "now", "Lkotlin/time/Instant;", "kotlin-stdlib-jdk8"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class JDK8PlatformImplementations$getSystemClock$1 implements Clock {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Instant now() {
        java.time.Instant instantB = h.B();
        instantB.getClass();
        return InstantConversionsJDK8Kt.toKotlinInstant(instantB);
    }
}

package kotlin.time.jdk8;

import java.time.Instant;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.JvmName;
import kotlin.time.ExperimentalTime;
import org.apache.commons.net.util.a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007\u001a\f\u0010\u0003\u001a\u00020\u0002*\u00020\u0001H\u0007¨\u0006\u0004"}, d2 = {"toJavaInstant", "Ljava/time/Instant;", "Lkotlin/time/Instant;", "toKotlinInstant", "kotlin-stdlib-jdk8"}, k = 2, mv = {2, 2, 0}, pn = "kotlin.time", xi = 48)
@JvmName(name = "InstantConversionsJDK8Kt")
public final class InstantConversionsJDK8Kt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "2.1")
    @ExperimentalTime
    public static final Instant toJavaInstant(kotlin.time.Instant instant) {
        instant.getClass();
        Instant instantN = a.n(instant.getEpochSeconds(), instant.getNanosecondsOfSecond());
        instantN.getClass();
        return instantN;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "2.1")
    @ExperimentalTime
    public static final kotlin.time.Instant toKotlinInstant(Instant instant) {
        instant.getClass();
        return kotlin.time.Instant.Companion.fromEpochSeconds(a.f(instant), a.c(instant));
    }
}

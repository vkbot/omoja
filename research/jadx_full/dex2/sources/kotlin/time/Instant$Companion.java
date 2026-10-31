package kotlin.time;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0007J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bJ\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\bJ\u0016\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0007R\u0011\u0010\u0011\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0013¨\u0006\u001a"}, d2 = {"Lkotlin/time/Instant$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "<init>", "()V", "now", "Lkotlin/time/Instant;", "fromEpochMilliseconds", "epochMilliseconds", HttpUrl.FRAGMENT_ENCODE_SET, "fromEpochSeconds", "epochSeconds", "nanosecondAdjustment", HttpUrl.FRAGMENT_ENCODE_SET, "parse", "input", HttpUrl.FRAGMENT_ENCODE_SET, "parseOrNull", "DISTANT_PAST", "getDISTANT_PAST", "()Lkotlin/time/Instant;", "DISTANT_FUTURE", "getDISTANT_FUTURE", "MIN", "getMIN$kotlin_stdlib", "MAX", "getMAX$kotlin_stdlib", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/Instant$Companion\n+ 2 Instant.kt\nkotlin/time/InstantKt\n*L\n1#1,864:1\n786#2,6:865\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/Instant$Companion\n*L\n312#1:865,6\n*E\n"})
public final class Instant$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ Instant$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Instant fromEpochSeconds$default(Instant$Companion instant$Companion, long j, long j2, int i, Object obj) {
        if ((i & 2) != 0) {
            j2 = 0;
        }
        return instant$Companion.fromEpochSeconds(j, j2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Instant fromEpochMilliseconds(long epochMilliseconds) {
        long j = epochMilliseconds / 1000;
        if ((epochMilliseconds ^ 1000) < 0 && j * 1000 != epochMilliseconds) {
            j--;
        }
        long j2 = epochMilliseconds % 1000;
        int i = (int) ((j2 + (1000 & (((j2 ^ 1000) & ((-j2) | j2)) >> 63))) * ((long) DurationKt.NANOS_IN_MILLIS));
        if (j < -31557014167219200L) {
            return getMIN$kotlin_stdlib();
        }
        return j > 31556889864403199L ? getMAX$kotlin_stdlib() : fromEpochSeconds(j, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Instant fromEpochSeconds(long epochSeconds, long nanosecondAdjustment) {
        long j = nanosecondAdjustment / 1000000000;
        if ((nanosecondAdjustment ^ 1000000000) < 0 && j * 1000000000 != nanosecondAdjustment) {
            j--;
        }
        long j2 = epochSeconds + j;
        if ((epochSeconds ^ j2) < 0 && (j ^ epochSeconds) >= 0) {
            return epochSeconds > 0 ? Instant.Companion.getMAX$kotlin_stdlib() : Instant.Companion.getMIN$kotlin_stdlib();
        }
        if (j2 < -31557014167219200L) {
            return getMIN$kotlin_stdlib();
        }
        if (j2 > 31556889864403199L) {
            return getMAX$kotlin_stdlib();
        }
        long j3 = nanosecondAdjustment % 1000000000;
        return new Instant(j2, (int) (j3 + ((((j3 ^ 1000000000) & ((-j3) | j3)) >> 63) & 1000000000)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Instant getDISTANT_FUTURE() {
        return fromEpochSeconds(3093527980800L, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Instant getDISTANT_PAST() {
        return fromEpochSeconds(-3217862419201L, 999999999);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Instant getMAX$kotlin_stdlib() {
        return Instant.access$getMAX$cp();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Instant getMIN$kotlin_stdlib() {
        return Instant.access$getMIN$cp();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NotImplementedError */
    @Deprecated(level = DeprecationLevel.ERROR, message = "Use Clock.System.now() instead", replaceWith = @ReplaceWith(expression = "Clock.System.now()", imports = {"kotlin.time.Clock"}))
    public final Instant now() throws NotImplementedError {
        throw new NotImplementedError((String) null, 1, (DefaultConstructorMarker) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Instant parse(CharSequence input) {
        input.getClass();
        return InstantKt.access$parseIso(input).toInstant();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "2.2")
    public final Instant parseOrNull(CharSequence input) {
        input.getClass();
        return InstantKt.access$parseIso(input).toInstantOrNull();
    }

    private Instant$Companion() {
    }

    public final Instant fromEpochSeconds(long epochSeconds, int nanosecondAdjustment) {
        return fromEpochSeconds(epochSeconds, nanosecondAdjustment);
    }
}

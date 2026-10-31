package kotlin.time;

import kotlin.Metadata;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\f\u001a\u00020\rH\u0016J\n\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlin/time/InstantParseResult$Success;", "Lkotlin/time/InstantParseResult;", "epochSeconds", HttpUrl.FRAGMENT_ENCODE_SET, "nanosecondsOfSecond", HttpUrl.FRAGMENT_ENCODE_SET, "<init>", "(JI)V", "getEpochSeconds", "()J", "getNanosecondsOfSecond", "()I", "toInstant", "Lkotlin/time/Instant;", "toInstantOrNull", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class InstantParseResult$Success implements InstantParseResult {
    private final long epochSeconds;
    private final int nanosecondsOfSecond;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InstantParseResult$Success(long j, int i) {
        this.epochSeconds = j;
        this.nanosecondsOfSecond = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long getEpochSeconds() {
        return this.epochSeconds;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getNanosecondsOfSecond() {
        return this.nanosecondsOfSecond;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.InstantParseResult
    public Instant toInstant() {
        long j = this.epochSeconds;
        Instant$Companion instant$Companion = Instant.Companion;
        if (j >= instant$Companion.getMIN$kotlin_stdlib().getEpochSeconds() && this.epochSeconds <= instant$Companion.getMAX$kotlin_stdlib().getEpochSeconds()) {
            return instant$Companion.fromEpochSeconds(this.epochSeconds, this.nanosecondsOfSecond);
        }
        throw new InstantFormatException("The parsed date is outside the range representable by Instant (Unix epoch second " + this.epochSeconds + ')');
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.time.InstantParseResult
    public Instant toInstantOrNull() {
        long j = this.epochSeconds;
        Instant$Companion instant$Companion = Instant.Companion;
        if (j < instant$Companion.getMIN$kotlin_stdlib().getEpochSeconds() || this.epochSeconds > instant$Companion.getMAX$kotlin_stdlib().getEpochSeconds()) {
            return null;
        }
        return instant$Companion.fromEpochSeconds(this.epochSeconds, this.nanosecondsOfSecond);
    }
}

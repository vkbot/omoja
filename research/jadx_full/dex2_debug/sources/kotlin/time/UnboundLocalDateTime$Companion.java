package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.HttpUrl;
import org.apache.commons.net.nntp.NNTPReply;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lkotlin/time/UnboundLocalDateTime$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "<init>", "()V", "fromInstant", "Lkotlin/time/UnboundLocalDateTime;", "instant", "Lkotlin/time/Instant;", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class UnboundLocalDateTime$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ UnboundLocalDateTime$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final UnboundLocalDateTime fromInstant(Instant instant) {
        long j;
        instant.getClass();
        long epochSeconds = instant.getEpochSeconds();
        long j2 = epochSeconds / 86400;
        if ((epochSeconds ^ 86400) < 0 && j2 * 86400 != epochSeconds) {
            j2--;
        }
        long j3 = epochSeconds % 86400;
        int i = (int) (j3 + (86400 & (((j3 ^ 86400) & ((-j3) | j3)) >> 63)));
        long j4 = (j2 + ((long) 719528)) - ((long) 60);
        if (j4 < 0) {
            long j5 = 146097;
            long j6 = ((j4 + 1) / j5) - 1;
            j = ((long) NNTPReply.SERVICE_DISCONTINUED) * j6;
            j4 += (-j6) * j5;
        } else {
            j = 0;
        }
        long j7 = NNTPReply.SERVICE_DISCONTINUED;
        long j8 = ((j7 * j4) + ((long) 591)) / ((long) 146097);
        long j10 = 365;
        long j11 = 4;
        long j12 = 100;
        long j13 = j4 - ((j8 / j7) + (((j8 / j11) + (j10 * j8)) - (j8 / j12)));
        if (j13 < 0) {
            j8--;
            j13 = j4 - ((j8 / j7) + (((j8 / j11) + (j10 * j8)) - (j8 / j12)));
        }
        int i2 = (int) j13;
        int i3 = ((i2 * 5) + 2) / 153;
        int i4 = i / 3600;
        int i5 = i - (i4 * 3600);
        int i6 = i5 / 60;
        return new UnboundLocalDateTime((int) (j8 + j + ((long) (i3 / 10))), ((i3 + 2) % 12) + 1, (i2 - (((i3 * 306) + 5) / 10)) + 1, i4, i6, i5 - (i6 * 60), instant.getNanosecondsOfSecond());
    }

    private UnboundLocalDateTime$Companion() {
    }
}

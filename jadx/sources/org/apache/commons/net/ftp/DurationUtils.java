package org.apache.commons.net.ftp;

import java.time.Duration;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
final class DurationUtils {
    public static boolean isPositive(Duration duration) {
        return (duration == null || duration.isNegative() || duration.isZero()) ? false : true;
    }

    public static int toMillisInt(Duration duration) {
        long millis = duration.toMillis();
        return (int) (millis > 0 ? Math.min(millis, 2147483647L) : Math.max(millis, -2147483648L));
    }

    public static Duration zeroIfNull(Duration duration) {
        return duration == null ? Duration.ZERO : duration;
    }
}

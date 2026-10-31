package org.apache.commons.net.ftp;

import java.time.Duration;
import kotlin.io.path.f;
import org.apache.commons.io.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
final class DurationUtils {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isPositive(Duration duration) {
        return (duration == null || d.B(duration) || d.x(duration)) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int toMillisInt(Duration duration) {
        long jC = f.c(duration);
        return (int) (jC > 0 ? Math.min(jC, 2147483647L) : Math.max(jC, -2147483648L));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Duration zeroIfNull(Duration duration) {
        return duration == null ? org.apache.commons.io.filefilter.f.h() : duration;
    }
}

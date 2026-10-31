package org.apache.commons.io;

import java.time.Duration;
import java.time.Instant;
import kotlin.time.DurationKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class ThreadUtils {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public ThreadUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int getNanosOfMilli(Duration duration) {
        return org.apache.commons.net.util.a.b(duration) % DurationKt.NANOS_IN_MILLIS;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void sleep(Duration duration) throws InterruptedException {
        try {
            long jNanoTime = System.nanoTime() + d.d(duration);
            Duration duration2 = duration;
            while (true) {
                Thread.sleep(kotlin.io.path.f.c(duration2), getNanosOfMilli(duration2));
                long jNanoTime2 = System.nanoTime();
                Duration durationN = d.n(jNanoTime - jNanoTime2);
                if (jNanoTime2 - jNanoTime >= 0) {
                    return;
                } else {
                    duration2 = durationN;
                }
            }
        } catch (ArithmeticException unused) {
            Instant instantP = d.p(c5.h.B(), duration);
            do {
                Thread.sleep(kotlin.io.path.f.c(duration), getNanosOfMilli(duration));
                duration = d.o(c5.h.B(), instantP);
            } while (!d.B(duration));
        }
    }
}

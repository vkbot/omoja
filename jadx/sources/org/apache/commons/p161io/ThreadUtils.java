package org.apache.commons.p161io;

import java.time.Duration;
import java.time.Instant;
import java.time.temporal.TemporalAmount;
import kotlin.time.DurationKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class ThreadUtils {
    @Deprecated
    public ThreadUtils() {
    }

    private static int getNanosOfMilli(Duration duration) {
        return duration.getNano() % DurationKt.NANOS_IN_MILLIS;
    }

    public static void sleep(Duration duration) throws InterruptedException {
        try {
            long jNanoTime = System.nanoTime() + duration.toNanos();
            Duration duration2 = duration;
            while (true) {
                Thread.sleep(duration2.toMillis(), getNanosOfMilli(duration2));
                long jNanoTime2 = System.nanoTime();
                Duration durationOfNanos = Duration.ofNanos(jNanoTime - jNanoTime2);
                if (jNanoTime2 - jNanoTime >= 0) {
                    return;
                } else {
                    duration2 = durationOfNanos;
                }
            }
        } catch (ArithmeticException unused) {
            Instant instantPlus = Instant.now().plus((TemporalAmount) duration);
            do {
                Thread.sleep(duration.toMillis(), getNanosOfMilli(duration));
                duration = Duration.between(Instant.now(), instantPlus);
            } while (!duration.isNegative());
        }
    }
}

package org.apache.commons.io.input;

import java.io.InterruptedIOException;
import java.time.Duration;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class ThrottledInputStream extends CountingInputStream {
    private final double maxBytesPerSecond;
    private final long startTime;
    private Duration totalSleepDuration;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ThrottledInputStream(ThrottledInputStream$Builder throttledInputStream$Builder) {
        super(throttledInputStream$Builder);
        this.startTime = System.currentTimeMillis();
        this.totalSleepDuration = org.apache.commons.io.filefilter.f.h();
        if (ThrottledInputStream$Builder.access$100(throttledInputStream$Builder) > 0.0d) {
            this.maxBytesPerSecond = ThrottledInputStream$Builder.access$100(throttledInputStream$Builder);
            return;
        }
        throw new IllegalArgumentException("Bandwidth " + ThrottledInputStream$Builder.access$100(throttledInputStream$Builder) + " is invalid.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ThrottledInputStream$Builder builder() {
        return new ThrottledInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private long getBytesPerSecond() {
        long jCurrentTimeMillis = (System.currentTimeMillis() - this.startTime) / 1000;
        return jCurrentTimeMillis == 0 ? getByteCount() : getByteCount() / jCurrentTimeMillis;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private long getSleepMillis() {
        return toSleepMillis(getByteCount(), System.currentTimeMillis() - this.startTime, this.maxBytesPerSecond);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void throttle() throws InterruptedIOException {
        long sleepMillis = getSleepMillis();
        if (sleepMillis > 0) {
            Duration duration = this.totalSleepDuration;
            org.apache.commons.io.filefilter.f.o();
            this.totalSleepDuration = org.apache.commons.io.filefilter.f.i(sleepMillis, duration);
            try {
                TimeUnit.MILLISECONDS.sleep(sleepMillis);
            } catch (InterruptedException unused) {
                throw new InterruptedIOException("Thread aborted");
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long toSleepMillis(long j, long j2, double d) {
        if (j <= 0 || d <= 0.0d || j2 == 0) {
            return 0L;
        }
        long j3 = (long) (((j / d) * 1000.0d) - j2);
        if (j3 <= 0) {
            return 0L;
        }
        return j3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream
    public void beforeRead(int i) throws InterruptedIOException {
        throttle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getMaxBytesPerSecond() {
        return this.maxBytesPerSecond;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Duration getTotalSleepDuration() {
        return this.totalSleepDuration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "ThrottledInputStream[bytesRead=" + getByteCount() + ", maxBytesPerSec=" + this.maxBytesPerSecond + ", bytesPerSec=" + getBytesPerSecond() + ", totalSleepDuration=" + this.totalSleepDuration + ']';
    }

    public /* synthetic */ ThrottledInputStream(ThrottledInputStream$Builder throttledInputStream$Builder, ThrottledInputStream$1 throttledInputStream$1) {
        this(throttledInputStream$Builder);
    }
}

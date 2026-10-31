package org.apache.commons.p161io.input;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.InterruptedIOException;
import java.time.Duration;
import java.time.temporal.ChronoUnit;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.filefilter.AbstractC2810f;
import org.apache.commons.p161io.function.IOIntConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class ThrottledInputStream extends CountingInputStream {
    private final double maxBytesPerSecond;
    private final long startTime;
    private Duration totalSleepDuration;

    private ThrottledInputStream(Builder builder) {
        super(builder);
        this.startTime = System.currentTimeMillis();
        this.totalSleepDuration = Duration.ZERO;
        if (builder.maxBytesPerSecond > 0.0d) {
            this.maxBytesPerSecond = builder.maxBytesPerSecond;
            return;
        }
        throw new IllegalArgumentException("Bandwidth " + builder.maxBytesPerSecond + " is invalid.");
    }

    public static Builder builder() {
        return new Builder();
    }

    private long getBytesPerSecond() {
        long jCurrentTimeMillis = (System.currentTimeMillis() - this.startTime) / 1000;
        return jCurrentTimeMillis == 0 ? getByteCount() : getByteCount() / jCurrentTimeMillis;
    }

    private long getSleepMillis() {
        return toSleepMillis(getByteCount(), System.currentTimeMillis() - this.startTime, this.maxBytesPerSecond);
    }

    private void throttle() throws InterruptedIOException {
        long sleepMillis = getSleepMillis();
        if (sleepMillis > 0) {
            Duration duration = this.totalSleepDuration;
            ChronoUnit unused = ChronoUnit.MILLIS;
            this.totalSleepDuration = duration.plus(sleepMillis, ChronoUnit.MILLIS);
            try {
                TimeUnit.MILLISECONDS.sleep(sleepMillis);
            } catch (InterruptedException unused2) {
                throw new InterruptedIOException("Thread aborted");
            }
        }
    }

    public static long toSleepMillis(long j10, long j11, double d) {
        if (j10 <= 0 || d <= 0.0d || j11 == 0) {
            return 0L;
        }
        long j12 = (long) (((j10 / d) * 1000.0d) - j11);
        if (j12 <= 0) {
            return 0L;
        }
        return j12;
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream
    public void beforeRead(int i10) throws InterruptedIOException {
        throttle();
    }

    public double getMaxBytesPerSecond() {
        return this.maxBytesPerSecond;
    }

    public Duration getTotalSleepDuration() {
        return this.totalSleepDuration;
    }

    public String toString() {
        return "ThrottledInputStream[bytesRead=" + getByteCount() + ", maxBytesPerSec=" + this.maxBytesPerSecond + ", bytesPerSec=" + getBytesPerSecond() + ", totalSleepDuration=" + this.totalSleepDuration + ']';
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends ProxyInputStream.AbstractBuilder<ThrottledInputStream, Builder> {
        private double maxBytesPerSecond = Double.MAX_VALUE;

        /* JADX WARN: Multi-variable type inference failed */
        private Builder setMaxBytesPerSecond(double d) {
            if (d > 0.0d) {
                this.maxBytesPerSecond = d;
                return (Builder) asThis();
            }
            throw new IllegalArgumentException("Bandwidth " + d + " must be > 0.");
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public ThrottledInputStream get() {
            return new ThrottledInputStream(this);
        }

        @Override // org.apache.commons.io.input.ProxyInputStream.AbstractBuilder
        public /* bridge */ /* synthetic */ IOIntConsumer getAfterRead() {
            return super.getAfterRead();
        }

        public double getMaxBytesPerSecond() {
            return this.maxBytesPerSecond;
        }

        @Override // org.apache.commons.io.input.ProxyInputStream.AbstractBuilder
        public /* bridge */ /* synthetic */ AbstractStreamBuilder setAfterRead(IOIntConsumer iOIntConsumer) {
            return super.setAfterRead(iOIntConsumer);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder setMaxBytes(long j10, Duration duration) {
            Objects.requireNonNull(duration, TypedValues.TransitionType.S_DURATION);
            setMaxBytesPerSecond((AbstractC2810f.m4459j(duration).toMillis() / 1000.0d) * j10);
            return (Builder) asThis();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder setMaxBytes(long j10, ChronoUnit chronoUnit) {
            setMaxBytes(j10, chronoUnit.getDuration());
            return (Builder) asThis();
        }

        public void setMaxBytesPerSecond(long j10) {
            setMaxBytesPerSecond(j10);
        }
    }
}

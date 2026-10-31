package org.apache.commons.io.input;

import java.time.Duration;
import java.time.temporal.ChronoUnit;
import java.util.Objects;
import org.apache.commons.io.build.AbstractStreamBuilder;
import org.apache.commons.io.function.IOIntConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ThrottledInputStream$Builder extends ProxyInputStream$AbstractBuilder<ThrottledInputStream, ThrottledInputStream$Builder> {
    private double maxBytesPerSecond = Double.MAX_VALUE;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ double access$100(ThrottledInputStream$Builder throttledInputStream$Builder) {
        return throttledInputStream$Builder.maxBytesPerSecond;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r4v3, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    private ThrottledInputStream$Builder setMaxBytesPerSecond(double d) {
        if (d > 0.0d) {
            this.maxBytesPerSecond = d;
            return (ThrottledInputStream$Builder) asThis();
        }
        throw new IllegalArgumentException("Bandwidth " + d + " must be > 0.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public ThrottledInputStream get() {
        return new ThrottledInputStream(this, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream$AbstractBuilder
    public /* bridge */ /* synthetic */ IOIntConsumer getAfterRead() {
        return super.getAfterRead();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getMaxBytesPerSecond() {
        return this.maxBytesPerSecond;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream$AbstractBuilder
    public /* bridge */ /* synthetic */ AbstractStreamBuilder setAfterRead(IOIntConsumer iOIntConsumer) {
        return super.setAfterRead(iOIntConsumer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r5v2, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    public ThrottledInputStream$Builder setMaxBytes(long j, Duration duration) {
        Objects.requireNonNull(duration, "duration");
        setMaxBytesPerSecond((kotlin.io.path.f.c(org.apache.commons.io.filefilter.f.j(duration)) / 1000.0d) * j);
        return (ThrottledInputStream$Builder) asThis();
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    public ThrottledInputStream$Builder setMaxBytes(long j, ChronoUnit chronoUnit) {
        setMaxBytes(j, org.apache.commons.io.filefilter.f.k(chronoUnit));
        return (ThrottledInputStream$Builder) asThis();
    }

    public void setMaxBytesPerSecond(long j) {
        setMaxBytesPerSecond(j);
    }
}

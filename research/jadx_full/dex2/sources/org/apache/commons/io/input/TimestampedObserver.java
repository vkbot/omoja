package org.apache.commons.io.input;

import java.time.Duration;
import java.time.Instant;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class TimestampedObserver extends ObservableInputStream$Observer {
    private volatile Instant closeInstant;
    private final Instant openInstant = c5.h.B();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ObservableInputStream$Observer
    public void closed() {
        this.closeInstant = c5.h.B();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Instant getCloseInstant() {
        return this.closeInstant;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Instant getOpenInstant() {
        return this.openInstant;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Duration getOpenToCloseDuration() {
        return org.apache.commons.io.filefilter.f.l(this.openInstant, this.closeInstant);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Duration getOpenToNowDuration() {
        return c5.h.j(this.openInstant, c5.h.B());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isClosed() {
        return this.closeInstant != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "TimestampedObserver [openInstant=" + this.openInstant + ", closeInstant=" + this.closeInstant + "]";
    }
}

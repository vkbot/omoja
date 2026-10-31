package org.apache.commons.io.input;

import java.time.Duration;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import org.apache.commons.io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class QueueInputStream$Builder extends AbstractStreamBuilder<QueueInputStream, QueueInputStream$Builder> {
    private BlockingQueue<Integer> blockingQueue = new LinkedBlockingQueue();
    private Duration timeout = org.apache.commons.io.filefilter.f.h();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ BlockingQueue access$100(QueueInputStream$Builder queueInputStream$Builder) {
        return queueInputStream$Builder.blockingQueue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Duration access$200(QueueInputStream$Builder queueInputStream$Builder) {
        return queueInputStream$Builder.timeout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public QueueInputStream get() {
        return new QueueInputStream(this, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public QueueInputStream$Builder setBlockingQueue(BlockingQueue<Integer> blockingQueue) {
        if (blockingQueue == null) {
            blockingQueue = new LinkedBlockingQueue<>();
        }
        this.blockingQueue = blockingQueue;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public QueueInputStream$Builder setTimeout(Duration duration) {
        if (duration != null && org.apache.commons.io.d.d(duration) < 0) {
            j1.i.k("timeout must not be negative");
            return null;
        }
        if (duration == null) {
            duration = org.apache.commons.io.filefilter.f.h();
        }
        this.timeout = duration;
        return this;
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }
}

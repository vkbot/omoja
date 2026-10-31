package org.apache.commons.p161io.input;

import java.io.InputStream;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.filefilter.AbstractC2810f;
import org.apache.commons.p161io.output.QueueOutputStream;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class QueueInputStream extends InputStream {
    private final BlockingQueue<Integer> blockingQueue;
    private final long timeoutNanos;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<QueueInputStream, Builder> {
        private BlockingQueue<Integer> blockingQueue = new LinkedBlockingQueue();
        private Duration timeout = Duration.ZERO;

        @Override // org.apache.commons.p161io.function.IOSupplier
        public QueueInputStream get() {
            return new QueueInputStream(this);
        }

        public Builder setBlockingQueue(BlockingQueue<Integer> blockingQueue) {
            if (blockingQueue == null) {
                blockingQueue = new LinkedBlockingQueue<>();
            }
            this.blockingQueue = blockingQueue;
            return this;
        }

        public Builder setTimeout(Duration duration) {
            if (duration != null && duration.toNanos() < 0) {
                C1929i.m3029k("timeout must not be negative");
                return null;
            }
            if (duration == null) {
                duration = Duration.ZERO;
            }
            this.timeout = duration;
            return this;
        }
    }

    private QueueInputStream(Builder builder) {
        BlockingQueue<Integer> blockingQueue = builder.blockingQueue;
        Objects.requireNonNull(blockingQueue, "blockingQueue");
        this.blockingQueue = blockingQueue;
        Duration duration = builder.timeout;
        Objects.requireNonNull(duration, "timeout");
        this.timeoutNanos = AbstractC2810f.m4459j(duration).toNanos();
    }

    public static Builder builder() {
        return new Builder();
    }

    public BlockingQueue<Integer> getBlockingQueue() {
        return this.blockingQueue;
    }

    public Duration getTimeout() {
        return Duration.ofNanos(this.timeoutNanos);
    }

    public QueueOutputStream newQueueOutputStream() {
        return new QueueOutputStream(this.blockingQueue);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        int i12 = 0;
        if (i11 == 0) {
            return 0;
        }
        ArrayList arrayList = new ArrayList(Math.min(i11, this.blockingQueue.size()));
        this.blockingQueue.drainTo(arrayList, i11);
        if (arrayList.isEmpty()) {
            int i13 = read();
            if (i13 == -1) {
                return -1;
            }
            arrayList.add(Integer.valueOf(i13));
            this.blockingQueue.drainTo(arrayList, i11 - 1);
        }
        int size = arrayList.size();
        int i14 = 0;
        while (i14 < size) {
            Object obj = arrayList.get(i14);
            i14++;
            bArr[i10 + i12] = (byte) (((Integer) obj).intValue() & 255);
            i12++;
        }
        return i12;
    }

    public QueueInputStream() {
        this(new LinkedBlockingQueue());
    }

    @Deprecated
    public QueueInputStream(BlockingQueue<Integer> blockingQueue) {
        this(builder().setBlockingQueue(blockingQueue));
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            Integer numPoll = this.blockingQueue.poll(this.timeoutNanos, TimeUnit.NANOSECONDS);
            if (numPoll == null) {
                return -1;
            }
            return numPoll.intValue() & 255;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new IllegalStateException(e);
        }
    }
}

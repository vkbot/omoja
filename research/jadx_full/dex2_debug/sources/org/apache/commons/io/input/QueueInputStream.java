package org.apache.commons.io.input;

import java.io.InputStream;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.output.QueueOutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class QueueInputStream extends InputStream {
    private final BlockingQueue<Integer> blockingQueue;
    private final long timeoutNanos;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private QueueInputStream(QueueInputStream$Builder queueInputStream$Builder) {
        BlockingQueue<Integer> blockingQueueAccess$100 = QueueInputStream$Builder.access$100(queueInputStream$Builder);
        Objects.requireNonNull(blockingQueueAccess$100, "blockingQueue");
        this.blockingQueue = blockingQueueAccess$100;
        Duration durationAccess$200 = QueueInputStream$Builder.access$200(queueInputStream$Builder);
        Objects.requireNonNull(durationAccess$200, "timeout");
        this.timeoutNanos = org.apache.commons.io.d.d(org.apache.commons.io.filefilter.f.j(durationAccess$200));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static QueueInputStream$Builder builder() {
        return new QueueInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BlockingQueue<Integer> getBlockingQueue() {
        return this.blockingQueue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Duration getTimeout() {
        return org.apache.commons.io.d.n(this.timeoutNanos);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public QueueOutputStream newQueueOutputStream() {
        return new QueueOutputStream(this.blockingQueue);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        IOUtils.checkFromIndexSize(bArr, i, i2);
        int i3 = 0;
        if (i2 == 0) {
            return 0;
        }
        ArrayList arrayList = new ArrayList(Math.min(i2, this.blockingQueue.size()));
        this.blockingQueue.drainTo(arrayList, i2);
        if (arrayList.isEmpty()) {
            int i4 = read();
            if (i4 == -1) {
                return -1;
            }
            arrayList.add(Integer.valueOf(i4));
            this.blockingQueue.drainTo(arrayList, i2 - 1);
        }
        int size = arrayList.size();
        int i5 = 0;
        while (i5 < size) {
            Object obj = arrayList.get(i5);
            i5++;
            bArr[i + i3] = (byte) (((Integer) obj).intValue() & 255);
            i3++;
        }
        return i3;
    }

    public QueueInputStream() {
        this(new LinkedBlockingQueue());
    }

    @Deprecated
    public QueueInputStream(BlockingQueue<Integer> blockingQueue) {
        this(builder().setBlockingQueue(blockingQueue));
    }

    public /* synthetic */ QueueInputStream(QueueInputStream$Builder queueInputStream$Builder, QueueInputStream$1 queueInputStream$1) {
        this(queueInputStream$Builder);
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

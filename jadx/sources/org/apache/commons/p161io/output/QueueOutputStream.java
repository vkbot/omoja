package org.apache.commons.p161io.output;

import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import org.apache.commons.p161io.input.QueueInputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class QueueOutputStream extends OutputStream {
    private final BlockingQueue<Integer> blockingQueue;

    public QueueOutputStream(BlockingQueue<Integer> blockingQueue) {
        Objects.requireNonNull(blockingQueue, "blockingQueue");
        this.blockingQueue = blockingQueue;
    }

    public QueueInputStream newQueueInputStream() {
        return QueueInputStream.builder().setBlockingQueue(this.blockingQueue).get();
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws InterruptedIOException {
        try {
            this.blockingQueue.put(Integer.valueOf(i10 & 255));
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            InterruptedIOException interruptedIOException = new InterruptedIOException();
            interruptedIOException.initCause(e);
            throw interruptedIOException;
        }
    }

    public QueueOutputStream() {
        this(new LinkedBlockingQueue());
    }
}

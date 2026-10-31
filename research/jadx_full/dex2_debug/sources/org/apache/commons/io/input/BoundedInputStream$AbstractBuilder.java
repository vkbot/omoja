package org.apache.commons.io.input;

import org.apache.commons.io.function.IOBiConsumer;
import org.apache.commons.io.input.BoundedInputStream$AbstractBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class BoundedInputStream$AbstractBuilder<T extends BoundedInputStream$AbstractBuilder<T>> extends ProxyInputStream$AbstractBuilder<BoundedInputStream, T> {
    private long count;
    private long maxCount = -1;
    private IOBiConsumer<Long, Long> onMaxCount = IOBiConsumer.noop();
    private boolean propagateClose = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getCount() {
        return this.count;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getMaxCount() {
        return this.maxCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public IOBiConsumer<Long, Long> getOnMaxCount() {
        return this.onMaxCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isPropagateClose() {
        return this.propagateClose;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T setCount(long j) {
        this.count = Math.max(0L, j);
        return (T) asThis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T setMaxCount(long j) {
        this.maxCount = Math.max(-1L, j);
        return (T) asThis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T setOnMaxCount(IOBiConsumer<Long, Long> iOBiConsumer) {
        if (iOBiConsumer == null) {
            iOBiConsumer = IOBiConsumer.noop();
        }
        this.onMaxCount = iOBiConsumer;
        return (T) asThis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T setPropagateClose(boolean z) {
        this.propagateClose = z;
        return (T) asThis();
    }
}

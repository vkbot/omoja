package org.apache.commons.io.input;

import org.apache.commons.io.build.AbstractStreamBuilder;
import org.apache.commons.io.function.IOBiConsumer;
import org.apache.commons.io.function.IOIntConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class BoundedInputStream$Builder extends BoundedInputStream$AbstractBuilder<BoundedInputStream$Builder> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public BoundedInputStream get() {
        return new BoundedInputStream(this, (BoundedInputStream$1) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream$AbstractBuilder
    public /* bridge */ /* synthetic */ IOIntConsumer getAfterRead() {
        return super.getAfterRead();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream$AbstractBuilder
    public /* bridge */ /* synthetic */ AbstractStreamBuilder setAfterRead(IOIntConsumer iOIntConsumer) {
        return super.setAfterRead(iOIntConsumer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.BoundedInputStream$AbstractBuilder
    public /* bridge */ /* synthetic */ BoundedInputStream$AbstractBuilder setCount(long j) {
        return super.setCount(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.BoundedInputStream$AbstractBuilder
    public /* bridge */ /* synthetic */ BoundedInputStream$AbstractBuilder setMaxCount(long j) {
        return super.setMaxCount(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.BoundedInputStream$AbstractBuilder
    public /* bridge */ /* synthetic */ BoundedInputStream$AbstractBuilder setOnMaxCount(IOBiConsumer iOBiConsumer) {
        return super.setOnMaxCount(iOBiConsumer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.BoundedInputStream$AbstractBuilder
    public /* bridge */ /* synthetic */ BoundedInputStream$AbstractBuilder setPropagateClose(boolean z) {
        return super.setPropagateClose(z);
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }
}

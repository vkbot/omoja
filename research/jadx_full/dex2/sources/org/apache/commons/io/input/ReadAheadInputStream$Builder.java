package org.apache.commons.io.input;

import java.util.concurrent.ExecutorService;
import org.apache.commons.io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ReadAheadInputStream$Builder extends AbstractStreamBuilder<ReadAheadInputStream, ReadAheadInputStream$Builder> {
    private ExecutorService executorService;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ExecutorService access$100(ReadAheadInputStream$Builder readAheadInputStream$Builder) {
        return readAheadInputStream$Builder.executorService;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public ReadAheadInputStream get() {
        return new ReadAheadInputStream(this, (ReadAheadInputStream$1) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ReadAheadInputStream$Builder setExecutorService(ExecutorService executorService) {
        this.executorService = executorService;
        return this;
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }
}

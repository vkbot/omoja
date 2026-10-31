package org.apache.commons.io.input;

import java.io.RandomAccessFile;
import org.apache.commons.io.build.AbstractOriginSupplier;
import org.apache.commons.io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class RandomAccessFileInputStream$Builder extends AbstractStreamBuilder<RandomAccessFileInputStream, RandomAccessFileInputStream$Builder> {
    private boolean propagateClose;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$100(RandomAccessFileInputStream$Builder randomAccessFileInputStream$Builder) {
        return randomAccessFileInputStream$Builder.propagateClose;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public RandomAccessFileInputStream get() {
        return new RandomAccessFileInputStream(this, (RandomAccessFileInputStream$1) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RandomAccessFileInputStream$Builder setCloseOnClose(boolean z) {
        this.propagateClose = z;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOriginSupplier
    public RandomAccessFileInputStream$Builder setRandomAccessFile(RandomAccessFile randomAccessFile) {
        return (RandomAccessFileInputStream$Builder) super.setRandomAccessFile(randomAccessFile);
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }

    @Override // org.apache.commons.io.build.AbstractOriginSupplier
    public /* bridge */ /* synthetic */ AbstractOriginSupplier setRandomAccessFile(RandomAccessFile randomAccessFile) {
        return setRandomAccessFile(randomAccessFile);
    }
}

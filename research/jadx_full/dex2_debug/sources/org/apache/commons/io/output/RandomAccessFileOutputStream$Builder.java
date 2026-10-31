package org.apache.commons.io.output;

import org.apache.commons.io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class RandomAccessFileOutputStream$Builder extends AbstractStreamBuilder<RandomAccessFileOutputStream, RandomAccessFileOutputStream$Builder> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private RandomAccessFileOutputStream$Builder() {
        setOpenOptions(org.apache.commons.io.d.j());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public RandomAccessFileOutputStream get() {
        return new RandomAccessFileOutputStream(this, null);
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }

    public /* synthetic */ RandomAccessFileOutputStream$Builder(RandomAccessFileOutputStream$1 randomAccessFileOutputStream$1) {
        this();
    }
}

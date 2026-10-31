package org.apache.commons.io.input;

import org.apache.commons.io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ReversedLinesFileReader$Builder extends AbstractStreamBuilder<ReversedLinesFileReader, ReversedLinesFileReader$Builder> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ReversedLinesFileReader$Builder() {
        setBufferSizeDefault(ReversedLinesFileReader.access$000());
        setBufferSize(ReversedLinesFileReader.access$000());
        setOpenOptions(org.apache.commons.io.filefilter.f.g());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public ReversedLinesFileReader get() {
        return new ReversedLinesFileReader(this, (ReversedLinesFileReader$1) null);
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }
}

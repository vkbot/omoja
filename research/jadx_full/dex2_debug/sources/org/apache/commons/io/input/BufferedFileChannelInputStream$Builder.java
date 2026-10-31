package org.apache.commons.io.input;

import java.nio.channels.FileChannel;
import org.apache.commons.io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class BufferedFileChannelInputStream$Builder extends AbstractStreamBuilder<BufferedFileChannelInputStream, BufferedFileChannelInputStream$Builder> {
    private FileChannel fileChannel;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ FileChannel access$100(BufferedFileChannelInputStream$Builder bufferedFileChannelInputStream$Builder) {
        return bufferedFileChannelInputStream$Builder.fileChannel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public BufferedFileChannelInputStream get() {
        return new BufferedFileChannelInputStream(this, (BufferedFileChannelInputStream$1) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BufferedFileChannelInputStream$Builder setFileChannel(FileChannel fileChannel) {
        this.fileChannel = fileChannel;
        return this;
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }
}

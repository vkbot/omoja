package org.apache.commons.io.output;

import java.io.File;
import java.nio.file.Path;
import org.apache.commons.io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class DeferredFileOutputStream$Builder extends AbstractStreamBuilder<DeferredFileOutputStream, DeferredFileOutputStream$Builder> {
    private Path directory;
    private Path outputFile;
    private String prefix;
    private String suffix;
    private int threshold;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DeferredFileOutputStream$Builder() {
        setBufferSizeDefault(1024);
        setBufferSize(1024);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$300(DeferredFileOutputStream$Builder deferredFileOutputStream$Builder) {
        return deferredFileOutputStream$Builder.threshold;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Path access$400(DeferredFileOutputStream$Builder deferredFileOutputStream$Builder) {
        return deferredFileOutputStream$Builder.outputFile;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String access$500(DeferredFileOutputStream$Builder deferredFileOutputStream$Builder) {
        return deferredFileOutputStream$Builder.prefix;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String access$600(DeferredFileOutputStream$Builder deferredFileOutputStream$Builder) {
        return deferredFileOutputStream$Builder.suffix;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Path access$700(DeferredFileOutputStream$Builder deferredFileOutputStream$Builder) {
        return deferredFileOutputStream$Builder.directory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public DeferredFileOutputStream get() {
        return new DeferredFileOutputStream(this, (DeferredFileOutputStream$1) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DeferredFileOutputStream$Builder setDirectory(File file) {
        this.directory = DeferredFileOutputStream.access$100(file, null);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DeferredFileOutputStream$Builder setOutputFile(File file) {
        this.outputFile = DeferredFileOutputStream.access$100(file, null);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DeferredFileOutputStream$Builder setPrefix(String str) {
        this.prefix = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DeferredFileOutputStream$Builder setSuffix(String str) {
        this.suffix = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DeferredFileOutputStream$Builder setThreshold(int i) {
        this.threshold = i;
        return this;
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }

    public DeferredFileOutputStream$Builder setDirectory(Path path) {
        this.directory = DeferredFileOutputStream.access$200(path, null);
        return this;
    }

    public DeferredFileOutputStream$Builder setOutputFile(Path path) {
        this.outputFile = DeferredFileOutputStream.access$200(path, null);
        return this;
    }
}

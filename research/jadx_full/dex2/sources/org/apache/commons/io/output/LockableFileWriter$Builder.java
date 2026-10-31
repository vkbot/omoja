package org.apache.commons.io.output;

import java.io.File;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.build.AbstractOrigin;
import org.apache.commons.io.build.AbstractOriginSupplier;
import org.apache.commons.io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class LockableFileWriter$Builder extends AbstractStreamBuilder<LockableFileWriter, LockableFileWriter$Builder> {
    private boolean append;
    private AbstractOrigin<?, ?> lockDirectory = AbstractOriginSupplier.newFileOrigin(FileUtils.getTempDirectoryPath());

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LockableFileWriter$Builder() {
        setBufferSizeDefault(1024);
        setBufferSize(1024);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ File access$100(LockableFileWriter$Builder lockableFileWriter$Builder) {
        return lockableFileWriter$Builder.checkOriginFile();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$200(LockableFileWriter$Builder lockableFileWriter$Builder) {
        return lockableFileWriter$Builder.append;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ AbstractOrigin access$300(LockableFileWriter$Builder lockableFileWriter$Builder) {
        return lockableFileWriter$Builder.lockDirectory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private File checkOriginFile() {
        return checkOrigin().getFile();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public LockableFileWriter get() {
        return new LockableFileWriter(this, (LockableFileWriter$1) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LockableFileWriter$Builder setAppend(boolean z) {
        this.append = z;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LockableFileWriter$Builder setLockDirectory(File file) {
        if (file == null) {
            file = FileUtils.getTempDirectory();
        }
        this.lockDirectory = AbstractOriginSupplier.newFileOrigin(file);
        return this;
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }

    public LockableFileWriter$Builder setLockDirectory(String str) {
        if (str == null) {
            str = FileUtils.getTempDirectoryPath();
        }
        this.lockDirectory = AbstractOriginSupplier.newFileOrigin(str);
        return this;
    }
}

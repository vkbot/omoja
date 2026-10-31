package org.apache.commons.io.monitor;

import java.io.File;
import java.io.FileFilter;
import org.apache.commons.io.IOCase;
import org.apache.commons.io.build.AbstractOriginSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class FileAlterationObserver$Builder extends AbstractOriginSupplier<FileAlterationObserver, FileAlterationObserver$Builder> {
    private FileFilter fileFilter;
    private IOCase ioCase;
    private FileEntry rootEntry;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ FileAlterationObserver$Builder(FileAlterationObserver$1 fileAlterationObserver$1) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ FileEntry access$200(FileAlterationObserver$Builder fileAlterationObserver$Builder) {
        return fileAlterationObserver$Builder.rootEntry;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ File access$300(FileAlterationObserver$Builder fileAlterationObserver$Builder) {
        return fileAlterationObserver$Builder.checkOriginFile();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ FileFilter access$400(FileAlterationObserver$Builder fileAlterationObserver$Builder) {
        return fileAlterationObserver$Builder.fileFilter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ IOCase access$500(FileAlterationObserver$Builder fileAlterationObserver$Builder) {
        return fileAlterationObserver$Builder.ioCase;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private File checkOriginFile() {
        return checkOrigin().getFile();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public FileAlterationObserver get() {
        return new FileAlterationObserver(this, (FileAlterationObserver$1) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    public FileAlterationObserver$Builder setFileFilter(FileFilter fileFilter) {
        this.fileFilter = fileFilter;
        return (FileAlterationObserver$Builder) asThis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    public FileAlterationObserver$Builder setIOCase(IOCase iOCase) {
        this.ioCase = iOCase;
        return (FileAlterationObserver$Builder) asThis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    public FileAlterationObserver$Builder setRootEntry(FileEntry fileEntry) {
        this.rootEntry = fileEntry;
        return (FileAlterationObserver$Builder) asThis();
    }

    private FileAlterationObserver$Builder() {
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }
}

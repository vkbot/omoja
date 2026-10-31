package org.apache.commons.p161io;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.util.Collection;
import java.util.Objects;
import org.apache.commons.p161io.filefilter.FileFilterUtils;
import org.apache.commons.p161io.filefilter.IOFileFilter;
import org.apache.commons.p161io.filefilter.TrueFileFilter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class DirectoryWalker<T> {
    private final int depthLimit;
    private final FileFilter filter;

    public DirectoryWalker(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2, int i10) {
        if (iOFileFilter == null && iOFileFilter2 == null) {
            this.filter = null;
        } else {
            this.filter = FileFilterUtils.makeDirectoryOnly(iOFileFilter == null ? TrueFileFilter.TRUE : iOFileFilter).mo4430or(FileFilterUtils.makeFileOnly(iOFileFilter2 == null ? TrueFileFilter.TRUE : iOFileFilter2));
        }
        this.depthLimit = i10;
    }

    private void walk(File file, int i10, Collection<T> collection) throws CancelException {
        checkIfCancelled(file, i10, collection);
        if (handleDirectory(file, i10, collection)) {
            handleDirectoryStart(file, i10, collection);
            int i11 = i10 + 1;
            int i12 = this.depthLimit;
            if (i12 < 0 || i11 <= i12) {
                checkIfCancelled(file, i10, collection);
                File[] fileArrFilterDirectoryContents = filterDirectoryContents(file, i10, file.listFiles(this.filter));
                if (fileArrFilterDirectoryContents == null) {
                    handleRestricted(file, i11, collection);
                } else {
                    for (File file2 : fileArrFilterDirectoryContents) {
                        if (file2.isDirectory()) {
                            walk(file2, i11, collection);
                        } else {
                            checkIfCancelled(file2, i11, collection);
                            handleFile(file2, i11, collection);
                            checkIfCancelled(file2, i11, collection);
                        }
                    }
                }
            }
            handleDirectoryEnd(file, i10, collection);
        }
        checkIfCancelled(file, i10, collection);
    }

    public final void checkIfCancelled(File file, int i10, Collection<T> collection) throws CancelException {
        if (handleIsCancelled(file, i10, collection)) {
            throw new CancelException(file, i10);
        }
    }

    public boolean handleDirectory(File file, int i10, Collection<T> collection) {
        return true;
    }

    public boolean handleIsCancelled(File file, int i10, Collection<T> collection) {
        return false;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class CancelException extends IOException {
        private static final long serialVersionUID = 1347339620135041008L;
        private final int depth;
        private final File file;

        public CancelException(String str, File file, int i10) {
            super(str);
            this.file = file;
            this.depth = i10;
        }

        public int getDepth() {
            return this.depth;
        }

        public File getFile() {
            return this.file;
        }

        public CancelException(File file, int i10) {
            this("Operation Cancelled", file, i10);
        }
    }

    public DirectoryWalker(FileFilter fileFilter, int i10) {
        this.filter = fileFilter;
        this.depthLimit = i10;
    }

    public DirectoryWalker() {
        this(null, -1);
    }

    public void handleEnd(Collection<T> collection) {
    }

    public final void walk(File file, Collection<T> collection) throws CancelException {
        Objects.requireNonNull(file, "startDirectory");
        try {
            handleStart(file, collection);
            walk(file, 0, collection);
            handleEnd(collection);
        } catch (CancelException e) {
            handleCancelled(file, collection, e);
        }
    }

    public void handleStart(File file, Collection<T> collection) {
    }

    public File[] filterDirectoryContents(File file, int i10, File... fileArr) {
        return fileArr;
    }

    public void handleCancelled(File file, Collection<T> collection, CancelException cancelException) throws CancelException {
        throw cancelException;
    }

    public void handleDirectoryEnd(File file, int i10, Collection<T> collection) {
    }

    public void handleDirectoryStart(File file, int i10, Collection<T> collection) {
    }

    public void handleFile(File file, int i10, Collection<T> collection) {
    }

    public void handleRestricted(File file, int i10, Collection<T> collection) {
    }
}

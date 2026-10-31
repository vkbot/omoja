package org.apache.commons.io;

import java.io.File;
import java.io.FileFilter;
import java.util.Collection;
import java.util.Objects;
import org.apache.commons.io.filefilter.FileFilterUtils;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.filefilter.TrueFileFilter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Deprecated
public abstract class DirectoryWalker<T> {
    private final int depthLimit;
    private final FileFilter filter;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DirectoryWalker(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2, int i) {
        if (iOFileFilter == null && iOFileFilter2 == null) {
            this.filter = null;
        } else {
            this.filter = FileFilterUtils.makeDirectoryOnly(iOFileFilter == null ? TrueFileFilter.TRUE : iOFileFilter).or(FileFilterUtils.makeFileOnly(iOFileFilter2 == null ? TrueFileFilter.TRUE : iOFileFilter2));
        }
        this.depthLimit = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void walk(File file, int i, Collection<T> collection) throws DirectoryWalker$CancelException {
        checkIfCancelled(file, i, collection);
        if (handleDirectory(file, i, collection)) {
            handleDirectoryStart(file, i, collection);
            int i2 = i + 1;
            int i3 = this.depthLimit;
            if (i3 < 0 || i2 <= i3) {
                checkIfCancelled(file, i, collection);
                File[] fileArrFilterDirectoryContents = filterDirectoryContents(file, i, file.listFiles(this.filter));
                if (fileArrFilterDirectoryContents == null) {
                    handleRestricted(file, i2, collection);
                } else {
                    for (File file2 : fileArrFilterDirectoryContents) {
                        if (file2.isDirectory()) {
                            walk(file2, i2, collection);
                        } else {
                            checkIfCancelled(file2, i2, collection);
                            handleFile(file2, i2, collection);
                            checkIfCancelled(file2, i2, collection);
                        }
                    }
                }
            }
            handleDirectoryEnd(file, i, collection);
        }
        checkIfCancelled(file, i, collection);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void checkIfCancelled(File file, int i, Collection<T> collection) throws DirectoryWalker$CancelException {
        if (handleIsCancelled(file, i, collection)) {
            throw new DirectoryWalker$CancelException(file, i);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean handleDirectory(File file, int i, Collection<T> collection) {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean handleIsCancelled(File file, int i, Collection<T> collection) {
        return false;
    }

    public DirectoryWalker(FileFilter fileFilter, int i) {
        this.filter = fileFilter;
        this.depthLimit = i;
    }

    public DirectoryWalker() {
        this(null, -1);
    }

    public void handleEnd(Collection<T> collection) {
    }

    public final void walk(File file, Collection<T> collection) throws DirectoryWalker$CancelException {
        Objects.requireNonNull(file, "startDirectory");
        try {
            handleStart(file, collection);
            walk(file, 0, collection);
            handleEnd(collection);
        } catch (DirectoryWalker$CancelException e) {
            handleCancelled(file, collection, e);
        }
    }

    public void handleStart(File file, Collection<T> collection) {
    }

    public File[] filterDirectoryContents(File file, int i, File... fileArr) {
        return fileArr;
    }

    public void handleCancelled(File file, Collection<T> collection, DirectoryWalker$CancelException directoryWalker$CancelException) throws DirectoryWalker$CancelException {
        throw directoryWalker$CancelException;
    }

    public void handleDirectoryEnd(File file, int i, Collection<T> collection) {
    }

    public void handleDirectoryStart(File file, int i, Collection<T> collection) {
    }

    public void handleFile(File file, int i, Collection<T> collection) {
    }

    public void handleRestricted(File file, int i, Collection<T> collection) {
    }
}

package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class CanExecuteFileFilter extends AbstractFileFilter implements Serializable {
    public static final IOFileFilter CANNOT_EXECUTE;
    public static final IOFileFilter CAN_EXECUTE;
    private static final long serialVersionUID = 3179904805251622989L;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        CanExecuteFileFilter canExecuteFileFilter = new CanExecuteFileFilter();
        CAN_EXECUTE = canExecuteFileFilter;
        CANNOT_EXECUTE = canExecuteFileFilter.negate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.filefilter.IOFileFilter, org.apache.commons.io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        return toFileVisitResult(path != null && kotlin.io.path.a.D(path));
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter, org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return file != null && file.canExecute();
    }
}

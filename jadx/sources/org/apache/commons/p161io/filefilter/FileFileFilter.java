package org.apache.commons.p161io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FileFileFilter extends AbstractFileFilter implements Serializable {

    @Deprecated
    public static final IOFileFilter FILE;
    public static final IOFileFilter INSTANCE;
    private static final long serialVersionUID = 5345244090827540862L;

    static {
        FileFileFilter fileFileFilter = new FileFileFilter();
        INSTANCE = fileFileFilter;
        FILE = fileFileFilter;
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, org.apache.commons.p161io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        boolean z9 = false;
        if (path != null && Files.isRegularFile(path, new LinkOption[0])) {
            z9 = true;
        }
        return toFileVisitResult(z9);
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return isFile(file);
    }
}

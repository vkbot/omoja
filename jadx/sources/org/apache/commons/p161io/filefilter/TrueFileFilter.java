package org.apache.commons.p161io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class TrueFileFilter implements IOFileFilter, Serializable {
    public static final IOFileFilter INSTANCE;
    private static final String TO_STRING = Boolean.TRUE.toString();
    public static final IOFileFilter TRUE;
    private static final long serialVersionUID = 8782512160909720199L;

    static {
        TrueFileFilter trueFileFilter = new TrueFileFilter();
        TRUE = trueFileFilter;
        INSTANCE = trueFileFilter;
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, org.apache.commons.p161io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        return FileVisitResult.CONTINUE;
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter
    public IOFileFilter negate() {
        return FalseFileFilter.INSTANCE;
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter
    /* JADX INFO: renamed from: or */
    public IOFileFilter mo4430or(IOFileFilter iOFileFilter) {
        return INSTANCE;
    }

    public String toString() {
        return TO_STRING;
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return true;
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return true;
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter
    public IOFileFilter and(IOFileFilter iOFileFilter) {
        return iOFileFilter;
    }
}

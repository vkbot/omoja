package org.apache.commons.p161io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class NotFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = 6131563330944994230L;
    private final IOFileFilter filter;

    public NotFileFilter(IOFileFilter iOFileFilter) {
        Objects.requireNonNull(iOFileFilter, "filter");
        this.filter = iOFileFilter;
    }

    private FileVisitResult not(FileVisitResult fileVisitResult) {
        return fileVisitResult == FileVisitResult.CONTINUE ? FileVisitResult.TERMINATE : FileVisitResult.CONTINUE;
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, org.apache.commons.p161io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        return not(this.filter.accept(path, basicFileAttributes));
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter
    public String toString() {
        return "NOT (" + this.filter.toString() + ")";
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return !this.filter.accept(file, str);
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return !this.filter.accept(file);
    }
}

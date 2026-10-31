package org.apache.commons.p161io.filefilter;

import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.PathMatcher;
import java.nio.file.attribute.BasicFileAttributes;
import org.apache.commons.p161io.file.PathFilter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public interface IOFileFilter extends FileFilter, FilenameFilter, PathFilter, PathMatcher {
    public static final String[] EMPTY_STRING_ARRAY = new String[0];

    default FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        return AbstractFileFilter.toDefaultFileVisitResult(path != null && accept(path.toFile()));
    }

    @Override // java.io.FileFilter
    boolean accept(File file);

    boolean accept(File file, String str);

    default IOFileFilter and(IOFileFilter iOFileFilter) {
        return new AndFileFilter(this, iOFileFilter);
    }

    @Override // java.nio.file.PathMatcher
    default boolean matches(Path path) {
        return accept(path, (BasicFileAttributes) null) != FileVisitResult.TERMINATE;
    }

    default IOFileFilter negate() {
        return new NotFileFilter(this);
    }

    /* JADX INFO: renamed from: or */
    default IOFileFilter mo4430or(IOFileFilter iOFileFilter) {
        return new OrFileFilter(this, iOFileFilter);
    }
}

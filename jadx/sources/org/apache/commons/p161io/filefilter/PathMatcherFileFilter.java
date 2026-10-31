package org.apache.commons.p161io.filefilter;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.PathMatcher;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class PathMatcherFileFilter extends AbstractFileFilter {
    private final PathMatcher pathMatcher;

    public PathMatcherFileFilter(PathMatcher pathMatcher) {
        Objects.requireNonNull(pathMatcher, "pathMatcher");
        this.pathMatcher = AbstractC2810f.m4455f(pathMatcher);
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return file != null && matches(file.toPath());
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, java.nio.file.PathMatcher
    public boolean matches(Path path) {
        return this.pathMatcher.matches(path);
    }
}

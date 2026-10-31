package org.apache.commons.p161io.file;

import java.nio.file.DirectoryStream;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.util.Objects;
import kotlin.internal.jdk8.AbstractC2109a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class DirectoryStreamFilter implements DirectoryStream.Filter<Path> {
    private final PathFilter pathFilter;

    public DirectoryStreamFilter(PathFilter pathFilter) {
        Objects.requireNonNull(pathFilter, "pathFilter");
        this.pathFilter = pathFilter;
    }

    /* JADX INFO: renamed from: accept, reason: avoid collision after fix types in other method */
    public boolean accept2(Path path) {
        return this.pathFilter.accept(path, PathUtils.readBasicFileAttributes(path, PathUtils.EMPTY_LINK_OPTION_ARRAY)) == FileVisitResult.CONTINUE;
    }

    public PathFilter getPathFilter() {
        return this.pathFilter;
    }

    @Override // java.nio.file.DirectoryStream.Filter
    public /* bridge */ /* synthetic */ boolean accept(Path path) {
        return accept2(AbstractC2109a.m3281m(path));
    }
}

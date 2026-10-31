package org.apache.commons.io.file;

import java.nio.file.DirectoryStream$Filter;
import java.nio.file.Path;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class DirectoryStreamFilter implements DirectoryStream$Filter<Path> {
    private final PathFilter pathFilter;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DirectoryStreamFilter(PathFilter pathFilter) {
        Objects.requireNonNull(pathFilter, "pathFilter");
        this.pathFilter = pathFilter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: accept, reason: avoid collision after fix types in other method */
    public boolean accept2(Path path) {
        return this.pathFilter.accept(path, PathUtils.readBasicFileAttributes(path, PathUtils.EMPTY_LINK_OPTION_ARRAY)) == kotlin.io.path.a.h();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PathFilter getPathFilter() {
        return this.pathFilter;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.nio.file.DirectoryStream$Filter
    public /* bridge */ /* synthetic */ boolean accept(Path path) {
        return accept2(kotlin.internal.jdk8.a.m(path));
    }
}

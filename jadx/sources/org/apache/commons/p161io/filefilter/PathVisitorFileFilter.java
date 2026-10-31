package org.apache.commons.p161io.filefilter;

import androidx.transition.C0802a;
import java.io.File;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import kotlin.internal.jdk8.AbstractC2109a;
import org.apache.commons.p161io.file.NoopPathVisitor;
import org.apache.commons.p161io.file.PathUtils;
import org.apache.commons.p161io.file.PathVisitor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class PathVisitorFileFilter extends AbstractFileFilter {
    private final PathVisitor pathVisitor;

    public PathVisitorFileFilter(PathVisitor pathVisitor) {
        this.pathVisitor = pathVisitor == null ? NoopPathVisitor.INSTANCE : pathVisitor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FileVisitResult lambda$accept$0(Path path, BasicFileAttributes basicFileAttributes) {
        return Files.isDirectory(path, new LinkOption[0]) ? this.pathVisitor.postVisitDirectory(path, null) : visitFile2(path, basicFileAttributes);
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        try {
            Path path = file.toPath();
            return visitFile2(path, file.exists() ? PathUtils.readBasicFileAttributes(path) : null) == FileVisitResult.CONTINUE;
        } catch (IOException e) {
            return handle(e) == FileVisitResult.CONTINUE;
        }
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) {
        return visitFile2(AbstractC2109a.m3281m(path), basicFileAttributes);
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter
    /* JADX INFO: renamed from: visitFile, reason: avoid collision after fix types in other method */
    public FileVisitResult visitFile2(Path path, BasicFileAttributes basicFileAttributes) {
        return this.pathVisitor.visitFile(path, basicFileAttributes);
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        try {
            Path pathResolve = file.toPath().resolve(str);
            return accept(pathResolve, PathUtils.readBasicFileAttributes(pathResolve)) == FileVisitResult.CONTINUE;
        } catch (IOException e) {
            return handle(e) == FileVisitResult.CONTINUE;
        }
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, org.apache.commons.p161io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        return get(new C0802a(this, path, basicFileAttributes, 5));
    }
}

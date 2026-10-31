package org.apache.commons.p161io.filefilter;

import java.io.File;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.List;
import java.util.Objects;
import kotlin.internal.jdk8.AbstractC2109a;
import org.apache.commons.p161io.file.AbstractC2796f;
import org.apache.commons.p161io.file.PathVisitor;
import org.apache.commons.p161io.function.IOSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractFileFilter implements IOFileFilter, PathVisitor {
    private final FileVisitResult onAccept;
    private final FileVisitResult onReject;

    public AbstractFileFilter() {
        this(FileVisitResult.CONTINUE, FileVisitResult.TERMINATE);
    }

    public static FileVisitResult toDefaultFileVisitResult(boolean z9) {
        return z9 ? FileVisitResult.CONTINUE : FileVisitResult.TERMINATE;
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        Objects.requireNonNull(file, "file");
        return accept(file.getParentFile(), file.getName());
    }

    public void append(List<?> list, StringBuilder sb) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (i10 > 0) {
                sb.append(",");
            }
            sb.append(list.get(i10));
        }
    }

    public FileVisitResult get(IOSupplier<FileVisitResult> iOSupplier) {
        try {
            return AbstractC2796f.m4403f(iOSupplier.get());
        } catch (IOException e) {
            return handle(e);
        }
    }

    public FileVisitResult handle(Throwable th) {
        return FileVisitResult.TERMINATE;
    }

    public boolean isDirectory(File file) {
        return file != null && file.isDirectory();
    }

    public boolean isFile(File file) {
        return file != null && file.isFile();
    }

    @Override // java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult postVisitDirectory(Path path, IOException iOException) {
        return postVisitDirectory2(AbstractC2109a.m3281m(path), iOException);
    }

    @Override // java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) {
        return preVisitDirectory2(AbstractC2109a.m3281m(path), basicFileAttributes);
    }

    public FileVisitResult toFileVisitResult(boolean z9) {
        return z9 ? this.onAccept : this.onReject;
    }

    public String toString() {
        return getClass().getSimpleName();
    }

    @Override // java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) {
        return visitFile2(AbstractC2109a.m3281m(path), basicFileAttributes);
    }

    @Override // java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult visitFileFailed(Path path, IOException iOException) {
        return visitFileFailed2(AbstractC2109a.m3281m(path), iOException);
    }

    /* JADX INFO: renamed from: postVisitDirectory, reason: avoid collision after fix types in other method */
    public FileVisitResult postVisitDirectory2(Path path, IOException iOException) {
        return FileVisitResult.CONTINUE;
    }

    /* JADX INFO: renamed from: preVisitDirectory, reason: avoid collision after fix types in other method */
    public FileVisitResult preVisitDirectory2(Path path, BasicFileAttributes basicFileAttributes) {
        return accept(path, basicFileAttributes);
    }

    /* JADX INFO: renamed from: visitFile, reason: avoid collision after fix types in other method */
    public FileVisitResult visitFile2(Path path, BasicFileAttributes basicFileAttributes) {
        return accept(path, basicFileAttributes);
    }

    /* JADX INFO: renamed from: visitFileFailed, reason: avoid collision after fix types in other method */
    public FileVisitResult visitFileFailed2(Path path, IOException iOException) {
        return FileVisitResult.CONTINUE;
    }

    public AbstractFileFilter(FileVisitResult fileVisitResult, FileVisitResult fileVisitResult2) {
        this.onAccept = fileVisitResult;
        this.onReject = fileVisitResult2;
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        Objects.requireNonNull(str, "name");
        return accept(new File(file, str));
    }

    public void append(Object[] objArr, StringBuilder sb) {
        for (int i10 = 0; i10 < objArr.length; i10++) {
            if (i10 > 0) {
                sb.append(",");
            }
            sb.append(objArr[i10]);
        }
    }
}

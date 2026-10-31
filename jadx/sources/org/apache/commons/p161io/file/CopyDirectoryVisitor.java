package org.apache.commons.p161io.file;

import java.io.IOException;
import java.nio.file.CopyOption;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import java.util.Objects;
import kotlin.internal.jdk8.AbstractC2109a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CopyDirectoryVisitor extends CountingPathVisitor {
    private final CopyOption[] copyOptions;
    private final Path sourceDirectory;
    private final Path targetDirectory;

    public CopyDirectoryVisitor(Counters.PathCounters pathCounters, Path path, Path path2, CopyOption... copyOptionArr) {
        super(pathCounters);
        this.sourceDirectory = path;
        this.targetDirectory = path2;
        this.copyOptions = toCopyOption(copyOptionArr);
    }

    private Path resolveRelativeAsString(Path path) {
        return PathUtils.resolve(this.targetDirectory, this.sourceDirectory.relativize(path));
    }

    private static CopyOption[] toCopyOption(CopyOption... copyOptionArr) {
        return copyOptionArr == null ? PathUtils.EMPTY_COPY_OPTIONS : (CopyOption[]) copyOptionArr.clone();
    }

    public void copy(Path path, Path path2) throws IOException {
        Files.copy(path, path2, this.copyOptions);
    }

    @Override // org.apache.commons.p161io.file.CountingPathVisitor
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        CopyDirectoryVisitor copyDirectoryVisitor = (CopyDirectoryVisitor) obj;
        return Arrays.equals(this.copyOptions, copyDirectoryVisitor.copyOptions) && Objects.equals(this.sourceDirectory, copyDirectoryVisitor.sourceDirectory) && Objects.equals(this.targetDirectory, copyDirectoryVisitor.targetDirectory);
    }

    public CopyOption[] getCopyOptions() {
        return (CopyOption[]) this.copyOptions.clone();
    }

    public Path getSourceDirectory() {
        return this.sourceDirectory;
    }

    public Path getTargetDirectory() {
        return this.targetDirectory;
    }

    @Override // org.apache.commons.p161io.file.CountingPathVisitor
    public int hashCode() {
        return Objects.hash(this.sourceDirectory, this.targetDirectory) + (((super.hashCode() * 31) + Arrays.hashCode(this.copyOptions)) * 31);
    }

    @Override // org.apache.commons.p161io.file.CountingPathVisitor
    /* JADX INFO: renamed from: preVisitDirectory, reason: avoid collision after fix types in other method */
    public FileVisitResult preVisitDirectory2(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
        Path pathResolveRelativeAsString = resolveRelativeAsString(path);
        if (Files.notExists(pathResolveRelativeAsString, new LinkOption[0])) {
            Files.createDirectory(pathResolveRelativeAsString, new FileAttribute[0]);
        }
        return super.preVisitDirectory(path, basicFileAttributes);
    }

    @Override // org.apache.commons.p161io.file.CountingPathVisitor
    /* JADX INFO: renamed from: visitFile, reason: avoid collision after fix types in other method */
    public FileVisitResult visitFile2(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
        Path pathResolveRelativeAsString = resolveRelativeAsString(path);
        if (accept(path, basicFileAttributes)) {
            copy(path, pathResolveRelativeAsString);
            updateFileCounters(pathResolveRelativeAsString, basicFileAttributes);
        }
        return FileVisitResult.CONTINUE;
    }

    public CopyDirectoryVisitor(Counters.PathCounters pathCounters, PathFilter pathFilter, PathFilter pathFilter2, Path path, Path path2, CopyOption... copyOptionArr) {
        super(pathCounters, pathFilter, pathFilter2);
        this.sourceDirectory = path;
        this.targetDirectory = path2;
        this.copyOptions = toCopyOption(copyOptionArr);
    }

    @Override // org.apache.commons.p161io.file.CountingPathVisitor, java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) {
        return visitFile2(AbstractC2109a.m3281m(path), basicFileAttributes);
    }

    @Override // org.apache.commons.p161io.file.CountingPathVisitor, java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) {
        return preVisitDirectory2(AbstractC2109a.m3281m(path), basicFileAttributes);
    }
}

package org.apache.commons.io.file;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Objects;
import java.util.function.UnaryOperator;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.filefilter.SymbolicLinkFileFilter;
import org.apache.commons.io.filefilter.TrueFileFilter;
import org.apache.commons.io.function.IOBiFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class CountingPathVisitor extends SimplePathVisitor {
    static final String[] EMPTY_STRING_ARRAY = new String[0];
    private final PathFilter directoryFilter;
    private final UnaryOperator<Path> directoryPostTransformer;
    private final PathFilter fileFilter;
    private final Counters$PathCounters pathCounters;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CountingPathVisitor(Counters$PathCounters counters$PathCounters, PathFilter pathFilter, PathFilter pathFilter2) {
        Objects.requireNonNull(counters$PathCounters, "pathCounters");
        this.pathCounters = counters$PathCounters;
        Objects.requireNonNull(pathFilter, "fileFilter");
        this.fileFilter = pathFilter;
        Objects.requireNonNull(pathFilter2, "directoryFilter");
        this.directoryFilter = pathFilter2;
        this.directoryPostTransformer = UnaryOperator.identity();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static IOFileFilter defaultDirectoryFilter() {
        return TrueFileFilter.INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static UnaryOperator<Path> defaultDirectoryTransformer() {
        return UnaryOperator.identity();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static IOFileFilter defaultFileFilter() {
        return new SymbolicLinkFileFilter(kotlin.io.path.a.w(), kotlin.io.path.a.h());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Counters$PathCounters defaultPathCounters() {
        return Counters.longPathCounters();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CountingPathVisitor withBigIntegerCounters() {
        return new CountingPathVisitor$Builder().setPathCounters(Counters.bigIntegerPathCounters()).get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CountingPathVisitor withLongCounters() {
        return new CountingPathVisitor$Builder().setPathCounters(Counters.longPathCounters()).get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean accept(Path path, BasicFileAttributes basicFileAttributes) {
        return kotlin.io.path.f.x(path, new LinkOption[0]) && this.fileFilter.accept(path, basicFileAttributes) == kotlin.io.path.a.h();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CountingPathVisitor) {
            return Objects.equals(this.pathCounters, ((CountingPathVisitor) obj).pathCounters);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Counters$PathCounters getPathCounters() {
        return this.pathCounters;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return Objects.hash(this.pathCounters);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: postVisitDirectory, reason: avoid collision after fix types in other method */
    public FileVisitResult postVisitDirectory2(Path path, IOException iOException) {
        updateDirCounter(kotlin.internal.jdk8.a.m(this.directoryPostTransformer.apply(path)), iOException);
        return kotlin.io.path.a.h();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't rename method to resolve collision */
    public FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) {
        return this.directoryFilter.accept(path, basicFileAttributes) != kotlin.io.path.a.h() ? kotlin.io.path.a.z() : kotlin.io.path.a.h();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return this.pathCounters.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateDirCounter(Path path, IOException iOException) {
        this.pathCounters.getDirectoryCounter().increment();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateFileCounters(Path path, BasicFileAttributes basicFileAttributes) {
        this.pathCounters.getFileCounter().increment();
        this.pathCounters.getByteCounter().add(org.apache.commons.io.d.c(basicFileAttributes));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't rename method to resolve collision */
    public FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) {
        if (accept(path, basicFileAttributes)) {
            updateFileCounters(path, basicFileAttributes);
        }
        return kotlin.io.path.a.h();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.nio.file.attribute.BasicFileAttributes] */
    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) {
        return visitFile(kotlin.internal.jdk8.a.m(path), basicFileAttributes);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.io.IOException] */
    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult postVisitDirectory(Path path, IOException iOException) {
        return postVisitDirectory2(kotlin.internal.jdk8.a.m(path), iOException);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.nio.file.attribute.BasicFileAttributes] */
    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) {
        return preVisitDirectory(kotlin.internal.jdk8.a.m(path), basicFileAttributes);
    }

    public CountingPathVisitor(Counters$PathCounters counters$PathCounters) {
        this(new CountingPathVisitor$Builder().setPathCounters(counters$PathCounters));
    }

    public CountingPathVisitor(CountingPathVisitor$AbstractBuilder<?, ?> countingPathVisitor$AbstractBuilder) {
        super(countingPathVisitor$AbstractBuilder);
        this.pathCounters = countingPathVisitor$AbstractBuilder.getPathCounters();
        this.fileFilter = countingPathVisitor$AbstractBuilder.getFileFilter();
        this.directoryFilter = countingPathVisitor$AbstractBuilder.getDirectoryFilter();
        this.directoryPostTransformer = countingPathVisitor$AbstractBuilder.getDirectoryPostTransformer();
    }

    @Deprecated
    public CountingPathVisitor(Counters$PathCounters counters$PathCounters, PathFilter pathFilter, PathFilter pathFilter2, IOBiFunction<Path, IOException, FileVisitResult> iOBiFunction) {
        super(iOBiFunction);
        Objects.requireNonNull(counters$PathCounters, "pathCounters");
        this.pathCounters = counters$PathCounters;
        Objects.requireNonNull(pathFilter, "fileFilter");
        this.fileFilter = pathFilter;
        Objects.requireNonNull(pathFilter2, "directoryFilter");
        this.directoryFilter = pathFilter2;
        this.directoryPostTransformer = UnaryOperator.identity();
    }
}

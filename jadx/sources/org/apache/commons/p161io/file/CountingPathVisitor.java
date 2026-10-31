package org.apache.commons.p161io.file;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Objects;
import java.util.function.UnaryOperator;
import kotlin.internal.jdk8.AbstractC2109a;
import org.apache.commons.p161io.build.AbstractSupplier;
import org.apache.commons.p161io.filefilter.IOFileFilter;
import org.apache.commons.p161io.filefilter.SymbolicLinkFileFilter;
import org.apache.commons.p161io.filefilter.TrueFileFilter;
import org.apache.commons.p161io.function.IOBiFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CountingPathVisitor extends SimplePathVisitor {
    static final String[] EMPTY_STRING_ARRAY = new String[0];
    private final PathFilter directoryFilter;
    private final UnaryOperator<Path> directoryPostTransformer;
    private final PathFilter fileFilter;
    private final Counters.PathCounters pathCounters;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static abstract class AbstractBuilder<T, B extends AbstractBuilder<T, B>> extends SimplePathVisitor.AbstractBuilder<T, B> {
        private Counters.PathCounters pathCounters = CountingPathVisitor.defaultPathCounters();
        private PathFilter fileFilter = CountingPathVisitor.defaultFileFilter();
        private PathFilter directoryFilter = CountingPathVisitor.defaultDirectoryFilter();
        private UnaryOperator<Path> directoryPostTransformer = CountingPathVisitor.defaultDirectoryTransformer();

        public PathFilter getDirectoryFilter() {
            return this.directoryFilter;
        }

        public UnaryOperator<Path> getDirectoryPostTransformer() {
            return this.directoryPostTransformer;
        }

        public PathFilter getFileFilter() {
            return this.fileFilter;
        }

        public Counters.PathCounters getPathCounters() {
            return this.pathCounters;
        }

        public B setDirectoryFilter(PathFilter pathFilter) {
            if (pathFilter == null) {
                pathFilter = CountingPathVisitor.defaultDirectoryFilter();
            }
            this.directoryFilter = pathFilter;
            return asThis();
        }

        public B setDirectoryPostTransformer(UnaryOperator<Path> unaryOperator) {
            if (unaryOperator == null) {
                unaryOperator = CountingPathVisitor.defaultDirectoryTransformer();
            }
            this.directoryPostTransformer = unaryOperator;
            return asThis();
        }

        public B setFileFilter(PathFilter pathFilter) {
            if (pathFilter == null) {
                pathFilter = CountingPathVisitor.defaultFileFilter();
            }
            this.fileFilter = pathFilter;
            return asThis();
        }

        public B setPathCounters(Counters.PathCounters pathCounters) {
            if (pathCounters == null) {
                pathCounters = CountingPathVisitor.defaultPathCounters();
            }
            this.pathCounters = pathCounters;
            return asThis();
        }

        @Override // org.apache.commons.io.file.SimplePathVisitor.AbstractBuilder
        public /* bridge */ /* synthetic */ AbstractSupplier setVisitFileFailedFunction(IOBiFunction iOBiFunction) {
            return super.setVisitFileFailedFunction(iOBiFunction);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractBuilder<CountingPathVisitor, Builder> {
        @Override // org.apache.commons.p161io.function.IOSupplier
        public CountingPathVisitor get() {
            return new CountingPathVisitor(this);
        }
    }

    public CountingPathVisitor(Counters.PathCounters pathCounters, PathFilter pathFilter, PathFilter pathFilter2) {
        Objects.requireNonNull(pathCounters, "pathCounters");
        this.pathCounters = pathCounters;
        Objects.requireNonNull(pathFilter, "fileFilter");
        this.fileFilter = pathFilter;
        Objects.requireNonNull(pathFilter2, "directoryFilter");
        this.directoryFilter = pathFilter2;
        this.directoryPostTransformer = UnaryOperator.identity();
    }

    public static IOFileFilter defaultDirectoryFilter() {
        return TrueFileFilter.INSTANCE;
    }

    public static UnaryOperator<Path> defaultDirectoryTransformer() {
        return UnaryOperator.identity();
    }

    public static IOFileFilter defaultFileFilter() {
        return new SymbolicLinkFileFilter(FileVisitResult.TERMINATE, FileVisitResult.CONTINUE);
    }

    public static Counters.PathCounters defaultPathCounters() {
        return Counters.longPathCounters();
    }

    public static CountingPathVisitor withBigIntegerCounters() {
        return new Builder().setPathCounters(Counters.bigIntegerPathCounters()).get();
    }

    public static CountingPathVisitor withLongCounters() {
        return new Builder().setPathCounters(Counters.longPathCounters()).get();
    }

    public boolean accept(Path path, BasicFileAttributes basicFileAttributes) {
        return Files.exists(path, new LinkOption[0]) && this.fileFilter.accept(path, basicFileAttributes) == FileVisitResult.CONTINUE;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CountingPathVisitor) {
            return Objects.equals(this.pathCounters, ((CountingPathVisitor) obj).pathCounters);
        }
        return false;
    }

    public Counters.PathCounters getPathCounters() {
        return this.pathCounters;
    }

    public int hashCode() {
        return Objects.hash(this.pathCounters);
    }

    /* JADX INFO: renamed from: postVisitDirectory, reason: avoid collision after fix types in other method */
    public FileVisitResult postVisitDirectory2(Path path, IOException iOException) {
        updateDirCounter(AbstractC2109a.m3281m(this.directoryPostTransformer.apply(path)), iOException);
        return FileVisitResult.CONTINUE;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    public FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) {
        return this.directoryFilter.accept(path, basicFileAttributes) != FileVisitResult.CONTINUE ? FileVisitResult.SKIP_SUBTREE : FileVisitResult.CONTINUE;
    }

    public String toString() {
        return this.pathCounters.toString();
    }

    public void updateDirCounter(Path path, IOException iOException) {
        this.pathCounters.getDirectoryCounter().increment();
    }

    public void updateFileCounters(Path path, BasicFileAttributes basicFileAttributes) {
        this.pathCounters.getFileCounter().increment();
        this.pathCounters.getByteCounter().add(basicFileAttributes.size());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    public FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) {
        if (accept(path, basicFileAttributes)) {
            updateFileCounters(path, basicFileAttributes);
        }
        return FileVisitResult.CONTINUE;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) {
        return visitFile(AbstractC2109a.m3281m(path), basicFileAttributes);
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult postVisitDirectory(Path path, IOException iOException) {
        return postVisitDirectory2(AbstractC2109a.m3281m(path), iOException);
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) {
        return preVisitDirectory(AbstractC2109a.m3281m(path), basicFileAttributes);
    }

    public CountingPathVisitor(Counters.PathCounters pathCounters) {
        this(new Builder().setPathCounters(pathCounters));
    }

    public CountingPathVisitor(AbstractBuilder<?, ?> abstractBuilder) {
        super(abstractBuilder);
        this.pathCounters = abstractBuilder.getPathCounters();
        this.fileFilter = abstractBuilder.getFileFilter();
        this.directoryFilter = abstractBuilder.getDirectoryFilter();
        this.directoryPostTransformer = abstractBuilder.getDirectoryPostTransformer();
    }

    @Deprecated
    public CountingPathVisitor(Counters.PathCounters pathCounters, PathFilter pathFilter, PathFilter pathFilter2, IOBiFunction<Path, IOException, FileVisitResult> iOBiFunction) {
        super(iOBiFunction);
        Objects.requireNonNull(pathCounters, "pathCounters");
        this.pathCounters = pathCounters;
        Objects.requireNonNull(pathFilter, "fileFilter");
        this.fileFilter = pathFilter;
        Objects.requireNonNull(pathFilter2, "directoryFilter");
        this.directoryFilter = pathFilter2;
        this.directoryPostTransformer = UnaryOperator.identity();
    }
}

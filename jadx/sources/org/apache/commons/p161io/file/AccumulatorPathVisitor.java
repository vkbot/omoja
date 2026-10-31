package org.apache.commons.p161io.file;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import org.apache.commons.p161io.function.IOBiFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class AccumulatorPathVisitor extends CountingPathVisitor {
    private final List<Path> dirList;
    private final List<Path> fileList;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends CountingPathVisitor.AbstractBuilder<AccumulatorPathVisitor, Builder> {
        @Override // org.apache.commons.p161io.function.IOSupplier
        public AccumulatorPathVisitor get() {
            return new AccumulatorPathVisitor(this);
        }
    }

    @Deprecated
    public AccumulatorPathVisitor() {
        super(Counters.noopPathCounters());
        this.dirList = new ArrayList();
        this.fileList = new ArrayList();
    }

    private void add(List<Path> list, Path path) {
        list.add(path.normalize());
    }

    public static Builder builder() {
        return new Builder();
    }

    public static AccumulatorPathVisitor withBigIntegerCounters(PathFilter pathFilter, PathFilter pathFilter2) {
        return builder().setPathCounters(Counters.bigIntegerPathCounters()).setFileFilter(pathFilter).setDirectoryFilter(pathFilter2).get();
    }

    public static AccumulatorPathVisitor withLongCounters(PathFilter pathFilter, PathFilter pathFilter2) {
        return builder().setPathCounters(Counters.longPathCounters()).setFileFilter(pathFilter).setDirectoryFilter(pathFilter2).get();
    }

    @Override // org.apache.commons.p161io.file.CountingPathVisitor
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || !(obj instanceof AccumulatorPathVisitor)) {
            return false;
        }
        AccumulatorPathVisitor accumulatorPathVisitor = (AccumulatorPathVisitor) obj;
        return Objects.equals(this.dirList, accumulatorPathVisitor.dirList) && Objects.equals(this.fileList, accumulatorPathVisitor.fileList);
    }

    public List<Path> getDirList() {
        return new ArrayList(this.dirList);
    }

    public List<Path> getFileList() {
        return new ArrayList(this.fileList);
    }

    @Override // org.apache.commons.p161io.file.CountingPathVisitor
    public int hashCode() {
        return Objects.hash(this.dirList, this.fileList) + (super.hashCode() * 31);
    }

    public List<Path> relativizeDirectories(Path path, boolean z9, Comparator<? super Path> comparator) {
        return PathUtils.relativize(getDirList(), path, z9, comparator);
    }

    public List<Path> relativizeFiles(Path path, boolean z9, Comparator<? super Path> comparator) {
        return PathUtils.relativize(getFileList(), path, z9, comparator);
    }

    @Override // org.apache.commons.p161io.file.CountingPathVisitor
    public void updateDirCounter(Path path, IOException iOException) {
        super.updateDirCounter(path, iOException);
        add(this.dirList, path);
    }

    @Override // org.apache.commons.p161io.file.CountingPathVisitor
    public void updateFileCounters(Path path, BasicFileAttributes basicFileAttributes) {
        super.updateFileCounters(path, basicFileAttributes);
        add(this.fileList, path);
    }

    private AccumulatorPathVisitor(Builder builder) {
        super(builder);
        this.dirList = new ArrayList();
        this.fileList = new ArrayList();
    }

    @Deprecated
    public AccumulatorPathVisitor(Counters.PathCounters pathCounters) {
        super(pathCounters);
        this.dirList = new ArrayList();
        this.fileList = new ArrayList();
    }

    @Deprecated
    public AccumulatorPathVisitor(Counters.PathCounters pathCounters, PathFilter pathFilter, PathFilter pathFilter2) {
        super(pathCounters, pathFilter, pathFilter2);
        this.dirList = new ArrayList();
        this.fileList = new ArrayList();
    }

    public static AccumulatorPathVisitor withBigIntegerCounters() {
        return builder().setPathCounters(Counters.bigIntegerPathCounters()).get();
    }

    public static AccumulatorPathVisitor withLongCounters() {
        return builder().setPathCounters(Counters.longPathCounters()).get();
    }

    @Deprecated
    public AccumulatorPathVisitor(Counters.PathCounters pathCounters, PathFilter pathFilter, PathFilter pathFilter2, IOBiFunction<Path, IOException, FileVisitResult> iOBiFunction) {
        super(pathCounters, pathFilter, pathFilter2, iOBiFunction);
        this.dirList = new ArrayList();
        this.fileList = new ArrayList();
    }
}

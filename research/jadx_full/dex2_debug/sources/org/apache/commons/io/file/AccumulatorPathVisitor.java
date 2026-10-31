package org.apache.commons.io.file;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import org.apache.commons.io.function.IOBiFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class AccumulatorPathVisitor extends CountingPathVisitor {
    private final List<Path> dirList;
    private final List<Path> fileList;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public AccumulatorPathVisitor() {
        super(Counters.noopPathCounters());
        this.dirList = new ArrayList();
        this.fileList = new ArrayList();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void add(List<Path> list, Path path) {
        list.add(kotlin.internal.jdk8.a.D(path));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AccumulatorPathVisitor$Builder builder() {
        return new AccumulatorPathVisitor$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AccumulatorPathVisitor withBigIntegerCounters(PathFilter pathFilter, PathFilter pathFilter2) {
        return builder().setPathCounters(Counters.bigIntegerPathCounters()).setFileFilter(pathFilter).setDirectoryFilter(pathFilter2).get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AccumulatorPathVisitor withLongCounters(PathFilter pathFilter, PathFilter pathFilter2) {
        return builder().setPathCounters(Counters.longPathCounters()).setFileFilter(pathFilter).setDirectoryFilter(pathFilter2).get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.CountingPathVisitor
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<Path> getDirList() {
        return new ArrayList(this.dirList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<Path> getFileList() {
        return new ArrayList(this.fileList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.CountingPathVisitor
    public int hashCode() {
        return Objects.hash(this.dirList, this.fileList) + (super.hashCode() * 31);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<Path> relativizeDirectories(Path path, boolean z, Comparator<? super Path> comparator) {
        return PathUtils.relativize(getDirList(), path, z, comparator);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<Path> relativizeFiles(Path path, boolean z, Comparator<? super Path> comparator) {
        return PathUtils.relativize(getFileList(), path, z, comparator);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.CountingPathVisitor
    public void updateDirCounter(Path path, IOException iOException) {
        super.updateDirCounter(path, iOException);
        add(this.dirList, path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.CountingPathVisitor
    public void updateFileCounters(Path path, BasicFileAttributes basicFileAttributes) {
        super.updateFileCounters(path, basicFileAttributes);
        add(this.fileList, path);
    }

    public /* synthetic */ AccumulatorPathVisitor(AccumulatorPathVisitor$Builder accumulatorPathVisitor$Builder, AccumulatorPathVisitor$1 accumulatorPathVisitor$1) {
        this(accumulatorPathVisitor$Builder);
    }

    private AccumulatorPathVisitor(AccumulatorPathVisitor$Builder accumulatorPathVisitor$Builder) {
        super(accumulatorPathVisitor$Builder);
        this.dirList = new ArrayList();
        this.fileList = new ArrayList();
    }

    @Deprecated
    public AccumulatorPathVisitor(Counters$PathCounters counters$PathCounters) {
        super(counters$PathCounters);
        this.dirList = new ArrayList();
        this.fileList = new ArrayList();
    }

    @Deprecated
    public AccumulatorPathVisitor(Counters$PathCounters counters$PathCounters, PathFilter pathFilter, PathFilter pathFilter2) {
        super(counters$PathCounters, pathFilter, pathFilter2);
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
    public AccumulatorPathVisitor(Counters$PathCounters counters$PathCounters, PathFilter pathFilter, PathFilter pathFilter2, IOBiFunction<Path, IOException, FileVisitResult> iOBiFunction) {
        super(counters$PathCounters, pathFilter, pathFilter2, iOBiFunction);
        this.dirList = new ArrayList();
        this.fileList = new ArrayList();
    }
}

package org.apache.commons.io.file;

import java.nio.file.Path;
import java.util.function.UnaryOperator;
import org.apache.commons.io.build.AbstractSupplier;
import org.apache.commons.io.file.CountingPathVisitor$AbstractBuilder;
import org.apache.commons.io.function.IOBiFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class CountingPathVisitor$AbstractBuilder<T, B extends CountingPathVisitor$AbstractBuilder<T, B>> extends SimplePathVisitor$AbstractBuilder<T, B> {
    private Counters$PathCounters pathCounters = CountingPathVisitor.defaultPathCounters();
    private PathFilter fileFilter = CountingPathVisitor.defaultFileFilter();
    private PathFilter directoryFilter = CountingPathVisitor.defaultDirectoryFilter();
    private UnaryOperator<Path> directoryPostTransformer = CountingPathVisitor.defaultDirectoryTransformer();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PathFilter getDirectoryFilter() {
        return this.directoryFilter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public UnaryOperator<Path> getDirectoryPostTransformer() {
        return this.directoryPostTransformer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PathFilter getFileFilter() {
        return this.fileFilter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Counters$PathCounters getPathCounters() {
        return this.pathCounters;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setDirectoryFilter(PathFilter pathFilter) {
        if (pathFilter == null) {
            pathFilter = CountingPathVisitor.defaultDirectoryFilter();
        }
        this.directoryFilter = pathFilter;
        return asThis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setDirectoryPostTransformer(UnaryOperator<Path> unaryOperator) {
        if (unaryOperator == null) {
            unaryOperator = CountingPathVisitor.defaultDirectoryTransformer();
        }
        this.directoryPostTransformer = unaryOperator;
        return asThis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setFileFilter(PathFilter pathFilter) {
        if (pathFilter == null) {
            pathFilter = CountingPathVisitor.defaultFileFilter();
        }
        this.fileFilter = pathFilter;
        return asThis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setPathCounters(Counters$PathCounters counters$PathCounters) {
        if (counters$PathCounters == null) {
            counters$PathCounters = CountingPathVisitor.defaultPathCounters();
        }
        this.pathCounters = counters$PathCounters;
        return asThis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.SimplePathVisitor$AbstractBuilder
    public /* bridge */ /* synthetic */ AbstractSupplier setVisitFileFailedFunction(IOBiFunction iOBiFunction) {
        return super.setVisitFileFailedFunction(iOBiFunction);
    }
}

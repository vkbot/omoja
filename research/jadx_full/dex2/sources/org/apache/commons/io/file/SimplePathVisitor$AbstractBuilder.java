package org.apache.commons.io.file;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import org.apache.commons.io.build.AbstractSupplier;
import org.apache.commons.io.function.IOBiFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class SimplePathVisitor$AbstractBuilder<T, B extends AbstractSupplier<T, B>> extends AbstractSupplier<T, B> {
    private IOBiFunction<Path, IOException, FileVisitResult> visitFileFailedFunction;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ IOBiFunction access$000(SimplePathVisitor$AbstractBuilder simplePathVisitor$AbstractBuilder) {
        return simplePathVisitor$AbstractBuilder.visitFileFailedFunction;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public IOBiFunction<Path, IOException, FileVisitResult> getVisitFileFailedFunction() {
        return this.visitFileFailedFunction;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setVisitFileFailedFunction(IOBiFunction<Path, IOException, FileVisitResult> iOBiFunction) {
        this.visitFileFailedFunction = iOBiFunction;
        return asThis();
    }
}

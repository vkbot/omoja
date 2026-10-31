package org.apache.commons.p161io.file;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import org.apache.commons.p161io.function.IOBiFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class NoopPathVisitor extends SimplePathVisitor {
    public static final NoopPathVisitor INSTANCE = new NoopPathVisitor();

    public NoopPathVisitor() {
    }

    public NoopPathVisitor(IOBiFunction<Path, IOException, FileVisitResult> iOBiFunction) {
        super(iOBiFunction);
    }
}

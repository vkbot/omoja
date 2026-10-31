package org.apache.commons.io.file;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.util.Objects;
import org.apache.commons.io.function.IOBiFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class SimplePathVisitor extends SimpleFileVisitor<Path> implements PathVisitor {
    private final IOBiFunction<Path, IOException, FileVisitResult> visitFileFailedFunction;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SimplePathVisitor(SimplePathVisitor$AbstractBuilder<?, ?> simplePathVisitor$AbstractBuilder) {
        this.visitFileFailedFunction = SimplePathVisitor$AbstractBuilder.access$000(simplePathVisitor$AbstractBuilder) != null ? SimplePathVisitor$AbstractBuilder.access$000(simplePathVisitor$AbstractBuilder) : new m(this, 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ FileVisitResult a(SimplePathVisitor simplePathVisitor, Object obj, IOException iOException) {
        return simplePathVisitor.lambda$new$1(obj, iOException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ FileVisitResult b(SimplePathVisitor simplePathVisitor, Object obj, IOException iOException) {
        return simplePathVisitor.lambda$new$0(obj, iOException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ FileVisitResult lambda$new$0(Object obj, IOException iOException) {
        return super.visitFileFailed(obj, iOException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ FileVisitResult lambda$new$1(Object obj, IOException iOException) {
        return super.visitFileFailed(obj, iOException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: visitFileFailed, reason: avoid collision after fix types in other method */
    public FileVisitResult visitFileFailed2(Path path, IOException iOException) {
        return f.f(this.visitFileFailedFunction.apply(path, iOException));
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.io.IOException] */
    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult visitFileFailed(Path path, IOException iOException) {
        return visitFileFailed2(kotlin.internal.jdk8.a.m(path), iOException);
    }

    public SimplePathVisitor() {
        this.visitFileFailedFunction = new m(this, 0);
    }

    public SimplePathVisitor(IOBiFunction<Path, IOException, FileVisitResult> iOBiFunction) {
        Objects.requireNonNull(iOBiFunction, "visitFileFailedFunction");
        this.visitFileFailedFunction = iOBiFunction;
    }
}

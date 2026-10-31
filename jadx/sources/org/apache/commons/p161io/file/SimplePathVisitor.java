package org.apache.commons.p161io.file;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.util.Objects;
import kotlin.internal.jdk8.AbstractC2109a;
import org.apache.commons.p161io.build.AbstractSupplier;
import org.apache.commons.p161io.function.IOBiFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class SimplePathVisitor extends SimpleFileVisitor<Path> implements PathVisitor {
    private final IOBiFunction<Path, IOException, FileVisitResult> visitFileFailedFunction;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static abstract class AbstractBuilder<T, B extends AbstractSupplier<T, B>> extends AbstractSupplier<T, B> {
        private IOBiFunction<Path, IOException, FileVisitResult> visitFileFailedFunction;

        public IOBiFunction<Path, IOException, FileVisitResult> getVisitFileFailedFunction() {
            return this.visitFileFailedFunction;
        }

        public B setVisitFileFailedFunction(IOBiFunction<Path, IOException, FileVisitResult> iOBiFunction) {
            this.visitFileFailedFunction = iOBiFunction;
            return asThis();
        }
    }

    public SimplePathVisitor(AbstractBuilder<?, ?> abstractBuilder) {
        IOBiFunction<Path, IOException, FileVisitResult> iOBiFunction;
        if (((AbstractBuilder) abstractBuilder).visitFileFailedFunction != null) {
            iOBiFunction = ((AbstractBuilder) abstractBuilder).visitFileFailedFunction;
        } else {
            final int i10 = 1;
            iOBiFunction = new IOBiFunction(this) { // from class: org.apache.commons.io.file.m

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ SimplePathVisitor f7961b;

                {
                    this.f7961b = this;
                }

                @Override // org.apache.commons.p161io.function.IOBiFunction
                public final Object apply(Object obj, Object obj2) {
                    Path path = (Path) obj;
                    IOException iOException = (IOException) obj2;
                    switch (i10) {
                        case 0:
                            return this.f7961b.lambda$new$0(path, iOException);
                        default:
                            return this.f7961b.lambda$new$1(path, iOException);
                    }
                }
            };
        }
        this.visitFileFailedFunction = iOBiFunction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FileVisitResult lambda$new$0(Object obj, IOException iOException) {
        return super.visitFileFailed(obj, iOException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FileVisitResult lambda$new$1(Object obj, IOException iOException) {
        return super.visitFileFailed(obj, iOException);
    }

    /* JADX INFO: renamed from: visitFileFailed, reason: avoid collision after fix types in other method */
    public FileVisitResult visitFileFailed2(Path path, IOException iOException) {
        return AbstractC2796f.m4403f(this.visitFileFailedFunction.apply(path, iOException));
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult visitFileFailed(Path path, IOException iOException) {
        return visitFileFailed2(AbstractC2109a.m3281m(path), iOException);
    }

    public SimplePathVisitor() {
        final int i10 = 0;
        this.visitFileFailedFunction = new IOBiFunction(this) { // from class: org.apache.commons.io.file.m

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ SimplePathVisitor f7961b;

            {
                this.f7961b = this;
            }

            @Override // org.apache.commons.p161io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                Path path = (Path) obj;
                IOException iOException = (IOException) obj2;
                switch (i10) {
                    case 0:
                        return this.f7961b.lambda$new$0(path, iOException);
                    default:
                        return this.f7961b.lambda$new$1(path, iOException);
                }
            }
        };
    }

    public SimplePathVisitor(IOBiFunction<Path, IOException, FileVisitResult> iOBiFunction) {
        Objects.requireNonNull(iOBiFunction, "visitFileFailedFunction");
        this.visitFileFailedFunction = iOBiFunction;
    }
}

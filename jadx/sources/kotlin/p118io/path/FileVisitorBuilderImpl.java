package kotlin.p118io.path;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.FileVisitor;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import kotlin.Metadata;
import kotlin.internal.jdk8.AbstractC2109a;
import kotlin.jvm.functions.Function2;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J@\u0010\u0004\u001a\u00020\u000f26\u0010\u0010\u001a2\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\b0\u0005H\u0016J@\u0010\t\u001a\u00020\u000f26\u0010\u0010\u001a2\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0015\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\b0\u0005H\u0016J@\u0010\n\u001a\u00020\u000f26\u0010\u0010\u001a2\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0015\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\b0\u0005H\u0016JB\u0010\f\u001a\u00020\u000f28\u0010\u0010\u001a4\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0015\u0012\u0013\u0018\u00010\u000b¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\b0\u0005H\u0016J\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00060\u0018J\b\u0010\u0019\u001a\u00020\u000fH\u0002J\u001a\u0010\u001a\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0012\u001a\u00020\u001cH\u0002R\"\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010\t\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\f\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, m3159d2 = {"Lkotlin/io/path/FileVisitorBuilderImpl;", "Lkotlin/io/path/FileVisitorBuilder;", "<init>", "()V", "onPreVisitDirectory", "Lkotlin/Function2;", "Ljava/nio/file/Path;", "Ljava/nio/file/attribute/BasicFileAttributes;", "Ljava/nio/file/FileVisitResult;", "onVisitFile", "onVisitFileFailed", "Ljava/io/IOException;", "onPostVisitDirectory", "isBuilt", "", "", "function", "Lkotlin/ParameterName;", "name", "directory", "attributes", "file", "exception", "build", "Ljava/nio/file/FileVisitor;", "checkIsNotBuilt", "checkNotDefined", "", "", "kotlin-stdlib-jdk7"}, m3160k = 1, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FileVisitorBuilderImpl implements FileVisitorBuilder {
    private boolean isBuilt;
    private Function2<? super Path, ? super IOException, ? extends FileVisitResult> onPostVisitDirectory;
    private Function2<? super Path, ? super BasicFileAttributes, ? extends FileVisitResult> onPreVisitDirectory;
    private Function2<? super Path, ? super BasicFileAttributes, ? extends FileVisitResult> onVisitFile;
    private Function2<? super Path, ? super IOException, ? extends FileVisitResult> onVisitFileFailed;

    private final void checkIsNotBuilt() {
        if (this.isBuilt) {
            C1929i.m3030l("This builder was already built");
        }
    }

    private final void checkNotDefined(Object function, String name) {
        if (function == null) {
            return;
        }
        C1929i.m3030l(AbstractC0074a.m148C(name, " was already defined"));
    }

    public final FileVisitor<Path> build() {
        checkIsNotBuilt();
        this.isBuilt = true;
        return AbstractC2109a.m3279k(new FileVisitorImpl(this.onPreVisitDirectory, this.onVisitFile, this.onVisitFileFailed, this.onPostVisitDirectory));
    }

    @Override // kotlin.p118io.path.FileVisitorBuilder
    public void onPostVisitDirectory(Function2<? super Path, ? super IOException, ? extends FileVisitResult> function) {
        function.getClass();
        checkIsNotBuilt();
        checkNotDefined(this.onPostVisitDirectory, "onPostVisitDirectory");
        this.onPostVisitDirectory = function;
    }

    @Override // kotlin.p118io.path.FileVisitorBuilder
    public void onPreVisitDirectory(Function2<? super Path, ? super BasicFileAttributes, ? extends FileVisitResult> function) {
        function.getClass();
        checkIsNotBuilt();
        checkNotDefined(this.onPreVisitDirectory, "onPreVisitDirectory");
        this.onPreVisitDirectory = function;
    }

    @Override // kotlin.p118io.path.FileVisitorBuilder
    public void onVisitFile(Function2<? super Path, ? super BasicFileAttributes, ? extends FileVisitResult> function) {
        function.getClass();
        checkIsNotBuilt();
        checkNotDefined(this.onVisitFile, "onVisitFile");
        this.onVisitFile = function;
    }

    @Override // kotlin.p118io.path.FileVisitorBuilder
    public void onVisitFileFailed(Function2<? super Path, ? super IOException, ? extends FileVisitResult> function) {
        function.getClass();
        checkIsNotBuilt();
        checkNotDefined(this.onVisitFileFailed, "onVisitFileFailed");
        this.onVisitFileFailed = function;
    }
}

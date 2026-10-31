package org.apache.commons.p161io.filefilter;

import ai.onnxruntime.AbstractC0074a;
import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import kotlin.internal.jdk8.AbstractC2109a;
import p062f5.C1548f;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class SizeFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = 7388077430788600069L;
    private final boolean acceptLarger;
    private final long size;

    public SizeFileFilter(long j10, boolean z9) {
        if (j10 < 0) {
            C1929i.m3029k("The size must be non-negative");
            throw null;
        }
        this.size = j10;
        this.acceptLarger = z9;
    }

    private boolean accept(long j10) {
        return this.acceptLarger != ((j10 > this.size ? 1 : (j10 == this.size ? 0 : -1)) < 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FileVisitResult lambda$accept$0(Path path) {
        return toFileVisitResult(accept(Files.size(path)));
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter
    public String toString() {
        String str = this.acceptLarger ? ">=" : "<";
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("(");
        sb.append(str);
        return AbstractC0074a.m163n(sb, this.size, ")");
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter
    /* JADX INFO: renamed from: visitFile, reason: avoid collision after fix types in other method */
    public FileVisitResult visitFile2(Path path, BasicFileAttributes basicFileAttributes) {
        return toFileVisitResult(accept(Files.size(path)));
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) {
        return visitFile2(AbstractC2109a.m3281m(path), basicFileAttributes);
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return accept(file != null ? file.length() : 0L);
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, org.apache.commons.p161io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        return get(new C1548f(17, this, path));
    }

    public SizeFileFilter(long j10) {
        this(j10, true);
    }
}

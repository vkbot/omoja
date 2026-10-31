package org.apache.commons.p161io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.List;
import java.util.Objects;
import java.util.stream.Stream;
import org.apache.commons.p161io.C2847h;
import org.apache.commons.p161io.IOCase;
import org.apache.commons.p161io.file.PathUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class PrefixFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = 8533897440809599867L;
    private final IOCase isCase;
    private final String[] prefixes;

    public PrefixFileFilter(List<String> list, IOCase iOCase) {
        Objects.requireNonNull(list, "prefixes");
        this.prefixes = (String[]) list.toArray(IOFileFilter.EMPTY_STRING_ARRAY);
        this.isCase = IOCase.value(iOCase, IOCase.SENSITIVE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$accept$0(String str, String str2) {
        return this.isCase.checkStartsWith(str, str2);
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, org.apache.commons.p161io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        return toFileVisitResult(accept((File) PathUtils.getFileName(path, new C2847h())));
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("(");
        append(this.prefixes, sb);
        sb.append(")");
        return sb.toString();
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return accept(str);
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return accept(file == null ? null : file.getName());
    }

    private boolean accept(String str) {
        return Stream.of((Object[]) this.prefixes).anyMatch(new C2809e(this, str, 1));
    }

    public PrefixFileFilter(List<String> list) {
        this(list, IOCase.SENSITIVE);
    }

    public PrefixFileFilter(String str) {
        this(str, IOCase.SENSITIVE);
    }

    public PrefixFileFilter(String... strArr) {
        this(strArr, IOCase.SENSITIVE);
    }

    public PrefixFileFilter(String str, IOCase iOCase) {
        Objects.requireNonNull(str, "prefix");
        this.prefixes = new String[]{str};
        this.isCase = IOCase.value(iOCase, IOCase.SENSITIVE);
    }

    public PrefixFileFilter(String[] strArr, IOCase iOCase) {
        Objects.requireNonNull(strArr, "prefixes");
        this.prefixes = (String[]) strArr.clone();
        this.isCase = IOCase.value(iOCase, IOCase.SENSITIVE);
    }
}

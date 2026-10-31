package org.apache.commons.p161io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.List;
import java.util.Objects;
import java.util.stream.Stream;
import org.apache.commons.p161io.IOCase;
import org.apache.commons.p161io.file.PathUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class NameFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = 176844364689077340L;
    private final IOCase ioCase;
    private final String[] names;

    public NameFileFilter(List<String> list, IOCase iOCase) {
        Objects.requireNonNull(list, "names");
        this.names = (String[]) list.toArray(IOFileFilter.EMPTY_STRING_ARRAY);
        this.ioCase = toIOCase(iOCase);
    }

    private boolean acceptBaseName(String str) {
        return Stream.of((Object[]) this.names).anyMatch(new C2809e(this, str, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$acceptBaseName$0(String str, String str2) {
        return this.ioCase.checkEquals(str, str2);
    }

    private IOCase toIOCase(IOCase iOCase) {
        return IOCase.value(iOCase, IOCase.SENSITIVE);
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return file != null && acceptBaseName(file.getName());
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("(");
        append(this.names, sb);
        sb.append(")");
        return sb.toString();
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return acceptBaseName(str);
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, org.apache.commons.p161io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        return toFileVisitResult(acceptBaseName(PathUtils.getFileNameString(path)));
    }

    public NameFileFilter(List<String> list) {
        this(list, (IOCase) null);
    }

    public NameFileFilter(String str) {
        this(str, IOCase.SENSITIVE);
    }

    public NameFileFilter(String... strArr) {
        this(strArr, IOCase.SENSITIVE);
    }

    public NameFileFilter(String str, IOCase iOCase) {
        Objects.requireNonNull(str, "name");
        this.names = new String[]{str};
        this.ioCase = toIOCase(iOCase);
    }

    public NameFileFilter(String[] strArr, IOCase iOCase) {
        Objects.requireNonNull(strArr, "names");
        this.names = (String[]) strArr.clone();
        this.ioCase = toIOCase(iOCase);
    }
}

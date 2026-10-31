package org.apache.commons.p161io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.List;
import java.util.Objects;
import java.util.stream.Stream;
import org.apache.commons.p161io.FilenameUtils;
import org.apache.commons.p161io.IOCase;
import org.apache.commons.p161io.build.AbstractSupplier;
import org.apache.commons.p161io.file.PathUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class WildcardFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -7426486598995782105L;
    private final IOCase ioCase;
    private final String[] wildcards;

    private WildcardFileFilter(IOCase iOCase, String... strArr) {
        this.wildcards = (String[]) ((String[]) requireWildcards(strArr)).clone();
        this.ioCase = IOCase.value(iOCase, IOCase.SENSITIVE);
    }

    private boolean accept(String str) {
        return Stream.of((Object[]) this.wildcards).anyMatch(new C2809e(this, str, 3));
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$accept$0(String str, String str2) {
        return FilenameUtils.wildcardMatch(str, str2, this.ioCase);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T requireWildcards(T t) {
        Objects.requireNonNull(t, "wildcards");
        return t;
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("(");
        append(this.wildcards, sb);
        sb.append(")");
        return sb.toString();
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractSupplier<WildcardFileFilter, Builder> {
        private IOCase ioCase = IOCase.SENSITIVE;
        private String[] wildcards;

        @Override // org.apache.commons.p161io.function.IOSupplier
        public WildcardFileFilter get() {
            return new WildcardFileFilter(this);
        }

        public Builder setIoCase(IOCase iOCase) {
            this.ioCase = IOCase.value(iOCase, IOCase.SENSITIVE);
            return this;
        }

        public Builder setWildcards(List<String> list) {
            setWildcards((String[]) ((List) WildcardFileFilter.requireWildcards(list)).toArray(IOFileFilter.EMPTY_STRING_ARRAY));
            return this;
        }

        public Builder setWildcards(String... strArr) {
            this.wildcards = (String[]) WildcardFileFilter.requireWildcards(strArr);
            return this;
        }
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return accept(str);
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, org.apache.commons.p161io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        return toFileVisitResult(accept(PathUtils.getFileNameString(path)));
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return accept(file.getName());
    }

    private WildcardFileFilter(Builder builder) {
        this(builder.ioCase, builder.wildcards);
    }

    @Deprecated
    public WildcardFileFilter(List<String> list) {
        this(list, IOCase.SENSITIVE);
    }

    @Deprecated
    public WildcardFileFilter(List<String> list, IOCase iOCase) {
        this(iOCase, (String[]) ((List) requireWildcards(list)).toArray(IOFileFilter.EMPTY_STRING_ARRAY));
    }

    @Deprecated
    public WildcardFileFilter(String str) {
        this(IOCase.SENSITIVE, (String) requireWildcards(str));
    }

    @Deprecated
    public WildcardFileFilter(String... strArr) {
        this(IOCase.SENSITIVE, strArr);
    }

    @Deprecated
    public WildcardFileFilter(String str, IOCase iOCase) {
        this(iOCase, str);
    }

    @Deprecated
    public WildcardFileFilter(String[] strArr, IOCase iOCase) {
        this(iOCase, strArr);
    }
}

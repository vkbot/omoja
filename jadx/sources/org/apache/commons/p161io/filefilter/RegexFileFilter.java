package org.apache.commons.p161io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Objects;
import java.util.function.Function;
import java.util.regex.Pattern;
import org.apache.commons.p161io.IOCase;
import org.apache.commons.p161io.file.C2798h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class RegexFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = 4269646126155225062L;
    private final transient Function<Path, String> pathToString;
    private final Pattern pattern;

    public RegexFileFilter(Pattern pattern, Function<Path, String> function) {
        Objects.requireNonNull(pattern, "pattern");
        this.pattern = pattern;
        this.pathToString = function == null ? new C2798h(2) : function;
    }

    private static Pattern compile(String str, int i10) {
        Objects.requireNonNull(str, "pattern");
        return Pattern.compile(str, i10);
    }

    private static int toFlags(IOCase iOCase) {
        return IOCase.isCaseSensitive(iOCase) ? 0 : 2;
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, org.apache.commons.p161io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        String strApply = this.pathToString.apply(path);
        return toFileVisitResult(strApply != null && this.pattern.matcher(strApply).matches());
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter
    public String toString() {
        return "RegexFileFilter [pattern=" + this.pattern + "]";
    }

    public RegexFileFilter(Pattern pattern) {
        this(pattern, new C2811g());
    }

    public RegexFileFilter(String str) {
        this(str, 0);
    }

    public RegexFileFilter(String str, int i10) {
        this(compile(str, i10));
    }

    public RegexFileFilter(String str, IOCase iOCase) {
        this(compile(str, toFlags(iOCase)));
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return this.pattern.matcher(str).matches();
    }
}

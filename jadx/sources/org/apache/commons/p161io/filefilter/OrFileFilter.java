package org.apache.commons.p161io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class OrFileFilter extends AbstractFileFilter implements ConditionalFileFilter, Serializable {
    private static final long serialVersionUID = 5767770777065432721L;
    private final List<IOFileFilter> fileFilters;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OrFileFilter(IOFileFilter... iOFileFilterArr) {
        this(iOFileFilterArr.length);
        Objects.requireNonNull(iOFileFilterArr, "fileFilters");
        addFileFilter(iOFileFilterArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$accept$0(File file, IOFileFilter iOFileFilter) {
        return iOFileFilter.accept(file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$accept$1(File file, String str, IOFileFilter iOFileFilter) {
        return iOFileFilter.accept(file, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$accept$2(Path path, BasicFileAttributes basicFileAttributes, IOFileFilter iOFileFilter) {
        return iOFileFilter.accept(path, basicFileAttributes) == FileVisitResult.CONTINUE;
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, org.apache.commons.p161io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        return AbstractFileFilter.toDefaultFileVisitResult(this.fileFilters.stream().anyMatch(new C2805a(path, basicFileAttributes, 1)));
    }

    public void addFileFilter(IOFileFilter... iOFileFilterArr) {
        Objects.requireNonNull(iOFileFilterArr, "fileFilters");
        Stream.of((Object[]) iOFileFilterArr).forEach(new C2806b(1, this));
    }

    @Override // org.apache.commons.p161io.filefilter.ConditionalFileFilter
    public List<IOFileFilter> getFileFilters() {
        return Collections.unmodifiableList(this.fileFilters);
    }

    @Override // org.apache.commons.p161io.filefilter.ConditionalFileFilter
    public boolean removeFileFilter(IOFileFilter iOFileFilter) {
        return this.fileFilters.remove(iOFileFilter);
    }

    @Override // org.apache.commons.p161io.filefilter.ConditionalFileFilter
    public void setFileFilters(List<IOFileFilter> list) {
        this.fileFilters.clear();
        List<IOFileFilter> list2 = this.fileFilters;
        Objects.requireNonNull(list, "fileFilters");
        list2.addAll(list);
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("(");
        append(this.fileFilters, sb);
        sb.append(")");
        return sb.toString();
    }

    private OrFileFilter(ArrayList<IOFileFilter> arrayList) {
        Objects.requireNonNull(arrayList, "initialList");
        this.fileFilters = arrayList;
    }

    private OrFileFilter(int i10) {
        this((ArrayList<IOFileFilter>) new ArrayList(i10));
    }

    public OrFileFilter() {
        this(0);
    }

    public OrFileFilter(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        this(2);
        addFileFilter(iOFileFilter);
        addFileFilter(iOFileFilter2);
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return this.fileFilters.stream().anyMatch(new C2808d(file, 1, str));
    }

    @Override // org.apache.commons.p161io.filefilter.ConditionalFileFilter
    public void addFileFilter(IOFileFilter iOFileFilter) {
        List<IOFileFilter> list = this.fileFilters;
        Objects.requireNonNull(iOFileFilter, "fileFilter");
        list.add(iOFileFilter);
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return this.fileFilters.stream().anyMatch(new C2807c(file, 1));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OrFileFilter(List<IOFileFilter> list) {
        this((ArrayList<IOFileFilter>) new ArrayList(list));
        Objects.requireNonNull(list, "fileFilters");
    }
}

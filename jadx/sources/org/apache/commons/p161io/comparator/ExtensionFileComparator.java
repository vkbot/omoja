package org.apache.commons.p161io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.p161io.FilenameUtils;
import org.apache.commons.p161io.IOCase;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ExtensionFileComparator extends AbstractFileComparator implements Serializable {
    public static final Comparator<File> EXTENSION_COMPARATOR;
    public static final Comparator<File> EXTENSION_INSENSITIVE_COMPARATOR;
    public static final Comparator<File> EXTENSION_INSENSITIVE_REVERSE;
    public static final Comparator<File> EXTENSION_REVERSE;
    public static final Comparator<File> EXTENSION_SYSTEM_COMPARATOR;
    public static final Comparator<File> EXTENSION_SYSTEM_REVERSE;
    private static final long serialVersionUID = 1928235200184222815L;
    private final IOCase ioCase;

    static {
        ExtensionFileComparator extensionFileComparator = new ExtensionFileComparator();
        EXTENSION_COMPARATOR = extensionFileComparator;
        EXTENSION_REVERSE = new ReverseFileComparator(extensionFileComparator);
        ExtensionFileComparator extensionFileComparator2 = new ExtensionFileComparator(IOCase.INSENSITIVE);
        EXTENSION_INSENSITIVE_COMPARATOR = extensionFileComparator2;
        EXTENSION_INSENSITIVE_REVERSE = new ReverseFileComparator(extensionFileComparator2);
        ExtensionFileComparator extensionFileComparator3 = new ExtensionFileComparator(IOCase.SYSTEM);
        EXTENSION_SYSTEM_COMPARATOR = extensionFileComparator3;
        EXTENSION_SYSTEM_REVERSE = new ReverseFileComparator(extensionFileComparator3);
    }

    public ExtensionFileComparator(IOCase iOCase) {
        this.ioCase = IOCase.value(iOCase, IOCase.SENSITIVE);
    }

    @Override // java.util.Comparator
    public int compare(File file, File file2) {
        return this.ioCase.checkCompareTo(FilenameUtils.getExtension(file.getName()), FilenameUtils.getExtension(file2.getName()));
    }

    @Override // org.apache.commons.p161io.comparator.AbstractFileComparator
    public /* bridge */ /* synthetic */ List sort(List list) {
        return super.sort((List<File>) list);
    }

    @Override // org.apache.commons.p161io.comparator.AbstractFileComparator
    public String toString() {
        return super.toString() + "[ioCase=" + this.ioCase + "]";
    }

    @Override // org.apache.commons.p161io.comparator.AbstractFileComparator
    public /* bridge */ /* synthetic */ File[] sort(File[] fileArr) {
        return super.sort(fileArr);
    }

    public ExtensionFileComparator() {
        this.ioCase = IOCase.SENSITIVE;
    }
}

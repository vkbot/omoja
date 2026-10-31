package org.apache.commons.p161io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import p094i7.C1762k;
import p098j0.C1915a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CompositeFileComparator extends AbstractFileComparator implements Serializable {
    private static final Comparator<?>[] EMPTY_COMPARATOR_ARRAY = new Comparator[0];
    private static final long serialVersionUID = -2224170307287243428L;
    private final Comparator<File>[] delegates;

    public CompositeFileComparator(Iterable<Comparator<File>> iterable) {
        this.delegates = iterable == null ? emptyArray() : (Comparator[]) StreamSupport.stream(iterable.spliterator(), false).toArray(new C1915a(1));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Comparator<?>[], java.util.Comparator<java.io.File>[]] */
    private Comparator<File>[] emptyArray() {
        return EMPTY_COMPARATOR_ARRAY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$compare$1(File file, File file2, Comparator comparator) {
        return Integer.valueOf(comparator.compare(file, file2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$compare$2(Integer num) {
        return num.intValue() != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Comparator[] lambda$new$0(int i10) {
        return new Comparator[i10];
    }

    @Override // java.util.Comparator
    public int compare(File file, File file2) {
        return ((Integer) Stream.of((Object[]) this.delegates).map(new C2784a(file, file2, 0)).filter(new C1762k(2)).findFirst().orElse(0)).intValue();
    }

    @Override // org.apache.commons.p161io.comparator.AbstractFileComparator
    public /* bridge */ /* synthetic */ List sort(List list) {
        return super.sort((List<File>) list);
    }

    @Override // org.apache.commons.p161io.comparator.AbstractFileComparator
    public String toString() {
        return super.toString() + Arrays.toString(this.delegates);
    }

    @Override // org.apache.commons.p161io.comparator.AbstractFileComparator
    public /* bridge */ /* synthetic */ File[] sort(File[] fileArr) {
        return super.sort(fileArr);
    }

    public CompositeFileComparator(Comparator<File>... comparatorArr) {
        this.delegates = comparatorArr == null ? emptyArray() : (Comparator[]) comparatorArr.clone();
    }
}

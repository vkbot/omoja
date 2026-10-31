package org.apache.commons.p161io.function;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface IOComparator<T> {
    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default int lambda$asComparator$0(Object obj, Object obj2) {
        return Uncheck.compare(this, obj, obj2);
    }

    default Comparator<T> asComparator() {
        return new C2830k(this, 0);
    }

    int compare(T t, T t3);
}

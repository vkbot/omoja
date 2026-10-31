package org.apache.commons.io.function;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@FunctionalInterface
public interface IOComparator<T> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ int a(IOComparator iOComparator, Object obj, Object obj2) {
        return iOComparator.lambda$asComparator$0(obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ default int lambda$asComparator$0(Object obj, Object obj2) {
        return Uncheck.compare(this, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Comparator<T> asComparator() {
        return new k(this, 0);
    }

    int compare(T t, T t2);
}

package org.apache.commons.io.function;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class k implements Comparator {
    public final /* synthetic */ int b;
    public final /* synthetic */ IOComparator c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ k(IOComparator iOComparator, int i) {
        this.b = i;
        this.c = iOComparator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return IOComparator.a(this.c, obj, obj2);
            case 1:
                return IOStream.q(this.c, obj, obj2);
            case 2:
                return IOStream.B(this.c, obj, obj2);
            default:
                return IOStream.F(this.c, obj, obj2);
        }
    }
}

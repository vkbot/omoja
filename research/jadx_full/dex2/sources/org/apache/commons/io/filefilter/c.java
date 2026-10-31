package org.apache.commons.io.filefilter;

import java.io.File;
import java.util.function.Predicate;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class c implements Predicate {
    public final /* synthetic */ int a;
    public final /* synthetic */ File b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(File file, int i) {
        this.a = i;
        this.b = file;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.a) {
            case 0:
                return AndFileFilter.c(this.b, (IOFileFilter) obj);
            case 1:
                return OrFileFilter.b(this.b, (IOFileFilter) obj);
            default:
                return WildcardFilter.c(this.b, (String) obj);
        }
    }
}

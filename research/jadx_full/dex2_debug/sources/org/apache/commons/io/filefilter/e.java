package org.apache.commons.io.filefilter;

import java.util.function.Predicate;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class e implements Predicate {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;
    public final /* synthetic */ AbstractFileFilter c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(AbstractFileFilter abstractFileFilter, String str, int i) {
        this.a = i;
        this.c = abstractFileFilter;
        this.b = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.a) {
            case 0:
                return NameFileFilter.a((NameFileFilter) this.c, this.b, (String) obj);
            case 1:
                return PrefixFileFilter.a((PrefixFileFilter) this.c, this.b, (String) obj);
            case 2:
                return SuffixFileFilter.a((SuffixFileFilter) this.c, this.b, (String) obj);
            default:
                return WildcardFileFilter.a((WildcardFileFilter) this.c, this.b, (String) obj);
        }
    }
}

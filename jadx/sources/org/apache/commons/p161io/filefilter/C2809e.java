package org.apache.commons.p161io.filefilter;

import java.util.function.Predicate;

/* JADX INFO: renamed from: org.apache.commons.io.filefilter.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2809e implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7972a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ String f7973b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AbstractFileFilter f7974c;

    public /* synthetic */ C2809e(AbstractFileFilter abstractFileFilter, String str, int i10) {
        this.f7972a = i10;
        this.f7974c = abstractFileFilter;
        this.f7973b = str;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f7972a) {
            case 0:
                return ((NameFileFilter) this.f7974c).lambda$acceptBaseName$0(this.f7973b, (String) obj);
            case 1:
                return ((PrefixFileFilter) this.f7974c).lambda$accept$0(this.f7973b, (String) obj);
            case 2:
                return ((SuffixFileFilter) this.f7974c).lambda$accept$0(this.f7973b, (String) obj);
            default:
                return ((WildcardFileFilter) this.f7974c).lambda$accept$0(this.f7973b, (String) obj);
        }
    }
}

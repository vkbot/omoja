package org.apache.commons.p161io.filefilter;

import java.io.File;
import java.util.function.Predicate;

/* JADX INFO: renamed from: org.apache.commons.io.filefilter.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2807c implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7967a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ File f7968b;

    public /* synthetic */ C2807c(File file, int i10) {
        this.f7967a = i10;
        this.f7968b = file;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f7967a) {
            case 0:
                return AndFileFilter.lambda$accept$0(this.f7968b, (IOFileFilter) obj);
            case 1:
                return OrFileFilter.lambda$accept$0(this.f7968b, (IOFileFilter) obj);
            default:
                return WildcardFilter.lambda$accept$0(this.f7968b, (String) obj);
        }
    }
}

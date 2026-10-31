package org.apache.commons.p161io.filefilter;

import java.io.File;
import java.util.function.Predicate;

/* JADX INFO: renamed from: org.apache.commons.io.filefilter.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2808d implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7969a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ File f7970b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ String f7971c;

    public /* synthetic */ C2808d(File file, int i10, String str) {
        this.f7969a = i10;
        this.f7970b = file;
        this.f7971c = str;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f7969a) {
            case 0:
                return AndFileFilter.lambda$accept$1(this.f7970b, this.f7971c, (IOFileFilter) obj);
            default:
                return OrFileFilter.lambda$accept$1(this.f7970b, this.f7971c, (IOFileFilter) obj);
        }
    }
}

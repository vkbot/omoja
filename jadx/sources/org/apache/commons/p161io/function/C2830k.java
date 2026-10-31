package org.apache.commons.p161io.function;

import java.util.Comparator;

/* JADX INFO: renamed from: org.apache.commons.io.function.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2830k implements Comparator {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8000b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ IOComparator f8001c;

    public /* synthetic */ C2830k(IOComparator iOComparator, int i10) {
        this.f8000b = i10;
        this.f8001c = iOComparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f8000b) {
            case 0:
                return this.f8001c.lambda$asComparator$0(obj, obj2);
            case 1:
                return Erase.compare(this.f8001c, obj, obj2);
            case 2:
                return Erase.compare(this.f8001c, obj, obj2);
            default:
                return Erase.compare(this.f8001c, obj, obj2);
        }
    }
}

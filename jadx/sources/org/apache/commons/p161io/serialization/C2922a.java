package org.apache.commons.p161io.serialization;

import java.util.List;
import java.util.function.Consumer;

/* JADX INFO: renamed from: org.apache.commons.io.serialization.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2922a implements Consumer {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8113b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ List f8114c;

    public /* synthetic */ C2922a(List list, int i10) {
        this.f8113b = i10;
        this.f8114c = list;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        List list;
        Object obj2;
        switch (this.f8113b) {
            case 0:
                list = this.f8114c;
                obj2 = (FullClassNameMatcher) obj;
                break;
            default:
                list = this.f8114c;
                obj2 = (WildcardClassNameMatcher) obj;
                break;
        }
        list.add(obj2);
    }
}

package org.apache.commons.p161io;

import java.util.function.Predicate;

/* JADX INFO: renamed from: org.apache.commons.io.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2779a implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7935a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ String f7936b;

    public /* synthetic */ C2779a(String str, int i10) {
        this.f7935a = i10;
        this.f7936b = str;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f7935a) {
            case 0:
                return this.f7936b.equalsIgnoreCase((String) obj);
            case 1:
                return this.f7936b.equals((String) obj);
            default:
                return IOCase.lambda$forName$0(this.f7936b, (IOCase) obj);
        }
    }
}

package p096i9;

import p076g9.InterfaceC1633e;

/* JADX INFO: renamed from: i9.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1807c extends AbstractC1844n0 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4732b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1807c(InterfaceC1633e interfaceC1633e, int i10) {
        super(interfaceC1633e);
        this.f4732b = i10;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: a */
    public final String mo2717a() {
        switch (this.f4732b) {
            case 0:
                return "kotlin.Array";
            case 1:
                return "kotlin.collections.ArrayList";
            case 2:
                return "kotlin.collections.HashSet";
            default:
                return "kotlin.collections.LinkedHashSet";
        }
    }
}

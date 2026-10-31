package p096i9;

import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import p055e9.InterfaceC1506b;
import p076g9.InterfaceC1633e;

/* JADX INFO: renamed from: i9.e1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1817e1 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4749b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AbstractC1821f1 f4750c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1817e1(AbstractC1821f1 abstractC1821f1, int i10) {
        super(0);
        this.f4749b = i10;
        this.f4750c = abstractC1821f1;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i10 = this.f4749b;
        AbstractC1821f1 abstractC1821f1 = this.f4750c;
        switch (i10) {
            case 0:
                return Integer.valueOf(AbstractC1813d1.m2919e(abstractC1821f1, (InterfaceC1633e[]) abstractC1821f1.f4766j.getValue()));
            case 1:
                C1829i0 c1829i0 = abstractC1821f1.f4758b;
                return c1829i0 != null ? new InterfaceC1506b[]{c1829i0.f4777a} : AbstractC1813d1.f4741b;
            default:
                return AbstractC1813d1.m2917c(abstractC1821f1.f4758b != null ? new ArrayList(0) : null);
        }
    }
}

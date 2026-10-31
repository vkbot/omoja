package kotlin.coroutines;

import kotlin.jvm.functions.Function2;

/* JADX INFO: renamed from: kotlin.coroutines.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2098b implements Function2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5638b;

    public /* synthetic */ C2098b(int i10) {
        this.f5638b = i10;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f5638b) {
            case 0:
                return CombinedContext.toString$lambda$2((String) obj, (CoroutineContext.Element) obj2);
            default:
                return CoroutineContext.DefaultImpls.plus$lambda$0((CoroutineContext) obj, (CoroutineContext.Element) obj2);
        }
    }
}

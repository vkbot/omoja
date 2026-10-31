package kotlin.text;

import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: kotlin.text.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2176d implements Function1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5687b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f5688c;

    public /* synthetic */ C2176d(int i10, Object obj) {
        this.f5687b = i10;
        this.f5688c = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f5687b) {
            case 0:
                return StringsKt__IndentKt.prependIndent$lambda$5$StringsKt__IndentKt((String) this.f5688c, (String) obj);
            case 1:
                return StringsKt__IndentKt.getIndentFunction$lambda$9$StringsKt__IndentKt((String) this.f5688c, (String) obj);
            default:
                return ((MatcherMatchResult$groups$1) this.f5688c).get(((Integer) obj).intValue());
        }
    }
}

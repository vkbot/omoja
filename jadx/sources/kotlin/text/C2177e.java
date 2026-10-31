package kotlin.text;

import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: kotlin.text.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2177e implements Function1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5689b;

    public /* synthetic */ C2177e(int i10) {
        this.f5689b = i10;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f5689b) {
            case 0:
                return StringsKt__IndentKt.getIndentFunction$lambda$8$StringsKt__IndentKt((String) obj);
            case 1:
                return StringsKt___StringsKt.windowed$lambda$23$StringsKt___StringsKt((CharSequence) obj);
            case 2:
                return StringsKt___StringsKt.windowedSequence$lambda$24$StringsKt___StringsKt((CharSequence) obj);
            default:
                return StringsKt___StringsKt.chunkedSequence$lambda$22$StringsKt___StringsKt((CharSequence) obj);
        }
    }
}

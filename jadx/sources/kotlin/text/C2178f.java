package kotlin.text;

import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;

/* JADX INFO: renamed from: kotlin.text.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2178f implements Function1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5690b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ CharSequence f5691c;

    public /* synthetic */ C2178f(CharSequence charSequence, int i10) {
        this.f5690b = i10;
        this.f5691c = charSequence;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f5690b) {
            case 0:
                return StringsKt__StringsKt.splitToSequence$lambda$20$StringsKt__StringsKt(this.f5691c, (IntRange) obj);
            default:
                return StringsKt__StringsKt.splitToSequence$lambda$18$StringsKt__StringsKt(this.f5691c, (IntRange) obj);
        }
    }
}

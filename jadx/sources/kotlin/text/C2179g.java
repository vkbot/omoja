package kotlin.text;

import java.util.List;
import kotlin.jvm.functions.Function2;

/* JADX INFO: renamed from: kotlin.text.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2179g implements Function2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5692b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ boolean f5693c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f5694d;

    public /* synthetic */ C2179g(Object obj, boolean z9, int i10) {
        this.f5692b = i10;
        this.f5694d = obj;
        this.f5693c = z9;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f5692b) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return StringsKt__StringsKt.rangesDelimitedBy$lambda$14$StringsKt__StringsKt((char[]) this.f5694d, this.f5693c, (CharSequence) obj, iIntValue);
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                return StringsKt__StringsKt.rangesDelimitedBy$lambda$16$StringsKt__StringsKt((List) this.f5694d, this.f5693c, (CharSequence) obj, iIntValue2);
        }
    }
}

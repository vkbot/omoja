package kotlin.text;

import java.util.List;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class g implements Function2 {
    public final /* synthetic */ int b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(Object obj, boolean z, int i) {
        this.b = i;
        this.d = obj;
        this.c = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return StringsKt__StringsKt.f((char[]) this.d, this.c, (CharSequence) obj, iIntValue);
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                return StringsKt__StringsKt.d((List) this.d, this.c, (CharSequence) obj, iIntValue2);
        }
    }
}

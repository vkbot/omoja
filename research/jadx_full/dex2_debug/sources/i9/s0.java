package i9;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class s0 extends Lambda implements Function1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s0(int i, Object obj, Object obj2) {
        super(1);
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                g9.a aVar = (g9.a) obj;
                aVar.getClass();
                g9.a.a(aVar, "key", ((e9.b) this.c).a());
                g9.a.a(aVar, "value", ((e9.b) this.d).a());
                break;
            case 1:
                g9.a aVar2 = (g9.a) obj;
                aVar2.getClass();
                g9.a.a(aVar2, "first", ((e9.b) this.c).a());
                g9.a.a(aVar2, "second", ((e9.b) this.d).a());
                break;
            default:
                ((d9.e) this.c).c(this.d);
                break;
        }
        return Unit.INSTANCE;
    }
}

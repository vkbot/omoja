package p096i9;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import p046d9.C1319e;
import p055e9.InterfaceC1506b;
import p076g9.C1629a;

/* JADX INFO: renamed from: i9.s0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1859s0 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4824b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f4825c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f4826d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1859s0(int i10, Object obj, Object obj2) {
        super(1);
        this.f4824b = i10;
        this.f4825c = obj;
        this.f4826d = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f4824b) {
            case 0:
                C1629a c1629a = (C1629a) obj;
                c1629a.getClass();
                C1629a.m2716a(c1629a, "key", ((InterfaceC1506b) this.f4825c).mo2581a());
                C1629a.m2716a(c1629a, "value", ((InterfaceC1506b) this.f4826d).mo2581a());
                break;
            case 1:
                C1629a c1629a2 = (C1629a) obj;
                c1629a2.getClass();
                C1629a.m2716a(c1629a2, "first", ((InterfaceC1506b) this.f4825c).mo2581a());
                C1629a.m2716a(c1629a2, "second", ((InterfaceC1506b) this.f4826d).mo2581a());
                break;
            default:
                ((C1319e) this.f4825c).m2362c(this.f4826d);
                break;
        }
        return Unit.INSTANCE;
    }
}

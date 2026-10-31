package p055e9;

import com.bumptech.glide.AbstractC1031d;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KClass;
import p065f9.AbstractC1594a;
import p107j9.AbstractC2012c;

/* JADX INFO: renamed from: e9.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1514j extends Lambda implements Function2 {

    /* JADX INFO: renamed from: c */
    public static final C1514j f3701c;

    /* JADX INFO: renamed from: d */
    public static final C1514j f3702d;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3703b;

    static {
        int i10 = 2;
        f3701c = new C1514j(i10, 0);
        f3702d = new C1514j(i10, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1514j(int i10, int i11) {
        super(i10);
        this.f3703b = i11;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f3703b) {
            case 0:
                KClass kClass = (KClass) obj;
                List list = (List) obj2;
                kClass.getClass();
                list.getClass();
                ArrayList arrayListM1291u = AbstractC1031d.m1291u(AbstractC2012c.f5496a, list, true);
                arrayListM1291u.getClass();
                return AbstractC1031d.m1285o(kClass, arrayListM1291u, new C1513i(list, 0));
            default:
                KClass kClass2 = (KClass) obj;
                List list2 = (List) obj2;
                kClass2.getClass();
                list2.getClass();
                ArrayList arrayListM1291u2 = AbstractC1031d.m1291u(AbstractC2012c.f5496a, list2, true);
                arrayListM1291u2.getClass();
                InterfaceC1506b interfaceC1506bM1285o = AbstractC1031d.m1285o(kClass2, arrayListM1291u2, new C1513i(list2, 1));
                if (interfaceC1506bM1285o != null) {
                    return AbstractC1594a.m2675a(interfaceC1506bM1285o);
                }
                return null;
        }
    }
}

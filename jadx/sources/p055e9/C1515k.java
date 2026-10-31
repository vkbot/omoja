package p055e9;

import com.bumptech.glide.AbstractC1031d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KClass;
import p065f9.AbstractC1594a;

/* JADX INFO: renamed from: e9.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1515k extends Lambda implements Function1 {

    /* JADX INFO: renamed from: c */
    public static final C1515k f3704c;

    /* JADX INFO: renamed from: d */
    public static final C1515k f3705d;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3706b;

    static {
        int i10 = 1;
        f3704c = new C1515k(i10, 0);
        f3705d = new C1515k(i10, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1515k(int i10, int i11) {
        super(i10);
        this.f3706b = i11;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f3706b) {
            case 0:
                KClass kClass = (KClass) obj;
                kClass.getClass();
                return AbstractC1031d.m1290t(kClass);
            default:
                KClass kClass2 = (KClass) obj;
                kClass2.getClass();
                InterfaceC1506b interfaceC1506bM1290t = AbstractC1031d.m1290t(kClass2);
                if (interfaceC1506bM1290t != null) {
                    return AbstractC1594a.m2675a(interfaceC1506bM1290t);
                }
                return null;
        }
    }
}

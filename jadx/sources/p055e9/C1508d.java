package p055e9;

import com.bumptech.glide.AbstractC1030c;
import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import p046d9.C1322h;
import p076g9.C1630b;
import p076g9.C1631c;
import p076g9.C1634f;
import p076g9.C1638j;
import p076g9.InterfaceC1633e;
import p096i9.AbstractC1813d1;
import p096i9.C1805b1;

/* JADX INFO: renamed from: e9.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1508d extends Lambda implements Function0 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3694b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3695c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1508d(int i10, Object obj) {
        super(0);
        this.f3694b = i10;
        this.f3695c = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i10 = this.f3694b;
        Object obj = this.f3695c;
        switch (i10) {
            case 0:
                C1509e c1509e = (C1509e) obj;
                C1634f c1634fM1253b = AbstractC1030c.m1253b("e9.c", C1631c.f4139d, new InterfaceC1633e[0], new C1322h(1, c1509e));
                KClass kClass = c1509e.f3696a;
                kClass.getClass();
                return new C1630b(c1634fM1253b, kClass);
            case 1:
                return ((KType) ((ArrayList) obj).get(0)).getClassifier();
            case 2:
                C1634f c1634f = (C1634f) obj;
                return Integer.valueOf(AbstractC1813d1.m2919e(c1634f, c1634f.f4161k));
            default:
                return AbstractC1030c.m1253b("kotlin.Unit", C1638j.f4170g, new InterfaceC1633e[0], new C1322h(3, (C1805b1) obj));
        }
    }
}

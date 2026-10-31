package p046d9;

import com.bumptech.glide.AbstractC1030c;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Typography;
import p055e9.C1509e;
import p076g9.C1629a;
import p076g9.C1631c;
import p076g9.C1634f;
import p076g9.C1637i;
import p076g9.InterfaceC1633e;
import p096i9.AbstractC1821f1;
import p096i9.C1805b1;
import p096i9.C1854q1;
import p096i9.C1857r1;
import p224v8.C3377e;

/* JADX INFO: renamed from: d9.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1322h extends Lambda implements Function1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3146b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3147c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1322h(int i10, Object obj) {
        super(1);
        this.f3146b = i10;
        this.f3147c = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i10 = this.f3146b;
        Object obj2 = this.f3147c;
        switch (i10) {
            case 0:
                ((C1324j) obj2).m2364b();
                return Unit.INSTANCE;
            case 1:
                C1629a c1629a = (C1629a) obj;
                c1629a.getClass();
                StringCompanionObject.INSTANCE.getClass();
                C1629a.m2716a(c1629a, "type", C1854q1.f4814b);
                StringBuilder sb = new StringBuilder("kotlinx.serialization.Polymorphic<");
                C1509e c1509e = (C1509e) obj2;
                sb.append(c1509e.f3696a.getSimpleName());
                sb.append(Typography.greater);
                C1629a.m2716a(c1629a, "value", AbstractC1030c.m1253b(sb.toString(), C1631c.f4140e, new InterfaceC1633e[0], C1637i.f4166b));
                List list = c1509e.f3697b;
                list.getClass();
                c1629a.f4130b = list;
                return Unit.INSTANCE;
            case 2:
                int iIntValue = ((Number) obj).intValue();
                StringBuilder sb2 = new StringBuilder();
                C1634f c1634f = (C1634f) obj2;
                sb2.append(c1634f.f4156f[iIntValue]);
                sb2.append(": ");
                sb2.append(c1634f.f4157g[iIntValue].mo2717a());
                return sb2.toString();
            case 3:
                C1629a c1629a2 = (C1629a) obj;
                c1629a2.getClass();
                List list2 = ((C1805b1) obj2).f4728b;
                list2.getClass();
                c1629a2.f4130b = list2;
                return Unit.INSTANCE;
            case 4:
                int iIntValue2 = ((Number) obj).intValue();
                StringBuilder sb3 = new StringBuilder();
                AbstractC1821f1 abstractC1821f1 = (AbstractC1821f1) obj2;
                sb3.append(abstractC1821f1.f4761e[iIntValue2]);
                sb3.append(": ");
                sb3.append(abstractC1821f1.mo2721f(iIntValue2).mo2717a());
                return sb3.toString();
            case 5:
                C1629a c1629a3 = (C1629a) obj;
                c1629a3.getClass();
                C1857r1 c1857r1 = (C1857r1) obj2;
                C1629a.m2716a(c1629a3, "first", c1857r1.f4820a.mo2581a());
                C1629a.m2716a(c1629a3, "second", c1857r1.f4821b.mo2581a());
                C1629a.m2716a(c1629a3, "third", c1857r1.f4822c.mo2581a());
                return Unit.INSTANCE;
            default:
                Result.Companion companion = Result.INSTANCE;
                Unit unit = Unit.INSTANCE;
                ((C3377e) obj2).resumeWith(Result.m6088constructorimpl(unit));
                return unit;
        }
    }
}

package d9;

import i9.b1;
import i9.f1;
import i9.q1;
import i9.r1;
import java.util.List;
import kotlin.Result;
import kotlin.Result$Companion;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Typography;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class h extends Lambda implements Function1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h(int i, Object obj) {
        super(1);
        this.b = i;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((j) obj2).b();
                return Unit.INSTANCE;
            case 1:
                g9.a aVar = (g9.a) obj;
                aVar.getClass();
                StringCompanionObject.INSTANCE.getClass();
                g9.a.a(aVar, "type", q1.b);
                StringBuilder sb = new StringBuilder("kotlinx.serialization.Polymorphic<");
                e9.e eVar = (e9.e) obj2;
                sb.append(eVar.a.getSimpleName());
                sb.append(Typography.greater);
                g9.a.a(aVar, "value", com.bumptech.glide.c.b(sb.toString(), g9.c.e, new g9.e[0], g9.i.b));
                List list = eVar.b;
                list.getClass();
                aVar.b = list;
                return Unit.INSTANCE;
            case 2:
                int iIntValue = ((Number) obj).intValue();
                StringBuilder sb2 = new StringBuilder();
                g9.f fVar = (g9.f) obj2;
                sb2.append(fVar.f[iIntValue]);
                sb2.append(": ");
                sb2.append(fVar.g[iIntValue].a());
                return sb2.toString();
            case 3:
                g9.a aVar2 = (g9.a) obj;
                aVar2.getClass();
                List list2 = ((b1) obj2).b;
                list2.getClass();
                aVar2.b = list2;
                return Unit.INSTANCE;
            case 4:
                int iIntValue2 = ((Number) obj).intValue();
                StringBuilder sb3 = new StringBuilder();
                f1 f1Var = (f1) obj2;
                sb3.append(f1Var.e[iIntValue2]);
                sb3.append(": ");
                sb3.append(f1Var.f(iIntValue2).a());
                return sb3.toString();
            case 5:
                g9.a aVar3 = (g9.a) obj;
                aVar3.getClass();
                r1 r1Var = (r1) obj2;
                g9.a.a(aVar3, "first", r1Var.a.a());
                g9.a.a(aVar3, "second", r1Var.b.a());
                g9.a.a(aVar3, "third", r1Var.c.a());
                return Unit.INSTANCE;
            default:
                Result$Companion result$Companion = Result.Companion;
                Unit unit = Unit.INSTANCE;
                ((v8.e) obj2).resumeWith(Result.constructor-impl(unit));
                return unit;
        }
    }
}

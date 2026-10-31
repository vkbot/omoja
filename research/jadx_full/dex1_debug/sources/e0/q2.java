package e0;

import androidx.lifecycle.Observer;
import com.example.navistart.SpeedBoardActi;
import com.example.navistart.cores.HUDMassageObj;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class q2 implements Observer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1931a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SpeedBoardActi f1932b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ q2(SpeedBoardActi speedBoardActi, int i9) {
        this.f1931a = i9;
        this.f1932b = speedBoardActi;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Type inference failed for: r0v10, types: [androidx.fragment.app.Fragment, v0.g] */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.fragment.app.Fragment, v0.g] */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.fragment.app.Fragment, v0.g] */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.fragment.app.Fragment, v0.g] */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.fragment.app.Fragment, v0.g] */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.fragment.app.Fragment, v0.g] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        int i9 = this.f1931a;
        SpeedBoardActi speedBoardActi = this.f1932b;
        switch (i9) {
            case 0:
                Integer num = (Integer) obj;
                int i10 = SpeedBoardActi.f822f;
                if (num != null) {
                    int iIntValue = num.intValue();
                    ?? r1 = speedBoardActi.e;
                    if (r1 != 0) {
                        r1.d(iIntValue);
                    }
                }
                break;
            case 1:
                Integer num2 = (Integer) obj;
                int i11 = SpeedBoardActi.f822f;
                if (num2 != null) {
                    int iIntValue2 = num2.intValue();
                    ?? r9 = speedBoardActi.e;
                    if (r9 != 0) {
                        r9.l(iIntValue2);
                    }
                }
                break;
            case 2:
                k7.b bVar = (k7.b) obj;
                int i12 = SpeedBoardActi.f822f;
                if (bVar != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(bVar.f3201b);
                    String strI = com.google.protobuf.q.i(new byte[]{-12, -10}, new byte[]{54, 70, 44, -35, -62, -39, 70, -73}, sb);
                    int i13 = bVar.d;
                    ?? r10 = speedBoardActi.e;
                    if (r10 != 0) {
                        r10.g(i13, strI);
                    }
                }
                break;
            case 3:
                HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                if (hUDMassageObj == null) {
                    int i14 = SpeedBoardActi.f822f;
                } else {
                    ?? r11 = speedBoardActi.e;
                    if (r11 != 0) {
                        r11.o(hUDMassageObj);
                    }
                }
                break;
            case 4:
                String str = (String) obj;
                if (str == null) {
                    int i15 = SpeedBoardActi.f822f;
                } else {
                    ?? r12 = speedBoardActi.e;
                    if (r12 != 0) {
                        r12.f(str);
                    }
                }
                break;
            default:
                s0.a aVar = (s0.a) obj;
                if (aVar == null) {
                    int i16 = SpeedBoardActi.f822f;
                } else {
                    ?? r13 = speedBoardActi.e;
                    if (r13 != 0) {
                        r13.k(aVar);
                    }
                }
                break;
        }
    }
}

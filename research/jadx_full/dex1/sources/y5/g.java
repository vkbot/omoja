package y5;

import com.google.protobuf.a0;
import com.google.protobuf.a1;
import com.google.protobuf.b0;
import com.google.protobuf.g0;
import com.google.protobuf.x;
import com.google.protobuf.x0;
import com.google.protobuf.y;
import com.google.protobuf.z0;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g extends y {
    public static final int ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER = 3;
    public static final int CLIENT_SIGNALS_FIELD_NUMBER = 4;
    private static final g DEFAULT_INSTANCE;
    private static volatile x0 PARSER = null;
    public static final int PROJECT_NUMBER_FIELD_NUMBER = 1;
    public static final int REQUESTING_CLIENT_APP_FIELD_NUMBER = 2;
    private int bitField0_;
    private n4.b clientSignals_;
    private e requestingClientApp_;
    private String projectNumber_ = "";
    private a0 alreadySeenCampaigns_ = z0.e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        g gVar = new g();
        DEFAULT_INSTANCE = gVar;
        y.l(g.class, gVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void n(g gVar, String str) {
        gVar.getClass();
        str.getClass();
        gVar.projectNumber_ = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public static void o(g gVar, a0 a0Var) {
        a0 a0Var2 = gVar.alreadySeenCampaigns_;
        if (!((com.google.protobuf.b) a0Var2).f1472b) {
            int size = a0Var2.size();
            gVar.alreadySeenCampaigns_ = a0Var2.c(size == 0 ? 10 : size * 2);
        }
        List list = gVar.alreadySeenCampaigns_;
        Charset charset = b0.f1473a;
        a0Var.getClass();
        if (!(a0Var instanceof g0)) {
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(a0Var.size() + list.size());
            }
            int size2 = list.size();
            for (Object obj : a0Var) {
                if (obj == null) {
                    String str = "Element at index " + (list.size() - size2) + " is null.";
                    for (int size3 = list.size() - 1; size3 >= size2; size3--) {
                        list.remove(size3);
                    }
                    n0.b.n(str);
                    return;
                }
                list.add(obj);
            }
            return;
        }
        List listY = ((g0) a0Var).y();
        g0 g0Var = (g0) list;
        int size4 = list.size();
        for (Object obj2 : listY) {
            if (obj2 == null) {
                String str2 = "Element at index " + (g0Var.size() - size4) + " is null.";
                for (int size5 = g0Var.size() - 1; size5 >= size4; size5--) {
                    g0Var.remove(size5);
                }
                n0.b.n(str2);
                return;
            }
            if (obj2 instanceof com.google.protobuf.g) {
                g0Var.b((com.google.protobuf.g) obj2);
            } else {
                g0Var.add((String) obj2);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void p(g gVar, n4.b bVar) {
        gVar.getClass();
        gVar.clientSignals_ = bVar;
        gVar.bitField0_ |= 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void q(g gVar, e eVar) {
        gVar.getClass();
        gVar.requestingClientApp_ = eVar;
        gVar.bitField0_ |= 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static g r() {
        return DEFAULT_INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f s() {
        return (f) DEFAULT_INSTANCE.d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.y
    public final Object e(int i9) {
        x0 xVar;
        switch (com.bumptech.glide.g.c(i9)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new a1(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001Ȉ\u0002ဉ\u0000\u0003\u001b\u0004ဉ\u0001", new Object[]{"bitField0_", "projectNumber_", "requestingClientApp_", "alreadySeenCampaigns_", a.class, "clientSignals_"});
            case 3:
                return new g();
            case 4:
                return new f(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                x0 x0Var = PARSER;
                if (x0Var != null) {
                    return x0Var;
                }
                synchronized (g.class) {
                    try {
                        xVar = PARSER;
                        if (xVar == null) {
                            xVar = new x(DEFAULT_INSTANCE);
                            PARSER = xVar;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return xVar;
            default:
                androidx.navigation.b.a();
                return null;
        }
    }
}

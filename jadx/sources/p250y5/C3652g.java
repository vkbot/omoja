package p250y5;

import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
import com.google.protobuf.AbstractC1132b;
import com.google.protobuf.AbstractC1133b0;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1130a1;
import com.google.protobuf.C1148g;
import com.google.protobuf.C1199x;
import com.google.protobuf.C1206z0;
import com.google.protobuf.InterfaceC1129a0;
import com.google.protobuf.InterfaceC1149g0;
import com.google.protobuf.InterfaceC1200x0;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import p142n0.C2467b;
import p145n4.C2476b;

/* JADX INFO: renamed from: y5.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3652g extends AbstractC1202y {
    public static final int ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER = 3;
    public static final int CLIENT_SIGNALS_FIELD_NUMBER = 4;
    private static final C3652g DEFAULT_INSTANCE;
    private static volatile InterfaceC1200x0 PARSER = null;
    public static final int PROJECT_NUMBER_FIELD_NUMBER = 1;
    public static final int REQUESTING_CLIENT_APP_FIELD_NUMBER = 2;
    private int bitField0_;
    private C2476b clientSignals_;
    private C3650e requestingClientApp_;
    private String projectNumber_ = "";
    private InterfaceC1129a0 alreadySeenCampaigns_ = C1206z0.f2798e;

    static {
        C3652g c3652g = new C3652g();
        DEFAULT_INSTANCE = c3652g;
        AbstractC1202y.m2172l(C3652g.class, c3652g);
    }

    /* JADX INFO: renamed from: n */
    public static void m5843n(C3652g c3652g, String str) {
        c3652g.getClass();
        str.getClass();
        c3652g.projectNumber_ = str;
    }

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
    /* JADX INFO: renamed from: o */
    public static void m5844o(C3652g c3652g, InterfaceC1129a0 interfaceC1129a0) {
        InterfaceC1129a0 interfaceC1129a1 = c3652g.alreadySeenCampaigns_;
        if (!((AbstractC1132b) interfaceC1129a1).f2633b) {
            int size = interfaceC1129a1.size();
            c3652g.alreadySeenCampaigns_ = interfaceC1129a1.mo1896c(size == 0 ? 10 : size * 2);
        }
        List list = c3652g.alreadySeenCampaigns_;
        Charset charset = AbstractC1133b0.f2634a;
        interfaceC1129a0.getClass();
        if (!(interfaceC1129a0 instanceof InterfaceC1149g0)) {
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(interfaceC1129a0.size() + list.size());
            }
            int size2 = list.size();
            for (Object obj : interfaceC1129a0) {
                if (obj == null) {
                    String str = "Element at index " + (list.size() - size2) + " is null.";
                    for (int size3 = list.size() - 1; size3 >= size2; size3--) {
                        list.remove(size3);
                    }
                    C2467b.m3828n(str);
                    return;
                }
                list.add(obj);
            }
            return;
        }
        List listMo1954y = ((InterfaceC1149g0) interfaceC1129a0).mo1954y();
        InterfaceC1149g0 interfaceC1149g0 = (InterfaceC1149g0) list;
        int size4 = list.size();
        for (Object obj2 : listMo1954y) {
            if (obj2 == null) {
                String str2 = "Element at index " + (interfaceC1149g0.size() - size4) + " is null.";
                for (int size5 = interfaceC1149g0.size() - 1; size5 >= size4; size5--) {
                    interfaceC1149g0.remove(size5);
                }
                C2467b.m3828n(str2);
                return;
            }
            if (obj2 instanceof C1148g) {
                interfaceC1149g0.mo1953b((C1148g) obj2);
            } else {
                interfaceC1149g0.add((String) obj2);
            }
        }
    }

    /* JADX INFO: renamed from: p */
    public static void m5845p(C3652g c3652g, C2476b c2476b) {
        c3652g.getClass();
        c3652g.clientSignals_ = c2476b;
        c3652g.bitField0_ |= 2;
    }

    /* JADX INFO: renamed from: q */
    public static void m5846q(C3652g c3652g, C3650e c3650e) {
        c3652g.getClass();
        c3652g.requestingClientApp_ = c3650e;
        c3652g.bitField0_ |= 1;
    }

    /* JADX INFO: renamed from: r */
    public static C3652g m5847r() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: renamed from: s */
    public static C3651f m5848s() {
        return (C3651f) DEFAULT_INSTANCE.m2173d();
    }

    @Override // com.google.protobuf.AbstractC1202y
    /* JADX INFO: renamed from: e */
    public final Object mo2174e(int i10) {
        InterfaceC1200x0 c1199x;
        switch (AbstractC1034g.m1296c(i10)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new C1130a1(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001Ȉ\u0002ဉ\u0000\u0003\u001b\u0004ဉ\u0001", new Object[]{"bitField0_", "projectNumber_", "requestingClientApp_", "alreadySeenCampaigns_", C3646a.class, "clientSignals_"});
            case 3:
                return new C3652g();
            case 4:
                return new C3651f(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC1200x0 interfaceC1200x0 = PARSER;
                if (interfaceC1200x0 != null) {
                    return interfaceC1200x0;
                }
                synchronized (C3652g.class) {
                    try {
                        c1199x = PARSER;
                        if (c1199x == null) {
                            c1199x = new C1199x(DEFAULT_INSTANCE);
                            PARSER = c1199x;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return c1199x;
            default:
                C0674b.m835a();
                return null;
        }
    }
}

package p157o7;

import java.util.Map;
import p091i4.AbstractC1746d;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2519j0;
import p148n7.AbstractC2522k0;
import p148n7.C2508f1;
import p148n7.C2553y0;

/* JADX INFO: renamed from: o7.f3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2633f3 extends AbstractC2522k0 {

    /* JADX INFO: renamed from: a */
    public static final boolean f7451a;

    static {
        f7451a = !AbstractC1746d.m2871a(System.getenv("GRPC_EXPERIMENTAL_ENABLE_NEW_PICK_FIRST")) && Boolean.parseBoolean(System.getenv("GRPC_EXPERIMENTAL_ENABLE_NEW_PICK_FIRST"));
    }

    @Override // p148n7.AbstractC2522k0
    /* JADX INFO: renamed from: a */
    public final String mo3951a() {
        return "pick_first";
    }

    @Override // p148n7.AbstractC2522k0
    /* JADX INFO: renamed from: b */
    public final AbstractC2519j0 mo3952b(AbstractC2503e abstractC2503e) {
        return f7451a ? new C2603a3(abstractC2503e) : new C2627e3(abstractC2503e);
    }

    @Override // p148n7.AbstractC2522k0
    /* JADX INFO: renamed from: c */
    public final C2553y0 mo3953c(Map map) {
        try {
            return new C2553y0(new C2615c3(AbstractC2694p4.m4209c("shuffleAddressList", map)));
        } catch (RuntimeException e) {
            return new C2553y0(C2508f1.f6945m.m3933g(e).m3934h("Failed parsing configuration for pick_first"));
        }
    }
}

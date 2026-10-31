package p259z4;

import java.util.Date;
import java.util.HashMap;
import p006a5.C0020e;
import p239x4.InterfaceC3571d;
import p239x4.InterfaceC3573f;
import p239x4.InterfaceC3574g;
import p249y4.InterfaceC3645a;

/* JADX INFO: renamed from: z4.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3743c implements InterfaceC3645a {

    /* JADX INFO: renamed from: f */
    public static final C3741a f11139f;

    /* JADX INFO: renamed from: g */
    public static final C3741a f11140g;

    /* JADX INFO: renamed from: a */
    public final HashMap f11142a;

    /* JADX INFO: renamed from: b */
    public final HashMap f11143b;

    /* JADX INFO: renamed from: c */
    public final C0020e f11144c;

    /* JADX INFO: renamed from: d */
    public boolean f11145d;

    /* JADX INFO: renamed from: e */
    public static final C0020e f11138e = new C0020e(2);

    /* JADX INFO: renamed from: h */
    public static final C3742b f11141h = new C3742b();

    /* JADX WARN: Type inference failed for: r0v1, types: [z4.a] */
    /* JADX WARN: Type inference failed for: r0v2, types: [z4.a] */
    static {
        final int i10 = 0;
        f11139f = new InterfaceC3573f() { // from class: z4.a
            @Override // p239x4.InterfaceC3568a
            /* JADX INFO: renamed from: a */
            public final void mo53a(Object obj, Object obj2) {
                switch (i10) {
                    case 0:
                        ((InterfaceC3574g) obj2).mo87b((String) obj);
                        break;
                    default:
                        ((InterfaceC3574g) obj2).mo88c(((Boolean) obj).booleanValue());
                        break;
                }
            }
        };
        final int i11 = 1;
        f11140g = new InterfaceC3573f() { // from class: z4.a
            @Override // p239x4.InterfaceC3568a
            /* JADX INFO: renamed from: a */
            public final void mo53a(Object obj, Object obj2) {
                switch (i11) {
                    case 0:
                        ((InterfaceC3574g) obj2).mo87b((String) obj);
                        break;
                    default:
                        ((InterfaceC3574g) obj2).mo88c(((Boolean) obj).booleanValue());
                        break;
                }
            }
        };
    }

    public C3743c() {
        HashMap map = new HashMap();
        this.f11142a = map;
        HashMap map2 = new HashMap();
        this.f11143b = map2;
        this.f11144c = f11138e;
        this.f11145d = false;
        map2.put(String.class, f11139f);
        map.remove(String.class);
        map2.put(Boolean.class, f11140g);
        map.remove(Boolean.class);
        map2.put(Date.class, f11141h);
        map.remove(Date.class);
    }

    /* JADX INFO: renamed from: a */
    public final InterfaceC3645a m5973a(Class cls, InterfaceC3571d interfaceC3571d) {
        this.f11142a.put(cls, interfaceC3571d);
        this.f11143b.remove(cls);
        return this;
    }
}

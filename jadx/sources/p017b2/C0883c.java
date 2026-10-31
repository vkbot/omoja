package p017b2;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.net.ConnectivityManager;
import java.net.MalformedURLException;
import java.net.URL;
import p027c2.AbstractC0951a;
import p027c2.AbstractC0966p;
import p027c2.AbstractC0968r;
import p027c2.AbstractC0969s;
import p027c2.AbstractC0970t;
import p027c2.AbstractC0973w;
import p027c2.C0952b;
import p027c2.C0953c;
import p027c2.C0954d;
import p027c2.C0955e;
import p027c2.C0956f;
import p027c2.C0957g;
import p027c2.C0958h;
import p027c2.C0959i;
import p027c2.C0960j;
import p027c2.C0962l;
import p027c2.C0963m;
import p027c2.C0965o;
import p049e2.InterfaceC1457e;
import p133m2.InterfaceC2380a;
import p141n.C2455p;
import p259z4.C3743c;

/* JADX INFO: renamed from: b2.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0883c implements InterfaceC1457e {

    /* JADX INFO: renamed from: a */
    public final C2455p f654a;

    /* JADX INFO: renamed from: b */
    public final ConnectivityManager f655b;

    /* JADX INFO: renamed from: c */
    public final Context f656c;

    /* JADX INFO: renamed from: d */
    public final URL f657d;

    /* JADX INFO: renamed from: e */
    public final InterfaceC2380a f658e;

    /* JADX INFO: renamed from: f */
    public final InterfaceC2380a f659f;

    /* JADX INFO: renamed from: g */
    public final int f660g;

    public C0883c(Context context, InterfaceC2380a interfaceC2380a, InterfaceC2380a interfaceC2380a2) {
        C3743c c3743c = new C3743c();
        C0953c c0953c = C0953c.f833a;
        c3743c.m5973a(AbstractC0966p.class, c0953c);
        c3743c.m5973a(C0959i.class, c0953c);
        C0956f c0956f = C0956f.f846a;
        c3743c.m5973a(AbstractC0970t.class, c0956f);
        c3743c.m5973a(C0963m.class, c0956f);
        C0954d c0954d = C0954d.f835a;
        c3743c.m5973a(AbstractC0968r.class, c0954d);
        c3743c.m5973a(C0960j.class, c0954d);
        C0952b c0952b = C0952b.f820a;
        c3743c.m5973a(AbstractC0951a.class, c0952b);
        c3743c.m5973a(C0958h.class, c0952b);
        C0955e c0955e = C0955e.f838a;
        c3743c.m5973a(AbstractC0969s.class, c0955e);
        c3743c.m5973a(C0962l.class, c0955e);
        C0957g c0957g = C0957g.f854a;
        c3743c.m5973a(AbstractC0973w.class, c0957g);
        c3743c.m5973a(C0965o.class, c0957g);
        c3743c.f11145d = true;
        this.f654a = new C2455p(20, c3743c);
        this.f656c = context;
        this.f655b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f657d = m1014a(C0881a.f645c);
        this.f658e = interfaceC2380a2;
        this.f659f = interfaceC2380a;
        this.f660g = 130000;
    }

    /* JADX INFO: renamed from: a */
    public static URL m1014a(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(AbstractC0074a.m161l("Invalid url: ", str), e);
        }
    }
}

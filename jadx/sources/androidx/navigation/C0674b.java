package androidx.navigation;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.example.navistart.cores.ProxyFactory;
import java.io.IOException;
import p008a7.InterfaceC0028b;
import p023b8.InterfaceC0928b;
import p041d4.C1274h;
import p050e3.C1461d;
import p198t1.C3236n;
import p257z2.InterfaceC3706b;

/* JADX INFO: renamed from: androidx.navigation.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0674b implements InterfaceC0028b, InterfaceC3706b, InterfaceC0928b, ProxyFactory.ProxyFactoryCreatContext {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f482b;

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m835a() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: renamed from: b */
    public static /* synthetic */ void m836b(int i10, String str) {
        throw new IllegalArgumentException(str + i10);
    }

    /* JADX INFO: renamed from: d */
    public static /* synthetic */ void m837d(Object obj, Object obj2, Object obj3, Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        sb.append(obj3);
        throw new IllegalStateException(sb.toString(), th);
    }

    /* JADX INFO: renamed from: e */
    public static /* synthetic */ void m838e(Object obj, String str) {
        throw new UnsupportedOperationException(str + obj);
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ void m839f(Object obj, String str, Object obj2) {
        throw new IllegalStateException((str + obj + obj2).toString());
    }

    /* JADX INFO: renamed from: g */
    public static /* synthetic */ void m840g(String str) {
        throw new UnsupportedOperationException(str);
    }

    /* JADX INFO: renamed from: h */
    public static /* synthetic */ void m841h(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3).toString());
    }

    /* JADX INFO: renamed from: i */
    public static /* synthetic */ void m842i(String str, Object obj, Object obj2, Object obj3, Object obj4) throws IOException {
        throw new IOException(str + obj + obj2 + obj3 + obj4);
    }

    /* JADX INFO: renamed from: j */
    public static /* synthetic */ void m843j(String str, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3 + obj4 + obj5).toString());
    }

    /* JADX INFO: renamed from: k */
    public static /* synthetic */ void m844k(String str, Object obj, Object obj2, Object obj3, Throwable th) {
        throw new Error(str + obj + obj2 + obj3, th);
    }

    /* JADX INFO: renamed from: l */
    public static /* synthetic */ void m845l(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    /* JADX INFO: renamed from: m */
    public static /* synthetic */ void m846m(StringBuilder sb, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        sb.append(obj);
        sb.append(obj2);
        sb.append(obj3);
        sb.append(obj4);
        sb.append(obj5);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX INFO: renamed from: n */
    public static /* synthetic */ void m847n(Throwable th, Object obj) {
        throw new IllegalArgumentException("Can't create an instance of " + obj + ((Object) ", requires a public no-arg constructor: ") + th, th);
    }

    /* JADX INFO: renamed from: o */
    public static /* synthetic */ void m848o(Object obj, String str) {
        throw new IllegalArgumentException(str + obj);
    }

    /* JADX INFO: renamed from: p */
    public static /* synthetic */ void m849p(Object obj, String str, Object obj2) {
        throw new IllegalArgumentException(str + obj + obj2);
    }

    /* JADX INFO: renamed from: q */
    public static /* synthetic */ void m850q(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException((str + obj + obj2 + obj3).toString());
    }

    /* JADX INFO: renamed from: r */
    public static /* synthetic */ void m851r(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + obj4);
    }

    /* JADX INFO: renamed from: s */
    public static /* synthetic */ void m852s(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX INFO: renamed from: t */
    public static /* synthetic */ void m853t(Object obj, String str) {
        throw new IllegalArgumentException(str + obj);
    }

    /* JADX INFO: renamed from: u */
    public static /* synthetic */ void m854u(Object obj, String str, Object obj2) throws IOException {
        throw new IOException(str + obj + obj2);
    }

    /* JADX INFO: renamed from: v */
    public static /* synthetic */ void m855v(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3);
    }

    /* JADX INFO: renamed from: w */
    public static /* synthetic */ void m856w(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + obj4);
    }

    /* JADX INFO: renamed from: x */
    public static /* synthetic */ void m857x(Object obj, String str, Object obj2) {
        throw new IllegalArgumentException(str + obj + obj2);
    }

    /* JADX INFO: renamed from: y */
    public static /* synthetic */ void m858y(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3);
    }

    /* JADX INFO: renamed from: z */
    public static /* synthetic */ void m859z(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalStateException((str + obj + obj2 + obj3 + obj4).toString());
    }

    @Override // p023b8.InterfaceC0928b
    public void accept(Object obj) {
    }

    @Override // p257z2.InterfaceC3706b
    /* JADX INFO: renamed from: c */
    public void mo860c(Object obj) {
        C1461d.m2514n("Starting InAppMessaging runtime with Installation ID " + ((String) obj));
    }

    @Override // com.example.navistart.cores.ProxyFactory.ProxyFactoryCreatContext
    public Object create(Context context) {
        switch (this.f482b) {
            case 28:
                C1274h c1274h = new C1274h(context);
                View.inflate(context, com.example.navistart.R.layout.widget_dclock3, c1274h);
                c1274h.f3050c = (TextView) c1274h.findViewById(com.example.navistart.R.id.outTGime);
                c1274h.f3051d = (TextView) c1274h.findViewById(com.example.navistart.R.id.outData);
                c1274h.setWillNotDraw(false);
                return c1274h;
            default:
                return new C3236n(context);
        }
    }
}

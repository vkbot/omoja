package p172q;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.io.InputStream;
import java.util.ArrayDeque;
import p006a5.C0023h;
import p025c0.C0936e;
import p025c0.C0944m;
import p077h.C1646h;
import p077h.InterfaceC1648j;
import p097j.InterfaceC1889d0;
import p108k.C2019g;
import p108k.InterfaceC2014b;
import p120l.C2187d;
import p188s.C3127b;
import p188s.C3128c;

/* JADX INFO: renamed from: q.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3005a implements InterfaceC1648j {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8449a;

    /* JADX INFO: renamed from: b */
    public final Object f8450b;

    /* JADX INFO: renamed from: c */
    public final Object f8451c;

    public C3005a(Resources resources, InterfaceC1648j interfaceC1648j) {
        this.f8449a = 0;
        this.f8451c = resources;
        this.f8450b = interfaceC1648j;
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: a */
    public final InterfaceC1889d0 mo2730a(Object obj, int i10, int i11, C1646h c1646h) {
        boolean z9;
        C3034x c3034x;
        C0936e c0936e;
        switch (this.f8449a) {
            case 0:
                InterfaceC1889d0 interfaceC1889d0Mo2730a = ((InterfaceC1648j) this.f8450b).mo2730a(obj, i10, i11, c1646h);
                Resources resources = (Resources) this.f8451c;
                if (interfaceC1889d0Mo2730a == null) {
                    return null;
                }
                return new C3013e(resources, interfaceC1889d0Mo2730a);
            case 1:
                InterfaceC1889d0 interfaceC1889d0M4971c = ((C3128c) this.f8450b).m4971c((Uri) obj, c1646h);
                if (interfaceC1889d0M4971c == null) {
                    return null;
                }
                return AbstractC3029s.m4851a((InterfaceC2014b) this.f8451c, (Drawable) ((C3127b) interfaceC1889d0M4971c).get(), i10, i11);
            default:
                InputStream inputStream = (InputStream) obj;
                if (inputStream instanceof C3034x) {
                    c3034x = (C3034x) inputStream;
                    z9 = false;
                } else {
                    z9 = true;
                    c3034x = new C3034x(inputStream, (C2019g) this.f8451c);
                }
                ArrayDeque arrayDeque = C0936e.f790d;
                synchronized (arrayDeque) {
                    c0936e = (C0936e) arrayDeque.poll();
                    break;
                }
                if (c0936e == null) {
                    c0936e = new C0936e();
                }
                C0936e c0936e2 = c0936e;
                c0936e2.f791b = c3034x;
                C0944m c0944m = new C0944m(c0936e2);
                C2187d c2187d = new C2187d(8, c3034x, c0936e2);
                try {
                    C3027q c3027q = (C3027q) this.f8450b;
                    C3013e c3013eM4849a = c3027q.m4849a(new C0023h(c0944m, c3027q.f8498d, c3027q.f8497c), i10, i11, c1646h, c2187d);
                    c0936e2.f792c = null;
                    c0936e2.f791b = null;
                    synchronized (arrayDeque) {
                        arrayDeque.offer(c0936e2);
                        break;
                    }
                    return c3013eM4849a;
                } finally {
                    c0936e2.f792c = null;
                    c0936e2.f791b = null;
                    ArrayDeque arrayDeque2 = C0936e.f790d;
                    synchronized (arrayDeque2) {
                        arrayDeque2.offer(c0936e2);
                        if (z9) {
                            c3034x.m4857c();
                        }
                    }
                }
        }
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: b */
    public final boolean mo2731b(Object obj, C1646h c1646h) {
        switch (this.f8449a) {
            case 0:
                return ((InterfaceC1648j) this.f8450b).mo2731b(obj, c1646h);
            case 1:
                return "android.resource".equals(((Uri) obj).getScheme());
            default:
                return true;
        }
    }

    public /* synthetic */ C3005a(int i10, Object obj, Object obj2) {
        this.f8449a = i10;
        this.f8450b = obj;
        this.f8451c = obj2;
    }
}

package p049e2;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import p133m2.InterfaceC2380a;
import p142n0.C2467b;

/* JADX INFO: renamed from: e2.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1454b extends AbstractC1455c {

    /* JADX INFO: renamed from: a */
    public final Context f3528a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC2380a f3529b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC2380a f3530c;

    /* JADX INFO: renamed from: d */
    public final String f3531d;

    public C1454b(Context context, InterfaceC2380a interfaceC2380a, InterfaceC2380a interfaceC2380a2, String str) {
        if (context == null) {
            C2467b.m3828n("Null applicationContext");
            throw null;
        }
        this.f3528a = context;
        if (interfaceC2380a == null) {
            C2467b.m3828n("Null wallClock");
            throw null;
        }
        this.f3529b = interfaceC2380a;
        if (interfaceC2380a2 == null) {
            C2467b.m3828n("Null monotonicClock");
            throw null;
        }
        this.f3530c = interfaceC2380a2;
        if (str != null) {
            this.f3531d = str;
        } else {
            C2467b.m3828n("Null backendName");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC1455c) {
            C1454b c1454b = (C1454b) ((AbstractC1455c) obj);
            if (this.f3528a.equals(c1454b.f3528a) && this.f3529b.equals(c1454b.f3529b) && this.f3530c.equals(c1454b.f3530c) && this.f3531d.equals(c1454b.f3531d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.f3528a.hashCode() ^ 1000003) * 1000003) ^ this.f3529b.hashCode()) * 1000003) ^ this.f3530c.hashCode()) * 1000003) ^ this.f3531d.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CreationContext{applicationContext=");
        sb.append(this.f3528a);
        sb.append(", wallClock=");
        sb.append(this.f3529b);
        sb.append(", monotonicClock=");
        sb.append(this.f3530c);
        sb.append(", backendName=");
        return AbstractC0074a.m165p(sb, this.f3531d, "}");
    }
}

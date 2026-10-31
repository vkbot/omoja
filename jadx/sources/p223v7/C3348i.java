package p223v7;

import p148n7.AbstractC2513h0;
import p148n7.AbstractC2522k0;
import p148n7.EnumC2518j;
import p157o7.C2633f3;
import p157o7.C2715t1;

/* JADX INFO: renamed from: v7.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3348i {

    /* JADX INFO: renamed from: a */
    public final C3349j f9777a;

    /* JADX INFO: renamed from: b */
    public final C3344e f9778b;

    /* JADX INFO: renamed from: c */
    public final AbstractC2522k0 f9779c;

    /* JADX INFO: renamed from: d */
    public EnumC2518j f9780d;

    /* JADX INFO: renamed from: e */
    public AbstractC2513h0 f9781e;

    /* JADX INFO: renamed from: f */
    public boolean f9782f = false;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ C3363x f9783g;

    public C3348i(C3363x c3363x, C3349j c3349j, C2633f3 c2633f3, C2715t1 c2715t1) {
        this.f9783g = c3363x;
        this.f9777a = c3349j;
        this.f9779c = c2633f3;
        this.f9781e = c2715t1;
        C3344e c3344e = new C3344e(new C3347h(1, this));
        this.f9778b = c3344e;
        this.f9780d = EnumC2518j.f6968b;
        c3344e.m5261i(c2633f3);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Address = ");
        sb.append(this.f9777a);
        sb.append(", state = ");
        sb.append(this.f9780d);
        sb.append(", picker type: ");
        sb.append(this.f9781e.getClass());
        sb.append(", lb: ");
        sb.append(this.f9778b.m5259g().getClass());
        sb.append(this.f9782f ? ", deactivated" : "");
        return sb.toString();
    }
}

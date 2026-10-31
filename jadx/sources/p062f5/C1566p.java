package p062f5;

import com.bumptech.glide.AbstractC1034g;
import p023b8.InterfaceC0928b;
import p023b8.InterfaceC0929c;
import p050e3.C1461d;
import p240x5.C3577c;

/* JADX INFO: renamed from: f5.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1566p implements InterfaceC0929c, InterfaceC0928b {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C3577c f3852b;

    public /* synthetic */ C1566p(C3577c c3577c) {
        this.f3852b = c3577c;
    }

    @Override // p023b8.InterfaceC0928b
    public void accept(Object obj) {
        Boolean bool = (Boolean) obj;
        C3577c c3577c = this.f3852b;
        if (AbstractC1034g.m1294a(c3577c.m5696r(), 1)) {
            C1461d.m2514n("Already impressed campaign " + c3577c.m5699u().m5703p() + " ? : " + bool);
            return;
        }
        if (AbstractC1034g.m1294a(c3577c.m5696r(), 2)) {
            C1461d.m2514n("Already impressed experiment " + c3577c.m5694p().m5689p() + " ? : " + bool);
        }
    }

    @Override // p023b8.InterfaceC0929c
    public Object apply(Object obj) {
        return this.f3852b;
    }
}

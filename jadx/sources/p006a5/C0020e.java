package p006a5;

import java.util.Map;
import p239x4.C3569b;
import p239x4.InterfaceC3571d;
import p239x4.InterfaceC3572e;

/* JADX INFO: renamed from: a5.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0020e implements InterfaceC3571d {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f69a;

    @Override // p239x4.InterfaceC3568a
    /* JADX INFO: renamed from: a */
    public final void mo53a(Object obj, Object obj2) {
        switch (this.f69a) {
            case 0:
                Map.Entry entry = (Map.Entry) obj;
                InterfaceC3572e interfaceC3572e = (InterfaceC3572e) obj2;
                interfaceC3572e.mo58d(C0021f.f71g, entry.getKey());
                interfaceC3572e.mo58d(C0021f.f72h, entry.getValue());
                return;
            case 1:
                throw new C3569b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
            default:
                throw new C3569b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }
    }
}

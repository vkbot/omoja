package p062f5;

import java.io.File;
import p023b8.InterfaceC0928b;
import p023b8.InterfaceC0930d;
import p250y5.C3654i;

/* JADX INFO: renamed from: f5.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1546e implements InterfaceC0928b, InterfaceC0930d {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3801b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1550g f3802c;

    public /* synthetic */ C1546e(C1550g c1550g, int i10) {
        this.f3801b = i10;
        this.f3802c = c1550g;
    }

    @Override // p023b8.InterfaceC0928b
    public void accept(Object obj) {
        switch (this.f3801b) {
            case 0:
                this.f3802c.f3810d = (C3654i) obj;
                break;
            default:
                this.f3802c.f3810d = null;
                break;
        }
    }

    @Override // p023b8.InterfaceC0930d
    public boolean test(Object obj) {
        C1550g c1550g = this.f3802c;
        c1550g.getClass();
        long jM5853p = ((C3654i) obj).m5853p();
        c1550g.f3809c.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        File file = new File(c1550g.f3808b.getApplicationContext().getFilesDir(), "fiam_eligible_campaigns_cache_file");
        if (jM5853p != 0) {
            return jCurrentTimeMillis < jM5853p;
        }
        return !file.exists() || jCurrentTimeMillis < file.lastModified() + 86400000;
    }
}

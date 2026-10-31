package p097j;

import com.bumptech.glide.load.data.InterfaceC1043d;
import java.io.File;
import java.util.List;
import p077h.InterfaceC1643e;
import p141n.C2456q;
import p141n.InterfaceC2457r;

/* JADX INFO: renamed from: j.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1888d implements InterfaceC1894g, InterfaceC1043d {

    /* JADX INFO: renamed from: b */
    public final List f4874b;

    /* JADX INFO: renamed from: c */
    public final C1896h f4875c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC1892f f4876d;

    /* JADX INFO: renamed from: e */
    public int f4877e = -1;

    /* JADX INFO: renamed from: f */
    public InterfaceC1643e f4878f;

    /* JADX INFO: renamed from: g */
    public List f4879g;

    /* JADX INFO: renamed from: h */
    public int f4880h;

    /* JADX INFO: renamed from: i */
    public volatile C2456q f4881i;

    /* JADX INFO: renamed from: j */
    public File f4882j;

    public C1888d(List list, C1896h c1896h, InterfaceC1892f interfaceC1892f) {
        this.f4874b = list;
        this.f4875c = c1896h;
        this.f4876d = interfaceC1892f;
    }

    @Override // p097j.InterfaceC1894g
    /* JADX INFO: renamed from: c */
    public final boolean mo2934c() {
        while (true) {
            List list = this.f4879g;
            boolean z9 = false;
            if (list != null && this.f4880h < list.size()) {
                this.f4881i = null;
                while (!z9 && this.f4880h < this.f4879g.size()) {
                    List list2 = this.f4879g;
                    int i10 = this.f4880h;
                    this.f4880h = i10 + 1;
                    InterfaceC2457r interfaceC2457r = (InterfaceC2457r) list2.get(i10);
                    File file = this.f4882j;
                    C1896h c1896h = this.f4875c;
                    this.f4881i = interfaceC2457r.mo3791b(file, c1896h.f4915e, c1896h.f4916f, c1896h.f4919i);
                    if (this.f4881i != null && this.f4875c.m2940c(this.f4881i.f6651c.mo1316a()) != null) {
                        this.f4881i.f6651c.mo1323e(this.f4875c.f4925o, this);
                        z9 = true;
                    }
                }
                return z9;
            }
            int i11 = this.f4877e + 1;
            this.f4877e = i11;
            if (i11 >= this.f4874b.size()) {
                return false;
            }
            InterfaceC1643e interfaceC1643e = (InterfaceC1643e) this.f4874b.get(this.f4877e);
            C1896h c1896h2 = this.f4875c;
            File fileMo3455c = c1896h2.f4918h.m1073a().mo3455c(new C1890e(interfaceC1643e, c1896h2.f4924n));
            this.f4882j = fileMo3455c;
            if (fileMo3455c != null) {
                this.f4878f = interfaceC1643e;
                this.f4879g = this.f4875c.f4913c.m1293a().m1303f(fileMo3455c);
                this.f4880h = 0;
            }
        }
    }

    @Override // p097j.InterfaceC1894g
    public final void cancel() {
        C2456q c2456q = this.f4881i;
        if (c2456q != null) {
            c2456q.f6651c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1043d
    /* JADX INFO: renamed from: d */
    public final void mo240d(Exception exc) {
        this.f4876d.mo2936b(this.f4878f, exc, this.f4881i.f6651c, 3);
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1043d
    /* JADX INFO: renamed from: f */
    public final void mo242f(Object obj) {
        this.f4876d.mo2935a(this.f4878f, obj, this.f4881i.f6651c, 3, this.f4878f);
    }
}

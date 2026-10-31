package j;

import java.io.File;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements g, com.bumptech.glide.load.data.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f2755b;
    public final h c;
    public final f d;
    public int e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public h.e f2756f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List f2757g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2758h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile n.q f2759i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public File f2760j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(List list, h hVar, f fVar) {
        this.f2755b = list;
        this.c = hVar;
        this.d = fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.g
    public final boolean c() {
        while (true) {
            List list = this.f2757g;
            boolean z8 = false;
            if (list != null && this.f2758h < list.size()) {
                this.f2759i = null;
                while (!z8 && this.f2758h < this.f2757g.size()) {
                    List list2 = this.f2757g;
                    int i9 = this.f2758h;
                    this.f2758h = i9 + 1;
                    n.r rVar = (n.r) list2.get(i9);
                    File file = this.f2760j;
                    h hVar = this.c;
                    this.f2759i = rVar.b(file, hVar.e, hVar.f2781f, hVar.f2784i);
                    if (this.f2759i != null && this.c.c(this.f2759i.c.a()) != null) {
                        this.f2759i.c.e(this.c.f2790o, this);
                        z8 = true;
                    }
                }
                return z8;
            }
            int i10 = this.e + 1;
            this.e = i10;
            if (i10 >= this.f2755b.size()) {
                return false;
            }
            h.e eVar = (h.e) this.f2755b.get(this.e);
            h hVar2 = this.c;
            File fileC = hVar2.f2783h.a().c(new e(eVar, hVar2.f2789n));
            this.f2760j = fileC;
            if (fileC != null) {
                this.f2756f = eVar;
                this.f2757g = this.c.c.a().f(fileC);
                this.f2758h = 0;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.g
    public final void cancel() {
        n.q qVar = this.f2759i;
        if (qVar != null) {
            qVar.c.cancel();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.d
    public final void d(Exception exc) {
        this.d.b(this.f2756f, exc, this.f2759i.c, 3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.d
    public final void f(Object obj) {
        this.d.a(this.f2756f, obj, this.f2759i.c, 3, this.f2756f);
    }
}

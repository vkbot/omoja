package n;

import androidx.core.util.Pools$Pool;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v implements com.bumptech.glide.load.data.e, com.bumptech.glide.load.data.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f3765b;
    public final Pools$Pool c;
    public int d;
    public com.bumptech.glide.h e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public com.bumptech.glide.load.data.d f3766f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List f3767g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3768h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public v(ArrayList arrayList, Pools$Pool pools$Pool) {
        this.c = pools$Pool;
        if (arrayList.isEmpty()) {
            j1.i.k("Must not be empty.");
            throw null;
        }
        this.f3765b = arrayList;
        this.d = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return ((com.bumptech.glide.load.data.e) this.f3765b.get(0)).a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        List list = this.f3767g;
        if (list != null) {
            this.c.release(list);
        }
        this.f3767g = null;
        ArrayList arrayList = this.f3765b;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            ((com.bumptech.glide.load.data.e) obj).b();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final int c() {
        return ((com.bumptech.glide.load.data.e) this.f3765b.get(0)).c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        this.f3768h = true;
        ArrayList arrayList = this.f3765b;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            ((com.bumptech.glide.load.data.e) obj).cancel();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.d
    public final void d(Exception exc) {
        List list = this.f3767g;
        c0.g.c(list, "Argument must not be null");
        list.add(exc);
        g();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void e(com.bumptech.glide.h hVar, com.bumptech.glide.load.data.d dVar) {
        this.e = hVar;
        this.f3766f = dVar;
        this.f3767g = (List) this.c.acquire();
        ((com.bumptech.glide.load.data.e) this.f3765b.get(this.d)).e(hVar, this);
        if (this.f3768h) {
            cancel();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.d
    public final void f(Object obj) {
        if (obj != null) {
            this.f3766f.f(obj);
        } else {
            g();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g() {
        if (this.f3768h) {
            return;
        }
        if (this.d < this.f3765b.size() - 1) {
            this.d++;
            e(this.e, this.f3766f);
        } else {
            c0.g.b(this.f3767g);
            this.f3766f.d(new j.z("Fetch failed", new ArrayList(this.f3767g)));
        }
    }
}

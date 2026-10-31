package u5;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public d f5473b;
    public d c = null;
    public int d;
    public final /* synthetic */ e e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f5474f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(e eVar, int i9) {
        this.f5474f = i9;
        this.e = eVar;
        this.f5473b = eVar.f5483f.e;
        this.d = eVar.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object a() {
        return b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final d b() {
        d dVar = this.f5473b;
        e eVar = this.e;
        if (dVar == eVar.f5483f) {
            n0.b.x();
            return null;
        }
        if (eVar.e != this.d) {
            ai.onnxruntime.b.a();
            return null;
        }
        this.f5473b = dVar.e;
        this.c = dVar;
        return dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f5473b != this.e.f5483f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public Object next() {
        switch (this.f5474f) {
            case 1:
                return b().f5478g;
            default:
                return a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public final void remove() {
        d dVar = this.c;
        if (dVar == null) {
            throw new IllegalStateException();
        }
        e eVar = this.e;
        eVar.c(dVar, true);
        this.c = null;
        this.d = eVar.e;
    }
}

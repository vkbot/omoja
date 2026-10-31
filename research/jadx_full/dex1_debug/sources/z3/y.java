package z3;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f6285a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f6286b;
    public float c;
    public float d;
    public float e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f6287f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f6288g = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public y() {
        d(0.0f, 270.0f, 0.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(float f8) {
        float f9 = this.d;
        if (f9 == f8) {
            return;
        }
        float f10 = ((f8 - f9) + 360.0f) % 360.0f;
        if (f10 > 180.0f) {
            return;
        }
        float f11 = this.f6286b;
        float f12 = this.c;
        u uVar = new u(f11, f12, f11, f12);
        uVar.f6279f = this.d;
        uVar.f6280g = f10;
        this.f6288g.add(new s(uVar));
        this.d = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(Matrix matrix, Path path) {
        ArrayList arrayList = this.f6287f;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            ((w) arrayList.get(i9)).a(matrix, path);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(float f8, float f9) {
        v vVar = new v();
        vVar.f6281b = f8;
        vVar.c = f9;
        this.f6287f.add(vVar);
        t tVar = new t(vVar, this.f6286b, this.c);
        float fB = tVar.b() + 270.0f;
        float fB2 = tVar.b() + 270.0f;
        a(fB);
        this.f6288g.add(tVar);
        this.d = fB2;
        this.f6286b = f8;
        this.c = f9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(float f8, float f9, float f10) {
        this.f6285a = f8;
        this.f6286b = 0.0f;
        this.c = f8;
        this.d = f9;
        this.e = (f9 + f10) % 360.0f;
        this.f6287f.clear();
        this.f6288g.clear();
    }
}

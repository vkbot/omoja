package b7;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class k implements z5.p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z5.h f373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f374b = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(z5.h hVar) {
        this.f373a = hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z5.p
    public final void a(z5.o oVar) {
        this.f374b.add(oVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public z5.b b(z5.j jVar) {
        return new z5.b(new f6.e(jVar));
    }
}

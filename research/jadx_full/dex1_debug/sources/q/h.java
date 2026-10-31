package q;

import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h implements h.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4720a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f4721b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(int i9) {
        this.f4720a = i9;
        switch (i9) {
            case 1:
                this.f4721b = new d();
                break;
            default:
                this.f4721b = new d();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.j
    public final j.d0 a(Object obj, int i9, int i10, h.h hVar) {
        switch (this.f4720a) {
            case 0:
                return this.f4721b.c(c.e((ByteBuffer) obj), i9, i10, hVar);
            default:
                return this.f4721b.c(c.e(c0.b.b((InputStream) obj)), i9, i10, hVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.j
    public final /* bridge */ /* synthetic */ boolean b(Object obj, h.h hVar) {
        switch (this.f4720a) {
            case 0:
                break;
            default:
                break;
        }
        return true;
    }
}

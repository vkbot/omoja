package n;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d0 implements r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d0 f3737b = new d0(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3738a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d0(int i9) {
        this.f3738a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final boolean a(Object obj) {
        switch (this.f3738a) {
            case 0:
                return true;
            case 1:
                return true;
            default:
                return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final q b(Object obj, int i9, int i10, h.h hVar) {
        switch (this.f3738a) {
            case 0:
                return new q(new b0.b(obj), new d(1, obj));
            case 1:
                File file = (File) obj;
                return new q(new b0.b(file), new d(0, file));
            default:
                return null;
        }
    }
}

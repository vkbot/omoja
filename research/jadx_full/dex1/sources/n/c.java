package n;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3734b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(int i9, Object obj) {
        this.f3733a = i9;
        this.f3734b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final boolean a(Object obj) {
        switch (this.f3733a) {
            case 0:
                return true;
            case 1:
                return obj.toString().startsWith("data:image");
            default:
                return true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final q b(Object obj, int i9, int i10, h.h hVar) {
        switch (this.f3733a) {
            case 0:
                byte[] bArr = (byte[]) obj;
                return new q(new b0.b(bArr), new l(1, bArr, (c0) this.f3734b));
            case 1:
                return new q(new b0.b(obj), new l(obj.toString(), (c0) this.f3734b));
            default:
                File file = (File) obj;
                return new q(new b0.b(file), new i.b(1, file, (c0) this.f3734b));
        }
    }
}

package a5;

import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e implements x4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(int i9) {
        this.f40a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x4.a
    public final void a(Object obj, Object obj2) {
        switch (this.f40a) {
            case 0:
                Map$Entry map$Entry = (Map$Entry) obj;
                x4.e eVar = (x4.e) obj2;
                eVar.d(f.f42g, map$Entry.getKey());
                eVar.d(f.f43h, map$Entry.getValue());
                return;
            case 1:
                throw new x4.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
            default:
                throw new x4.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }
    }
}

package f5;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e implements b8.b, b8.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2194b;
    public final /* synthetic */ g c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(g gVar, int i9) {
        this.f2194b = i9;
        this.c = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.b
    public void accept(Object obj) {
        switch (this.f2194b) {
            case 0:
                this.c.d = (y5.i) obj;
                break;
            default:
                this.c.d = null;
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.d
    public boolean test(Object obj) {
        g gVar = this.c;
        gVar.getClass();
        long jP = ((y5.i) obj).p();
        gVar.c.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        File file = new File(gVar.f2198b.getApplicationContext().getFilesDir(), "fiam_eligible_campaigns_cache_file");
        if (jP != 0) {
            return jCurrentTimeMillis < jP;
        }
        return !file.exists() || jCurrentTimeMillis < file.lastModified() + 86400000;
    }
}

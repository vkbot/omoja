package z1;

import com.github.clans.fab.FloatingActionMenu;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6172b;
    public final /* synthetic */ FloatingActionMenu c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h(FloatingActionMenu floatingActionMenu, int i9) {
        this.f6172b = i9;
        this.c = floatingActionMenu;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6172b) {
            case 0:
                this.c.f1054k = true;
                break;
            default:
                this.c.f1054k = false;
                break;
        }
    }
}

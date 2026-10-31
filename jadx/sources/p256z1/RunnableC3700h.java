package p256z1;

import com.github.clans.fab.FloatingActionMenu;

/* JADX INFO: renamed from: z1.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC3700h implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10964b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ FloatingActionMenu f10965c;

    public /* synthetic */ RunnableC3700h(FloatingActionMenu floatingActionMenu, int i10) {
        this.f10964b = i10;
        this.f10965c = floatingActionMenu;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10964b) {
            case 0:
                this.f10965c.f1980k = true;
                break;
            default:
                this.f10965c.f1980k = false;
                break;
        }
    }
}

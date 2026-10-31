package z1;

import com.github.clans.fab.FloatingActionButton;
import com.github.clans.fab.FloatingActionMenu;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6171b;
    public final /* synthetic */ FloatingActionButton c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ FloatingActionMenu e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(FloatingActionMenu floatingActionMenu, FloatingActionButton floatingActionButton, boolean z8, int i9) {
        this.f6171b = i9;
        this.e = floatingActionMenu;
        this.c = floatingActionButton;
        this.d = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6171b) {
            case 0:
                FloatingActionMenu floatingActionMenu = this.e;
                if (!floatingActionMenu.f1054k) {
                    FloatingActionButton floatingActionButton = floatingActionMenu.f1044f;
                    boolean z8 = this.d;
                    FloatingActionButton floatingActionButton2 = this.c;
                    if (floatingActionButton2 != floatingActionButton) {
                        floatingActionButton2.m(z8);
                    }
                    k kVar = (k) floatingActionButton2.getTag(2131296762);
                    if (kVar != null && kVar.r) {
                        if (z8 && kVar.f6185o != null) {
                            kVar.f6186p.cancel();
                            kVar.startAnimation(kVar.f6185o);
                        }
                        kVar.setVisibility(0);
                        break;
                    }
                }
                break;
            default:
                FloatingActionMenu floatingActionMenu2 = this.e;
                if (floatingActionMenu2.f1054k) {
                    FloatingActionButton floatingActionButton3 = floatingActionMenu2.f1044f;
                    boolean z9 = this.d;
                    FloatingActionButton floatingActionButton4 = this.c;
                    if (floatingActionButton4 != floatingActionButton3) {
                        floatingActionButton4.g(z9);
                    }
                    k kVar2 = (k) floatingActionButton4.getTag(2131296762);
                    if (kVar2 != null && kVar2.r) {
                        if (z9 && kVar2.f6186p != null) {
                            kVar2.f6185o.cancel();
                            kVar2.startAnimation(kVar2.f6186p);
                        }
                        kVar2.setVisibility(4);
                        break;
                    }
                }
                break;
        }
    }
}

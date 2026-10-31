package p256z1;

import com.example.navistart.R;
import com.github.clans.fab.FloatingActionButton;
import com.github.clans.fab.FloatingActionMenu;

/* JADX INFO: renamed from: z1.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC3699g implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10960b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ FloatingActionButton f10961c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ boolean f10962d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ FloatingActionMenu f10963e;

    public /* synthetic */ RunnableC3699g(FloatingActionMenu floatingActionMenu, FloatingActionButton floatingActionButton, boolean z9, int i10) {
        this.f10960b = i10;
        this.f10963e = floatingActionMenu;
        this.f10961c = floatingActionButton;
        this.f10962d = z9;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10960b) {
            case 0:
                FloatingActionMenu floatingActionMenu = this.f10963e;
                if (!floatingActionMenu.f1980k) {
                    FloatingActionButton floatingActionButton = floatingActionMenu.f1970f;
                    boolean z9 = this.f10962d;
                    FloatingActionButton floatingActionButton2 = this.f10961c;
                    if (floatingActionButton2 != floatingActionButton) {
                        floatingActionButton2.m1693m(z9);
                    }
                    C3703k c3703k = (C3703k) floatingActionButton2.getTag(R.id.fab_label);
                    if (c3703k != null && c3703k.f10986r) {
                        if (z9 && c3703k.f10983o != null) {
                            c3703k.f10984p.cancel();
                            c3703k.startAnimation(c3703k.f10983o);
                        }
                        c3703k.setVisibility(0);
                        break;
                    }
                }
                break;
            default:
                FloatingActionMenu floatingActionMenu2 = this.f10963e;
                if (floatingActionMenu2.f1980k) {
                    FloatingActionButton floatingActionButton3 = floatingActionMenu2.f1970f;
                    boolean z10 = this.f10962d;
                    FloatingActionButton floatingActionButton4 = this.f10961c;
                    if (floatingActionButton4 != floatingActionButton3) {
                        floatingActionButton4.m1687g(z10);
                    }
                    C3703k c3703k2 = (C3703k) floatingActionButton4.getTag(R.id.fab_label);
                    if (c3703k2 != null && c3703k2.f10986r) {
                        if (z10 && c3703k2.f10984p != null) {
                            c3703k2.f10983o.cancel();
                            c3703k2.startAnimation(c3703k2.f10984p);
                        }
                        c3703k2.setVisibility(4);
                        break;
                    }
                }
                break;
        }
    }
}

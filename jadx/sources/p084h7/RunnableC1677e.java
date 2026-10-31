package p084h7;

import com.woha.appmanag.ManageAppsActivity;

/* JADX INFO: renamed from: h7.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1677e implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4299b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ManageAppsActivity f4300c;

    public /* synthetic */ RunnableC1677e(ManageAppsActivity manageAppsActivity, int i10) {
        this.f4299b = i10;
        this.f4300c = manageAppsActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f4299b;
        ManageAppsActivity manageAppsActivity = this.f4300c;
        switch (i10) {
            case 0:
                String str = ManageAppsActivity.f2847e;
                manageAppsActivity.runOnUiThread(new RunnableC1677e(manageAppsActivity, 1));
                return;
            default:
                String str2 = ManageAppsActivity.f2847e;
                if (manageAppsActivity.isFinishing() || manageAppsActivity.isDestroyed()) {
                    return;
                }
                try {
                    manageAppsActivity.m2199s();
                    break;
                } catch (Exception unused) {
                } finally {
                    manageAppsActivity.f2850d.notifyDataSetChanged();
                }
                return;
        }
    }
}

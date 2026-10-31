package h7;

import com.woha.appmanag.ManageAppsActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2492b;
    public final /* synthetic */ ManageAppsActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(ManageAppsActivity manageAppsActivity, int i9) {
        this.f2492b = i9;
        this.c = manageAppsActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f2492b;
        ManageAppsActivity manageAppsActivity = this.c;
        switch (i9) {
            case 0:
                String str = ManageAppsActivity.e;
                manageAppsActivity.runOnUiThread(new e(manageAppsActivity, 1));
                return;
            default:
                String str2 = ManageAppsActivity.e;
                if (manageAppsActivity.isFinishing() || manageAppsActivity.isDestroyed()) {
                    return;
                }
                try {
                    manageAppsActivity.s();
                    break;
                } catch (Exception unused) {
                } finally {
                    manageAppsActivity.d.notifyDataSetChanged();
                }
                return;
        }
    }
}

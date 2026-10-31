package p022b7;

import android.content.Intent;
import android.util.Log;

/* JADX INFO: renamed from: b7.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0911g implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f734b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C0914j f735c;

    public /* synthetic */ RunnableC0911g(C0914j c0914j, int i10) {
        this.f734b = i10;
        this.f735c = c0914j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f734b;
        C0914j c0914j = this.f735c;
        switch (i10) {
            case 0:
                Log.d("j", "Finishing due to inactivity");
                c0914j.f740a.finish();
                break;
            default:
                Intent intent = new Intent("com.google.zxing.client.android.SCAN");
                intent.putExtra("TIMEOUT", true);
                c0914j.f740a.setResult(0, intent);
                c0914j.m1050a();
                break;
        }
    }
}

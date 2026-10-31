package p043d6;

import android.os.Handler;
import com.journeyapps.barcodescanner.CaptureActivity;
import p016b1.C0862c;
import p022b7.RunnableC0911g;

/* JADX INFO: renamed from: d6.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1308g {

    /* JADX INFO: renamed from: a */
    public final CaptureActivity f3116a;

    /* JADX INFO: renamed from: e */
    public final RunnableC0911g f3120e;

    /* JADX INFO: renamed from: f */
    public boolean f3121f;

    /* JADX INFO: renamed from: c */
    public boolean f3118c = false;

    /* JADX INFO: renamed from: b */
    public final C0862c f3117b = new C0862c(1, this);

    /* JADX INFO: renamed from: d */
    public final Handler f3119d = new Handler();

    public C1308g(CaptureActivity captureActivity, RunnableC0911g runnableC0911g) {
        this.f3116a = captureActivity;
        this.f3120e = runnableC0911g;
    }

    /* JADX INFO: renamed from: a */
    public final void m2355a() {
        this.f3119d.removeCallbacksAndMessages(null);
        if (this.f3118c) {
            this.f3116a.unregisterReceiver(this.f3117b);
            this.f3118c = false;
        }
    }
}

package d6;

import android.os.Handler;
import com.journeyapps.barcodescanner.CaptureActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CaptureActivity f1785a;
    public final b7.g e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1787f;
    public boolean c = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b1.c f1786b = new b1.c(1, this);
    public final Handler d = new Handler();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(CaptureActivity captureActivity, b7.g gVar) {
        this.f1785a = captureActivity;
        this.e = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        this.d.removeCallbacksAndMessages(null);
        if (this.c) {
            this.f1785a.unregisterReceiver(this.f1786b);
            this.c = false;
        }
    }
}

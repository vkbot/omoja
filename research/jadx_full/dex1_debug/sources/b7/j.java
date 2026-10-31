package b7;

import android.app.AlertDialog$Builder;
import android.os.Handler;
import com.journeyapps.barcodescanner.CaptureActivity;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ int f362n = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CaptureActivity f363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DecoratedBarcodeView f364b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final d6.g f367h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final d6.d f368i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Handler f369j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f372m;
    public int c = -1;
    public boolean d = false;
    public boolean e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f365f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f366g = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f370k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final r5.c f371l = new r5.c(2, this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(CaptureActivity captureActivity, DecoratedBarcodeView decoratedBarcodeView) {
        e eVar = new e(1, this);
        this.f372m = false;
        this.f363a = captureActivity;
        this.f364b = decoratedBarcodeView;
        decoratedBarcodeView.getBarcodeView().f346k.add(eVar);
        this.f369j = new Handler();
        this.f367h = new d6.g(captureActivity, new g(this, 0));
        d6.d dVar = new d6.d();
        dVar.f1780a = true;
        captureActivity.setVolumeControlStream(3);
        dVar.f1781b = captureActivity.getApplicationContext();
        this.f368i = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        DecoratedBarcodeView decoratedBarcodeView = this.f364b;
        c7.g gVar = decoratedBarcodeView.getBarcodeView().f340b;
        if (gVar == null || gVar.f519g) {
            this.f363a.finish();
        } else {
            this.f370k = true;
        }
        decoratedBarcodeView.f1588b.g();
        this.f367h.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(String str) {
        CaptureActivity captureActivity = this.f363a;
        if (captureActivity.isFinishing() || this.f366g || this.f370k) {
            return;
        }
        if (str.isEmpty()) {
            str = captureActivity.getString(2131952905);
        }
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(captureActivity);
        alertDialog$Builder.setTitle(captureActivity.getString(2131952903));
        alertDialog$Builder.setMessage(str);
        alertDialog$Builder.setPositiveButton(2131952904, new h(0, this));
        alertDialog$Builder.setOnCancelListener(new i(this));
        alertDialog$Builder.show();
    }
}

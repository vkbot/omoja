package p022b7;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Handler;
import com.example.navistart.R;
import com.journeyapps.barcodescanner.CaptureActivity;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import p032c7.C1003g;
import p043d6.C1305d;
import p043d6.C1308g;
import p184r5.C3105c;

/* JADX INFO: renamed from: b7.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0914j {

    /* JADX INFO: renamed from: n */
    public static final /* synthetic */ int f739n = 0;

    /* JADX INFO: renamed from: a */
    public final CaptureActivity f740a;

    /* JADX INFO: renamed from: b */
    public final DecoratedBarcodeView f741b;

    /* JADX INFO: renamed from: h */
    public final C1308g f747h;

    /* JADX INFO: renamed from: i */
    public final C1305d f748i;

    /* JADX INFO: renamed from: j */
    public final Handler f749j;

    /* JADX INFO: renamed from: m */
    public boolean f752m;

    /* JADX INFO: renamed from: c */
    public int f742c = -1;

    /* JADX INFO: renamed from: d */
    public boolean f743d = false;

    /* JADX INFO: renamed from: e */
    public boolean f744e = true;

    /* JADX INFO: renamed from: f */
    public String f745f = "";

    /* JADX INFO: renamed from: g */
    public boolean f746g = false;

    /* JADX INFO: renamed from: k */
    public boolean f750k = false;

    /* JADX INFO: renamed from: l */
    public final C3105c f751l = new C3105c(2, this);

    public C0914j(CaptureActivity captureActivity, DecoratedBarcodeView decoratedBarcodeView) {
        C0909e c0909e = new C0909e(1, this);
        this.f752m = false;
        this.f740a = captureActivity;
        this.f741b = decoratedBarcodeView;
        decoratedBarcodeView.getBarcodeView().f718k.add(c0909e);
        this.f749j = new Handler();
        this.f747h = new C1308g(captureActivity, new RunnableC0911g(this, 0));
        C1305d c1305d = new C1305d();
        c1305d.f3111a = true;
        captureActivity.setVolumeControlStream(3);
        c1305d.f3112b = captureActivity.getApplicationContext();
        this.f748i = c1305d;
    }

    /* JADX INFO: renamed from: a */
    public final void m1050a() {
        DecoratedBarcodeView decoratedBarcodeView = this.f741b;
        C1003g c1003g = decoratedBarcodeView.getBarcodeView().f709b;
        if (c1003g == null || c1003g.f983g) {
            this.f740a.finish();
        } else {
            this.f750k = true;
        }
        decoratedBarcodeView.f2816b.m2188g();
        this.f747h.m2355a();
    }

    /* JADX INFO: renamed from: b */
    public final void m1051b(String str) {
        CaptureActivity captureActivity = this.f740a;
        if (captureActivity.isFinishing() || this.f746g || this.f750k) {
            return;
        }
        if (str.isEmpty()) {
            str = captureActivity.getString(R.string.zxing_msg_camera_framework_bug);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(captureActivity);
        builder.setTitle(captureActivity.getString(R.string.zxing_app_name));
        builder.setMessage(str);
        builder.setPositiveButton(R.string.zxing_button_ok, new DialogInterfaceOnClickListenerC0912h(0, this));
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: b7.i
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f738b.f740a.finish();
            }
        });
        builder.show();
    }
}

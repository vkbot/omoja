package p022b7;

import android.graphics.Rect;
import android.util.Log;
import com.example.navistart.R;
import com.journeyapps.barcodescanner.BarcodeView;
import com.journeyapps.barcodescanner.ViewfinderView;
import java.util.ArrayList;

/* JADX INFO: renamed from: b7.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0909e {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f706a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f707b;

    public /* synthetic */ C0909e(int i10, Object obj) {
        this.f706a = i10;
        this.f707b = obj;
    }

    /* JADX INFO: renamed from: a */
    public final void m1040a() {
        int i10 = this.f706a;
        Object obj = this.f707b;
        switch (i10) {
            case 0:
                ArrayList arrayList = ((BarcodeView) obj).f718k;
                int size = arrayList.size();
                int i11 = 0;
                while (i11 < size) {
                    Object obj2 = arrayList.get(i11);
                    i11++;
                    ((C0909e) obj2).m1040a();
                }
                break;
            case 1:
                C0914j c0914j = (C0914j) obj;
                if (c0914j.f750k) {
                    Log.d("j", "Camera closed; finishing activity");
                    c0914j.f740a.finish();
                }
                break;
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m1041c(Exception exc) {
        switch (this.f706a) {
            case 0:
                ArrayList arrayList = ((BarcodeView) this.f707b).f718k;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    ((C0909e) obj).m1041c(exc);
                }
                break;
            case 1:
                C0914j c0914j = (C0914j) this.f707b;
                c0914j.m1051b(c0914j.f740a.getString(R.string.zxing_msg_camera_framework_bug));
                break;
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m1042e() {
        switch (this.f706a) {
            case 0:
                ArrayList arrayList = ((BarcodeView) this.f707b).f718k;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    ((C0909e) obj).m1042e();
                }
                break;
            case 1:
                break;
            default:
                ViewfinderView viewfinderView = (ViewfinderView) this.f707b;
                AbstractC0910f abstractC0910f = viewfinderView.f2828j;
                if (abstractC0910f != null) {
                    Rect framingRect = abstractC0910f.getFramingRect();
                    C0925u previewSize = viewfinderView.f2828j.getPreviewSize();
                    if (framingRect != null && previewSize != null) {
                        viewfinderView.f2829k = framingRect;
                        viewfinderView.f2830l = previewSize;
                    }
                }
                viewfinderView.invalidate();
                break;
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m1043g() {
        switch (this.f706a) {
            case 0:
                ArrayList arrayList = ((BarcodeView) this.f707b).f718k;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    ((C0909e) obj).m1043g();
                }
                break;
        }
    }

    /* JADX INFO: renamed from: j */
    public final void m1044j() {
        switch (this.f706a) {
            case 0:
                ArrayList arrayList = ((BarcodeView) this.f707b).f718k;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    ((C0909e) obj).m1044j();
                }
                break;
        }
    }

    /* JADX INFO: renamed from: b */
    private final void m1033b() {
    }

    /* JADX INFO: renamed from: f */
    private final void m1035f() {
    }

    /* JADX INFO: renamed from: h */
    private final void m1036h() {
    }

    /* JADX INFO: renamed from: i */
    private final void m1037i() {
    }

    /* JADX INFO: renamed from: k */
    private final void m1038k() {
    }

    /* JADX INFO: renamed from: l */
    private final void m1039l() {
    }

    /* JADX INFO: renamed from: d */
    private final void m1034d(Exception exc) {
    }
}

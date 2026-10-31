package b7;

import android.graphics.Rect;
import android.util.Log;
import com.journeyapps.barcodescanner.BarcodeView;
import com.journeyapps.barcodescanner.ViewfinderView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f339b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(int i9, Object obj) {
        this.f338a = i9;
        this.f339b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        int i9 = this.f338a;
        Object obj = this.f339b;
        switch (i9) {
            case 0:
                ArrayList arrayList = ((BarcodeView) obj).f346k;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj2 = arrayList.get(i10);
                    i10++;
                    ((e) obj2).a();
                }
                break;
            case 1:
                j jVar = (j) obj;
                if (jVar.f370k) {
                    Log.d("j", "Camera closed; finishing activity");
                    jVar.f363a.finish();
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(Exception exc) {
        switch (this.f338a) {
            case 0:
                ArrayList arrayList = ((BarcodeView) this.f339b).f346k;
                int size = arrayList.size();
                int i9 = 0;
                while (i9 < size) {
                    Object obj = arrayList.get(i9);
                    i9++;
                    ((e) obj).c(exc);
                }
                break;
            case 1:
                j jVar = (j) this.f339b;
                jVar.b(jVar.f363a.getString(2131952905));
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e() {
        switch (this.f338a) {
            case 0:
                ArrayList arrayList = ((BarcodeView) this.f339b).f346k;
                int size = arrayList.size();
                int i9 = 0;
                while (i9 < size) {
                    Object obj = arrayList.get(i9);
                    i9++;
                    ((e) obj).e();
                }
                break;
            case 1:
                break;
            default:
                ViewfinderView viewfinderView = (ViewfinderView) this.f339b;
                f fVar = viewfinderView.f1595j;
                if (fVar != null) {
                    Rect framingRect = fVar.getFramingRect();
                    u previewSize = viewfinderView.f1595j.getPreviewSize();
                    if (framingRect != null && previewSize != null) {
                        viewfinderView.f1596k = framingRect;
                        viewfinderView.f1597l = previewSize;
                    }
                }
                viewfinderView.invalidate();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g() {
        switch (this.f338a) {
            case 0:
                ArrayList arrayList = ((BarcodeView) this.f339b).f346k;
                int size = arrayList.size();
                int i9 = 0;
                while (i9 < size) {
                    Object obj = arrayList.get(i9);
                    i9++;
                    ((e) obj).g();
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j() {
        switch (this.f338a) {
            case 0:
                ArrayList arrayList = ((BarcodeView) this.f339b).f346k;
                int size = arrayList.size();
                int i9 = 0;
                while (i9 < size) {
                    Object obj = arrayList.get(i9);
                    i9++;
                    ((e) obj).j();
                }
                break;
        }
    }

    private final void b() {
    }

    private final void f() {
    }

    private final void h() {
    }

    private final void i() {
    }

    private final void k() {
    }

    private final void l() {
    }

    private final void d(Exception exc) {
    }
}

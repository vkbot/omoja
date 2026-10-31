package p022b7;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.support.v4.media.C0090h;
import android.util.Log;
import com.example.navistart.R;
import com.journeyapps.barcodescanner.BarcodeView;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import com.journeyapps.barcodescanner.ViewfinderView;
import java.util.List;
import p002a1.RunnableC0003a;
import p032c7.AbstractC1010n;
import p032c7.C1008l;
import p043d6.C1305d;
import p099j1.C1929i;
import p184r5.C3105c;
import p260z5.C3759o;

/* JADX INFO: renamed from: b7.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0906b implements Handler.Callback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f702a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ BarcodeView f703b;

    public /* synthetic */ C0906b(BarcodeView barcodeView, int i10) {
        this.f702a = i10;
        this.f703b = barcodeView;
    }

    /* JADX WARN: Code duplicated, block: B:62:0x01a0  */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        C0090h c0090h;
        C1008l c1008l;
        boolean z9 = false;
        switch (this.f702a) {
            case 0:
                BarcodeView barcodeView = this.f703b;
                int i10 = message.what;
                if (i10 == R.id.zxing_decode_succeeded) {
                    C0905a c0905a = (C0905a) message.obj;
                    if (c0905a == null || (c0090h = barcodeView.f2810C) == null) {
                        z9 = true;
                    } else {
                        z9 = true;
                        if (barcodeView.f2809B != 1) {
                            C3105c c3105c = (C3105c) c0090h.f191c;
                            ((C0914j) c3105c.f8867c).f741b.f2816b.m2188g();
                            C1305d c1305d = ((C0914j) c3105c.f8867c).f748i;
                            synchronized (c1305d) {
                                if (c1305d.f3111a) {
                                    c1305d.m2353a();
                                }
                                break;
                            }
                            ((C0914j) c3105c.f8867c).f749j.post(new RunnableC0003a(10, c3105c, c0905a));
                            if (barcodeView.f2809B == 2) {
                                barcodeView.f2809B = 1;
                                barcodeView.f2810C = null;
                                barcodeView.m2190i();
                                return true;
                            }
                            z9 = true;
                        }
                    }
                } else if (i10 == R.id.zxing_decode_failed) {
                    z9 = true;
                } else if (i10 == R.id.zxing_possible_result_points) {
                    List<C3759o> list = (List) message.obj;
                    C0090h c0090h2 = barcodeView.f2810C;
                    if (c0090h2 != null) {
                        z9 = true;
                        if (barcodeView.f2809B != 1) {
                            c0090h2.getClass();
                            for (C3759o c3759o : list) {
                                ViewfinderView viewfinderView = ((DecoratedBarcodeView) c0090h2.f192d).f2817c;
                                if (viewfinderView.f2826h.size() < 20) {
                                    viewfinderView.f2826h.add(c3759o);
                                }
                            }
                        }
                    } else {
                        z9 = true;
                    }
                }
                return z9;
            default:
                BarcodeView barcodeView2 = this.f703b;
                C0909e c0909e = barcodeView2.f733z;
                int i11 = message.what;
                if (i11 == R.id.zxing_prewiew_size_ready) {
                    C0925u c0925u = (C0925u) message.obj;
                    barcodeView2.f722o = c0925u;
                    C0925u c0925u2 = barcodeView2.f721n;
                    if (c0925u2 != null) {
                        if (c0925u == null || (c1008l = barcodeView2.f719l) == null) {
                            barcodeView2.f726s = null;
                            barcodeView2.f725r = null;
                            barcodeView2.f723p = null;
                            C1929i.m3030l("containerSize or previewSize is not set yet");
                        } else {
                            int i12 = c0925u.f777b;
                            int i13 = c0925u.f778c;
                            int i14 = c0925u2.f777b;
                            int i15 = c0925u2.f778c;
                            Rect rectMo1212b = ((AbstractC1010n) c1008l.f1010d).mo1212b(c0925u, (C0925u) c1008l.f1009c);
                            if (rectMo1212b.width() > 0 && rectMo1212b.height() > 0) {
                                barcodeView2.f723p = rectMo1212b;
                                Rect rect = new Rect(0, 0, i14, i15);
                                Rect rect2 = barcodeView2.f723p;
                                Rect rect3 = new Rect(rect);
                                rect3.intersect(rect2);
                                if (barcodeView2.f727t != null) {
                                    rect3.inset(Math.max(0, (rect3.width() - barcodeView2.f727t.f777b) / 2), Math.max(0, (rect3.height() - barcodeView2.f727t.f778c) / 2));
                                } else {
                                    int iMin = (int) Math.min(((double) rect3.width()) * barcodeView2.f728u, ((double) rect3.height()) * barcodeView2.f728u);
                                    rect3.inset(iMin, iMin);
                                    if (rect3.height() > rect3.width()) {
                                        rect3.inset(0, (rect3.height() - rect3.width()) / 2);
                                    }
                                }
                                barcodeView2.f725r = rect3;
                                Rect rect4 = new Rect(barcodeView2.f725r);
                                Rect rect5 = barcodeView2.f723p;
                                rect4.offset(-rect5.left, -rect5.top);
                                Rect rect6 = new Rect((rect4.left * i12) / barcodeView2.f723p.width(), (rect4.top * i13) / barcodeView2.f723p.height(), (rect4.right * i12) / barcodeView2.f723p.width(), (rect4.bottom * i13) / barcodeView2.f723p.height());
                                barcodeView2.f726s = rect6;
                                if (rect6.width() <= 0 || barcodeView2.f726s.height() <= 0) {
                                    barcodeView2.f726s = null;
                                    barcodeView2.f725r = null;
                                    Log.w("f", "Preview frame is too small");
                                } else {
                                    c0909e.m1042e();
                                }
                            }
                            barcodeView2.requestLayout();
                            barcodeView2.m1049e();
                        }
                    }
                    return true;
                }
                if (i11 == R.id.zxing_camera_error) {
                    Exception exc = (Exception) message.obj;
                    if (barcodeView2.f709b != null) {
                        barcodeView2.m2188g();
                        c0909e.m1041c(exc);
                    }
                } else if (i11 == R.id.zxing_camera_closed) {
                    c0909e.m1040a();
                }
                return false;
        }
    }
}

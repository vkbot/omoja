package b7;

import android.graphics.Rect;
import android.os.Handler$Callback;
import android.os.Message;
import android.util.Log;
import com.journeyapps.barcodescanner.BarcodeView;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import com.journeyapps.barcodescanner.ViewfinderView;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements Handler$Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BarcodeView f335b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(BarcodeView barcodeView, int i9) {
        this.f334a = i9;
        this.f335b = barcodeView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:62:0x01a0  */
    @Override // android.os.Handler$Callback
    public final boolean handleMessage(Message message) {
        android.support.v4.media.h hVar;
        c7.l lVar;
        boolean z8 = false;
        switch (this.f334a) {
            case 0:
                BarcodeView barcodeView = this.f335b;
                int i9 = message.what;
                if (i9 == 2131297793) {
                    a aVar = (a) message.obj;
                    if (aVar == null || (hVar = barcodeView.C) == null) {
                        z8 = true;
                    } else {
                        z8 = true;
                        if (barcodeView.B != 1) {
                            r5.c cVar = (r5.c) hVar.c;
                            ((j) cVar.c).f364b.f1588b.g();
                            d6.d dVar = ((j) cVar.c).f368i;
                            synchronized (dVar) {
                                if (dVar.f1780a) {
                                    dVar.a();
                                }
                                break;
                            }
                            ((j) cVar.c).f369j.post(new a1.a(10, cVar, aVar));
                            if (barcodeView.B == 2) {
                                barcodeView.B = 1;
                                barcodeView.C = null;
                                barcodeView.i();
                                return true;
                            }
                            z8 = true;
                        }
                    }
                } else if (i9 == 2131297792) {
                    z8 = true;
                } else if (i9 == 2131297794) {
                    List<z5.o> list = (List) message.obj;
                    android.support.v4.media.h hVar2 = barcodeView.C;
                    if (hVar2 != null) {
                        z8 = true;
                        if (barcodeView.B != 1) {
                            hVar2.getClass();
                            for (z5.o oVar : list) {
                                ViewfinderView viewfinderView = ((DecoratedBarcodeView) hVar2.d).c;
                                if (viewfinderView.f1593h.size() < 20) {
                                    viewfinderView.f1593h.add(oVar);
                                }
                            }
                        }
                    } else {
                        z8 = true;
                    }
                }
                return z8;
            default:
                BarcodeView barcodeView2 = this.f335b;
                e eVar = barcodeView2.f358z;
                int i10 = message.what;
                if (i10 == 2131297796) {
                    u uVar = (u) message.obj;
                    barcodeView2.f350o = uVar;
                    u uVar2 = barcodeView2.f349n;
                    if (uVar2 != null) {
                        if (uVar == null || (lVar = barcodeView2.f347l) == null) {
                            barcodeView2.f353s = null;
                            barcodeView2.r = null;
                            barcodeView2.f351p = null;
                            j1.i.l("containerSize or previewSize is not set yet");
                        } else {
                            int i11 = uVar.f389b;
                            int i12 = uVar.c;
                            int i13 = uVar2.f389b;
                            int i14 = uVar2.c;
                            Rect rectB = ((c7.n) lVar.d).b(uVar, (u) lVar.c);
                            if (rectB.width() > 0 && rectB.height() > 0) {
                                barcodeView2.f351p = rectB;
                                Rect rect = new Rect(0, 0, i13, i14);
                                Rect rect2 = barcodeView2.f351p;
                                Rect rect3 = new Rect(rect);
                                rect3.intersect(rect2);
                                if (barcodeView2.t != null) {
                                    rect3.inset(Math.max(0, (rect3.width() - barcodeView2.t.f389b) / 2), Math.max(0, (rect3.height() - barcodeView2.t.c) / 2));
                                } else {
                                    int iMin = (int) Math.min(((double) rect3.width()) * barcodeView2.f354u, ((double) rect3.height()) * barcodeView2.f354u);
                                    rect3.inset(iMin, iMin);
                                    if (rect3.height() > rect3.width()) {
                                        rect3.inset(0, (rect3.height() - rect3.width()) / 2);
                                    }
                                }
                                barcodeView2.r = rect3;
                                Rect rect4 = new Rect(barcodeView2.r);
                                Rect rect5 = barcodeView2.f351p;
                                rect4.offset(-rect5.left, -rect5.top);
                                Rect rect6 = new Rect((rect4.left * i11) / barcodeView2.f351p.width(), (rect4.top * i12) / barcodeView2.f351p.height(), (rect4.right * i11) / barcodeView2.f351p.width(), (rect4.bottom * i12) / barcodeView2.f351p.height());
                                barcodeView2.f353s = rect6;
                                if (rect6.width() <= 0 || barcodeView2.f353s.height() <= 0) {
                                    barcodeView2.f353s = null;
                                    barcodeView2.r = null;
                                    Log.w("f", "Preview frame is too small");
                                } else {
                                    eVar.e();
                                }
                            }
                            barcodeView2.requestLayout();
                            barcodeView2.e();
                        }
                    }
                    return true;
                }
                if (i10 == 2131297790) {
                    Exception exc = (Exception) message.obj;
                    if (barcodeView2.f340b != null) {
                        barcodeView2.g();
                        eVar.c(exc);
                    }
                } else if (i10 == 2131297789) {
                    eVar.a();
                }
                return false;
        }
    }
}

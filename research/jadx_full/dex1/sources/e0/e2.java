package e0;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import com.example.navistart.OverlayService;
import com.example.navistart.cores.InterC;
import com.woha.wifim.MainWifiManadger;
import java.util.ArrayList;
import o7.i4;
import okhttp3.Call;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e2 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1831b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e2(Object obj, Object obj2, boolean z8, int i9) {
        this.f1831b = i9;
        this.d = obj;
        this.e = obj2;
        this.c = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        t1.a aVar;
        i4 i4Var;
        i4 i4Var2;
        switch (this.f1831b) {
            case 0:
                OverlayService overlayService = (OverlayService) this.d;
                boolean z8 = this.c;
                String str = (String) this.e;
                OverlayService overlayService2 = OverlayService.f803f;
                if (z8 != w0.a0.e()) {
                    return;
                }
                if (z8) {
                    if (!OverlayService.f804g || (aVar = overlayService.f807b) == null) {
                        return;
                    }
                    aVar.setText(str);
                    return;
                }
                String lowerCase = str.toLowerCase();
                h0.b.a();
                h0.b.f().getClass();
                if (lowerCase.contains(j0.c.f().toLowerCase())) {
                    overlayService.b();
                }
                if (OverlayService.f804g) {
                    overlayService.f807b.setText(str);
                    h0.b.a();
                    j0.e eVarD = h0.b.f().d(lowerCase);
                    if (j0.f.d(eVarD)) {
                        overlayService.d();
                        overlayService.a();
                        StringBuilder sb = new StringBuilder();
                        u0.a aVarO = h0.b.o();
                        byte[] bArr = m.f1896j;
                        String[] strArr = p3.f1924a;
                        com.google.protobuf.q.s(bArr, aVarO, "", sb);
                        com.google.protobuf.q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                        String strG = com.google.protobuf.q.g(sb, x1.f1989q);
                        u0.a aVarO2 = h0.b.o();
                        byte[] bArr2 = m.f1892f;
                        if ((com.google.protobuf.q.w(bArr2, aVarO2, "", strG) ? Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{-19}, new byte[]{-35, -83, 2, -42, -39, -55, 96, -28}, h0.b.o(), com.google.protobuf.q.h(m.f1893g, h0.b.o(), new String(bArr2)), 0)))) : Boolean.FALSE).booleanValue()) {
                            h0.b.a();
                            h0.b.f().j(eVarD, null);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            case 1:
                h0.b bVar = (h0.b) this.d;
                Context context = (Context) this.e;
                boolean z9 = this.c;
                h0.a aVar2 = h0.b.f2422h;
                n0.c cVar = bVar.f2434a.f1918a;
                InterC interCJ = bVar.j();
                synchronized (aVar2) {
                    if (!cVar.equals(aVar2.f2418h) || z9) {
                        aVar2.a(cVar, interCJ, context);
                    }
                    break;
                }
                return;
            case 2:
                m0.q2 q2Var = (m0.q2) this.d;
                boolean z10 = this.c;
                Context context2 = (Context) this.e;
                p0.e eVar = q2Var.f3570b;
                try {
                    if (!z10) {
                        m0.o2 o2Var = new m0.o2(q2Var, 1);
                        eVar.getClass();
                        synchronized (p0.b.c) {
                            try {
                                i4Var2 = p0.b.f(eVar.f4556a) ? new i4(false, 0, 1, m.h(new byte[]{123, -1, -54, -35, -57, -112, 107, 110, 23, -20, -38, -64, -63, -116, 46, 117, 89, -66, -49, -63, -53, -97, 124, 121, 68, -19}, new byte[]{55, -98, -65, -77, -92, -8, 14, 28})) : eVar.d(o2Var);
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    } else {
                        i4Var2 = eVar.f(new m0.o2(q2Var, 0));
                    }
                    i4Var = i4Var2;
                    break;
                } catch (Exception e) {
                    i4Var = new i4(false, 0, 1, e.getClass().getSimpleName() + m.h(new byte[]{75, 16}, new byte[]{113, 48, 51, 118, 106, -66, -44, -120}) + e.getMessage());
                }
                q2Var.f3570b.getClass();
                q2Var.f3574i.post(new m0.p2(q2Var, z10, p0.e.e(), i4Var, context2));
                return;
            case 3:
                MainWifiManadger mainWifiManadger = (MainWifiManadger) this.d;
                Call call = (Call) this.e;
                boolean z11 = this.c;
                if (mainWifiManadger.f1645q != call || mainWifiManadger.isFinishing() || mainWifiManadger.isDestroyed()) {
                    return;
                }
                mainWifiManadger.f1645q = null;
                mainWifiManadger.x(z11 ? 2131952875 : 2131952877, z11 ? ContextCompat.getColor(mainWifiManadger, 2131035006) : SupportMenu.CATEGORY_MASK);
                return;
            case 4:
                ((q0.f) this.d).b((String) this.e, this.c);
                return;
            case 5:
                s1.q0 q0Var = (s1.q0) this.d;
                Bitmap bitmap = (Bitmap) this.e;
                boolean z12 = this.c;
                if (q0Var.E) {
                    return;
                }
                q0Var.c.setImageBitmap(bitmap);
                if (z12) {
                    y5.k.x(q0Var.getContext(), m.h(new byte[]{-114, 42, -85, 67, -17, 31, -44, 11, -32, 94, -54, 45, -126, 114, 74, 11, -20, 94, -64, 44, -82, 114, 73}, new byte[]{94, -114, 123, -3, 63, -94, -12, -37}));
                    return;
                }
                return;
            case 6:
                ((s1.q0) this.d).M((ArrayList) this.e, this.c, null);
                return;
            default:
                s1.u0 u0Var = (s1.u0) this.d;
                boolean z13 = this.c;
                e4.o oVar = (e4.o) this.e;
                ArrayList arrayList = u0Var.f5210j;
                u0Var.f5215o = false;
                if (u0Var.isAttachedToWindow()) {
                    if (!z13) {
                        Toast.makeText(u0Var.getContext(), 2131952494, 1).show();
                        return;
                    }
                    arrayList.remove(oVar.a());
                    arrayList.add(0, oVar.a());
                    while (arrayList.size() > 20) {
                        arrayList.remove(arrayList.size() - 1);
                    }
                    h0.b.o().saveString(s1.u0.f5204u, TextUtils.join(m.h(new byte[]{-37}, new byte[]{-32, 14, 93, -99, 41, -13, 121, 39}), arrayList));
                    u0Var.l();
                    return;
                }
                return;
        }
    }

    public /* synthetic */ e2(Object obj, boolean z8, Object obj2, int i9) {
        this.f1831b = i9;
        this.d = obj;
        this.c = z8;
        this.e = obj2;
    }
}

package e0;

import android.app.AlertDialog$Builder;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.VpnService;
import android.os.Handler;
import android.os.Looper;
import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import com.example.navistart.MyA11yService;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import com.example.navistart.TService;
import com.example.navistart.VJCT;
import java.util.Objects;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c3 implements CompoundButton$OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1820b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c3(int i9, Object obj, Object obj2) {
        this.f1819a = i9;
        this.f1820b = obj;
        this.c = obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton$OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z8) {
        switch (this.f1819a) {
            case 0:
                VJCT vjct = (VJCT) this.f1820b;
                Switch r12 = (Switch) this.c;
                if (z8) {
                    Intent intentPrepare = VpnService.prepare(vjct.f883b);
                    if (intentPrepare != null) {
                        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(vjct);
                        vjct.f884f = alertDialog$Builder;
                        alertDialog$Builder.setTitle(m.h(new byte[]{-53, 86, -1, 72, -31, 117, -29, 102, -53, 116, -1, 72, -31, 117, -29, 111, 58}, new byte[]{27, -60, 47, -11, 49, -51, 51, -38}));
                        vjct.f884f.setMessage(vjct.getResources().getString(2131952860));
                        vjct.f884f.setPositiveButton(m.h(new byte[]{-41, 41, 94, 9}, new byte[]{7, -73, -114, -109, 115, 117, 18, 37}), new d3(0));
                        vjct.f884f.show();
                        try {
                            vjct.startActivityForResult(intentPrepare, 15);
                        } catch (ActivityNotFoundException unused) {
                            Toast.makeText(vjct, m.h(new byte[]{-19, -104, 78, 103, 1, -117, Base64.padSymbol, 90, -19, -116, 78, 99, 0, -73, 60, 102, -19, -116, -66, 15, 110, -38, 86, 8, ByteCompanionObject.MIN_VALUE, -23, 32, -1, 0, -75, 60, 102, -19, -115, 79, 93, 0, -72, 60, 109, -20, -71, 78, 105, 0, -66, 60, 109, -19, -124, 78, 103, 1, -123, -52, -114, 109, 119, -66, 15, 109, -38, 89, 8, -119, -23, 32, 14, 81, -37, 110, 9, -66, -23, 33, 15, 109, -38, 82}, new byte[]{Base64.padSymbol, 57, -98, -33, -48, 10, -20, -40}), 1).show();
                        }
                        vjct.e.setChecked(false);
                    } else {
                        vjct.d.setVisibility(0);
                        TService.c(vjct);
                    }
                } else {
                    TextView textView = VJCT.f879g;
                    r12.setChecked(false);
                    vjct.d.setVisibility(8);
                    d2.h hVar = TService.c;
                    vjct.stopService(new Intent(vjct.getApplicationContext(), (Class<?>) TService.class));
                }
                h0.b.o().saveBoolean(m.h(new byte[]{101, 41, -43, 50, -83, 103, -109, -19, 122, 58, -34, 30, -127, 113, -107, -6, 97, 45}, new byte[]{19, 89, -69, 109, -34, 2, -31, -101}), z8);
                break;
            case 1:
                m0.m0 m0Var = (m0.m0) this.f1820b;
                m0.k0 k0Var = (m0.k0) this.c;
                compoundButton.setOnCheckedChangeListener(null);
                compoundButton.setChecked(o4.b.y(m0Var.f3512b.e, k0Var.f3489a));
                m0.n0 n0Var = m0Var.f3512b;
                if (!n0Var.d) {
                    n0Var.d = true;
                    int i9 = n0Var.c;
                    Context applicationContext = n0Var.requireContext().getApplicationContext();
                    n0Var.f3530h.setVisibility(0);
                    n0Var.f3529g.setVisibility(0);
                    n0Var.f3529g.setText(2131952009);
                    n0Var.f3532j.notifyDataSetChanged();
                    w.c(-1, m0.n0.f3526k).execute(new m0.i0(n0Var, applicationContext, i9, k0Var, z8));
                    break;
                }
                break;
            case 2:
                m0.q1 q1Var = (m0.q1) this.f1820b;
                w0.o0 o0Var = (w0.o0) this.c;
                if (o0Var.c != z8) {
                    o0Var.c = z8;
                    f5.j jVar = q1Var.d;
                    if (jVar != null) {
                        jVar.run();
                    }
                }
                break;
            case 3:
                o0.a aVar = (o0.a) this.f1820b;
                o0.f fVar = (o0.f) this.c;
                aVar.f4013b.f4033a.edit().putBoolean(m.h(new byte[]{88, -82, 126, -83, -32, 73, -66, 5}, new byte[]{Base64.padSymbol, -64, 31, -49, -116, 44, -38, 90}) + fVar.name(), z8).apply();
                if (MyA11yService.d != null) {
                    Handler handler = new Handler(Looper.getMainLooper());
                    d2.h hVar2 = MyA11yService.d;
                    Objects.requireNonNull(hVar2);
                    handler.post(new a4.g(14, hVar2));
                }
                break;
            case 4:
                x0.c cVar = (x0.c) this.f1820b;
                x0.m mVar = (x0.m) this.c;
                cVar.f5970k.put(mVar.f5993a, Boolean.valueOf(z8));
                h0.b.o().saveBoolean(m.h(new byte[]{77, -110, -43, 38, -50, -89, 33, 24, 87, -109, -58, 43, -29}, new byte[]{62, -25, -91, 67, -68, -8, 82, 111}) + cVar.c.f6003a + mVar.f5993a, z8);
                cVar.m(j0.f.b(cVar.getContext(), z8 ? mVar.d : mVar.e));
                break;
            default:
                WidgetBuilderFragment.V((WidgetBuilderFragment) this.f1820b, (x0.o) this.c, compoundButton, z8);
                break;
        }
    }
}

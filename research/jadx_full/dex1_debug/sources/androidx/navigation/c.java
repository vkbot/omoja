package androidx.navigation;

import android.content.Intent;
import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.FragmentActivity;
import b1.h;
import b1.u;
import com.example.navistart.APInAct;
import com.example.navistart.AutoVibVodActivity;
import com.example.navistart.MainActivity;
import com.example.navistart.home.WebLauncherActivity;
import com.example.navistart.mainview.HeatManSetView;
import com.example.navistart.mainview.OnOffButton;
import com.google.android.material.datepicker.p;
import e0.g2;
import e0.m;
import e4.l;
import e4.x;
import f0.e;
import java.util.Objects;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.n0;
import m0.n1;
import m0.s0;
import m0.w1;
import m0.y;
import s1.n;
import t1.g;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f201b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(int i9, Object obj) {
        this.f201b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f201b;
        int i10 = 0;
        Object obj = this.c;
        switch (i9) {
            case 0:
                Navigation.a((NavDirections) obj, view);
                return;
            case 1:
                ((h) obj).f257f.b();
                return;
            case 2:
                ((p) obj).t();
                throw null;
            case 3:
                String str = APInAct.f628f;
                ((APInAct) obj).finish();
                return;
            case 4:
                int i11 = AutoVibVodActivity.f653b;
                ((AutoVibVodActivity) obj).finish();
                return;
            case 5:
                String str2 = MainActivity.f688e1;
                ((AlertDialog) obj).dismiss();
                return;
            case 6:
                g2 g2Var = (g2) obj;
                g2Var.f1845g.run();
                g2Var.f1847i.dismiss();
                return;
            case 7:
                e4.d dVar = (e4.d) obj;
                EditText editText = dVar.f2048i;
                if (editText == null) {
                    return;
                }
                Editable text = editText.getText();
                if (text != null) {
                    text.clear();
                }
                dVar.p();
                return;
            case 8:
                ((l) obj).t();
                return;
            case 9:
                x xVar = (x) obj;
                EditText editText2 = xVar.f2122f;
                if (editText2 == null) {
                    return;
                }
                int selectionEnd = editText2.getSelectionEnd();
                EditText editText3 = xVar.f2122f;
                if (editText3 != null && (editText3.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                    i10 = 1;
                }
                EditText editText4 = xVar.f2122f;
                if (i10 != 0) {
                    editText4.setTransformationMethod(null);
                } else {
                    editText4.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                if (selectionEnd >= 0) {
                    xVar.f2122f.setSelection(selectionEnd);
                }
                xVar.p();
                return;
            case 10:
                ((f0.a) obj).f2153b.b();
                return;
            case 11:
                ((f0.d) obj).f2156b.b();
                return;
            case 12:
                ((e) obj).f2157b.b();
                return;
            case 13:
                int i12 = f1.e.f2162q;
                ((f1.e) obj).requireActivity().finish();
                return;
            case 14:
                y yVar = (y) obj;
                if (yVar.getParentFragment() instanceof l0.a) {
                    ((l0.a) yVar.getParentFragment()).dismiss();
                    return;
                }
                FragmentActivity activity = yVar.getActivity();
                if (activity != null) {
                    activity.finish();
                    return;
                }
                return;
            case 15:
                n0 n0Var = (n0) obj;
                String str3 = n0.f3526k;
                if (n0Var.getParentFragment() instanceof l0.a) {
                    ((l0.a) n0Var.getParentFragment()).dismiss();
                    return;
                } else {
                    if (n0Var.getActivity() != null) {
                        n0Var.getActivity().onBackPressed();
                        return;
                    }
                    return;
                }
            case 16:
                s0 s0Var = (s0) obj;
                if (s0Var.getParentFragment() instanceof l0.a) {
                    ((l0.a) s0Var.getParentFragment()).dismiss();
                    return;
                } else {
                    if (s0Var.getActivity() != null) {
                        s0Var.getActivity().onBackPressed();
                        return;
                    }
                    return;
                }
            case 17:
                w1 w1Var = (w1) obj;
                if (u.q(w1Var.requireContext())) {
                    return;
                }
                try {
                    w1Var.startActivity(new Intent(m.h(new byte[]{-83, 69, -94, -92, 93, -121, 104, 115, -65, 78, -78, -94, 91, ByteCompanionObject.MIN_VALUE, 107, 46, -30, 126, -107, -105, 117, -85, 83, 28, -113, 104, -125, -123, 97, -79, 95, 24, -104, ByteCompanionObject.MAX_VALUE, -113, -104, 117, -67}, new byte[]{-52, 43, -58, -42, 50, -18, 12, 93})));
                    return;
                } catch (Exception unused) {
                    return;
                }
            case 18:
                n nVar = (n) obj;
                nVar.j();
                Intent intent = new Intent(nVar.getContext(), (Class<?>) WebLauncherActivity.class);
                intent.putExtra(m.h(new byte[]{-16, 14, -113, 93, 123, -46, 86, 73, -15, 29, -126, 86, 86, -31, 68, 89, -21, 10, -125, 93, 67, -51}, new byte[]{-97, 126, -22, 51, 36, -66, 55, 60}), true);
                intent.addFlags(872415232);
                nVar.getContext().startActivity(intent);
                return;
            case 19:
                HeatManSetView heatManSetView = (HeatManSetView) obj;
                if (Objects.equals(heatManSetView.f961n, m.h(new byte[]{9, 58, 60, 60, 24, 59, 110, 83, 45}, new byte[]{65, 95, 93, 72, 79, 83, 11, 54})) || Objects.equals(heatManSetView.f961n, m.h(new byte[]{-17, -37, 76, 1, Base64.padSymbol, -90, -2, -46, -44, -42, 68, 16, 6, -85}, new byte[]{-89, -66, 45, 117, 106, -49, -112, -74})) || Objects.equals(heatManSetView.f961n, m.h(new byte[]{-61, 109, -52, -56, 22, 32, 5, 121, -4, 97, -61, -40, 43, 50}, new byte[]{-117, 8, -83, -68, 68, 69, 100, 11})) || Objects.equals(heatManSetView.f961n, m.h(new byte[]{51, -81, 75, 13, -5, 62, -82, -17, 19}, new byte[]{103, -58, 38, 104, -119, 118, -53, -114}))) {
                    heatManSetView.f959l = heatManSetView.f959l == 0 ? 1 : 0;
                } else {
                    int i13 = heatManSetView.f959l;
                    heatManSetView.f959l = i13 != 3 ? i13 + 1 : 0;
                }
                heatManSetView.setLevel(heatManSetView.f959l);
                Runnable runnable = heatManSetView.f964q;
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            case 20:
                t1.h hVar = (t1.h) obj;
                g gVar = hVar.f5353k;
                if (gVar != null) {
                    boolean z8 = hVar.f5348f;
                    n1 n1Var = (n1) gVar;
                    t1.h hVar2 = n1Var.d;
                    if (hVar2 != null) {
                        hVar2.e.setImageResource(2131165566);
                        hVar2.f5348f = false;
                        h0.b.a();
                        h0.b.q().a();
                    }
                    if (z8) {
                        return;
                    }
                    n1Var.d = hVar;
                    hVar.e.setImageResource(2131165567);
                    hVar.f5348f = true;
                    h0.b.a();
                    h0.b.q().d();
                    return;
                }
                return;
            case 21:
                OnOffButton onOffButton = (OnOffButton) obj;
                if (OnOffButton.f983g.booleanValue()) {
                    Runnable runnable2 = onOffButton.e;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                } else {
                    Runnable runnable3 = onOffButton.f985f;
                    if (runnable3 != null) {
                        runnable3.run();
                    }
                }
                Boolean boolValueOf = Boolean.valueOf(!OnOffButton.f983g.booleanValue());
                OnOffButton.f983g = boolValueOf;
                onOffButton.setOnOff(boolValueOf);
                return;
            default:
                x0.c cVar = (x0.c) obj;
                if (cVar.c.d) {
                    cVar.e = !cVar.e;
                    cVar.k();
                    cVar.l();
                    return;
                }
                return;
        }
    }
}

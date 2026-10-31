package androidx.navigation;

import android.content.Intent;
import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.FragmentActivity;
import com.example.navistart.APInAct;
import com.example.navistart.AutoVibVodActivity;
import com.example.navistart.MainActivity;
import com.example.navistart.home.WebLauncherActivity;
import com.example.navistart.mainview.HeatManSetView;
import com.example.navistart.mainview.OnOffButton;
import com.google.android.material.datepicker.C1105p;
import java.util.Objects;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p016b1.AbstractC0880u;
import p016b1.C0867h;
import p047e0.AbstractC1387m;
import p047e0.C1360g2;
import p051e4.C1471d;
import p051e4.C1479l;
import p051e4.C1491x;
import p057f0.C1523a;
import p057f0.C1526d;
import p057f0.C1527e;
import p058f1.C1532e;
import p078h0.C1652b;
import p121l0.C2194a;
import p132m0.C2328n0;
import p132m0.C2329n1;
import p132m0.C2349s0;
import p132m0.C2366w1;
import p132m0.C2372y;
import p190s1.C3159n;
import p198t1.C3230h;
import p198t1.InterfaceC3229g;
import p235x0.C3549c;

/* JADX INFO: renamed from: androidx.navigation.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0675c implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f483b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f484c;

    public /* synthetic */ ViewOnClickListenerC0675c(int i10, Object obj) {
        this.f483b = i10;
        this.f484c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i10 = this.f483b;
        int i11 = 0;
        Object obj = this.f484c;
        switch (i10) {
            case 0:
                Navigation.createNavigateOnClickListener$lambda$1((NavDirections) obj, view);
                return;
            case 1:
                ((C0867h) obj).f580f.mo923b();
                return;
            case 2:
                ((C1105p) obj).m1806t();
                throw null;
            case 3:
                String str = APInAct.f1202f;
                ((APInAct) obj).finish();
                return;
            case 4:
                int i12 = AutoVibVodActivity.f1239b;
                ((AutoVibVodActivity) obj).finish();
                return;
            case 5:
                String str2 = MainActivity.f1288e1;
                ((AlertDialog) obj).dismiss();
                return;
            case 6:
                C1360g2 c1360g2 = (C1360g2) obj;
                c1360g2.f3244g.run();
                c1360g2.f3246i.dismiss();
                return;
            case 7:
                C1471d c1471d = (C1471d) obj;
                EditText editText = c1471d.f3566i;
                if (editText == null) {
                    return;
                }
                Editable text = editText.getText();
                if (text != null) {
                    text.clear();
                }
                c1471d.m2559p();
                return;
            case 8:
                ((C1479l) obj).m2540t();
                return;
            case 9:
                C1491x c1491x = (C1491x) obj;
                EditText editText2 = c1491x.f3674f;
                if (editText2 == null) {
                    return;
                }
                int selectionEnd = editText2.getSelectionEnd();
                EditText editText3 = c1491x.f3674f;
                if (editText3 != null && (editText3.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                    i11 = 1;
                }
                EditText editText4 = c1491x.f3674f;
                if (i11 != 0) {
                    editText4.setTransformationMethod(null);
                } else {
                    editText4.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                if (selectionEnd >= 0) {
                    c1491x.f3674f.setSelection(selectionEnd);
                }
                c1491x.m2559p();
                return;
            case 10:
                ((C1523a) obj).f3739b.mo923b();
                return;
            case 11:
                ((C1526d) obj).f3745b.mo923b();
                return;
            case 12:
                ((C1527e) obj).f3746b.mo923b();
                return;
            case 13:
                int i13 = C1532e.f3757q;
                ((C1532e) obj).requireActivity().finish();
                return;
            case 14:
                C2372y c2372y = (C2372y) obj;
                if (c2372y.getParentFragment() instanceof C2194a) {
                    ((C2194a) c2372y.getParentFragment()).dismiss();
                    return;
                }
                FragmentActivity activity = c2372y.getActivity();
                if (activity != null) {
                    activity.finish();
                    return;
                }
                return;
            case 15:
                C2328n0 c2328n0 = (C2328n0) obj;
                String str3 = C2328n0.f6237k;
                if (c2328n0.getParentFragment() instanceof C2194a) {
                    ((C2194a) c2328n0.getParentFragment()).dismiss();
                    return;
                } else {
                    if (c2328n0.getActivity() != null) {
                        c2328n0.getActivity().onBackPressed();
                        return;
                    }
                    return;
                }
            case 16:
                C2349s0 c2349s0 = (C2349s0) obj;
                if (c2349s0.getParentFragment() instanceof C2194a) {
                    ((C2194a) c2349s0.getParentFragment()).dismiss();
                    return;
                } else {
                    if (c2349s0.getActivity() != null) {
                        c2349s0.getActivity().onBackPressed();
                        return;
                    }
                    return;
                }
            case 17:
                C2366w1 c2366w1 = (C2366w1) obj;
                if (AbstractC0880u.m1003q(c2366w1.requireContext())) {
                    return;
                }
                try {
                    c2366w1.startActivity(new Intent(AbstractC1387m.m2421h(new byte[]{-83, 69, -94, -92, 93, -121, 104, 115, -65, 78, -78, -94, 91, ByteCompanionObject.MIN_VALUE, 107, 46, -30, 126, -107, -105, 117, -85, 83, 28, -113, 104, -125, -123, 97, -79, 95, 24, -104, ByteCompanionObject.MAX_VALUE, -113, -104, 117, -67}, new byte[]{-52, 43, -58, -42, 50, -18, 12, 93})));
                    return;
                } catch (Exception unused) {
                    return;
                }
            case 18:
                C3159n c3159n = (C3159n) obj;
                c3159n.m5023j();
                Intent intent = new Intent(c3159n.getContext(), (Class<?>) WebLauncherActivity.class);
                intent.putExtra(AbstractC1387m.m2421h(new byte[]{-16, 14, -113, 93, 123, -46, 86, 73, -15, 29, -126, 86, 86, -31, 68, 89, -21, 10, -125, 93, 67, -51}, new byte[]{-97, 126, -22, 51, 36, -66, 55, 60}), true);
                intent.addFlags(872415232);
                c3159n.getContext().startActivity(intent);
                return;
            case 19:
                HeatManSetView heatManSetView = (HeatManSetView) obj;
                if (Objects.equals(heatManSetView.f1811n, AbstractC1387m.m2421h(new byte[]{9, 58, 60, 60, 24, 59, 110, 83, 45}, new byte[]{65, 95, 93, 72, 79, 83, 11, 54})) || Objects.equals(heatManSetView.f1811n, AbstractC1387m.m2421h(new byte[]{-17, -37, 76, 1, Base64.padSymbol, -90, -2, -46, -44, -42, 68, 16, 6, -85}, new byte[]{-89, -66, 45, 117, 106, -49, -112, -74})) || Objects.equals(heatManSetView.f1811n, AbstractC1387m.m2421h(new byte[]{-61, 109, -52, -56, 22, 32, 5, 121, -4, 97, -61, -40, 43, 50}, new byte[]{-117, 8, -83, -68, 68, 69, 100, 11})) || Objects.equals(heatManSetView.f1811n, AbstractC1387m.m2421h(new byte[]{51, -81, 75, 13, -5, 62, -82, -17, 19}, new byte[]{103, -58, 38, 104, -119, 118, -53, -114}))) {
                    heatManSetView.f1809l = heatManSetView.f1809l == 0 ? 1 : 0;
                } else {
                    int i14 = heatManSetView.f1809l;
                    heatManSetView.f1809l = i14 != 3 ? i14 + 1 : 0;
                }
                heatManSetView.setLevel(heatManSetView.f1809l);
                Runnable runnable = heatManSetView.f1814q;
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            case 20:
                C3230h c3230h = (C3230h) obj;
                InterfaceC3229g interfaceC3229g = c3230h.f9462k;
                if (interfaceC3229g != null) {
                    boolean z9 = c3230h.f9457f;
                    C2329n1 c2329n1 = (C2329n1) interfaceC3229g;
                    C3230h c3230h2 = c2329n1.f6250d;
                    if (c3230h2 != null) {
                        c3230h2.f9456e.setImageResource(com.example.navistart.R.drawable.microphone_off);
                        c3230h2.f9457f = false;
                        C1652b.m2734a();
                        C1652b.m2747q().mo5402a();
                    }
                    if (z9) {
                        return;
                    }
                    c2329n1.f6250d = c3230h;
                    c3230h.f9456e.setImageResource(com.example.navistart.R.drawable.microphone_on);
                    c3230h.f9457f = true;
                    C1652b.m2734a();
                    C1652b.m2747q().mo5405d();
                    return;
                }
                return;
            case 21:
                OnOffButton onOffButton = (OnOffButton) obj;
                if (OnOffButton.f1840g.booleanValue()) {
                    Runnable runnable2 = onOffButton.f1844e;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                } else {
                    Runnable runnable3 = onOffButton.f1845f;
                    if (runnable3 != null) {
                        runnable3.run();
                    }
                }
                Boolean boolValueOf = Boolean.valueOf(!OnOffButton.f1840g.booleanValue());
                OnOffButton.f1840g = boolValueOf;
                onOffButton.setOnOff(boolValueOf);
                return;
            default:
                C3549c c3549c = (C3549c) obj;
                if (c3549c.f10535c.f10597d) {
                    c3549c.f10537e = !c3549c.f10537e;
                    c3549c.m5665k();
                    c3549c.m5666l();
                    return;
                }
                return;
        }
    }
}

package e0;

import android.content.Context;
import android.content.Intent;
import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;
import android.widget.EditText;
import com.example.navistart.AllWidgetServices;
import com.example.navistart.MainActivity;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.Si;
import com.example.navistart.UpdateActivity;
import com.example.navistart.cores.HFunEnum;
import com.example.navistart.punto;
import com.google.android.material.chip.Chip;
import com.woha.wifim.MainWifiManadger;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class s0 implements CompoundButton$OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1948b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ s0(MainActivity mainActivity, HFunEnum hFunEnum) {
        this.f1947a = 1;
        this.f1948b = hFunEnum;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton$OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z8) {
        switch (this.f1947a) {
            case 0:
                String str = (String) this.f1948b;
                String str2 = MainActivity.f688e1;
                h0.b.o().saveBoolean(str, z8);
                break;
            case 1:
                HFunEnum hFunEnum = (HFunEnum) this.f1948b;
                String str3 = MainActivity.f688e1;
                h0.b.o().saveBoolean(hFunEnum.name(), z8);
                try {
                    h0.b.a();
                    h0.b.d().hybrid(hFunEnum, z8);
                } catch (Throwable unused) {
                    return;
                }
                break;
            case 2:
                ModernMainActivity modernMainActivity = (ModernMainActivity) this.f1948b;
                String str4 = ModernMainActivity.B1;
                h0.b.o().saveBoolean(m.h(new byte[]{-42, -66, 45, 49, 112, -83, 126, 84, -63, -84, 56, 32, 113, -83, 108, 83, -60, -87, 49, 49, 102}, new byte[]{-91, -53, 93, 84, 2, -14, 9, Base64.padSymbol}), z8);
                AllWidgetServices allWidgetServices = AllWidgetServices.f631g;
                if (allWidgetServices != null) {
                    allWidgetServices.f634b.post(new c(allWidgetServices, 0));
                } else {
                    AllWidgetServices.c(modernMainActivity);
                }
                break;
            case 3:
                UpdateActivity updateActivity = (UpdateActivity) this.f1948b;
                updateActivity.f874g.setEnabled(z8);
                updateActivity.f875h.setEnabled(z8);
                break;
            case 4:
                punto puntoVar = (punto) this.f1948b;
                String str5 = punto.r;
                h0.b.o().saveBoolean(m.h(new byte[]{58, 13, 94}, new byte[]{74, 105, 48, -36, 97, 95, -97, -36}), z8);
                puntoVar.f1010j.setEnabled(z8);
                puntoVar.f1012l.setEnabled(z8);
                puntoVar.s(z8);
                break;
            case 5:
                CompoundButton$OnCheckedChangeListener compoundButton$OnCheckedChangeListener = ((Chip) this.f1948b).f1218f;
                if (compoundButton$OnCheckedChangeListener != null) {
                    compoundButton$OnCheckedChangeListener.onCheckedChanged(compoundButton, z8);
                }
                break;
            case 6:
                m0.m2 m2Var = (m0.m2) this.f1948b;
                String str6 = m0.m2.f3514m;
                m2Var.f3516f.setVisibility(m2Var.e.isChecked() ? 8 : 0);
                break;
            case 7:
                EditText editText = (EditText) this.f1948b;
                String str7 = MainWifiManadger.f1632v;
                if (z8) {
                    editText.setInputType(145);
                } else {
                    editText.setInputType(129);
                }
                editText.setSelection(editText.getText().length());
                break;
            case 8:
                q0.l lVar = (q0.l) this.f1948b;
                if (!lVar.f4802v && m.h(new byte[]{104, -45, -77, 115, -16, -57, 19, 67, 104}, new byte[]{24, -69, -36, 29, -107, -104, 114, 51}).equals(lVar.t)) {
                    MockGpsService.f761z = false;
                    try {
                        h0.b.o().saveBoolean(MockGpsService.f756s, MockGpsService.f761z);
                        break;
                    } catch (Exception unused2) {
                    }
                    if (MockGpsService.t.get()) {
                        MockGpsService.n(lVar.requireContext(), lVar.x(), lVar.t, lVar.d.getText().toString());
                    }
                    break;
                }
                break;
            case 9:
                u1.d dVar = (u1.d) this.f1948b;
                h0.b.o().saveBoolean(m.h(new byte[]{-65, -120, -54, 109, 4, ByteCompanionObject.MAX_VALUE, -93, -123, -93, -98, -59, 109, 21, 124, -93, -76}, new byte[]{-52, -8, -93, 50, 101, 19, -49, -38}), z8);
                if (!z8) {
                    Context contextRequireContext = dVar.requireContext();
                    boolean z9 = Si.d;
                    Context applicationContext = contextRequireContext.getApplicationContext();
                    applicationContext.stopService(new Intent(applicationContext, (Class<?>) Si.class));
                } else {
                    Si.a(dVar.requireContext());
                }
                break;
            default:
                w0.v0 v0Var = (w0.v0) this.f1948b;
                v0Var.e.setEnabled(!z8);
                v0Var.f5780f = z8;
                break;
        }
    }

    public /* synthetic */ s0(int i9, Object obj) {
        this.f1947a = i9;
        this.f1948b = obj;
    }
}

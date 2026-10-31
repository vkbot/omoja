package p047e0;

import android.content.Context;
import android.content.Intent;
import android.widget.CompoundButton;
import android.widget.EditText;
import com.example.navistart.AllWidgetServices;
import com.example.navistart.MainActivity;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.ServiceC1080Si;
import com.example.navistart.UpdateActivity;
import com.example.navistart.cores.HFunEnum;
import com.example.navistart.punto;
import com.google.android.material.chip.Chip;
import com.woha.wifim.MainWifiManadger;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p078h0.C1652b;
import p132m0.C2325m2;
import p173q0.C3048l;
import p207u1.C3281d;
import p225w0.C3495v0;

/* JADX INFO: renamed from: e0.s0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1418s0 implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3405a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f3406b;

    public /* synthetic */ C1418s0(MainActivity mainActivity, HFunEnum hFunEnum) {
        this.f3405a = 1;
        this.f3406b = hFunEnum;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
        int i10 = 0;
        switch (this.f3405a) {
            case 0:
                String str = (String) this.f3406b;
                String str2 = MainActivity.f1288e1;
                C1652b.m2745o().saveBoolean(str, z9);
                break;
            case 1:
                HFunEnum hFunEnum = (HFunEnum) this.f3406b;
                String str3 = MainActivity.f1288e1;
                C1652b.m2745o().saveBoolean(hFunEnum.name(), z9);
                try {
                    C1652b.m2734a();
                    C1652b.m2736d().hybrid(hFunEnum, z9);
                } catch (Throwable unused) {
                    return;
                }
                break;
            case 2:
                ModernMainActivity modernMainActivity = (ModernMainActivity) this.f3406b;
                String str4 = ModernMainActivity.f1436B1;
                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-42, -66, 45, 49, 112, -83, 126, 84, -63, -84, 56, 32, 113, -83, 108, 83, -60, -87, 49, 49, 102}, new byte[]{-91, -53, 93, 84, 2, -14, 9, Base64.padSymbol}), z9);
                AllWidgetServices allWidgetServices = AllWidgetServices.f1208g;
                if (allWidgetServices != null) {
                    allWidgetServices.f1211b.post(new RunnableC1337c(allWidgetServices, i10));
                } else {
                    AllWidgetServices.m1384c(modernMainActivity);
                }
                break;
            case 3:
                UpdateActivity updateActivity = (UpdateActivity) this.f3406b;
                updateActivity.f1684g.setEnabled(z9);
                updateActivity.f1685h.setEnabled(z9);
                break;
            case 4:
                punto puntoVar = (punto) this.f3406b;
                String str5 = punto.f1867r;
                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{58, 13, 94}, new byte[]{74, 105, 48, -36, 97, 95, -97, -36}), z9);
                puntoVar.f1881j.setEnabled(z9);
                puntoVar.f1883l.setEnabled(z9);
                puntoVar.m1676s(z9);
                break;
            case 5:
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener = ((Chip) this.f3406b).f2236f;
                if (onCheckedChangeListener != null) {
                    onCheckedChangeListener.onCheckedChanged(compoundButton, z9);
                }
                break;
            case 6:
                C2325m2 c2325m2 = (C2325m2) this.f3406b;
                String str6 = C2325m2.f6221m;
                c2325m2.f6226f.setVisibility(c2325m2.f6225e.isChecked() ? 8 : 0);
                break;
            case 7:
                EditText editText = (EditText) this.f3406b;
                String str7 = MainWifiManadger.f2888v;
                if (z9) {
                    editText.setInputType(145);
                } else {
                    editText.setInputType(129);
                }
                editText.setSelection(editText.getText().length());
                break;
            case 8:
                C3048l c3048l = (C3048l) this.f3406b;
                if (!c3048l.f8590v && AbstractC1387m.m2421h(new byte[]{104, -45, -77, 115, -16, -57, 19, 67, 104}, new byte[]{24, -69, -36, 29, -107, -104, 114, 51}).equals(c3048l.f8588t)) {
                    MockGpsService.f1431z = false;
                    try {
                        C1652b.m2745o().saveBoolean(MockGpsService.f1424s, MockGpsService.f1431z);
                        break;
                    } catch (Exception unused2) {
                    }
                    if (MockGpsService.f1425t.get()) {
                        MockGpsService.m1458n(c3048l.requireContext(), c3048l.m4877x(), c3048l.f8588t, c3048l.f8572d.getText().toString());
                    }
                    break;
                }
                break;
            case 9:
                C3281d c3281d = (C3281d) this.f3406b;
                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-65, -120, -54, 109, 4, ByteCompanionObject.MAX_VALUE, -93, -123, -93, -98, -59, 109, 21, 124, -93, -76}, new byte[]{-52, -8, -93, 50, 101, 19, -49, -38}), z9);
                if (!z9) {
                    Context contextRequireContext = c3281d.requireContext();
                    boolean z10 = ServiceC1080Si.f1588d;
                    Context applicationContext = contextRequireContext.getApplicationContext();
                    applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
                } else {
                    ServiceC1080Si.m1527a(c3281d.requireContext());
                }
                break;
            default:
                C3495v0 c3495v0 = (C3495v0) this.f3406b;
                c3495v0.f10235e.setEnabled(!z9);
                c3495v0.f10236f = z9;
                break;
        }
    }

    public /* synthetic */ C1418s0(int i10, Object obj) {
        this.f3405a = i10;
        this.f3406b = obj;
    }
}

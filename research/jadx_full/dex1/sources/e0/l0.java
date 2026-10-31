package e0;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;
import android.widget.RelativeLayout;
import com.example.navistart.AllWidgetServices;
import com.example.navistart.LounchB;
import com.example.navistart.MainActivity;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.Notik;
import com.example.navistart.OverlayService;
import com.example.navistart.Si;
import com.example.navistart.SpeedBoardService;
import com.example.navistart.SystemMessageReceiver;
import com.example.navistart.TService;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.materialswitch.MaterialSwitch;
import com.woha.pogoda.WeatherService;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class l0 implements CompoundButton$OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1881a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f1882b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ l0(MainActivity mainActivity, int i9) {
        this.f1881a = i9;
        this.f1882b = mainActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton$OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z8) {
        RelativeLayout relativeLayout;
        RelativeLayout relativeLayout2;
        switch (this.f1881a) {
            case 0:
                MainActivity mainActivity = this.f1882b;
                String str = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{-60, -53, 107, 79, -77, 24, -89, 15, -6, -47, 123}, new byte[]{-120, -92, 30, 33, -48, 112, -27, 91}), z8);
                boolean zLoadBoolean = h0.b.o().loadBoolean(m.h(new byte[]{-19, -62, -4, -76, -87, -9, 82, 0, -63, -41, -42, -83, -88, -12, 72}, new byte[]{-98, -75, -93, -39, -36, -101, 38, 105}), false);
                if (z8) {
                    LounchB.c(mainActivity);
                    r5.c cVar = LounchB.f685h;
                    if (cVar != null && (relativeLayout2 = ((LounchB) cVar.c).f686b) != null) {
                        relativeLayout2.setVisibility(0);
                        break;
                    }
                } else if (!zLoadBoolean) {
                    WindowManager windowManager = LounchB.f684g;
                    mainActivity.stopService(new Intent(mainActivity, (Class<?>) LounchB.class));
                    break;
                } else {
                    r5.c cVar2 = LounchB.f685h;
                    if (cVar2 != null && (relativeLayout = ((LounchB) cVar2.c).f686b) != null) {
                        relativeLayout.setVisibility(8);
                        break;
                    }
                }
                break;
            case 1:
                MainActivity mainActivity2 = this.f1882b;
                String str2 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{105, -56, -43, 92, 59, -26, -126, 121, 69, -35, -1, 69, 58, -27, -104}, new byte[]{26, -65, -118, 49, 78, -118, -10, 16}), z8);
                boolean zLoadBoolean2 = h0.b.o().loadBoolean(m.h(new byte[]{34, -97, -78, -81, 126, -63, 107, -8, 28, -123, -94}, new byte[]{110, -16, -57, -63, 29, -87, 41, -84}), false);
                if (z8) {
                    LounchB.c(mainActivity2);
                    r5.c cVar3 = LounchB.f685h;
                    if (cVar3 != null) {
                        ((LounchB) cVar3.c).b(true);
                    }
                } else if (zLoadBoolean2) {
                    r5.c cVar4 = LounchB.f685h;
                    if (cVar4 != null) {
                        ((LounchB) cVar4.c).b(false);
                    }
                } else {
                    WindowManager windowManager2 = LounchB.f684g;
                    mainActivity2.stopService(new Intent(mainActivity2, (Class<?>) LounchB.class));
                }
                break;
            case 2:
                MainActivity mainActivity3 = this.f1882b;
                String str3 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{22, 10, -105, -66, -75, -9, -93, 15, 4, 34, -65, -89, -66, -9, -109, 4, 11, 18, -82, -88}, new byte[]{101, 125, -56, -50, -38, -112, -52, 107}), z8);
                if (z8) {
                    WeatherService.e(mainActivity3);
                } else {
                    boolean z9 = WeatherService.f1624f;
                    mainActivity3.stopService(new Intent(mainActivity3, (Class<?>) WeatherService.class));
                }
                break;
            case 3:
                MainActivity mainActivity4 = this.f1882b;
                String str4 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{-116, 46, -84, -101, 100, 117, -91, 13, -98, 42, -99, -106, 114, 123}, new byte[]{-1, 89, -13, -7, 1, 15, -54, 125}), z8);
                FlexboxLayout flexboxLayout = mainActivity4.f731s0;
                for (int i9 = 0; i9 < flexboxLayout.getChildCount(); i9++) {
                    flexboxLayout.getChildAt(i9).setEnabled(z8);
                }
                if (!z8) {
                    FlexboxLayout flexboxLayout2 = mainActivity4.f731s0;
                    for (int i10 = 0; i10 < flexboxLayout2.getChildCount(); i10++) {
                        ((MaterialSwitch) flexboxLayout2.getChildAt(i10)).setChecked(false);
                    }
                    h0.b.o().saveBoolean(m.h(new byte[]{68, 18, -70, 67, 56, 122, -80, 114}, new byte[]{55, 101, -27, 48, 76, 21, -36, 25}), false);
                }
                break;
            case 4:
                MainActivity mainActivity5 = this.f1882b;
                String str5 = MainActivity.f688e1;
                String strH = m.h(new byte[]{-50, -81, 29, 122, 103, 126, 25, 32, -46, -91, 17, 113, 103, 104, 3}, new byte[]{-121, -21, 66, 57, 38, 44, 70, 115});
                u0.a aVarO = h0.b.o();
                StringBuilder sbU = ai.onnxruntime.a.u(strH);
                sbU.append(mainActivity5.A());
                aVarO.saveBoolean(sbU.toString(), z8);
                break;
            case 5:
                MainActivity mainActivity6 = this.f1882b;
                String str6 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{-97, -7, 52, -80, -63, 54, 57, -61, -75, -3, 39, -85, -50, 50, 19, -28, -79, -3, 37}, new byte[]{-48, -113, 81, -62, -83, 87, 64, -112}), z8);
                if (z8) {
                    OverlayService.c(mainActivity6);
                } else {
                    OverlayService overlayService = OverlayService.f803f;
                    mainActivity6.stopService(new Intent(mainActivity6.getApplicationContext(), (Class<?>) OverlayService.class));
                    boolean z10 = Si.d;
                    Context applicationContext = mainActivity6.getApplicationContext();
                    applicationContext.stopService(new Intent(applicationContext, (Class<?>) Si.class));
                }
                break;
            case 6:
                MainActivity mainActivity7 = this.f1882b;
                String str7 = MainActivity.f688e1;
                try {
                    h0.b.o().saveBoolean(MockGpsService.r, z8);
                    break;
                } catch (Exception unused) {
                }
                if (z8) {
                    MockGpsService.m(mainActivity7);
                } else {
                    MockGpsService.b(mainActivity7);
                    mainActivity7.stopService(new Intent(mainActivity7, (Class<?>) MockGpsService.class));
                }
                break;
            case 7:
                MainActivity mainActivity8 = this.f1882b;
                String str8 = MainActivity.f688e1;
                h0.b.o().saveBoolean(Notik.f794m, z8);
                if (z8) {
                    Notik.g(mainActivity8);
                } else {
                    mainActivity8.getApplicationContext().stopService(new Intent(mainActivity8.getApplicationContext(), (Class<?>) Notik.class));
                }
                break;
            case 8:
                MainActivity mainActivity9 = this.f1882b;
                String str9 = MainActivity.f688e1;
                h0.b.o().saveBoolean(SpeedBoardService.f828k, z8);
                if (z8) {
                    SpeedBoardService.b(mainActivity9.getApplicationContext());
                } else {
                    Context applicationContext2 = mainActivity9.getApplicationContext();
                    applicationContext2.stopService(new Intent(applicationContext2.getApplicationContext(), (Class<?>) SpeedBoardService.class));
                }
                break;
            case 9:
                MainActivity mainActivity10 = this.f1882b;
                String str10 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{-41, -101, -118, -81, 87, -106, 41, 34, -9, -72, -86, -98, 87, -109, 37, 53, -10, -114, -65, -110, 123, -84, 46, 60, -28}, new byte[]{-127, -47, -55, -5, 8, -59, 76, 80}), z8);
                if (z8) {
                    h0.b.o().saveBoolean(m.h(new byte[]{-55, -94, Base64.padSymbol, -120, -39, 119, 3, 91, -42, -79, 54, -92, -11, 97, 5, 76, -51, -90}, new byte[]{-65, -46, 83, -41, -86, 18, 113, 45}), true);
                    TService.c(mainActivity10.getApplicationContext());
                    TService.a(Boolean.TRUE);
                } else {
                    TService.a(Boolean.FALSE);
                }
                break;
            case 10:
                MainActivity mainActivity11 = this.f1882b;
                String str11 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{41, -104, -57, -91, 108, 113, -79, 0, 49, -121, -58, -80, 86, 118, -69, 44, 42, -108, -50}, new byte[]{94, -15, -93, -62, 9, 5, -62, 95}), z8);
                new SystemMessageReceiver().onReceive(mainActivity11.getApplicationContext(), new Intent(m.h(new byte[]{42, 46, -109, -91, -102, 9, 5, -100, 34, 46, -125, -78, -101, 20, 79, -45, 40, 52, -98, -72, -101, 78, 35, -3, 4, 20, -88, -108, -70, 45, 49, -2, 14, 20, -78, -109}, new byte[]{75, 64, -9, -41, -11, 96, 97, -78})));
                break;
            case 11:
                MainActivity mainActivity12 = this.f1882b;
                String str12 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{114, 109, -96, 86, 11, 40, ByteCompanionObject.MAX_VALUE, -101, 71, 82, -87, 115, 20, 37, 123, -101, 64, 94, -97, 104, 12, 43, 116, -101, 100, 104, -94, 101, 13, 59, 71, -79, 93}, new byte[]{51, 1, -52, 1, 98, 76, 24, -2}), z8);
                h hVar = h.f1852i;
                AllWidgetServices allWidgetServices = MainActivity.i1;
                if (allWidgetServices != null) {
                    allWidgetServices.e(hVar, z8);
                }
                if (z8 && MainActivity.i1 == null) {
                    AllWidgetServices.c(mainActivity12);
                    break;
                }
                break;
            case 12:
                MainActivity mainActivity13 = this.f1882b;
                String str13 = MainActivity.f688e1;
                String str14 = s1.a1.f5051a;
                mainActivity13.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity13.getPackageName(), s1.a1.f5051a), z8 ? 1 : 2, 1);
                break;
            case 13:
                MainActivity mainActivity14 = this.f1882b;
                String str15 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{97, -20, 2, 79, 40, 84, -127, -32, 90, -28, 6, 105, 54, 113, -96, -59, 96, -34, 49, 66, 44, 114, -69, -42, 107, -40}, new byte[]{44, -115, 114, 16, 105, 55, -11, -119}), z8);
                n3.a(mainActivity14);
                break;
            default:
                MainActivity mainActivity15 = this.f1882b;
                String str16 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{89, -93, 75, 63, 70, 93, -107, -66, 98, -85, 79, 25, 88, 115, -96, -113, 75, -110, 126, 50, 65, 113, -77, -102, 85, -116, 120, 37}, new byte[]{20, -62, 59, 96, 7, 62, -31, -41}), z8);
                n3.a(mainActivity15);
                break;
        }
    }
}

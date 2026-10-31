package p047e0;

import android.app.ActivityOptions;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.view.Display;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.example.navistart.ActivityC1081W;
import com.example.navistart.BlackActivity;
import com.example.navistart.CarControlActivity;
import com.example.navistart.MainActivity;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.MyA11yService;
import com.example.navistart.Notik;
import com.example.navistart.R;
import com.example.navistart.VibVodActivity;
import com.example.navistart.cores.InterC;
import com.example.navistart.home.WebLauncherActivity;
import com.google.protobuf.AbstractC1178q;
import com.woha.atir.RadarActivity;
import com.woha.wifim.MainWifiManadger;
import java.util.Objects;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.apache.commons.net.finger.FingerClient;
import org.apache.commons.net.tftp.TFTP;
import p078h0.C1652b;
import p109k0.AbstractC2025a;
import p132m0.C2276c3;
import p132m0.C2315k2;
import p132m0.C2331n3;
import p132m0.C2332o;
import p132m0.C2360v;
import p132m0.C2366w1;
import p142n0.EnumC2472g;
import p206u0.C3277a;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: e0.d0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1343d0 extends BroadcastReceiver {

    /* JADX INFO: renamed from: b */
    public static final String f3200b = AbstractC1387m.m2421h(new byte[]{-22, 111, 36, 26, 82, -80, -68, 103, -30, 111, 52, 13, 83, -83, -10, 40, -24, 117, 41, 7, 83, -9, -69, 40, -7, 94, 51, 17, 78, -83, -67, 36, -44, 102, 37, 27, 73, -84, -86, 44, -44, 108, 47, 12, 88}, new byte[]{-117, 1, 64, 104, Base64.padSymbol, -39, -40, 73});

    /* JADX INFO: renamed from: a */
    public Context f3201a;

    public C1343d0(Context context) {
        this.f3201a = context;
    }

    /* JADX INFO: renamed from: a */
    public static void m2386a(int i10) {
        int iLoadInt = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{43, -58, 57, 104, -115, 9, -115, -37}, new byte[]{74, -76, 92, 9, -49, 102, -30, -81}), 2);
        if (i10 == 1) {
            if (iLoadInt == 1) {
                C1652b.m2734a();
                C1652b.m2735c().OpenCustomPPPri();
                return;
            } else if (iLoadInt == 2) {
                C1652b.m2734a();
                C1652b.m2735c().OpenProPri();
                return;
            } else {
                if (iLoadInt == 3) {
                    C1652b.m2734a();
                    C1652b.m2735c().OpenProGu();
                    return;
                }
                return;
            }
        }
        if (i10 == 2) {
            if (iLoadInt == 1) {
                C1652b.m2734a();
                C1652b.m2735c().OpenCustomPPPri();
            } else if (iLoadInt == 2) {
                C1652b.m2734a();
                C1652b.m2735c().OpenCustomPPPri();
            } else if (iLoadInt == 3) {
                C1652b.m2734a();
                C1652b.m2735c().OpenProPri();
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static Boolean m2387b() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-110}, new byte[]{-94, 87, -2, 52, 59, -54, -13, -69}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: renamed from: c */
    public static void m2388c(int i10, float f8) {
        C1652b.m2734a();
        float cabinTemp = C1652b.m2736d().getCabinTemp(i10);
        if (Float.isNaN(cabinTemp) || Float.isInfinite(cabinTemp) || cabinTemp <= -50.0f) {
            return;
        }
        C1652b.m2734a();
        C1652b.m2736d().setCabinTemp(i10, cabinTemp + f8);
    }

    /* JADX INFO: renamed from: d */
    public static void m2389d(Context context) {
        InterC interCM2755j = C1652b.m2734a().m2755j();
        if (interCM2755j != null) {
            boolean zM1631bi = interCM2755j.m1631bi();
            int[] iArr = new int[0];
            int[] iArr2 = new int[0];
            if (MainActivity.m1426w() && zM1631bi && (zM1631bi == (!zM1631bi) || zM1631bi)) {
                C1652b.m2750v(String.valueOf(iArr[1]));
            }
            if ((MainActivity.m1425v(context) && zM1631bi) || (zM1631bi && Debug.isDebuggerConnected())) {
                Integer.parseInt(String.valueOf(iArr2[1]));
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m2390e(int i10, Class cls) {
        Intent intentAddFlags = new Intent(this.f3201a, (Class<?>) cls).addFlags(268435456);
        DisplayManager displayManager = (DisplayManager) this.f3201a.getSystemService(AbstractC1387m.m2421h(new byte[]{106, 91, 21, -124, -11, -106, 78}, new byte[]{14, 50, 102, -12, -103, -9, 55, 44}));
        Display[] displays = displayManager == null ? new Display[0] : displayManager.getDisplays();
        if (Build.VERSION.SDK_INT < 26 || i10 < 0 || i10 >= displays.length) {
            AbstractC3656k.m5875u(this.f3201a, intentAddFlags, null);
        } else {
            AbstractC3656k.m5875u(this.f3201a, intentAddFlags, ActivityOptions.makeBasic().setLaunchDisplayId(displays[i10].getDisplayId()).toBundle());
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m2391f(int i10, Class cls) {
        Bundle bundle = new Bundle();
        bundle.putInt(AbstractC1387m.m2421h(new byte[]{-63, 40, -81}, new byte[]{-91, 65, -36, -37, 47, -36, -87, 77}), i10);
        ActivityC1081W.m1609t(this.f3201a, cls, bundle);
    }

    /* JADX INFO: renamed from: g */
    public final void m2392g(int i10, int i11) {
        if (m2387b().booleanValue()) {
            boolean zLoadBoolean = false;
            byte b10 = 0;
            switch (i10) {
                case 1:
                    C1652b.m2734a();
                    C1652b.m2735c().OpenProPri();
                    break;
                case 2:
                    Display[] displays = ((DisplayManager) this.f3201a.getSystemService(AbstractC1387m.m2421h(new byte[]{22, -112, -29, -68, 62, 8, -47}, new byte[]{114, -7, -112, -52, 82, 105, -88, -56}))).getDisplays();
                    if (i11 > -1 && i11 < displays.length) {
                        ActivityOptions launchDisplayId = Build.VERSION.SDK_INT >= 26 ? ActivityOptions.makeBasic().setLaunchDisplayId(displays[i11].getDisplayId()) : null;
                        Intent intentAddFlags = new Intent(this.f3201a.getApplicationContext(), (Class<?>) BlackActivity.class).addFlags(268435456);
                        Context context = this.f3201a;
                        Objects.requireNonNull(launchDisplayId, AbstractC1387m.m2421h(new byte[]{-60, 73, -52, 71, 118, -126, -91, -29, -24, 88, -42, 64, 118, -104, -10, -95, -18, 25, -42, 91, 117, ByteCompanionObject.MIN_VALUE}, new byte[]{-117, 57, -72, 46, 25, -20, -42, -61}));
                        AbstractC3656k.m5875u(context, intentAddFlags, launchDisplayId.toBundle());
                        break;
                    }
                    break;
                case 3:
                    C1652b.m2734a();
                    C1652b.m2736d().sunupdown(Boolean.TRUE);
                    break;
                case 4:
                    C1652b.m2734a();
                    C1652b.m2736d().sunupdown(Boolean.FALSE);
                    break;
                case 5:
                    AbstractC3656k.m5875u(this.f3201a, new Intent(this.f3201a.getApplicationContext(), (Class<?>) VibVodActivity.class).addFlags(268435456), null);
                    break;
                case 6:
                    C1652b.m2734a();
                    C1652b.m2735c().OpenProGu();
                    break;
                case 7:
                    Bundle bundle = new Bundle();
                    bundle.putInt(AbstractC1387m.m2421h(new byte[]{52, 20, 46}, new byte[]{80, 125, 93, -8, -8, -55, -103, 47}), i11);
                    ActivityC1081W.m1610u(this.f3201a, C2332o.class, bundle);
                    break;
                case 8:
                    MyA11yService myA11yService = MyA11yService.f1453c;
                    if (myA11yService != null) {
                        myA11yService.performGlobalAction(1);
                    }
                    break;
                case 9:
                    int iLoadInt = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-2, 4, -81, 10, 80, 93, -127, -49}, new byte[]{-97, 118, -54, 107, 18, 50, -18, -69}), 2);
                    if (iLoadInt == 1) {
                        C1652b.m2734a();
                        C1652b.m2735c().OpenProGu();
                    } else if (iLoadInt == 2) {
                        C1652b.m2734a();
                        C1652b.m2735c().OpenProPri();
                    } else if (iLoadInt == 3) {
                        C1652b.m2734a();
                        C1652b.m2735c().OpenProGu();
                    }
                    break;
                case 10:
                    AbstractC3656k.m5875u(this.f3201a, new Intent(this.f3201a, (Class<?>) CarControlActivity.class).addFlags(268435456), null);
                    break;
                case 11:
                    m2386a(1);
                    break;
                case 12:
                    C1652b.m2734a();
                    C1652b.m2735c().OpenCustomPPPri();
                    break;
                case 13:
                    m2386a(2);
                    break;
                case 14:
                    C1652b.m2734a();
                    C1652b.m2741k().m2490c(EnumC2472g.f6809b);
                    break;
                case 15:
                    C1652b.m2734a();
                    C1652b.m2741k().m2490c(EnumC2472g.f6810c);
                    break;
                case 16:
                    C1652b.m2734a();
                    C1652b.m2741k().m2490c(EnumC2472g.f6811d);
                    break;
                case 17:
                    C1652b.m2734a();
                    C1652b.m2741k().m2490c(EnumC2472g.f6812e);
                    break;
                case 18:
                    MyA11yService myA11yService2 = MyA11yService.f1453c;
                    if (myA11yService2 != null) {
                        myA11yService2.performGlobalAction(2);
                    }
                    break;
                case 19:
                    Notik.m1505f(this.f3201a, Notik.f1486l);
                    break;
                case 20:
                    AbstractC2025a.m3119a(this.f3201a, true);
                    break;
                case 21:
                    AbstractC2025a.m3119a(this.f3201a, false);
                    break;
                case 22:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetheat(1, 1);
                    break;
                case 23:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetheat(2, 1);
                    break;
                case 24:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetheat(3, 1);
                    break;
                case 25:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetheat(4, 1);
                    break;
                case 26:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetvent(1, 1);
                    break;
                case 27:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetvent(2, 1);
                    break;
                case 28:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetvent(3, 1);
                    break;
                case 29:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetvent(4, 1);
                    break;
                case 30:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetheat(1, 2);
                    break;
                case 31:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetheat(2, 2);
                    break;
                case 32:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetheat(3, 2);
                    break;
                case 33:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetheat(4, 2);
                    break;
                case 34:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetvent(1, 2);
                    break;
                case 35:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetvent(2, 2);
                    break;
                case 36:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetvent(3, 2);
                    break;
                case 37:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetvent(4, 2);
                    break;
                case 38:
                    C1652b.m2734a();
                    C1652b.m2736d().rulheatonoff(Boolean.TRUE);
                    break;
                case 39:
                    C1652b.m2734a();
                    C1652b.m2736d().rulheatonoff(Boolean.FALSE);
                    break;
                case 40:
                    C1652b.m2734a();
                    C1652b.m2736d().lobheatonoff(Boolean.TRUE);
                    break;
                case 41:
                    C1652b.m2734a();
                    C1652b.m2736d().lobheatonoff(Boolean.FALSE);
                    break;
                case 42:
                    C1652b.m2734a();
                    C1652b.m2736d().zadheatonoff(Boolean.TRUE);
                    break;
                case 43:
                    C1652b.m2734a();
                    C1652b.m2736d().zadheatonoff(Boolean.FALSE);
                    break;
                case 44:
                    C1652b.m2734a();
                    C1652b.m2736d().carZadSeatHeat(0, 1);
                    break;
                case 45:
                    C1652b.m2734a();
                    C1652b.m2736d().carZadSeatHeat(0, 2);
                    break;
                case 46:
                    C1652b.m2734a();
                    C1652b.m2736d().carZadSeatHeat(0, 3);
                    break;
                case 47:
                    C1652b.m2734a();
                    C1652b.m2736d().carZadSeatHeat(0, 4);
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                    C1652b.m2734a();
                    C1652b.m2736d().carZadSeatHeat(1, 1);
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    C1652b.m2734a();
                    C1652b.m2736d().carZadSeatHeat(1, 2);
                    break;
                case 50:
                    C1652b.m2734a();
                    C1652b.m2736d().carZadSeatHeat(1, 3);
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    C1652b.m2734a();
                    C1652b.m2736d().carZadSeatHeat(1, 4);
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetvod(1);
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetvod(2);
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_MARGIN_BASELINE /* 54 */:
                    C1652b.m2734a();
                    C1652b.m2736d().carsetvod(3);
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    Bundle bundle2 = new Bundle();
                    String strM2421h = AbstractC1387m.m2421h(new byte[]{85, -10, -73}, new byte[]{49, -97, -60, -119, -112, -32, 26, -21});
                    C1652b.m2734a();
                    bundle2.putInt(strM2421h, C1652b.m2744n().getGuDisplayID());
                    ActivityC1081W.m1610u(this.f3201a, C2315k2.class, bundle2);
                    break;
                case 56:
                    C1652b.m2734a();
                    C1652b.m2737f().m2988a(AbstractC1387m.m2421h(new byte[]{-7, 56, -105, -50, -40, 3, -64, -113, -26, 34, -117, -12, -26, 0, -43, -92, -1, 36, -105, -10, -54}, new byte[]{-117, 77, -7, -111, -71, 115, -80, -48}));
                    break;
                case 57:
                    this.f3201a.sendBroadcast(new Intent(AbstractC1387m.m2421h(new byte[]{-99, -28, -99, -37, -33, 95, 110, 118, -114, -25, -107, -37, -44, 70, 121, 114, -115, -1, -111, -121, -50, 9, 125, 110, -112, -91, -93, -123, -45, 68, 103, 53, -72, -28, -109, ByteCompanionObject.MIN_VALUE, -55}, new byte[]{-2, -117, -16, -11, -70, 39, 15, 27})));
                    break;
                case 58:
                    C1652b.m2734a();
                    C1652b.m2736d().setRecirculation(true);
                    break;
                case 59:
                    C1652b.m2734a();
                    C1652b.m2736d().setRecirculation(false);
                    break;
                case 60:
                    Context context2 = this.f3201a;
                    int iM5865k = AbstractC3656k.m5865k(context2);
                    if (iM5865k >= 0) {
                        int i12 = AbstractC3656k.f10840b;
                        if (i12 >= 0) {
                            iM5865k = i12;
                        }
                        AbstractC3656k.m5874t(iM5865k - 1, context2);
                        break;
                    }
                    break;
                case 61:
                    Context context3 = this.f3201a;
                    int iM5865k2 = AbstractC3656k.m5865k(context3);
                    if (iM5865k2 >= 0) {
                        int i13 = AbstractC3656k.f10840b;
                        if (i13 >= 0) {
                            iM5865k2 = i13;
                        }
                        AbstractC3656k.m5874t(iM5865k2 + 1, context3);
                        break;
                    }
                    break;
                case 62:
                    m2388c(1, -1.0f);
                    break;
                case 63:
                    m2388c(1, 1.0f);
                    break;
                case 64:
                    m2388c(2, -1.0f);
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                    m2388c(2, 1.0f);
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    C1652b.m2734a();
                    C1652b.m2736d().carZadSeatVent(0, 1);
                    break;
                case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                    C1652b.m2734a();
                    C1652b.m2736d().carZadSeatVent(0, 2);
                    break;
                case 68:
                    C1652b.m2734a();
                    C1652b.m2736d().carZadSeatVent(0, 3);
                    break;
                case TFTP.DEFAULT_PORT /* 69 */:
                    C1652b.m2734a();
                    C1652b.m2736d().carZadSeatVent(0, 4);
                    break;
                case 70:
                    C1652b.m2734a();
                    C1652b.m2736d().carZadSeatVent(1, 1);
                    break;
                case 71:
                    C1652b.m2734a();
                    C1652b.m2736d().carZadSeatVent(1, 2);
                    break;
                case 72:
                    C1652b.m2734a();
                    C1652b.m2736d().carZadSeatVent(1, 3);
                    break;
                case 73:
                    C1652b.m2734a();
                    C1652b.m2736d().carZadSeatVent(1, 4);
                    break;
                case 74:
                    Bundle bundle3 = new Bundle();
                    bundle3.putInt(AbstractC1387m.m2421h(new byte[]{90, 109, 123}, new byte[]{62, 4, 8, -42, -60, -56, -58, 43}), i11);
                    bundle3.putBoolean(AbstractC1387m.m2421h(new byte[]{-95, 25, 90, 56, -51, 63, -78, -42, -100, 27, 82, 38, -61, 56, -125, -38, -86, 28, 88, 36}, new byte[]{-61, 120, Base64.padSymbol, 74, -84, 74, -36, -78}), true);
                    ActivityC1081W.m1610u(this.f3201a, C2366w1.class, bundle3);
                    break;
                case 75:
                    C1652b.m2734a();
                    C1440x1 c1440x1M2741k = C1652b.m2741k();
                    c1440x1M2741k.f3482k.execute(new RunnableC1432v1(c1440x1M2741k, b10 == true ? 1 : 0));
                    break;
                case 76:
                    Context context4 = this.f3201a;
                    try {
                        zLoadBoolean = C1652b.m2745o().loadBoolean(MockGpsService.f1423r, false);
                        break;
                    } catch (Exception unused) {
                    }
                    try {
                        C1652b.m2745o().saveBoolean(MockGpsService.f1423r, !zLoadBoolean);
                        break;
                    } catch (Exception unused2) {
                    }
                    if (zLoadBoolean) {
                        MockGpsService.m1449b(context4);
                        context4.stopService(new Intent(context4, (Class<?>) MockGpsService.class));
                    } else {
                        MockGpsService.m1457m(context4);
                    }
                    AbstractC3656k.m5878x(context4, context4.getString(!zLoadBoolean ? R.string.mock_gps_toggle_enabled : R.string.mock_gps_toggle_disabled));
                    break;
                case 77:
                    m2390e(i11, MainWifiManadger.class);
                    break;
                case 78:
                    m2391f(i11, C2276c3.class);
                    break;
                case FingerClient.DEFAULT_PORT /* 79 */:
                    m2391f(i11, C2360v.class);
                    break;
                case 80:
                    m2390e(i11, RadarActivity.class);
                    break;
                case 81:
                    AbstractC3656k.m5875u(this.f3201a, new Intent(this.f3201a, (Class<?>) WebLauncherActivity.class).addFlags(872415232), null);
                    break;
                case 82:
                    C1652b.m2734a();
                    C1652b.m2744n().DisplayAreaOpenDef();
                    break;
                case 83:
                    m2391f(i11, C2331n3.class);
                    break;
                case 84:
                    AbstractC3656k.m5855a(TypedValues.TYPE_TARGET, this.f3201a);
                    break;
                case 85:
                    AbstractC3656k.m5855a(-100, this.f3201a);
                    break;
                case 86:
                    AbstractC3656k.m5855a(100, this.f3201a);
                    break;
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Bundle extras;
        this.f3201a = context;
        String action = intent == null ? null : intent.getAction();
        if (action == null || !m2387b().booleanValue()) {
            return;
        }
        if (action.equals(f3200b) && (extras = intent.getExtras()) != null) {
            int i10 = extras.getInt(AbstractC1387m.m2421h(new byte[]{38, -1, 15, 108, -5, 97, 69}, new byte[]{65, -102, 124, 24, -114, 19, 32, 56}));
            if (i10 == 202) {
                C1652b.m2734a();
                C1652b.m2737f().m2995k(AbstractC1387m.m2421h(new byte[]{111, -88, 6, 101, 112, 90, 41, 63, 56, ByteCompanionObject.MIN_VALUE}, new byte[]{93, -9, 98, 10, 7, 52, 118, 81}));
            }
            if (i10 == 302) {
                C1652b.m2734a();
                C1652b.m2737f().m2995k(AbstractC1387m.m2421h(new byte[]{-75, -89, 6, 91, 49, -103, 77, 47, -29, -113}, new byte[]{-122, -8, 98, 52, 70, -9, 18, 65}));
            }
            if (i10 == 200) {
                C1652b.m2734a();
                C1652b.m2737f().m2995k(AbstractC1387m.m2421h(new byte[]{87, 90, -47, -85, 29, 92, 78, 93, 0, 114}, new byte[]{101, 5, -67, -50, 123, 40, 17, 51}));
            }
            if (i10 == 300) {
                C1652b.m2734a();
                C1652b.m2734a();
                C1652b.m2737f().m2995k(AbstractC1387m.m2421h(new byte[]{-97, 118, -111, 95, 22, 105, -82, 116, -55, 94}, new byte[]{-84, 41, -3, 58, 112, 29, -15, 26}));
            }
            if (i10 == 201) {
                C1652b.m2734a();
                C1652b.m2737f().m2995k(AbstractC1387m.m2421h(new byte[]{3, -59, -29, -20, 11, 26, 85, 118, 95, -1, -26}, new byte[]{49, -102, -111, -123, 108, 114, 33, 41}));
            }
            if (i10 == 301) {
                C1652b.m2734a();
                C1652b.m2737f().m2995k(AbstractC1387m.m2421h(new byte[]{114, -52, 14, 79, 13, -16, 40, 27, 47, -10, 11}, new byte[]{65, -109, 124, 38, 106, -104, 92, 68}));
            }
            if (i10 == 203) {
                C1652b.m2734a();
                C1652b.m2734a();
                C1652b.m2737f().m2995k(AbstractC1387m.m2421h(new byte[]{55, -114, -51, -61, 88, -120, -107, 26}, new byte[]{5, -47, -72, -77, 7, -26, -16, 109}));
            }
            if (i10 == 303) {
                C1652b.m2734a();
                C1652b.m2737f().m2995k(AbstractC1387m.m2421h(new byte[]{-108, 85, 17, 108, -92, 108, -76, -77}, new byte[]{-89, 10, 100, 28, -5, 2, -47, -60}));
            }
        }
        if (action.equals(AbstractC1387m.m2421h(new byte[]{-124, -125, 9, -25, 8, 17, 90, 71, -126, -113, 36, -33, 30, 27, 93, 70, -107, -121, 36, -43, 20, 12, 76, 108, -85, -115, 14, -42, 24, 0, 107}, new byte[]{-25, -30, 123, -72, 123, 104, 41, 51}))) {
            int iLoadInt = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-51, 107, 6, 16, 106, -6, -21, 85, -14, 97, 7}, new byte[]{-127, 4, 115, 126, 9, -110, -87, 10}), 0);
            C1652b.m2734a();
            m2392g(iLoadInt, C1652b.m2744n().getGuDisplayID());
        }
    }
}

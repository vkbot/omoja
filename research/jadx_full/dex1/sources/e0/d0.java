package e0;

import android.app.ActivityOptions;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Debug;
import android.view.Display;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import com.example.navistart.BlackActivity;
import com.example.navistart.CarControlActivity;
import com.example.navistart.MainActivity;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.MyA11yService;
import com.example.navistart.Notik;
import com.example.navistart.VibVodActivity;
import com.example.navistart.W;
import com.example.navistart.cores.InterC;
import com.example.navistart.home.WebLauncherActivity;
import com.woha.atir.RadarActivity;
import com.woha.wifim.MainWifiManadger;
import java.util.Objects;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d0 extends BroadcastReceiver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f1822b = m.h(new byte[]{-22, 111, 36, 26, 82, -80, -68, 103, -30, 111, 52, 13, 83, -83, -10, 40, -24, 117, 41, 7, 83, -9, -69, 40, -7, 94, 51, 17, 78, -83, -67, 36, -44, 102, 37, 27, 73, -84, -86, 44, -44, 108, 47, 12, 88}, new byte[]{-117, 1, 64, 104, Base64.padSymbol, -39, -40, 73});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f1823a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d0(Context context) {
        this.f1823a = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(int i9) {
        int iLoadInt = h0.b.o().loadInt(m.h(new byte[]{43, -58, 57, 104, -115, 9, -115, -37}, new byte[]{74, -76, 92, 9, -49, 102, -30, -81}), 2);
        if (i9 == 1) {
            if (iLoadInt == 1) {
                h0.b.a();
                h0.b.c().OpenCustomPPPri();
                return;
            } else if (iLoadInt == 2) {
                h0.b.a();
                h0.b.c().OpenProPri();
                return;
            } else {
                if (iLoadInt == 3) {
                    h0.b.a();
                    h0.b.c().OpenProGu();
                    return;
                }
                return;
            }
        }
        if (i9 == 2) {
            if (iLoadInt == 1) {
                h0.b.a();
                h0.b.c().OpenCustomPPPri();
            } else if (iLoadInt == 2) {
                h0.b.a();
                h0.b.c().OpenCustomPPPri();
            } else if (iLoadInt == 3) {
                h0.b.a();
                h0.b.c().OpenProPri();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean b() {
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        com.google.protobuf.q.s(bArr, aVarO, "", sb);
        com.google.protobuf.q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = com.google.protobuf.q.g(sb, x1.f1989q);
        u0.a aVarO2 = h0.b.o();
        byte[] bArr2 = m.f1892f;
        if (com.google.protobuf.q.w(bArr2, aVarO2, "", strG)) {
            return Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{-110}, new byte[]{-94, 87, -2, 52, 59, -54, -13, -69}, h0.b.o(), com.google.protobuf.q.h(m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(int i9, float f8) {
        h0.b.a();
        float cabinTemp = h0.b.d().getCabinTemp(i9);
        if (Float.isNaN(cabinTemp) || Float.isInfinite(cabinTemp) || cabinTemp <= -50.0f) {
            return;
        }
        h0.b.a();
        h0.b.d().setCabinTemp(i9, cabinTemp + f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void d(Context context) {
        InterC interCJ = h0.b.a().j();
        if (interCJ != null) {
            boolean zBi = interCJ.bi();
            int[] iArr = new int[0];
            int[] iArr2 = new int[0];
            if (MainActivity.w() && zBi && (zBi == (!zBi) || zBi)) {
                h0.b.v(String.valueOf(iArr[1]));
            }
            if ((MainActivity.v(context) && zBi) || (zBi && Debug.isDebuggerConnected())) {
                Integer.parseInt(String.valueOf(iArr2[1]));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(int i9, Class cls) {
        Intent intentAddFlags = new Intent(this.f1823a, (Class<?>) cls).addFlags(268435456);
        DisplayManager displayManager = (DisplayManager) this.f1823a.getSystemService(m.h(new byte[]{106, 91, 21, -124, -11, -106, 78}, new byte[]{14, 50, 102, -12, -103, -9, 55, 44}));
        Display[] displays = displayManager == null ? new Display[0] : displayManager.getDisplays();
        if (Build$VERSION.SDK_INT < 26 || i9 < 0 || i9 >= displays.length) {
            y5.k.u(this.f1823a, intentAddFlags, null);
        } else {
            y5.k.u(this.f1823a, intentAddFlags, c5.h.b(ActivityOptions.makeBasic(), displays[i9].getDisplayId()).toBundle());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(int i9, Class cls) {
        Bundle bundle = new Bundle();
        bundle.putInt(m.h(new byte[]{-63, 40, -81}, new byte[]{-91, 65, -36, -37, 47, -36, -87, 77}), i9);
        W.t(this.f1823a, cls, bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(int i9, int i10) {
        if (b().booleanValue()) {
            boolean zLoadBoolean = false;
            switch (i9) {
                case 1:
                    h0.b.a();
                    h0.b.c().OpenProPri();
                    break;
                case 2:
                    Display[] displays = ((DisplayManager) this.f1823a.getSystemService(m.h(new byte[]{22, -112, -29, -68, 62, 8, -47}, new byte[]{114, -7, -112, -52, 82, 105, -88, -56}))).getDisplays();
                    if (i10 > -1 && i10 < displays.length) {
                        ActivityOptions activityOptionsB = Build$VERSION.SDK_INT >= 26 ? c5.h.b(ActivityOptions.makeBasic(), displays[i10].getDisplayId()) : null;
                        Intent intentAddFlags = new Intent(this.f1823a.getApplicationContext(), (Class<?>) BlackActivity.class).addFlags(268435456);
                        Context context = this.f1823a;
                        Objects.requireNonNull(activityOptionsB, m.h(new byte[]{-60, 73, -52, 71, 118, -126, -91, -29, -24, 88, -42, 64, 118, -104, -10, -95, -18, 25, -42, 91, 117, ByteCompanionObject.MIN_VALUE}, new byte[]{-117, 57, -72, 46, 25, -20, -42, -61}));
                        y5.k.u(context, intentAddFlags, activityOptionsB.toBundle());
                        break;
                    }
                    break;
                case 3:
                    h0.b.a();
                    h0.b.d().sunupdown(Boolean.TRUE);
                    break;
                case 4:
                    h0.b.a();
                    h0.b.d().sunupdown(Boolean.FALSE);
                    break;
                case 5:
                    y5.k.u(this.f1823a, new Intent(this.f1823a.getApplicationContext(), (Class<?>) VibVodActivity.class).addFlags(268435456), null);
                    break;
                case 6:
                    h0.b.a();
                    h0.b.c().OpenProGu();
                    break;
                case 7:
                    Bundle bundle = new Bundle();
                    bundle.putInt(m.h(new byte[]{52, 20, 46}, new byte[]{80, 125, 93, -8, -8, -55, -103, 47}), i10);
                    W.u(this.f1823a, m0.o.class, bundle);
                    break;
                case 8:
                    MyA11yService myA11yService = MyA11yService.c;
                    if (myA11yService != null) {
                        myA11yService.performGlobalAction(1);
                    }
                    break;
                case 9:
                    int iLoadInt = h0.b.o().loadInt(m.h(new byte[]{-2, 4, -81, 10, 80, 93, -127, -49}, new byte[]{-97, 118, -54, 107, 18, 50, -18, -69}), 2);
                    if (iLoadInt == 1) {
                        h0.b.a();
                        h0.b.c().OpenProGu();
                    } else if (iLoadInt == 2) {
                        h0.b.a();
                        h0.b.c().OpenProPri();
                    } else if (iLoadInt == 3) {
                        h0.b.a();
                        h0.b.c().OpenProGu();
                    }
                    break;
                case 10:
                    y5.k.u(this.f1823a, new Intent(this.f1823a, (Class<?>) CarControlActivity.class).addFlags(268435456), null);
                    break;
                case 11:
                    a(1);
                    break;
                case 12:
                    h0.b.a();
                    h0.b.c().OpenCustomPPPri();
                    break;
                case 13:
                    a(2);
                    break;
                case 14:
                    h0.b.a();
                    h0.b.k().c(n0.g.f3847b);
                    break;
                case 15:
                    h0.b.a();
                    h0.b.k().c(n0.g.c);
                    break;
                case 16:
                    h0.b.a();
                    h0.b.k().c(n0.g.d);
                    break;
                case 17:
                    h0.b.a();
                    h0.b.k().c(n0.g.e);
                    break;
                case 18:
                    MyA11yService myA11yService2 = MyA11yService.c;
                    if (myA11yService2 != null) {
                        myA11yService2.performGlobalAction(2);
                    }
                    break;
                case 19:
                    Notik.f(this.f1823a, Notik.f793l);
                    break;
                case 20:
                    k0.a.a(this.f1823a, true);
                    break;
                case 21:
                    k0.a.a(this.f1823a, false);
                    break;
                case 22:
                    h0.b.a();
                    h0.b.d().carsetheat(1, 1);
                    break;
                case 23:
                    h0.b.a();
                    h0.b.d().carsetheat(2, 1);
                    break;
                case 24:
                    h0.b.a();
                    h0.b.d().carsetheat(3, 1);
                    break;
                case 25:
                    h0.b.a();
                    h0.b.d().carsetheat(4, 1);
                    break;
                case 26:
                    h0.b.a();
                    h0.b.d().carsetvent(1, 1);
                    break;
                case 27:
                    h0.b.a();
                    h0.b.d().carsetvent(2, 1);
                    break;
                case 28:
                    h0.b.a();
                    h0.b.d().carsetvent(3, 1);
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                    h0.b.a();
                    h0.b.d().carsetvent(4, 1);
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS /* 30 */:
                    h0.b.a();
                    h0.b.d().carsetheat(1, 2);
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT /* 31 */:
                    h0.b.a();
                    h0.b.d().carsetheat(2, 2);
                    break;
                case 32:
                    h0.b.a();
                    h0.b.d().carsetheat(3, 2);
                    break;
                case 33:
                    h0.b.a();
                    h0.b.d().carsetheat(4, 2);
                    break;
                case 34:
                    h0.b.a();
                    h0.b.d().carsetvent(1, 2);
                    break;
                case 35:
                    h0.b.a();
                    h0.b.d().carsetvent(2, 2);
                    break;
                case 36:
                    h0.b.a();
                    h0.b.d().carsetvent(3, 2);
                    break;
                case 37:
                    h0.b.a();
                    h0.b.d().carsetvent(4, 2);
                    break;
                case 38:
                    h0.b.a();
                    h0.b.d().rulheatonoff(Boolean.TRUE);
                    break;
                case 39:
                    h0.b.a();
                    h0.b.d().rulheatonoff(Boolean.FALSE);
                    break;
                case 40:
                    h0.b.a();
                    h0.b.d().lobheatonoff(Boolean.TRUE);
                    break;
                case 41:
                    h0.b.a();
                    h0.b.d().lobheatonoff(Boolean.FALSE);
                    break;
                case 42:
                    h0.b.a();
                    h0.b.d().zadheatonoff(Boolean.TRUE);
                    break;
                case 43:
                    h0.b.a();
                    h0.b.d().zadheatonoff(Boolean.FALSE);
                    break;
                case 44:
                    h0.b.a();
                    h0.b.d().carZadSeatHeat(0, 1);
                    break;
                case 45:
                    h0.b.a();
                    h0.b.d().carZadSeatHeat(0, 2);
                    break;
                case 46:
                    h0.b.a();
                    h0.b.d().carZadSeatHeat(0, 3);
                    break;
                case 47:
                    h0.b.a();
                    h0.b.d().carZadSeatHeat(0, 4);
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                    h0.b.a();
                    h0.b.d().carZadSeatHeat(1, 1);
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    h0.b.a();
                    h0.b.d().carZadSeatHeat(1, 2);
                    break;
                case 50:
                    h0.b.a();
                    h0.b.d().carZadSeatHeat(1, 3);
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    h0.b.a();
                    h0.b.d().carZadSeatHeat(1, 4);
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                    h0.b.a();
                    h0.b.d().carsetvod(1);
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                    h0.b.a();
                    h0.b.d().carsetvod(2);
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_MARGIN_BASELINE /* 54 */:
                    h0.b.a();
                    h0.b.d().carsetvod(3);
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    Bundle bundle2 = new Bundle();
                    String strH = m.h(new byte[]{85, -10, -73}, new byte[]{49, -97, -60, -119, -112, -32, 26, -21});
                    h0.b.a();
                    bundle2.putInt(strH, h0.b.n().getGuDisplayID());
                    W.u(this.f1823a, m0.k2.class, bundle2);
                    break;
                case 56:
                    h0.b.a();
                    h0.b.f().a(m.h(new byte[]{-7, 56, -105, -50, -40, 3, -64, -113, -26, 34, -117, -12, -26, 0, -43, -92, -1, 36, -105, -10, -54}, new byte[]{-117, 77, -7, -111, -71, 115, -80, -48}));
                    break;
                case 57:
                    this.f1823a.sendBroadcast(new Intent(m.h(new byte[]{-99, -28, -99, -37, -33, 95, 110, 118, -114, -25, -107, -37, -44, 70, 121, 114, -115, -1, -111, -121, -50, 9, 125, 110, -112, -91, -93, -123, -45, 68, 103, 53, -72, -28, -109, ByteCompanionObject.MIN_VALUE, -55}, new byte[]{-2, -117, -16, -11, -70, 39, 15, 27})));
                    break;
                case 58:
                    h0.b.a();
                    h0.b.d().setRecirculation(true);
                    break;
                case 59:
                    h0.b.a();
                    h0.b.d().setRecirculation(false);
                    break;
                case 60:
                    Context context2 = this.f1823a;
                    int iK = y5.k.k(context2);
                    if (iK >= 0) {
                        int i11 = y5.k.f6135b;
                        if (i11 >= 0) {
                            iK = i11;
                        }
                        y5.k.t(iK - 1, context2);
                        break;
                    }
                    break;
                case 61:
                    Context context3 = this.f1823a;
                    int iK2 = y5.k.k(context3);
                    if (iK2 >= 0) {
                        int i12 = y5.k.f6135b;
                        if (i12 >= 0) {
                            iK2 = i12;
                        }
                        y5.k.t(iK2 + 1, context3);
                        break;
                    }
                    break;
                case 62:
                    c(1, -1.0f);
                    break;
                case 63:
                    c(1, 1.0f);
                    break;
                case 64:
                    c(2, -1.0f);
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                    c(2, 1.0f);
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    h0.b.a();
                    h0.b.d().carZadSeatVent(0, 1);
                    break;
                case ConstraintLayout$LayoutParams$Table.GUIDELINE_USE_RTL /* 67 */:
                    h0.b.a();
                    h0.b.d().carZadSeatVent(0, 2);
                    break;
                case 68:
                    h0.b.a();
                    h0.b.d().carZadSeatVent(0, 3);
                    break;
                case 69:
                    h0.b.a();
                    h0.b.d().carZadSeatVent(0, 4);
                    break;
                case 70:
                    h0.b.a();
                    h0.b.d().carZadSeatVent(1, 1);
                    break;
                case 71:
                    h0.b.a();
                    h0.b.d().carZadSeatVent(1, 2);
                    break;
                case 72:
                    h0.b.a();
                    h0.b.d().carZadSeatVent(1, 3);
                    break;
                case 73:
                    h0.b.a();
                    h0.b.d().carZadSeatVent(1, 4);
                    break;
                case 74:
                    Bundle bundle3 = new Bundle();
                    bundle3.putInt(m.h(new byte[]{90, 109, 123}, new byte[]{62, 4, 8, -42, -60, -56, -58, 43}), i10);
                    bundle3.putBoolean(m.h(new byte[]{-95, 25, 90, 56, -51, 63, -78, -42, -100, 27, 82, 38, -61, 56, -125, -38, -86, 28, 88, 36}, new byte[]{-61, 120, Base64.padSymbol, 74, -84, 74, -36, -78}), true);
                    W.u(this.f1823a, m0.w1.class, bundle3);
                    break;
                case 75:
                    h0.b.a();
                    x1 x1VarK = h0.b.k();
                    x1VarK.f1997k.execute(new v1(x1VarK, 0));
                    break;
                case 76:
                    Context context4 = this.f1823a;
                    try {
                        zLoadBoolean = h0.b.o().loadBoolean(MockGpsService.r, false);
                        break;
                    } catch (Exception unused) {
                    }
                    try {
                        h0.b.o().saveBoolean(MockGpsService.r, !zLoadBoolean);
                        break;
                    } catch (Exception unused2) {
                    }
                    if (zLoadBoolean) {
                        MockGpsService.b(context4);
                        context4.stopService(new Intent(context4, (Class<?>) MockGpsService.class));
                    } else {
                        MockGpsService.m(context4);
                    }
                    y5.k.x(context4, context4.getString(!zLoadBoolean ? 2131952279 : 2131952278));
                    break;
                case 77:
                    e(i10, MainWifiManadger.class);
                    break;
                case 78:
                    f(i10, m0.c3.class);
                    break;
                case 79:
                    f(i10, m0.v.class);
                    break;
                case 80:
                    e(i10, RadarActivity.class);
                    break;
                case 81:
                    y5.k.u(this.f1823a, new Intent(this.f1823a, (Class<?>) WebLauncherActivity.class).addFlags(872415232), null);
                    break;
                case 82:
                    h0.b.a();
                    h0.b.n().DisplayAreaOpenDef();
                    break;
                case 83:
                    f(i10, m0.n3.class);
                    break;
                case 84:
                    y5.k.a(TypedValues.TYPE_TARGET, this.f1823a);
                    break;
                case 85:
                    y5.k.a(-100, this.f1823a);
                    break;
                case 86:
                    y5.k.a(100, this.f1823a);
                    break;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Bundle extras;
        this.f1823a = context;
        String action = intent == null ? null : intent.getAction();
        if (action == null || !b().booleanValue()) {
            return;
        }
        if (action.equals(f1822b) && (extras = intent.getExtras()) != null) {
            int i9 = extras.getInt(m.h(new byte[]{38, -1, 15, 108, -5, 97, 69}, new byte[]{65, -102, 124, 24, -114, 19, 32, 56}));
            if (i9 == 202) {
                h0.b.a();
                h0.b.f().k(m.h(new byte[]{111, -88, 6, 101, 112, 90, 41, 63, 56, ByteCompanionObject.MIN_VALUE}, new byte[]{93, -9, 98, 10, 7, 52, 118, 81}));
            }
            if (i9 == 302) {
                h0.b.a();
                h0.b.f().k(m.h(new byte[]{-75, -89, 6, 91, 49, -103, 77, 47, -29, -113}, new byte[]{-122, -8, 98, 52, 70, -9, 18, 65}));
            }
            if (i9 == 200) {
                h0.b.a();
                h0.b.f().k(m.h(new byte[]{87, 90, -47, -85, 29, 92, 78, 93, 0, 114}, new byte[]{101, 5, -67, -50, 123, 40, 17, 51}));
            }
            if (i9 == 300) {
                h0.b.a();
                h0.b.a();
                h0.b.f().k(m.h(new byte[]{-97, 118, -111, 95, 22, 105, -82, 116, -55, 94}, new byte[]{-84, 41, -3, 58, 112, 29, -15, 26}));
            }
            if (i9 == 201) {
                h0.b.a();
                h0.b.f().k(m.h(new byte[]{3, -59, -29, -20, 11, 26, 85, 118, 95, -1, -26}, new byte[]{49, -102, -111, -123, 108, 114, 33, 41}));
            }
            if (i9 == 301) {
                h0.b.a();
                h0.b.f().k(m.h(new byte[]{114, -52, 14, 79, 13, -16, 40, 27, 47, -10, 11}, new byte[]{65, -109, 124, 38, 106, -104, 92, 68}));
            }
            if (i9 == 203) {
                h0.b.a();
                h0.b.a();
                h0.b.f().k(m.h(new byte[]{55, -114, -51, -61, 88, -120, -107, 26}, new byte[]{5, -47, -72, -77, 7, -26, -16, 109}));
            }
            if (i9 == 303) {
                h0.b.a();
                h0.b.f().k(m.h(new byte[]{-108, 85, 17, 108, -92, 108, -76, -77}, new byte[]{-89, 10, 100, 28, -5, 2, -47, -60}));
            }
        }
        if (action.equals(m.h(new byte[]{-124, -125, 9, -25, 8, 17, 90, 71, -126, -113, 36, -33, 30, 27, 93, 70, -107, -121, 36, -43, 20, 12, 76, 108, -85, -115, 14, -42, 24, 0, 107}, new byte[]{-25, -30, 123, -72, 123, 104, 41, 51}))) {
            int iLoadInt = h0.b.o().loadInt(m.h(new byte[]{-51, 107, 6, 16, 106, -6, -21, 85, -14, 97, 7}, new byte[]{-127, 4, 115, 126, 9, -110, -87, 10}), 0);
            h0.b.a();
            g(iLoadInt, h0.b.n().getGuDisplayID());
        }
    }
}

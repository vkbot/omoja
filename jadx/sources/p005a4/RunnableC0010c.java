package p005a4;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import android.view.View;
import androidx.activity.RunnableC0131f;
import androidx.core.content.res.ResourcesCompat;
import com.bumptech.glide.RunnableC1054m;
import com.example.navistart.DialogUni.Fragmenti.ExlantixTelemetryFragment;
import com.example.navistart.LounchB;
import com.example.navistart.SpeedBoard.PPSView;
import com.example.navistart.UpdateActivity;
import com.example.navistart.cores.Saa;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.protobuf.AbstractC1178q;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONObject;
import p016b1.C0865f;
import p016b1.C0872m;
import p047e0.AbstractC1387m;
import p047e0.C1360g2;
import p047e0.C1417s;
import p078h0.C1652b;
import p098j0.AbstractC1920f;
import p098j0.C1919e;
import p098j0.EnumC1918d;
import p132m0.C2328n0;
import p142n0.EnumC2469d;
import p180r0.C3088a;
import p190s1.C3159n;
import p190s1.C3174u0;
import p198t1.C3232j;
import p198t1.C3233k;
import p216v0.C3317d;
import p216v0.C3318e;

/* JADX INFO: renamed from: a4.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0010c implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f52b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f53c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f54d;

    public /* synthetic */ RunnableC0010c(IBinder iBinder, int i10) {
        this.f52b = 3;
        this.f53c = i10;
        this.f54d = iBinder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        JSONObject jSONObject = null;
        switch (this.f52b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f54d;
                int i10 = this.f53c;
                View view = (View) sideSheetBehavior.f2418p.get();
                if (view != null) {
                    sideSheetBehavior.m1827c(view, i10, false);
                    return;
                }
                return;
            case 1:
                ((ResourcesCompat.FontCallback) this.f54d).lambda$callbackFailAsync$1(this.f53c);
                return;
            case 2:
                C0865f c0865f = (C0865f) this.f54d;
                int i11 = this.f53c;
                if (c0865f.f562j == i11) {
                    if (c0865f.f559g != null) {
                        c0865f.m919a();
                        return;
                    }
                    return;
                } else {
                    c0865f.f562j = i11;
                    c0865f.f560h = null;
                    c0865f.f561i = 0L;
                    c0865f.m919a();
                    return;
                }
            case 3:
                int i12 = this.f53c;
                IBinder iBinder = (IBinder) this.f54d;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    try {
                        parcelObtain.writeInterfaceToken(C0865f.f550v);
                        parcelObtain.writeInt(i12);
                        if (iBinder.transact(3, parcelObtain, parcelObtain2, 0)) {
                            parcelObtain2.readException();
                        }
                        break;
                    } catch (Exception e) {
                        Log.w(C0865f.f547s, AbstractC1387m.m2421h(new byte[]{-108, 76, -2, ByteCompanionObject.MIN_VALUE, -20, 77, -66, -21, -82, 2, -20, -121, -12, 8, -13, -10, -81, 75, -78, -113, -31, 88, -66, -21, -87, 71, -14, -121}, new byte[]{-63, 34, -97, -30, ByteCompanionObject.MIN_VALUE, 40, -98, -97}), e);
                        break;
                    }
                    return;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            case 4:
                LounchB lounchB = (LounchB) this.f54d;
                int i13 = this.f53c;
                C3088a c3088a = lounchB.f1287f;
                c3088a.getClass();
                if (i13 >= 0 && i13 < 8) {
                    C1919e c1919eM3007e = AbstractC1920f.m3007e(c3088a.f8775b, C3088a.f8773c + i13);
                    C1652b.m2734a();
                    C1652b.m2737f().m2994j(c1919eM3007e, null);
                }
                lounchB.f1284c.m5171d(lounchB);
                return;
            case 5:
                ((C1360g2) this.f54d).f3240c.setProgress(this.f53c);
                return;
            case 6:
                UpdateActivity updateActivity = (UpdateActivity) this.f54d;
                int i14 = this.f53c;
                String str = UpdateActivity.f1678l;
                C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity);
                if (c1417sM2423j.f3399a || c1417sM2423j.f3400b) {
                    updateActivity.m1600s(AbstractC1387m.m2421h(new byte[]{-73, -52, 30, -89, -60, 105}, new byte[]{-59, -87, 106, -43, -67, 73, 14, -63}) + i14);
                    return;
                }
                String str2 = UpdateActivity.f1678l;
                StringBuilder sb = new StringBuilder();
                AbstractC1178q.m2086t(new byte[]{104, -87, 35, 95, 126, 31}, new byte[]{26, -52, 87, 45, 7, 63, 42, -121}, sb, i14);
                sb.append(AbstractC1387m.m2421h(new byte[]{94, 38, 0, -53, 75, 65, 120, -44, 29, 38, 19, -62, 88, 64, 96, -100, 68}, new byte[]{100, 6, 97, -89, 57, 36, 25, -80}));
                sb.append(c1417sM2423j.m2451a());
                Log.e(str2, sb.toString());
                return;
            case 7:
                RunnableC1054m runnableC1054m = (RunnableC1054m) this.f54d;
                int i15 = this.f53c;
                ExlantixTelemetryFragment exlantixTelemetryFragment = (ExlantixTelemetryFragment) runnableC1054m.f1148c;
                try {
                    C1652b.m2734a();
                    JSONObject jSONObjectM1618c = C1652b.m2736d().m1618c(new JSONObject().put(AbstractC1387m.m2421h(new byte[]{-25, 85, 80}, new byte[]{-124, 56, 52, 98, 119, -48, -38, 44}), AbstractC1387m.m2421h(new byte[]{83, 80, 70, 125, 32, -79, -23, 63, 90, 65, 91, 90, 26, -67, -32, 50, 81, 88, 87, 86, 55, -80}, new byte[]{52, 53, 50, 34, 69, -55, -123, 94})));
                    if (jSONObjectM1618c != null) {
                        try {
                            if (jSONObjectM1618c.optBoolean(AbstractC1387m.m2421h(new byte[]{89, 62, 10, -92, -65, -99, -46}, new byte[]{42, 75, 105, -57, -38, -18, -95, -35})) && jSONObjectM1618c.optInt(AbstractC1387m.m2421h(new byte[]{123, -113, 55, 73, 100, -47, -79, -78, 122, -97, 54, 67, 103}, new byte[]{8, -20, 95, 44, 9, -80, -25, -41})) == 1) {
                                jSONObject = jSONObjectM1618c;
                            }
                        } catch (Exception | LinkageError unused) {
                        }
                    }
                } catch (Exception | LinkageError unused2) {
                }
                exlantixTelemetryFragment.busy.set(false);
                exlantixTelemetryFragment.main.post(new RunnableC0131f(runnableC1054m, i15, jSONObject, 5));
                return;
            case 8:
                C2328n0 c2328n0 = (C2328n0) this.f54d;
                int i16 = this.f53c;
                String str3 = C2328n0.f6237k;
                c2328n0.m3709u(i16);
                return;
            case 9:
                C0872m c0872m = (C0872m) this.f54d;
                int i17 = this.f53c;
                C3088a c3088a2 = (C3088a) c0872m.f603e;
                c3088a2.getClass();
                if (i17 >= 0 && i17 < 8) {
                    C1919e c1919eM3007e2 = AbstractC1920f.m3007e(c3088a2.f8775b, C3088a.f8773c + i17);
                    if (c1919eM3007e2.f5058a.equals(EnumC1918d.f5053b)) {
                        EnumC2469d enumC2469d = c1919eM3007e2.f5059b;
                        if (enumC2469d != null && enumC2469d != EnumC2469d.f6756e) {
                            int i18 = enumC2469d.f6802d;
                            C1652b.m2734a();
                            c3088a2.f8774a.m2392g(i18, C1652b.m2744n().getGuPassDisplayID());
                        }
                    } else if (c1919eM3007e2.f5058a.equals(EnumC1918d.f5054c)) {
                        String str4 = c1919eM3007e2.f5060c;
                        C1652b.m2734a();
                        c3088a2.m4923a(C1652b.m2744n().getGuPassDisplayID(), str4);
                    } else if (c1919eM3007e2.f5058a.equals(EnumC1918d.f5055d)) {
                        String str5 = c1919eM3007e2.f5060c;
                        String str6 = c1919eM3007e2.f5061d;
                        int i19 = c1919eM3007e2.f5064g;
                        int i20 = c1919eM3007e2.f5065h;
                        if (str5 != null && str6 != null) {
                            C1652b.m2734a().m2755j().ssa(new Saa(str5, str6, i19 == 2 ? 2 : 1, i20));
                        }
                    } else if (c1919eM3007e2.f5058a.equals(EnumC1918d.f5056e)) {
                        C1652b.m2734a();
                        C1652b.m2737f().m2994j(c1919eM3007e2, null);
                    }
                }
                ((C3232j) c0872m.f602d).m5171d((LounchB) c0872m.f604f);
                return;
            case 10:
                C3159n c3159n = (C3159n) this.f54d;
                int i21 = this.f53c;
                if (c3159n.f9131r || i21 != c3159n.f9132s) {
                    return;
                }
                c3159n.m5020g();
                return;
            case 11:
                C3174u0 c3174u0 = (C3174u0) this.f54d;
                int i22 = this.f53c;
                PackageManager packageManager = c3174u0.getContext().getPackageManager();
                List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(new Intent(AbstractC1387m.m2421h(new byte[]{-71, -27, -99, 93, -51, 5, -10, -21, -79, -27, -115, 74, -52, 24, -68, -92, -69, -1, -112, 64, -52, 66, -33, -124, -111, -59}, new byte[]{-40, -117, -7, 47, -94, 108, -110, -59})).addCategory(AbstractC1387m.m2421h(new byte[]{92, 101, -58, -53, 47, 113, 19, 28, 84, 101, -42, -36, 46, 108, 89, 81, 92, ByteCompanionObject.MAX_VALUE, -57, -34, 47, 106, 14, 28, 113, 74, -9, -9, 3, 80, 50, 96}, new byte[]{Base64.padSymbol, 11, -94, -71, 64, 24, 119, 50})), 0);
                listQueryIntentActivities.sort(new ResolveInfo.DisplayNameComparator(packageManager));
                c3174u0.post(new RunnableC0131f(c3174u0, i22, listQueryIntentActivities, 10));
                return;
            case 12:
                C3233k c3233k = (C3233k) this.f54d;
                int i23 = this.f53c;
                C3088a c3088a3 = c3233k.f9489c;
                int i24 = c3233k.f9491e;
                c3088a3.getClass();
                if (i23 >= 0 && i23 < 8) {
                    C1919e c1919eM3007e3 = AbstractC1920f.m3007e(c3088a3.f8775b, C3088a.f8773c + i23);
                    if (c1919eM3007e3.f5058a.equals(EnumC1918d.f5053b)) {
                        EnumC2469d enumC2469d2 = c1919eM3007e3.f5059b;
                        if (enumC2469d2 != null && enumC2469d2 != EnumC2469d.f6756e) {
                            c3088a3.f8774a.m2392g(enumC2469d2.f6802d, i24);
                        }
                    } else if (c1919eM3007e3.f5058a.equals(EnumC1918d.f5054c)) {
                        c3088a3.m4923a(i24, c1919eM3007e3.f5060c);
                    } else if (c1919eM3007e3.f5058a.equals(EnumC1918d.f5055d)) {
                        String str7 = c1919eM3007e3.f5060c;
                        String str8 = c1919eM3007e3.f5061d;
                        int i25 = c1919eM3007e3.f5064g;
                        int i26 = c1919eM3007e3.f5065h;
                        if (str7 != null && str8 != null) {
                            C1652b.m2734a().m2755j().ssa(new Saa(str7, str8, i25 == 2 ? 2 : 1, i26));
                        }
                    } else if (c1919eM3007e3.f5058a.equals(EnumC1918d.f5056e)) {
                        C1652b.m2734a();
                        C1652b.m2737f().m2994j(c1919eM3007e3, null);
                    }
                }
                c3233k.f9488b.m5171d(c3233k.f9490d);
                return;
            case 13:
                ((C3317d) this.f54d).f9715b.m5573k(this.f53c);
                return;
            default:
                C3318e c3318e = (C3318e) this.f54d;
                int i27 = this.f53c;
                PPSView pPSView = c3318e.f9717b;
                if (pPSView != null) {
                    pPSView.setSpeed(i27);
                    return;
                }
                return;
        }
    }

    public /* synthetic */ RunnableC0010c(Object obj, int i10, int i11) {
        this.f52b = i11;
        this.f54d = obj;
        this.f53c = i10;
    }
}

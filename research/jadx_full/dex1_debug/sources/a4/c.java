package a4;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ResolveInfo$DisplayNameComparator;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import android.view.View;
import androidx.core.content.res.ResourcesCompat$FontCallback;
import com.example.navistart.DialogUni.Fragmenti.ExlantixTelemetryFragment;
import com.example.navistart.LounchB;
import com.example.navistart.SpeedBoard.PPSView;
import com.example.navistart.UpdateActivity;
import com.example.navistart.cores.Saa;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.protobuf.q;
import e0.g2;
import e0.m;
import e0.s;
import java.util.List;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.n0;
import org.json.JSONObject;
import s1.n;
import s1.u0;
import t1.j;
import t1.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f30b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(IBinder iBinder, int i9) {
        this.f30b = 3;
        this.c = i9;
        this.d = iBinder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        JSONObject jSONObject = null;
        switch (this.f30b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.d;
                int i9 = this.c;
                View view = (View) sideSheetBehavior.f1350p.get();
                if (view != null) {
                    sideSheetBehavior.c(view, i9, false);
                    return;
                }
                return;
            case 1:
                ResourcesCompat$FontCallback.b((ResourcesCompat$FontCallback) this.d, this.c);
                return;
            case 2:
                b1.f fVar = (b1.f) this.d;
                int i10 = this.c;
                if (fVar.f244j == i10) {
                    if (fVar.f241g != null) {
                        fVar.a();
                        return;
                    }
                    return;
                } else {
                    fVar.f244j = i10;
                    fVar.f242h = null;
                    fVar.f243i = 0L;
                    fVar.a();
                    return;
                }
            case 3:
                int i11 = this.c;
                IBinder iBinder = (IBinder) this.d;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    try {
                        parcelObtain.writeInterfaceToken(b1.f.f236v);
                        parcelObtain.writeInt(i11);
                        if (iBinder.transact(3, parcelObtain, parcelObtain2, 0)) {
                            parcelObtain2.readException();
                        }
                        break;
                    } catch (Exception e) {
                        Log.w(b1.f.f234s, m.h(new byte[]{-108, 76, -2, ByteCompanionObject.MIN_VALUE, -20, 77, -66, -21, -82, 2, -20, -121, -12, 8, -13, -10, -81, 75, -78, -113, -31, 88, -66, -21, -87, 71, -14, -121}, new byte[]{-63, 34, -97, -30, ByteCompanionObject.MIN_VALUE, 40, -98, -97}), e);
                        break;
                    }
                    return;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            case 4:
                LounchB lounchB = (LounchB) this.d;
                int i12 = this.c;
                r0.a aVar = lounchB.f687f;
                aVar.getClass();
                if (i12 >= 0 && i12 < 8) {
                    j0.e eVarE = j0.f.e(aVar.f4928b, r0.a.c + i12);
                    h0.b.a();
                    h0.b.f().j(eVarE, null);
                }
                lounchB.c.d(lounchB);
                return;
            case 5:
                ((g2) this.d).c.setProgress(this.c);
                return;
            case 6:
                UpdateActivity updateActivity = (UpdateActivity) this.d;
                int i13 = this.c;
                String str = UpdateActivity.f871l;
                s sVarJ = m.j(updateActivity);
                if (sVarJ.f1944a || sVarJ.f1945b) {
                    updateActivity.s(m.h(new byte[]{-73, -52, 30, -89, -60, 105}, new byte[]{-59, -87, 106, -43, -67, 73, 14, -63}) + i13);
                    return;
                }
                String str2 = UpdateActivity.f871l;
                StringBuilder sb = new StringBuilder();
                q.t(new byte[]{104, -87, 35, 95, 126, 31}, new byte[]{26, -52, 87, 45, 7, 63, 42, -121}, sb, i13);
                sb.append(m.h(new byte[]{94, 38, 0, -53, 75, 65, 120, -44, 29, 38, 19, -62, 88, 64, 96, -100, 68}, new byte[]{100, 6, 97, -89, 57, 36, 25, -80}));
                sb.append(sVarJ.a());
                Log.e(str2, sb.toString());
                return;
            case 7:
                com.bumptech.glide.m mVar = (com.bumptech.glide.m) this.d;
                int i14 = this.c;
                ExlantixTelemetryFragment exlantixTelemetryFragment = (ExlantixTelemetryFragment) mVar.c;
                try {
                    h0.b.a();
                    JSONObject jSONObjectC = h0.b.d().c(new JSONObject().put(m.h(new byte[]{-25, 85, 80}, new byte[]{-124, 56, 52, 98, 119, -48, -38, 44}), m.h(new byte[]{83, 80, 70, 125, 32, -79, -23, 63, 90, 65, 91, 90, 26, -67, -32, 50, 81, 88, 87, 86, 55, -80}, new byte[]{52, 53, 50, 34, 69, -55, -123, 94})));
                    if (jSONObjectC != null) {
                        try {
                            if (jSONObjectC.optBoolean(m.h(new byte[]{89, 62, 10, -92, -65, -99, -46}, new byte[]{42, 75, 105, -57, -38, -18, -95, -35})) && jSONObjectC.optInt(m.h(new byte[]{123, -113, 55, 73, 100, -47, -79, -78, 122, -97, 54, 67, 103}, new byte[]{8, -20, 95, 44, 9, -80, -25, -41})) == 1) {
                                jSONObject = jSONObjectC;
                            }
                        } catch (Exception | LinkageError unused) {
                        }
                    }
                } catch (Exception | LinkageError unused2) {
                }
                ExlantixTelemetryFragment.x(exlantixTelemetryFragment).set(false);
                ExlantixTelemetryFragment.D(exlantixTelemetryFragment).post(new androidx.activity.f(mVar, i14, jSONObject, 5));
                return;
            case 8:
                n0 n0Var = (n0) this.d;
                int i15 = this.c;
                String str3 = n0.f3526k;
                n0Var.u(i15);
                return;
            case 9:
                b1.m mVar2 = (b1.m) this.d;
                int i16 = this.c;
                r0.a aVar2 = (r0.a) mVar2.e;
                aVar2.getClass();
                if (i16 >= 0 && i16 < 8) {
                    j0.e eVarE2 = j0.f.e(aVar2.f4928b, r0.a.c + i16);
                    if (eVarE2.f2872a.equals(j0.d.f2870b)) {
                        n0.d dVar = eVarE2.f2873b;
                        if (dVar != null && dVar != n0.d.e) {
                            int i17 = dVar.d;
                            h0.b.a();
                            aVar2.f4927a.g(i17, h0.b.n().getGuPassDisplayID());
                        }
                    } else if (eVarE2.f2872a.equals(j0.d.c)) {
                        String str4 = eVarE2.c;
                        h0.b.a();
                        aVar2.a(h0.b.n().getGuPassDisplayID(), str4);
                    } else if (eVarE2.f2872a.equals(j0.d.d)) {
                        String str5 = eVarE2.c;
                        String str6 = eVarE2.d;
                        int i18 = eVarE2.f2875g;
                        int i19 = eVarE2.f2876h;
                        if (str5 != null && str6 != null) {
                            h0.b.a().j().ssa(new Saa(str5, str6, i18 == 2 ? 2 : 1, i19));
                        }
                    } else if (eVarE2.f2872a.equals(j0.d.e)) {
                        h0.b.a();
                        h0.b.f().j(eVarE2, null);
                    }
                }
                ((j) mVar2.d).d((LounchB) mVar2.f270f);
                return;
            case 10:
                n nVar = (n) this.d;
                int i20 = this.c;
                if (nVar.r || i20 != nVar.f5161s) {
                    return;
                }
                nVar.g();
                return;
            case 11:
                u0 u0Var = (u0) this.d;
                int i21 = this.c;
                PackageManager packageManager = u0Var.getContext().getPackageManager();
                List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(new Intent(m.h(new byte[]{-71, -27, -99, 93, -51, 5, -10, -21, -79, -27, -115, 74, -52, 24, -68, -92, -69, -1, -112, 64, -52, 66, -33, -124, -111, -59}, new byte[]{-40, -117, -7, 47, -94, 108, -110, -59})).addCategory(m.h(new byte[]{92, 101, -58, -53, 47, 113, 19, 28, 84, 101, -42, -36, 46, 108, 89, 81, 92, ByteCompanionObject.MAX_VALUE, -57, -34, 47, 106, 14, 28, 113, 74, -9, -9, 3, 80, 50, 96}, new byte[]{Base64.padSymbol, 11, -94, -71, 64, 24, 119, 50})), 0);
                listQueryIntentActivities.sort(new ResolveInfo$DisplayNameComparator(packageManager));
                u0Var.post(new androidx.activity.f(u0Var, i21, listQueryIntentActivities, 10));
                return;
            case 12:
                k kVar = (k) this.d;
                int i22 = this.c;
                r0.a aVar3 = kVar.c;
                int i23 = kVar.e;
                aVar3.getClass();
                if (i22 >= 0 && i22 < 8) {
                    j0.e eVarE3 = j0.f.e(aVar3.f4928b, r0.a.c + i22);
                    if (eVarE3.f2872a.equals(j0.d.f2870b)) {
                        n0.d dVar2 = eVarE3.f2873b;
                        if (dVar2 != null && dVar2 != n0.d.e) {
                            aVar3.f4927a.g(dVar2.d, i23);
                        }
                    } else if (eVarE3.f2872a.equals(j0.d.c)) {
                        aVar3.a(i23, eVarE3.c);
                    } else if (eVarE3.f2872a.equals(j0.d.d)) {
                        String str7 = eVarE3.c;
                        String str8 = eVarE3.d;
                        int i24 = eVarE3.f2875g;
                        int i25 = eVarE3.f2876h;
                        if (str7 != null && str8 != null) {
                            h0.b.a().j().ssa(new Saa(str7, str8, i24 == 2 ? 2 : 1, i25));
                        }
                    } else if (eVarE3.f2872a.equals(j0.d.e)) {
                        h0.b.a();
                        h0.b.f().j(eVarE3, null);
                    }
                }
                kVar.f5372b.d(kVar.d);
                return;
            case 13:
                ((v0.d) this.d).f5503b.k(this.c);
                return;
            default:
                v0.e eVar = (v0.e) this.d;
                int i26 = this.c;
                PPSView pPSView = eVar.f5504b;
                if (pPSView != null) {
                    pPSView.setSpeed(i26);
                    return;
                }
                return;
        }
    }

    public /* synthetic */ c(Object obj, int i9, int i10) {
        this.f30b = i10;
        this.d = obj;
        this.c = i9;
    }
}

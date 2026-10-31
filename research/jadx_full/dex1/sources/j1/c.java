package j1;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.chery.ivi.vdb.event.id.vr.bean.VDP2P;
import com.example.navistart.W;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2885b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(int i9) {
        this.f2885b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.u
    public final void c(Context context) {
        switch (this.f2885b) {
            case 0:
                e.i(e.t);
                break;
            case 1:
                String str = e.c;
                try {
                    Bundle bundle = new Bundle();
                    bundle.putParcelable(e0.m.h(new byte[]{22, -109, 56, -50}, new byte[]{114, -14, 76, -81, -118, 14, 21, 25}), new VDP2P(e0.m.h(new byte[]{-84, 40, 4, -43, 126, -51, -75, 117, -88, 40, 0, -64, 124, -39, -113, 118, -67}, new byte[]{-55, 70, 97, -89, 25, -76, -22, 24}), 5511, "", true));
                    context.getContentResolver().call(e.B, e0.m.h(new byte[]{27, -24, 54, -88}, new byte[]{116, -104, 83, -58, -87, 42, 117, 112}), (String) null, bundle);
                } catch (Throwable th) {
                    Log.e(e0.m.h(new byte[]{65, 17, -119, -68, -36, -54, -64, 67, 108, 23, -66, -73}, new byte[]{2, 112, -5, -17, -71, -66, -76, 42}), e0.m.h(new byte[]{106, 10, -21, -68, -87, 65, 40, 36, 80, 68, -27, -82, -96, 74, 40, 0, 119, 33, -36, -2, -96, 74, 109, 34, 88, 29, -86, -77, -92, 74, 105, 55, 90, 9, -17, -80, -79}, new byte[]{63, 100, -118, -34, -59, 36, 8, 80}), th);
                    return;
                }
                break;
            case 2:
                e.i(e.f2918u);
                break;
            case 3:
                e.i(e.f2919v);
                break;
            case 4:
                e.i(e.w);
                break;
            case 5:
                e.i(e.f2920x);
                break;
            case 6:
                e.i(e.f2921y);
                break;
            case 7:
                e.i(e.f2922z);
                break;
            case 8:
                e.i(e.A);
                break;
            case 9:
                e.i(e.d);
                break;
            case 10:
                e.i(e.f2910k);
                break;
            case 11:
                e.i(e.e);
                break;
            case 12:
                e.i(e.f2905f);
                break;
            case 13:
                e.i(e.c);
                break;
            case 14:
                e.i(e.f2906g);
                break;
            case 15:
                e.i(e.f2907h);
                break;
            case 16:
                e.i(e.f2908i);
                break;
            case 17:
                e.i(e.f2909j);
                break;
            case 18:
                e.i(e.f2911l);
                break;
            case 19:
                e.i(e.f2912m);
                break;
            case 20:
                e.i(e.f2913n);
                break;
            case 21:
                e.i(e.f2914o);
                break;
            case 22:
                e.i(e.f2915p);
                break;
            case 23:
                e.i(e.f2916q);
                break;
            case 24:
                e.i(e.r);
                break;
            case 25:
                e.i(e.f2917s);
                break;
            case 26:
                Bundle bundle2 = new Bundle();
                String strH = e0.m.h(new byte[]{22, -127, 58}, new byte[]{114, -24, 73, -119, 3, -122, -50, 88});
                h0.b.a();
                bundle2.putInt(strH, h0.b.n().getGuDisplayID());
                W.t(context, f1.e.class, bundle2);
                break;
            case 27:
                u0.a aVarO = h0.b.o();
                String str2 = l.e;
                boolean zLoadBoolean = aVarO.loadBoolean(str2, false);
                boolean z8 = !zLoadBoolean;
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(e0.m.h(new byte[]{49, 51, 86}, new byte[]{82, 94, 50, -87, -122, -82, -28, -86}), !zLoadBoolean ? e0.m.h(new byte[]{106, 86, -121, 17, 65, -13, -32, 30, ByteCompanionObject.MAX_VALUE, 81, -116, 47, 85, -10, -30, 47, 107, 75, ByteCompanionObject.MIN_VALUE, 21}, new byte[]{14, 63, -12, 112, 35, -97, -123, 65}) : e0.m.h(new byte[]{112, 24, -30, -92, -3, 51, 70, 13, 123, 14, -36, -80, -8, 49, 119, 25, 97, 2, -26}, new byte[]{21, 118, -125, -58, -111, 86, 25, 124}));
                    h0.b.a();
                    JSONObject jSONObjectC = h0.b.d().c(jSONObject);
                    if (jSONObjectC != null && jSONObjectC.optBoolean(e0.m.h(new byte[]{-76, -69, -60, 45, 20, -47, 9}, new byte[]{-57, -50, -89, 78, 113, -94, 122, -112}), false)) {
                        h0.b.o().saveBoolean(str2, z8);
                        break;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            case 28:
                W.t(context, f1.e.class, null);
                break;
            default:
                k.i(1, 100);
                break;
        }
    }
}

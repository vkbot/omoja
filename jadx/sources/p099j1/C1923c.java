package p099j1;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.chery.ivi.vdb.event.p035id.p036vr.bean.VDP2P;
import com.example.navistart.ActivityC1081W;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;
import p047e0.AbstractC1387m;
import p058f1.C1532e;
import p078h0.C1652b;
import p206u0.C3277a;

/* JADX INFO: renamed from: j1.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1923c implements InterfaceC1941u {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5078b;

    public /* synthetic */ C1923c(int i10) {
        this.f5078b = i10;
    }

    @Override // p099j1.InterfaceC1941u
    /* JADX INFO: renamed from: c */
    public final void mo457c(Context context) {
        switch (this.f5078b) {
            case 0:
                C1925e.m3018i(C1925e.f5127t);
                break;
            case 1:
                String str = C1925e.f5110c;
                try {
                    Bundle bundle = new Bundle();
                    bundle.putParcelable(AbstractC1387m.m2421h(new byte[]{22, -109, 56, -50}, new byte[]{114, -14, 76, -81, -118, 14, 21, 25}), new VDP2P(AbstractC1387m.m2421h(new byte[]{-84, 40, 4, -43, 126, -51, -75, 117, -88, 40, 0, -64, 124, -39, -113, 118, -67}, new byte[]{-55, 70, 97, -89, 25, -76, -22, 24}), 5511, "", true));
                    context.getContentResolver().call(C1925e.f5109B, AbstractC1387m.m2421h(new byte[]{27, -24, 54, -88}, new byte[]{116, -104, 83, -58, -87, 42, 117, 112}), (String) null, bundle);
                } catch (Throwable th) {
                    Log.e(AbstractC1387m.m2421h(new byte[]{65, 17, -119, -68, -36, -54, -64, 67, 108, 23, -66, -73}, new byte[]{2, 112, -5, -17, -71, -66, -76, 42}), AbstractC1387m.m2421h(new byte[]{106, 10, -21, -68, -87, 65, 40, 36, 80, 68, -27, -82, -96, 74, 40, 0, 119, 33, -36, -2, -96, 74, 109, 34, 88, 29, -86, -77, -92, 74, 105, 55, 90, 9, -17, -80, -79}, new byte[]{63, 100, -118, -34, -59, 36, 8, 80}), th);
                    return;
                }
                break;
            case 2:
                C1925e.m3018i(C1925e.f5128u);
                break;
            case 3:
                C1925e.m3018i(C1925e.f5129v);
                break;
            case 4:
                C1925e.m3018i(C1925e.f5130w);
                break;
            case 5:
                C1925e.m3018i(C1925e.f5131x);
                break;
            case 6:
                C1925e.m3018i(C1925e.f5132y);
                break;
            case 7:
                C1925e.m3018i(C1925e.f5133z);
                break;
            case 8:
                C1925e.m3018i(C1925e.f5108A);
                break;
            case 9:
                C1925e.m3018i(C1925e.f5111d);
                break;
            case 10:
                C1925e.m3018i(C1925e.f5118k);
                break;
            case 11:
                C1925e.m3018i(C1925e.f5112e);
                break;
            case 12:
                C1925e.m3018i(C1925e.f5113f);
                break;
            case 13:
                C1925e.m3018i(C1925e.f5110c);
                break;
            case 14:
                C1925e.m3018i(C1925e.f5114g);
                break;
            case 15:
                C1925e.m3018i(C1925e.f5115h);
                break;
            case 16:
                C1925e.m3018i(C1925e.f5116i);
                break;
            case 17:
                C1925e.m3018i(C1925e.f5117j);
                break;
            case 18:
                C1925e.m3018i(C1925e.f5119l);
                break;
            case 19:
                C1925e.m3018i(C1925e.f5120m);
                break;
            case 20:
                C1925e.m3018i(C1925e.f5121n);
                break;
            case 21:
                C1925e.m3018i(C1925e.f5122o);
                break;
            case 22:
                C1925e.m3018i(C1925e.f5123p);
                break;
            case 23:
                C1925e.m3018i(C1925e.f5124q);
                break;
            case 24:
                C1925e.m3018i(C1925e.f5125r);
                break;
            case 25:
                C1925e.m3018i(C1925e.f5126s);
                break;
            case 26:
                Bundle bundle2 = new Bundle();
                String strM2421h = AbstractC1387m.m2421h(new byte[]{22, -127, 58}, new byte[]{114, -24, 73, -119, 3, -122, -50, 88});
                C1652b.m2734a();
                bundle2.putInt(strM2421h, C1652b.m2744n().getGuDisplayID());
                ActivityC1081W.m1609t(context, C1532e.class, bundle2);
                break;
            case 27:
                C3277a c3277aM2745o = C1652b.m2745o();
                String str2 = C1932l.f5220e;
                boolean zLoadBoolean = c3277aM2745o.loadBoolean(str2, false);
                boolean z9 = !zLoadBoolean;
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{49, 51, 86}, new byte[]{82, 94, 50, -87, -122, -82, -28, -86}), !zLoadBoolean ? AbstractC1387m.m2421h(new byte[]{106, 86, -121, 17, 65, -13, -32, 30, ByteCompanionObject.MAX_VALUE, 81, -116, 47, 85, -10, -30, 47, 107, 75, ByteCompanionObject.MIN_VALUE, 21}, new byte[]{14, 63, -12, 112, 35, -97, -123, 65}) : AbstractC1387m.m2421h(new byte[]{112, 24, -30, -92, -3, 51, 70, 13, 123, 14, -36, -80, -8, 49, 119, 25, 97, 2, -26}, new byte[]{21, 118, -125, -58, -111, 86, 25, 124}));
                    C1652b.m2734a();
                    JSONObject jSONObjectM1618c = C1652b.m2736d().m1618c(jSONObject);
                    if (jSONObjectM1618c != null && jSONObjectM1618c.optBoolean(AbstractC1387m.m2421h(new byte[]{-76, -69, -60, 45, 20, -47, 9}, new byte[]{-57, -50, -89, 78, 113, -94, 122, -112}), false)) {
                        C1652b.m2745o().saveBoolean(str2, z9);
                        break;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            case 28:
                ActivityC1081W.m1609t(context, C1532e.class, null);
                break;
            default:
                C1931k.m3032i(1, 100);
                break;
        }
    }
}

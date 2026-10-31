package x0;

import androidx.recyclerview.widget.ItemTouchHelper$Callback;
import java.util.ArrayList;
import java.util.UUID;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f6006g;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f6015p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f6016q;
    public int r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f6017s;
    public boolean t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f6003a = UUID.randomUUID().toString();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f6004b = e0.m.h(new byte[]{-55, -75, -114, 70, 40, -35, -12, -6, -85, -7, -26, 40, 76, -76, 98, -6, -84, -8, -36}, new byte[]{25, 41, 94, -8, -8, 100, -44, 42});
    public boolean c = true;
    public boolean d = true;
    public boolean e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f6005f = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6007h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6008i = 10;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f6009j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f6010k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f6011l = 100;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f6012m = 100;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f6013n = 128;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f6014o = 88;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ArrayList f6018u = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int a(int i9, int i10, int i11) {
        return Math.max(i10, Math.min(i11, i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static o e(JSONObject jSONObject) {
        o oVar = new o();
        oVar.f6003a = jSONObject.optString(e0.m.h(new byte[]{-65, -76}, new byte[]{-42, -48, -10, -13, -88, 102, -69, -51}), oVar.f6003a);
        oVar.f6004b = jSONObject.optString(e0.m.h(new byte[]{-17, -108, 50, -103}, new byte[]{-127, -11, 95, -4, -73, -22, 0, -70}), oVar.f6004b);
        oVar.c = jSONObject.optBoolean(e0.m.h(new byte[]{23, -77, 120, -102, -60, 84, 33}, new byte[]{114, -35, 25, -8, -88, 49, 69, 63}), true);
        oVar.d = jSONObject.optBoolean(e0.m.h(new byte[]{1, -9, 100, -35, -112, Base64.padSymbol, -34, 97, 8, -22}, new byte[]{100, -113, 20, -68, -2, 89, -65, 3}), true);
        oVar.e = jSONObject.optBoolean(e0.m.h(new byte[]{-74, 17, -68, -24, 20, 21}, new byte[]{-59, 96, -55, -119, 102, 112, -10, 118}));
        oVar.f6005f = jSONObject.optBoolean(e0.m.h(new byte[]{-114, 58, 118, -6, -113, -46, -25, -112, -114, 63, 113, -16}, new byte[]{-17, 79, 2, -107, -52, -67, -117, -4}));
        oVar.f6007h = jSONObject.optInt(e0.m.h(new byte[]{-16, 103, -12, -126, 38, 60, -78, 9, -16}, new byte[]{-108, 14, -121, -14, 74, 93, -53, 64}));
        oVar.f6008i = jSONObject.optInt(e0.m.h(new byte[]{-93, -126, 47, -105, -100, 14, 5}, new byte[]{-48, -25, 76, -8, -14, 106, 118, 5}), 10);
        oVar.f6009j = jSONObject.optInt(e0.m.h(new byte[]{82, -114, 57, -65, -77, -88, -56, 79, 67, -110, 59, -88}, new byte[]{38, -4, 88, -47, -64, -40, -87, Base64.padSymbol}), 0);
        oVar.f6010k = jSONObject.optInt(e0.m.h(new byte[]{96, 81, ByteCompanionObject.MAX_VALUE, 20, 46, 80, -30, 43, 108, 84, 72, 13, 40, 76, -2, 46, 99, 66, 121, 17, 42, 91}, new byte[]{2, 48, 28, ByteCompanionObject.MAX_VALUE, 73, 34, -115, 94}), 0);
        oVar.f6011l = jSONObject.optInt(e0.m.h(new byte[]{-87, 71, 63, -55, 14, 123, -117, -60, -97, 86, 53, -51}, new byte[]{-52, 63, 79, -88, 96, 31, -18, -96}), 100);
        oVar.f6012m = jSONObject.optInt(e0.m.h(new byte[]{7, -38, 88, 102, 84, -7, -74, 126, 0, -26, 93, 112, 80}, new byte[]{100, -75, 52, 10, 53, -119, -59, 27}), 100);
        oVar.f6013n = jSONObject.optInt(e0.m.h(new byte[]{70, -31, 18, 74, 73, 56, -61}, new byte[]{46, ByteCompanionObject.MIN_VALUE, 124, 46, 37, 93, -101, -92}), 128);
        oVar.f6014o = jSONObject.optInt(e0.m.h(new byte[]{26, -121, -6, 105, 47, 14, -119}, new byte[]{114, -26, -108, 13, 67, 107, -48, -70}), 88);
        oVar.f6015p = Math.max(0, jSONObject.optInt(e0.m.h(new byte[]{62, 93, 59, 8, -8, 32, -97, -47, 46, 68, 51, 29, -13, 22, -110, -8, 58}, new byte[]{95, 49, 82, 111, -106, 69, -5, -126})));
        oVar.f6016q = Math.max(0, jSONObject.optInt(e0.m.h(new byte[]{44, -57, -49, -31, -17, 118, 51, 120, 44, -59, -61, -22, -55, 118, 62, 79, 37, -33}, new byte[]{77, -85, -90, -122, -127, 19, 87, 40})));
        oVar.f6006g = jSONObject.optBoolean(e0.m.h(new byte[]{-36, 34, 120, 120, 114, -112, 10, 40, -37, 30, 101, 97, 114, -110, 28}, new byte[]{-65, 77, 20, 20, 19, -32, 121, 77}), false);
        oVar.r = Math.max(0, jSONObject.optInt(e0.m.h(new byte[]{-46, 78, -6, -13, -92, -53, -94, -47, -36, 78, -1, -11, -70, -35, -93, -10, -32, 83, -26, -11, -72, -53, -107, -5, -55, 71}, new byte[]{-77, 34, -109, -108, -54, -82, -58, -110})));
        oVar.f6017s = Math.max(0, jSONObject.optInt(e0.m.h(new byte[]{41, 114, -108, -20, 32, -62, -43, 20, 39, 114, -111, -22, 62, -44, -44, 51, 24, ByteCompanionObject.MAX_VALUE, -109, -18, 34, -17, -44, 62, 47, 118, -119}, new byte[]{72, 30, -3, -117, 78, -89, -79, 87})));
        oVar.t = jSONObject.optBoolean(e0.m.h(new byte[]{38, 5, -76, 106, ByteCompanionObject.MAX_VALUE, -2, 110, -88, 13, 1, -76, 122, 118, -23}, new byte[]{69, 96, -38, 30, 26, -116, 11, -52}));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(e0.m.h(new byte[]{24, 109, Base64.padSymbol, -79, 29, -3, 98, -94}, new byte[]{125, 1, 88, -36, 120, -109, 22, -47}));
        if (jSONArrayOptJSONArray != null) {
            for (int i9 = 0; i9 < jSONArrayOptJSONArray.length(); i9++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i9);
                if (jSONObjectOptJSONObject != null) {
                    m mVar = new m();
                    try {
                        mVar.c = n.valueOf(jSONObjectOptJSONObject.optString(e0.m.h(new byte[]{-29, 53, 9, -31}, new byte[]{-105, 76, 121, -124, 116, 124, -14, 28}), e0.m.h(new byte[]{14, 72, -109, 112, -74, -5}, new byte[]{76, 29, -57, 36, -7, -75, -87, 18})));
                        mVar.f5993a = jSONObjectOptJSONObject.optString(e0.m.h(new byte[]{-8, 65}, new byte[]{-111, 37, -40, -14, 107, 31, -55, -96}), mVar.f5993a);
                        mVar.f5994b = jSONObjectOptJSONObject.optString(e0.m.h(new byte[]{100, -117, 111, 36, 71}, new byte[]{8, -22, 13, 65, 43, -19, 83, 85}), mVar.f5994b);
                        mVar.d = jSONObjectOptJSONObject.optString(e0.m.h(new byte[]{-89, 124, -58, -103, -13, -80}, new byte[]{-58, 31, -78, -16, -100, -34, 34, 47}), mVar.d);
                        mVar.e = jSONObjectOptJSONObject.optString(e0.m.h(new byte[]{-67, 117, -76, -22, -61, -17, 18, -108, -68}, new byte[]{-46, 19, -46, -85, -96, -101, 123, -5}), mVar.e);
                        mVar.f5995f = jSONObjectOptJSONObject.optBoolean(e0.m.h(new byte[]{-6, 60, 20, -106, 110, 39, 94, -33, -3}, new byte[]{-103, 83, 120, -6, 15, 87, 45, -70}));
                        mVar.f5996g = jSONObjectOptJSONObject.optInt(e0.m.h(new byte[]{-26}, new byte[]{-98, -51, 67, 98, -123, 103, -99, -61}), 16);
                        mVar.f5997h = jSONObjectOptJSONObject.optInt(e0.m.h(new byte[]{-97}, new byte[]{-26, -118, -115, -83, -109, 89, -85, 32}), 52);
                        mVar.f5998i = jSONObjectOptJSONObject.optInt(e0.m.h(new byte[]{-82, 17}, new byte[]{-51, 105, 38, 75, -119, -33, -40, 83}), 16);
                        mVar.f5999j = jSONObjectOptJSONObject.optInt(e0.m.h(new byte[]{-31, -74}, new byte[]{-126, -49, -60, -89, -13, -105, -5, -60}), 16);
                        oVar.f6018u.add(mVar);
                    } catch (IllegalArgumentException unused) {
                    }
                }
            }
        }
        oVar.b();
        return oVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        this.f6008i = Math.max(1, Math.min(3600, this.f6008i));
        this.f6009j = a(this.f6009j, 0, 100);
        this.f6010k = a(this.f6010k, 0, 100);
        this.f6011l = a(this.f6011l, 50, ItemTouchHelper$Callback.DEFAULT_DRAG_ANIMATION_DURATION);
        this.f6012m = a(this.f6012m, 50, ItemTouchHelper$Callback.DEFAULT_DRAG_ANIMATION_DURATION);
        this.f6013n = a(this.f6013n, 0, f(false) - 64);
        this.f6014o = a(this.f6014o, 0, c(false) - 64);
        ArrayList arrayList = this.f6018u;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            m mVar = (m) obj;
            mVar.f5996g = a(mVar.f5996g, 0, f(true) - mVar.b());
            mVar.f5997h = a(mVar.f5997h, 40, c(true) - mVar.a());
            mVar.f5998i = a(mVar.f5998i, 0, f(false) - mVar.b());
            mVar.f5999j = a(mVar.f5999j, 0, c(false) - mVar.a());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c(boolean z8) {
        if (z8) {
            return this.e ? Math.max(320, this.f6015p) : Math.max(176, this.f6016q);
        }
        return this.f6006g ? Math.max(320, this.r) : Math.max(240, this.f6017s);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final JSONObject d() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(e0.m.h(new byte[]{-75, -117}, new byte[]{-36, -17, 54, 121, -12, 17, -24, -117}), this.f6003a).put(e0.m.h(new byte[]{-98, -60, -83, -121}, new byte[]{-16, -91, -64, -30, 83, 75, 53, -106}), this.f6004b).put(e0.m.h(new byte[]{0, -70, 64, -85, 23, 64, 124}, new byte[]{101, -44, 33, -55, 123, 37, 24, -21}), this.c).put(e0.m.h(new byte[]{-35, -61, -17, -45, 122, 125, 27, 31, -44, -34}, new byte[]{-72, -69, -97, -78, 20, 25, 122, 125}), this.d).put(e0.m.h(new byte[]{-45, 71, 125, 43, -82, -100}, new byte[]{-96, 54, 8, 74, -36, -7, -58, -77}), this.e).put(e0.m.h(new byte[]{24, 21, -122, -60, -51, -25, 58, 64, 24, 16, -127, -50}, new byte[]{121, 96, -14, -85, -114, -120, 86, 44}), this.f6005f).put(e0.m.h(new byte[]{ByteCompanionObject.MIN_VALUE, 21, 111, -4, 15, -47, -119, -29, ByteCompanionObject.MIN_VALUE}, new byte[]{-28, 124, 28, -116, 99, -80, -16, -86}), this.f6007h).put(e0.m.h(new byte[]{-61, 5, 126, 126, 1, -58, -1}, new byte[]{-80, 96, 29, 17, 111, -94, -116, 88}), this.f6008i).put(e0.m.h(new byte[]{92, 52, 52, 24, 93, -33, 41, -125, 77, 40, 54, 15}, new byte[]{40, 70, 85, 118, 46, -81, 72, -15}), this.f6009j).put(e0.m.h(new byte[]{101, 50, -73, 71, -86, -84, -116, -57, 105, 55, ByteCompanionObject.MIN_VALUE, 94, -84, -80, -112, -62, 102, 33, -79, 66, -82, -89}, new byte[]{7, 83, -44, 44, -51, -34, -29, -78}), this.f6010k).put(e0.m.h(new byte[]{-93, 54, ByteCompanionObject.MAX_VALUE, 15, 79, -95, 93}, new byte[]{-53, 87, 17, 107, 35, -60, 5, 31}), this.f6013n).put(e0.m.h(new byte[]{47, -88, -57, 60, 93, -115, -88}, new byte[]{71, -55, -87, 88, 49, -24, -15, -125}), this.f6014o);
        jSONObject.put(e0.m.h(new byte[]{-5, 19, 20, 69, -37, 79, -6, 88, -21, 10, 28, 80, -48, 121, -9, 113, -1}, new byte[]{-102, ByteCompanionObject.MAX_VALUE, 125, 34, -75, 42, -98, 11}), this.f6015p).put(e0.m.h(new byte[]{-75, 115, -126, 65, -81, -111, -113, 114, -75, 113, -114, 74, -119, -111, -126, 69, -68, 107}, new byte[]{-44, 31, -21, 38, -63, -12, -21, 34}), this.f6016q).put(e0.m.h(new byte[]{-46, -20, 25, 85, 55, -70, 43, 28, -7, -24, 25, 69, 62, -83}, new byte[]{-79, -119, 119, 33, 82, -56, 78, 120}), this.t);
        jSONObject.put(e0.m.h(new byte[]{-30, 79, -76, 2, 50, 107, -5, -23, -27, 115, -87, 27, 50, 105, -19}, new byte[]{-127, 32, -40, 110, 83, 27, -120, -116}), this.f6006g).put(e0.m.h(new byte[]{-109, -32, -31, 76, -82, -95, -96, -96, -99, -32, -28, 74, -80, -73, -95, -121, -95, -3, -3, 74, -78, -95, -105, -118, -120, -23}, new byte[]{-14, -116, -120, 43, -64, -60, -60, -29}), this.r).put(e0.m.h(new byte[]{Base64.padSymbol, -96, -65, 27, 1, 45, 21, 97, 51, -96, -70, 29, 31, 59, 20, 70, 12, -83, -72, 25, 3, 0, 20, 75, 59, -92, -94}, new byte[]{92, -52, -42, 124, 111, 72, 113, 34}), this.f6017s);
        jSONObject.put(e0.m.h(new byte[]{-122, 116, 126, 4, -104, -84, 65, -31, -80, 101, 116, 0}, new byte[]{-29, 12, 14, 101, -10, -56, 36, -123}), this.f6011l).put(e0.m.h(new byte[]{85, 72, -91, 83, -70, -90, 20, 78, 82, 116, -96, 69, -66}, new byte[]{54, 39, -55, 63, -37, -42, 103, 43}), this.f6012m);
        JSONArray jSONArray = new JSONArray();
        ArrayList arrayList = this.f6018u;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            m mVar = (m) obj;
            jSONArray.put(new JSONObject().put(e0.m.h(new byte[]{101, -116}, new byte[]{12, -24, 9, -117, 94, -88, -36, -122}), mVar.f5993a).put(e0.m.h(new byte[]{65, -23, 17, 119, -50}, new byte[]{45, -120, 115, 18, -94, 107, 42, -58}), mVar.f5994b).put(e0.m.h(new byte[]{-7, 80, 89, -24}, new byte[]{-115, 41, 41, -115, -62, -121, -41, 59}), mVar.c.name()).put(e0.m.h(new byte[]{-39, -19, 62, -51, -91, 117}, new byte[]{-72, -114, 74, -92, -54, 27, -78, -50}), mVar.d).put(e0.m.h(new byte[]{75, 9, -105, -72, -90, -74, 45, 95, 74}, new byte[]{36, 111, -15, -7, -59, -62, 68, 48}), mVar.e).put(e0.m.h(new byte[]{-113, 22, 62, 77, -19, 118, 75, -114, -120}, new byte[]{-20, 121, 82, 33, -116, 6, 56, -21}), mVar.f5995f).put(e0.m.h(new byte[]{34}, new byte[]{90, 102, -6, -52, 90, 125, 51, -64}), mVar.f5996g).put(e0.m.h(new byte[]{-89}, new byte[]{-34, -47, -36, 9, -83, -89, -99, -28}), mVar.f5997h).put(e0.m.h(new byte[]{-8, 37}, new byte[]{-101, 93, -90, -77, -102, 81, -19, -4}), mVar.f5998i).put(e0.m.h(new byte[]{42, -118}, new byte[]{73, -13, 102, -92, -91, -127, -26, 45}), mVar.f5999j));
        }
        return jSONObject.put(e0.m.h(new byte[]{-75, -45, -44, 93, -1, -60, -89, 52}, new byte[]{-48, -65, -79, 48, -102, -86, -45, 71}), jSONArray);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int f(boolean z8) {
        if (z8) {
            if (this.e) {
                return Math.max(320, this.f6015p);
            }
            return 480;
        }
        if (this.f6006g) {
            return Math.max(320, this.r);
        }
        return 480;
    }
}

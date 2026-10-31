package p235x0;

import java.util.ArrayList;
import java.util.UUID;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.apache.commons.net.nntp.NNTPReply;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: x0.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3561o {

    /* JADX INFO: renamed from: g */
    public boolean f10600g;

    /* JADX INFO: renamed from: p */
    public int f10609p;

    /* JADX INFO: renamed from: q */
    public int f10610q;

    /* JADX INFO: renamed from: r */
    public int f10611r;

    /* JADX INFO: renamed from: s */
    public int f10612s;

    /* JADX INFO: renamed from: t */
    public boolean f10613t;

    /* JADX INFO: renamed from: a */
    public String f10594a = UUID.randomUUID().toString();

    /* JADX INFO: renamed from: b */
    public String f10595b = AbstractC1387m.m2421h(new byte[]{-55, -75, -114, 70, 40, -35, -12, -6, -85, -7, -26, 40, 76, -76, 98, -6, -84, -8, -36}, new byte[]{25, 41, 94, -8, -8, 100, -44, 42});

    /* JADX INFO: renamed from: c */
    public boolean f10596c = true;

    /* JADX INFO: renamed from: d */
    public boolean f10597d = true;

    /* JADX INFO: renamed from: e */
    public boolean f10598e = false;

    /* JADX INFO: renamed from: f */
    public boolean f10599f = false;

    /* JADX INFO: renamed from: h */
    public int f10601h = 0;

    /* JADX INFO: renamed from: i */
    public int f10602i = 10;

    /* JADX INFO: renamed from: j */
    public int f10603j = 0;

    /* JADX INFO: renamed from: k */
    public int f10604k = 0;

    /* JADX INFO: renamed from: l */
    public int f10605l = 100;

    /* JADX INFO: renamed from: m */
    public int f10606m = 100;

    /* JADX INFO: renamed from: n */
    public int f10607n = 128;

    /* JADX INFO: renamed from: o */
    public int f10608o = 88;

    /* JADX INFO: renamed from: u */
    public final ArrayList f10614u = new ArrayList();

    /* JADX INFO: renamed from: a */
    public static int m5675a(int i10, int i11, int i12) {
        return Math.max(i11, Math.min(i12, i10));
    }

    /* JADX INFO: renamed from: e */
    public static C3561o m5676e(JSONObject jSONObject) {
        C3561o c3561o = new C3561o();
        c3561o.f10594a = jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-65, -76}, new byte[]{-42, -48, -10, -13, -88, 102, -69, -51}), c3561o.f10594a);
        c3561o.f10595b = jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-17, -108, 50, -103}, new byte[]{-127, -11, 95, -4, -73, -22, 0, -70}), c3561o.f10595b);
        c3561o.f10596c = jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{23, -77, 120, -102, -60, 84, 33}, new byte[]{114, -35, 25, -8, -88, 49, 69, 63}), true);
        c3561o.f10597d = jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{1, -9, 100, -35, -112, Base64.padSymbol, -34, 97, 8, -22}, new byte[]{100, -113, 20, -68, -2, 89, -65, 3}), true);
        c3561o.f10598e = jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{-74, 17, -68, -24, 20, 21}, new byte[]{-59, 96, -55, -119, 102, 112, -10, 118}));
        c3561o.f10599f = jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{-114, 58, 118, -6, -113, -46, -25, -112, -114, 63, 113, -16}, new byte[]{-17, 79, 2, -107, -52, -67, -117, -4}));
        c3561o.f10601h = jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{-16, 103, -12, -126, 38, 60, -78, 9, -16}, new byte[]{-108, 14, -121, -14, 74, 93, -53, 64}));
        c3561o.f10602i = jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{-93, -126, 47, -105, -100, 14, 5}, new byte[]{-48, -25, 76, -8, -14, 106, 118, 5}), 10);
        c3561o.f10603j = jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{82, -114, 57, -65, -77, -88, -56, 79, 67, -110, 59, -88}, new byte[]{38, -4, 88, -47, -64, -40, -87, Base64.padSymbol}), 0);
        c3561o.f10604k = jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{96, 81, ByteCompanionObject.MAX_VALUE, 20, 46, 80, -30, 43, 108, 84, 72, 13, 40, 76, -2, 46, 99, 66, 121, 17, 42, 91}, new byte[]{2, 48, 28, ByteCompanionObject.MAX_VALUE, 73, 34, -115, 94}), 0);
        c3561o.f10605l = jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{-87, 71, 63, -55, 14, 123, -117, -60, -97, 86, 53, -51}, new byte[]{-52, 63, 79, -88, 96, 31, -18, -96}), 100);
        c3561o.f10606m = jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{7, -38, 88, 102, 84, -7, -74, 126, 0, -26, 93, 112, 80}, new byte[]{100, -75, 52, 10, 53, -119, -59, 27}), 100);
        c3561o.f10607n = jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{70, -31, 18, 74, 73, 56, -61}, new byte[]{46, ByteCompanionObject.MIN_VALUE, 124, 46, 37, 93, -101, -92}), 128);
        c3561o.f10608o = jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{26, -121, -6, 105, 47, 14, -119}, new byte[]{114, -26, -108, 13, 67, 107, -48, -70}), 88);
        c3561o.f10609p = Math.max(0, jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{62, 93, 59, 8, -8, 32, -97, -47, 46, 68, 51, 29, -13, 22, -110, -8, 58}, new byte[]{95, 49, 82, 111, -106, 69, -5, -126})));
        c3561o.f10610q = Math.max(0, jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{44, -57, -49, -31, -17, 118, 51, 120, 44, -59, -61, -22, -55, 118, 62, 79, 37, -33}, new byte[]{77, -85, -90, -122, -127, 19, 87, 40})));
        c3561o.f10600g = jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{-36, 34, 120, 120, 114, -112, 10, 40, -37, 30, 101, 97, 114, -110, 28}, new byte[]{-65, 77, 20, 20, 19, -32, 121, 77}), false);
        c3561o.f10611r = Math.max(0, jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{-46, 78, -6, -13, -92, -53, -94, -47, -36, 78, -1, -11, -70, -35, -93, -10, -32, 83, -26, -11, -72, -53, -107, -5, -55, 71}, new byte[]{-77, 34, -109, -108, -54, -82, -58, -110})));
        c3561o.f10612s = Math.max(0, jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{41, 114, -108, -20, 32, -62, -43, 20, 39, 114, -111, -22, 62, -44, -44, 51, 24, ByteCompanionObject.MAX_VALUE, -109, -18, 34, -17, -44, 62, 47, 118, -119}, new byte[]{72, 30, -3, -117, 78, -89, -79, 87})));
        c3561o.f10613t = jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{38, 5, -76, 106, ByteCompanionObject.MAX_VALUE, -2, 110, -88, 13, 1, -76, 122, 118, -23}, new byte[]{69, 96, -38, 30, 26, -116, 11, -52}));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(AbstractC1387m.m2421h(new byte[]{24, 109, Base64.padSymbol, -79, 29, -3, 98, -94}, new byte[]{125, 1, 88, -36, 120, -109, 22, -47}));
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
                if (jSONObjectOptJSONObject != null) {
                    C3559m c3559m = new C3559m();
                    try {
                        c3559m.f10580c = EnumC3560n.valueOf(jSONObjectOptJSONObject.optString(AbstractC1387m.m2421h(new byte[]{-29, 53, 9, -31}, new byte[]{-105, 76, 121, -124, 116, 124, -14, 28}), AbstractC1387m.m2421h(new byte[]{14, 72, -109, 112, -74, -5}, new byte[]{76, 29, -57, 36, -7, -75, -87, 18})));
                        c3559m.f10578a = jSONObjectOptJSONObject.optString(AbstractC1387m.m2421h(new byte[]{-8, 65}, new byte[]{-111, 37, -40, -14, 107, 31, -55, -96}), c3559m.f10578a);
                        c3559m.f10579b = jSONObjectOptJSONObject.optString(AbstractC1387m.m2421h(new byte[]{100, -117, 111, 36, 71}, new byte[]{8, -22, 13, 65, 43, -19, 83, 85}), c3559m.f10579b);
                        c3559m.f10581d = jSONObjectOptJSONObject.optString(AbstractC1387m.m2421h(new byte[]{-89, 124, -58, -103, -13, -80}, new byte[]{-58, 31, -78, -16, -100, -34, 34, 47}), c3559m.f10581d);
                        c3559m.f10582e = jSONObjectOptJSONObject.optString(AbstractC1387m.m2421h(new byte[]{-67, 117, -76, -22, -61, -17, 18, -108, -68}, new byte[]{-46, 19, -46, -85, -96, -101, 123, -5}), c3559m.f10582e);
                        c3559m.f10583f = jSONObjectOptJSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{-6, 60, 20, -106, 110, 39, 94, -33, -3}, new byte[]{-103, 83, 120, -6, 15, 87, 45, -70}));
                        c3559m.f10584g = jSONObjectOptJSONObject.optInt(AbstractC1387m.m2421h(new byte[]{-26}, new byte[]{-98, -51, 67, 98, -123, 103, -99, -61}), 16);
                        c3559m.f10585h = jSONObjectOptJSONObject.optInt(AbstractC1387m.m2421h(new byte[]{-97}, new byte[]{-26, -118, -115, -83, -109, 89, -85, 32}), 52);
                        c3559m.f10586i = jSONObjectOptJSONObject.optInt(AbstractC1387m.m2421h(new byte[]{-82, 17}, new byte[]{-51, 105, 38, 75, -119, -33, -40, 83}), 16);
                        c3559m.f10587j = jSONObjectOptJSONObject.optInt(AbstractC1387m.m2421h(new byte[]{-31, -74}, new byte[]{-126, -49, -60, -89, -13, -105, -5, -60}), 16);
                        c3561o.f10614u.add(c3559m);
                    } catch (IllegalArgumentException unused) {
                    }
                }
            }
        }
        c3561o.m5677b();
        return c3561o;
    }

    /* JADX INFO: renamed from: b */
    public final void m5677b() {
        this.f10602i = Math.max(1, Math.min(3600, this.f10602i));
        this.f10603j = m5675a(this.f10603j, 0, 100);
        this.f10604k = m5675a(this.f10604k, 0, 100);
        this.f10605l = m5675a(this.f10605l, 50, 200);
        this.f10606m = m5675a(this.f10606m, 50, 200);
        this.f10607n = m5675a(this.f10607n, 0, m5680f(false) - 64);
        this.f10608o = m5675a(this.f10608o, 0, m5678c(false) - 64);
        ArrayList arrayList = this.f10614u;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C3559m c3559m = (C3559m) obj;
            c3559m.f10584g = m5675a(c3559m.f10584g, 0, m5680f(true) - c3559m.m5674b());
            c3559m.f10585h = m5675a(c3559m.f10585h, 40, m5678c(true) - c3559m.m5673a());
            c3559m.f10586i = m5675a(c3559m.f10586i, 0, m5680f(false) - c3559m.m5674b());
            c3559m.f10587j = m5675a(c3559m.f10587j, 0, m5678c(false) - c3559m.m5673a());
        }
    }

    /* JADX INFO: renamed from: c */
    public final int m5678c(boolean z9) {
        if (z9) {
            return this.f10598e ? Math.max(320, this.f10609p) : Math.max(176, this.f10610q);
        }
        return this.f10600g ? Math.max(320, this.f10611r) : Math.max(240, this.f10612s);
    }

    /* JADX INFO: renamed from: d */
    public final JSONObject m5679d() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-75, -117}, new byte[]{-36, -17, 54, 121, -12, 17, -24, -117}), this.f10594a).put(AbstractC1387m.m2421h(new byte[]{-98, -60, -83, -121}, new byte[]{-16, -91, -64, -30, 83, 75, 53, -106}), this.f10595b).put(AbstractC1387m.m2421h(new byte[]{0, -70, 64, -85, 23, 64, 124}, new byte[]{101, -44, 33, -55, 123, 37, 24, -21}), this.f10596c).put(AbstractC1387m.m2421h(new byte[]{-35, -61, -17, -45, 122, 125, 27, 31, -44, -34}, new byte[]{-72, -69, -97, -78, 20, 25, 122, 125}), this.f10597d).put(AbstractC1387m.m2421h(new byte[]{-45, 71, 125, 43, -82, -100}, new byte[]{-96, 54, 8, 74, -36, -7, -58, -77}), this.f10598e).put(AbstractC1387m.m2421h(new byte[]{24, 21, -122, -60, -51, -25, 58, 64, 24, 16, -127, -50}, new byte[]{121, 96, -14, -85, -114, -120, 86, 44}), this.f10599f).put(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, 21, 111, -4, 15, -47, -119, -29, ByteCompanionObject.MIN_VALUE}, new byte[]{-28, 124, 28, -116, 99, -80, -16, -86}), this.f10601h).put(AbstractC1387m.m2421h(new byte[]{-61, 5, 126, 126, 1, -58, -1}, new byte[]{-80, 96, 29, 17, 111, -94, -116, 88}), this.f10602i).put(AbstractC1387m.m2421h(new byte[]{92, 52, 52, 24, 93, -33, 41, -125, 77, 40, 54, 15}, new byte[]{40, 70, 85, 118, 46, -81, 72, -15}), this.f10603j).put(AbstractC1387m.m2421h(new byte[]{101, 50, -73, 71, -86, -84, -116, -57, 105, 55, ByteCompanionObject.MIN_VALUE, 94, -84, -80, -112, -62, 102, 33, -79, 66, -82, -89}, new byte[]{7, 83, -44, 44, -51, -34, -29, -78}), this.f10604k).put(AbstractC1387m.m2421h(new byte[]{-93, 54, ByteCompanionObject.MAX_VALUE, 15, 79, -95, 93}, new byte[]{-53, 87, 17, 107, 35, -60, 5, 31}), this.f10607n).put(AbstractC1387m.m2421h(new byte[]{47, -88, -57, 60, 93, -115, -88}, new byte[]{71, -55, -87, 88, 49, -24, -15, -125}), this.f10608o);
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-5, 19, 20, 69, -37, 79, -6, 88, -21, 10, 28, 80, -48, 121, -9, 113, -1}, new byte[]{-102, ByteCompanionObject.MAX_VALUE, 125, 34, -75, 42, -98, 11}), this.f10609p).put(AbstractC1387m.m2421h(new byte[]{-75, 115, -126, 65, -81, -111, -113, 114, -75, 113, -114, 74, -119, -111, -126, 69, -68, 107}, new byte[]{-44, 31, -21, 38, -63, -12, -21, 34}), this.f10610q).put(AbstractC1387m.m2421h(new byte[]{-46, -20, 25, 85, 55, -70, 43, 28, -7, -24, 25, 69, 62, -83}, new byte[]{-79, -119, 119, 33, 82, -56, 78, 120}), this.f10613t);
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-30, 79, -76, 2, 50, 107, -5, -23, -27, 115, -87, 27, 50, 105, -19}, new byte[]{-127, 32, -40, 110, 83, 27, -120, -116}), this.f10600g).put(AbstractC1387m.m2421h(new byte[]{-109, -32, -31, 76, -82, -95, -96, -96, -99, -32, -28, 74, -80, -73, -95, -121, -95, -3, -3, 74, -78, -95, -105, -118, -120, -23}, new byte[]{-14, -116, -120, 43, -64, -60, -60, -29}), this.f10611r).put(AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, -96, -65, 27, 1, 45, 21, 97, 51, -96, -70, 29, 31, 59, 20, 70, 12, -83, -72, 25, 3, 0, 20, 75, 59, -92, -94}, new byte[]{92, -52, -42, 124, 111, 72, 113, 34}), this.f10612s);
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-122, 116, 126, 4, -104, -84, 65, -31, -80, 101, 116, 0}, new byte[]{-29, 12, 14, 101, -10, -56, 36, -123}), this.f10605l).put(AbstractC1387m.m2421h(new byte[]{85, 72, -91, 83, -70, -90, 20, 78, 82, 116, -96, 69, -66}, new byte[]{54, 39, -55, 63, -37, -42, 103, 43}), this.f10606m);
        JSONArray jSONArray = new JSONArray();
        ArrayList arrayList = this.f10614u;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C3559m c3559m = (C3559m) obj;
            jSONArray.put(new JSONObject().put(AbstractC1387m.m2421h(new byte[]{101, -116}, new byte[]{12, -24, 9, -117, 94, -88, -36, -122}), c3559m.f10578a).put(AbstractC1387m.m2421h(new byte[]{65, -23, 17, 119, -50}, new byte[]{45, -120, 115, 18, -94, 107, 42, -58}), c3559m.f10579b).put(AbstractC1387m.m2421h(new byte[]{-7, 80, 89, -24}, new byte[]{-115, 41, 41, -115, -62, -121, -41, 59}), c3559m.f10580c.name()).put(AbstractC1387m.m2421h(new byte[]{-39, -19, 62, -51, -91, 117}, new byte[]{-72, -114, 74, -92, -54, 27, -78, -50}), c3559m.f10581d).put(AbstractC1387m.m2421h(new byte[]{75, 9, -105, -72, -90, -74, 45, 95, 74}, new byte[]{36, 111, -15, -7, -59, -62, 68, 48}), c3559m.f10582e).put(AbstractC1387m.m2421h(new byte[]{-113, 22, 62, 77, -19, 118, 75, -114, -120}, new byte[]{-20, 121, 82, 33, -116, 6, 56, -21}), c3559m.f10583f).put(AbstractC1387m.m2421h(new byte[]{34}, new byte[]{90, 102, -6, -52, 90, 125, 51, -64}), c3559m.f10584g).put(AbstractC1387m.m2421h(new byte[]{-89}, new byte[]{-34, -47, -36, 9, -83, -89, -99, -28}), c3559m.f10585h).put(AbstractC1387m.m2421h(new byte[]{-8, 37}, new byte[]{-101, 93, -90, -77, -102, 81, -19, -4}), c3559m.f10586i).put(AbstractC1387m.m2421h(new byte[]{42, -118}, new byte[]{73, -13, 102, -92, -91, -127, -26, 45}), c3559m.f10587j));
        }
        return jSONObject.put(AbstractC1387m.m2421h(new byte[]{-75, -45, -44, 93, -1, -60, -89, 52}, new byte[]{-48, -65, -79, 48, -102, -86, -45, 71}), jSONArray);
    }

    /* JADX INFO: renamed from: f */
    public final int m5680f(boolean z9) {
        if (z9) {
            return this.f10598e ? Math.max(320, this.f10609p) : NNTPReply.AUTHENTICATION_REQUIRED;
        }
        return this.f10600g ? Math.max(320, this.f10611r) : NNTPReply.AUTHENTICATION_REQUIRED;
    }
}

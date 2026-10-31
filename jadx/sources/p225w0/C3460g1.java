package p225w0;

import android.util.Log;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p173q0.C3042f;
import p201t5.AbstractC3258b;
import p201t5.C3261e;
import p201t5.C3262f;
import p212u5.C3299b;
import p212u5.C3300c;
import p212u5.C3301d;
import p212u5.C3302e;

/* JADX INFO: renamed from: w0.g1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3460g1 {

    /* JADX INFO: renamed from: k */
    public static final AtomicLong f9994k = new AtomicLong();

    /* JADX INFO: renamed from: a */
    public final C3042f f9995a;

    /* JADX INFO: renamed from: b */
    public final C3454e1 f9996b;

    /* JADX INFO: renamed from: c */
    public final C3457f1 f9997c;

    /* JADX INFO: renamed from: d */
    public final C3457f1 f9998d;

    /* JADX INFO: renamed from: e */
    public long f9999e;

    /* JADX INFO: renamed from: f */
    public long f10000f;

    /* JADX INFO: renamed from: g */
    public long f10001g;

    /* JADX INFO: renamed from: h */
    public boolean f10002h;

    /* JADX INFO: renamed from: i */
    public String f10003i;

    /* JADX INFO: renamed from: j */
    public String f10004j;

    public C3460g1(C3042f c3042f) {
        C3454e1 c3454e1 = new C3454e1();
        this.f9997c = new C3457f1();
        this.f9998d = new C3457f1();
        this.f9995a = c3042f;
        this.f9996b = c3454e1;
    }

    /* JADX INFO: renamed from: f */
    public static String m5415f(int i10, String str) {
        if (i10 > 0 && i10 < str.length() && Character.isHighSurrogate(str.charAt(i10 - 1))) {
            i10--;
        }
        return str.substring(0, i10);
    }

    /* JADX INFO: renamed from: g */
    public static void m5416g(C3261e c3261e, String str, Object obj) {
        if (obj == null) {
            c3261e.m5196h(str, null);
            return;
        }
        if (obj instanceof Boolean) {
            c3261e.m5197i(str, (Boolean) obj);
            return;
        }
        if (obj instanceof Number) {
            Number number = (Number) obj;
            if (Double.isFinite(number.doubleValue())) {
                c3261e.m5198j(str, number);
                return;
            }
        }
        String strValueOf = String.valueOf(obj);
        if (strValueOf.length() > 1200) {
            strValueOf = m5415f(1200, strValueOf);
            c3261e.m5197i(AbstractC1387m.m2421h(new byte[]{-25, 112, 111, 101, 18, 5, -105, -62, -9}, new byte[]{-109, 2, 26, 11, 113, 100, -29, -89}), Boolean.TRUE);
        }
        c3261e.m5199k(str, strValueOf);
    }

    /* JADX INFO: renamed from: h */
    public static boolean m5417h(String str) {
        return str.equals(AbstractC1387m.m2421h(new byte[]{72, -32, 119, -37, -39}, new byte[]{45, -106, 18, -75, -83, 96, -79, -59})) || str.equals(AbstractC1387m.m2421h(new byte[]{-126, 77, 122, 118, -16, -103, 60}, new byte[]{-15, 40, 9, 5, -103, -10, 82, 75})) || str.equals(AbstractC1387m.m2421h(new byte[]{-116, -60, 83, 31, 25, 12, -103, -70, -102}, new byte[]{-23, -88, 50, 111, 106, 105, -3, -9})) || str.equals(AbstractC1387m.m2421h(new byte[]{-54, 80, -15, -97, -65, -2, -120, -44, -38}, new byte[]{-66, 34, -124, -15, -36, -97, -4, -79}));
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m5418a(boolean z9, long j10, long j11, int i10, long j12) {
        try {
            C3457f1 c3457f1 = z9 ? this.f9998d : this.f9997c;
            long jMax = Math.max(0L, j11);
            long jMax2 = Math.max(0L, j12);
            c3457f1.f9959a++;
            c3457f1.f9960b += jMax;
            c3457f1.f9961c = Math.max(c3457f1.f9961c, jMax);
            c3457f1.f9962d += jMax2;
            c3457f1.f9963e = Math.max(c3457f1.f9963e, jMax2);
            long j13 = c3457f1.f9964f;
            this.f9996b.getClass();
            c3457f1.f9964f = Math.max(j13, Math.max(0L, System.nanoTime() - j10));
            c3457f1.f9966h = Math.max(c3457f1.f9966h, Math.max(0, i10));
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: b */
    public final C3261e m5419b(long j10, String str) {
        C3261e c3261e = new C3261e();
        m5416g(c3261e, AbstractC1387m.m2421h(new byte[]{-26, -67, 71, 55, -116}, new byte[]{-125, -53, 34, 89, -8, -96, -127, 37}), str.length() > 80 ? m5415f(80, str) : str);
        if (str.length() > 80) {
            c3261e.m5197i(AbstractC1387m.m2421h(new byte[]{44, 68, -86, -105, -106, -122, -38, 29, 60}, new byte[]{88, 54, -33, -7, -11, -25, -82, 120}), Boolean.TRUE);
        }
        c3261e.m5198j(AbstractC1387m.m2421h(new byte[]{-63, 42, 71, -12, 43, 49, -51}, new byte[]{-78, 79, 52, -121, 66, 94, -93, -101}), Long.valueOf(this.f9999e));
        c3261e.m5198j(AbstractC1387m.m2421h(new byte[]{124, 82, 112, 81, 28, 29, -71, -126, 106}, new byte[]{25, 62, 17, 33, 111, 120, -35, -49}), Double.valueOf(this.f9999e == 0 ? 0.0d : Math.max(0L, j10 - this.f10000f) / 1000000.0d));
        return c3261e;
    }

    /* JADX INFO: renamed from: c */
    public final void m5420c(C3261e c3261e) {
        try {
            String string = c3261e.toString();
            C3302e c3302e = c3261e.f9548b;
            while (string.getBytes(StandardCharsets.UTF_8).length > 3500) {
                String str = "";
                Iterator it = ((C3300c) c3302e.entrySet()).iterator();
                String str2 = null;
                String str3 = null;
                while (((C3299b) it).hasNext()) {
                    C3301d c3301dM5222b = ((C3299b) it).m5222b();
                    if (!m5417h((String) c3301dM5222b.getKey())) {
                        str3 = (String) c3301dM5222b.getKey();
                        AbstractC3258b abstractC3258b = (AbstractC3258b) c3301dM5222b.getValue();
                        abstractC3258b.getClass();
                        if (abstractC3258b instanceof C3262f) {
                            AbstractC3258b abstractC3258b2 = (AbstractC3258b) c3301dM5222b.getValue();
                            abstractC3258b2.getClass();
                            if (!(abstractC3258b2 instanceof C3262f)) {
                                throw new IllegalStateException("Not a JSON Primitive: " + abstractC3258b2);
                            }
                            if (((C3262f) abstractC3258b2).f9549b instanceof String) {
                                String strMo5192g = ((AbstractC3258b) c3301dM5222b.getValue()).mo5192g();
                                if (strMo5192g.length() > str.length()) {
                                    str2 = (String) c3301dM5222b.getKey();
                                    str = strMo5192g;
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
                if (str2 == null) {
                    if (str3 == null) {
                        break;
                    }
                } else {
                    c3261e.m5199k(str2, m5415f(str.length() / 2, str));
                }
                c3261e.m5197i(AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, -105, 44, 93, -92, 23, -13, 74, 45}, new byte[]{73, -27, 89, 51, -57, 118, -121, 47}), Boolean.TRUE);
                string = c3261e.toString();
            }
            Log.i(((C3498x) this.f9995a.f8556c).f10281a, AbstractC1387m.m2421h(new byte[]{86, 122, -119, 29, -58, -20, -86, 72, 103, 53}, new byte[]{0, 21, -32, 126, -93, -88, -61, 41}) + string);
        } catch (RuntimeException unused) {
        }
    }

    /* JADX INFO: renamed from: d */
    public final synchronized void m5421d(String str) {
        if (this.f9999e == 0) {
            return;
        }
        String strM2421h = AbstractC1387m.m2421h(new byte[]{122, -8, -62, -61, -24, 98, -22, 16, 108, -13, -43}, new byte[]{9, -99, -79, -80, -127, 13, -124, 79});
        this.f9996b.getClass();
        C3261e c3261eM5419b = m5419b(System.nanoTime(), strM2421h);
        m5416g(c3261eM5419b, AbstractC1387m.m2421h(new byte[]{53, -24, -12, -126, -78, 71}, new byte[]{71, -115, -107, -15, -35, 41, 125, 103}), str);
        this.f9997c.m5397a(c3261eM5419b, AbstractC1387m.m2421h(new byte[]{13, -96, 64, 53}, new byte[]{122, -63, 43, 80, -51, -27, 81, 101}));
        this.f9998d.m5397a(c3261eM5419b, AbstractC1387m.m2421h(new byte[]{-57, 77, -119, -30}, new byte[]{-95, 56, -27, -114, -67, 84, -101, 54}));
        this.f9999e = 0L;
        this.f9997c.m5398b();
        this.f9998d.m5398b();
        this.f10002h = false;
        this.f10004j = null;
        this.f10003i = null;
        m5420c(c3261eM5419b);
    }

    /* JADX INFO: renamed from: e */
    public final synchronized void m5422e(String str, Object... objArr) {
        try {
            this.f9996b.getClass();
            C3261e c3261eM5419b = m5419b(System.nanoTime(), str);
            int iMin = Math.min(objArr.length / 2, 24);
            for (int i10 = 0; i10 < iMin; i10++) {
                int i11 = i10 * 2;
                Object obj = objArr[i11];
                if (obj instanceof String) {
                    String strM5415f = (String) obj;
                    if (!m5417h(strM5415f)) {
                        if (strM5415f.length() > 80) {
                            strM5415f = m5415f(80, strM5415f);
                            c3261eM5419b.m5197i(AbstractC1387m.m2421h(new byte[]{107, 101, 65, -37, 5, 43, -14, -62, 123}, new byte[]{31, 23, 52, -75, 102, 74, -122, -89}), Boolean.TRUE);
                        }
                        m5416g(c3261eM5419b, strM5415f, objArr[i11 + 1]);
                    }
                }
            }
            if (objArr.length > 48 || objArr.length % 2 != 0) {
                c3261eM5419b.m5197i(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -103, -61, -4, -18, 10, -59, -23, 111}, new byte[]{11, -21, -74, -110, -115, 107, -79, -116}), Boolean.TRUE);
            }
            m5420c(c3261eM5419b);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: i */
    public final synchronized long m5423i() {
        return this.f9999e;
    }

    /* JADX INFO: renamed from: j */
    public final synchronized void m5424j(String str, String str2, String str3) {
        this.f9996b.getClass();
        long jNanoTime = System.nanoTime();
        if (!AbstractC1387m.m2421h(new byte[]{71, -125, -55, -64, 85}, new byte[]{33, -22, -89, -95, 57, 122, 64, 35}).equals(str) && !str.endsWith(AbstractC1387m.m2421h(new byte[]{107, -19, -114, 81, 117, -104}, new byte[]{52, -117, -25, 63, 20, -12, -22, -120}))) {
            if (this.f10002h && Objects.equals(str2, this.f10003i) && Objects.equals(str3, this.f10004j)) {
                return;
            }
            if (this.f10002h && jNanoTime - this.f10001g < 750000000) {
                return;
            }
            this.f10002h = true;
            this.f10001g = jNanoTime;
            this.f10003i = str2;
            this.f10004j = str3;
        }
        C3261e c3261eM5419b = m5419b(jNanoTime, AbstractC1387m.m2421h(new byte[]{23, 40, 49, 108, ByteCompanionObject.MAX_VALUE, -107, 120, -104, 19, 46}, new byte[]{99, 90, 80, 2, 12, -10, 10, -15}));
        m5416g(c3261eM5419b, AbstractC1387m.m2421h(new byte[]{101, -127, -109, -107}, new byte[]{14, -24, -3, -15, 77, 97, -61, 36}), str);
        m5416g(c3261eM5419b, AbstractC1387m.m2421h(new byte[]{58, 84, 91, Base64.padSymbol, 24, 21, -124}, new byte[]{73, 49, 60, 80, 125, 123, -16, 38}), str2);
        m5416g(c3261eM5419b, AbstractC1387m.m2421h(new byte[]{27, -89, 71, 48, -102, -18, 65, 5}, new byte[]{120, -56, 42, 82, -13, ByteCompanionObject.MIN_VALUE, 36, 97}), str3);
        m5420c(c3261eM5419b);
    }
}

package w0;

import android.util.Log;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g1 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final AtomicLong f5640k = new AtomicLong();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q0.f f5641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e1 f5642b;
    public final f1 c;
    public final f1 d;
    public long e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f5643f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f5644g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f5645h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f5646i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f5647j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g1(q0.f fVar) {
        e1 e1Var = new e1();
        this.c = new f1();
        this.d = new f1();
        this.f5641a = fVar;
        this.f5642b = e1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String f(int i9, String str) {
        if (i9 > 0 && i9 < str.length() && Character.isHighSurrogate(str.charAt(i9 - 1))) {
            i9--;
        }
        return str.substring(0, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void g(t5.e eVar, String str, Object obj) {
        if (obj == null) {
            eVar.h(str, null);
            return;
        }
        if (obj instanceof Boolean) {
            eVar.i(str, (Boolean) obj);
            return;
        }
        if (obj instanceof Number) {
            Number number = (Number) obj;
            if (Double.isFinite(number.doubleValue())) {
                eVar.j(str, number);
                return;
            }
        }
        String strValueOf = String.valueOf(obj);
        if (strValueOf.length() > 1200) {
            strValueOf = f(1200, strValueOf);
            eVar.i(e0.m.h(new byte[]{-25, 112, 111, 101, 18, 5, -105, -62, -9}, new byte[]{-109, 2, 26, 11, 113, 100, -29, -89}), Boolean.TRUE);
        }
        eVar.k(str, strValueOf);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean h(String str) {
        return str.equals(e0.m.h(new byte[]{72, -32, 119, -37, -39}, new byte[]{45, -106, 18, -75, -83, 96, -79, -59})) || str.equals(e0.m.h(new byte[]{-126, 77, 122, 118, -16, -103, 60}, new byte[]{-15, 40, 9, 5, -103, -10, 82, 75})) || str.equals(e0.m.h(new byte[]{-116, -60, 83, 31, 25, 12, -103, -70, -102}, new byte[]{-23, -88, 50, 111, 106, 105, -3, -9})) || str.equals(e0.m.h(new byte[]{-54, 80, -15, -97, -65, -2, -120, -44, -38}, new byte[]{-66, 34, -124, -15, -36, -97, -4, -79}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void a(boolean z8, long j9, long j10, int i9, long j11) {
        try {
            f1 f1Var = z8 ? this.d : this.c;
            long jMax = Math.max(0L, j10);
            long jMax2 = Math.max(0L, j11);
            f1Var.f5617a++;
            f1Var.f5618b += jMax;
            f1Var.c = Math.max(f1Var.c, jMax);
            f1Var.d += jMax2;
            f1Var.e = Math.max(f1Var.e, jMax2);
            long j12 = f1Var.f5619f;
            this.f5642b.getClass();
            f1Var.f5619f = Math.max(j12, Math.max(0L, System.nanoTime() - j9));
            f1Var.f5621h = Math.max(f1Var.f5621h, Math.max(0, i9));
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final t5.e b(long j9, String str) {
        t5.e eVar = new t5.e();
        g(eVar, e0.m.h(new byte[]{-26, -67, 71, 55, -116}, new byte[]{-125, -53, 34, 89, -8, -96, -127, 37}), str.length() > 80 ? f(80, str) : str);
        if (str.length() > 80) {
            eVar.i(e0.m.h(new byte[]{44, 68, -86, -105, -106, -122, -38, 29, 60}, new byte[]{88, 54, -33, -7, -11, -25, -82, 120}), Boolean.TRUE);
        }
        eVar.j(e0.m.h(new byte[]{-63, 42, 71, -12, 43, 49, -51}, new byte[]{-78, 79, 52, -121, 66, 94, -93, -101}), Long.valueOf(this.e));
        eVar.j(e0.m.h(new byte[]{124, 82, 112, 81, 28, 29, -71, -126, 106}, new byte[]{25, 62, 17, 33, 111, 120, -35, -49}), Double.valueOf(this.e == 0 ? 0.0d : Math.max(0L, j9 - this.f5643f) / 1000000.0d));
        return eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(t5.e eVar) {
        try {
            String string = eVar.toString();
            u5.e eVar2 = eVar.f5411b;
            while (string.getBytes(StandardCharsets.UTF_8).length > 3500) {
                String str = "";
                Iterator it = ((u5.c) eVar2.entrySet()).iterator();
                String str2 = null;
                String str3 = null;
                while (((u5.b) it).hasNext()) {
                    u5.d dVarB = ((u5.b) it).b();
                    if (!h((String) dVarB.getKey())) {
                        str3 = (String) dVarB.getKey();
                        t5.b bVar = (t5.b) dVarB.getValue();
                        bVar.getClass();
                        if (bVar instanceof t5.f) {
                            t5.b bVar2 = (t5.b) dVarB.getValue();
                            bVar2.getClass();
                            if (!(bVar2 instanceof t5.f)) {
                                throw new IllegalStateException("Not a JSON Primitive: " + bVar2);
                            }
                            if (((t5.f) bVar2).f5412b instanceof String) {
                                String strG = ((t5.b) dVarB.getValue()).g();
                                if (strG.length() > str.length()) {
                                    str2 = (String) dVarB.getKey();
                                    str = strG;
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
                    eVar.k(str2, f(str.length() / 2, str));
                }
                eVar.i(e0.m.h(new byte[]{Base64.padSymbol, -105, 44, 93, -92, 23, -13, 74, 45}, new byte[]{73, -27, 89, 51, -57, 118, -121, 47}), Boolean.TRUE);
                string = eVar.toString();
            }
            Log.i(((x) this.f5641a.c).f5796a, e0.m.h(new byte[]{86, 122, -119, 29, -58, -20, -86, 72, 103, 53}, new byte[]{0, 21, -32, 126, -93, -88, -61, 41}) + string);
        } catch (RuntimeException unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void d(String str) {
        if (this.e == 0) {
            return;
        }
        String strH = e0.m.h(new byte[]{122, -8, -62, -61, -24, 98, -22, 16, 108, -13, -43}, new byte[]{9, -99, -79, -80, -127, 13, -124, 79});
        this.f5642b.getClass();
        t5.e eVarB = b(System.nanoTime(), strH);
        g(eVarB, e0.m.h(new byte[]{53, -24, -12, -126, -78, 71}, new byte[]{71, -115, -107, -15, -35, 41, 125, 103}), str);
        this.c.a(eVarB, e0.m.h(new byte[]{13, -96, 64, 53}, new byte[]{122, -63, 43, 80, -51, -27, 81, 101}));
        this.d.a(eVarB, e0.m.h(new byte[]{-57, 77, -119, -30}, new byte[]{-95, 56, -27, -114, -67, 84, -101, 54}));
        this.e = 0L;
        this.c.b();
        this.d.b();
        this.f5645h = false;
        this.f5647j = null;
        this.f5646i = null;
        c(eVarB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void e(String str, Object... objArr) {
        try {
            this.f5642b.getClass();
            t5.e eVarB = b(System.nanoTime(), str);
            int iMin = Math.min(objArr.length / 2, 24);
            for (int i9 = 0; i9 < iMin; i9++) {
                int i10 = i9 * 2;
                Object obj = objArr[i10];
                if (obj instanceof String) {
                    String strF = (String) obj;
                    if (!h(strF)) {
                        if (strF.length() > 80) {
                            strF = f(80, strF);
                            eVarB.i(e0.m.h(new byte[]{107, 101, 65, -37, 5, 43, -14, -62, 123}, new byte[]{31, 23, 52, -75, 102, 74, -122, -89}), Boolean.TRUE);
                        }
                        g(eVarB, strF, objArr[i10 + 1]);
                    }
                }
            }
            if (objArr.length > 48 || objArr.length % 2 != 0) {
                eVarB.i(e0.m.h(new byte[]{ByteCompanionObject.MAX_VALUE, -103, -61, -4, -18, 10, -59, -23, 111}, new byte[]{11, -21, -74, -110, -115, 107, -79, -116}), Boolean.TRUE);
            }
            c(eVarB);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized long i() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void j(String str, String str2, String str3) {
        this.f5642b.getClass();
        long jNanoTime = System.nanoTime();
        if (!e0.m.h(new byte[]{71, -125, -55, -64, 85}, new byte[]{33, -22, -89, -95, 57, 122, 64, 35}).equals(str) && !str.endsWith(e0.m.h(new byte[]{107, -19, -114, 81, 117, -104}, new byte[]{52, -117, -25, 63, 20, -12, -22, -120}))) {
            if (this.f5645h && Objects.equals(str2, this.f5646i) && Objects.equals(str3, this.f5647j)) {
                return;
            }
            if (this.f5645h && jNanoTime - this.f5644g < 750000000) {
                return;
            }
            this.f5645h = true;
            this.f5644g = jNanoTime;
            this.f5646i = str2;
            this.f5647j = str3;
        }
        t5.e eVarB = b(jNanoTime, e0.m.h(new byte[]{23, 40, 49, 108, ByteCompanionObject.MAX_VALUE, -107, 120, -104, 19, 46}, new byte[]{99, 90, 80, 2, 12, -10, 10, -15}));
        g(eVarB, e0.m.h(new byte[]{101, -127, -109, -107}, new byte[]{14, -24, -3, -15, 77, 97, -61, 36}), str);
        g(eVarB, e0.m.h(new byte[]{58, 84, 91, Base64.padSymbol, 24, 21, -124}, new byte[]{73, 49, 60, 80, 125, 123, -16, 38}), str2);
        g(eVarB, e0.m.h(new byte[]{27, -89, 71, 48, -102, -18, 65, 5}, new byte[]{120, -56, 42, 82, -13, ByteCompanionObject.MIN_VALUE, 36, 97}), str3);
        c(eVarB);
    }
}

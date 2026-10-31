package p225w0;

import android.util.Log;
import com.google.protobuf.AbstractC1178q;
import java.util.Iterator;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p098j0.AbstractC1920f;

/* JADX INFO: renamed from: w0.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3461h implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10005b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3480o f10006c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f10007d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ String f10008e;

    public /* synthetic */ RunnableC3461h(C3480o c3480o, int i10, String str, int i11) {
        this.f10005b = i11;
        this.f10006c = c3480o;
        this.f10007d = i10;
        this.f10008e = str;
    }

    /* JADX WARN: Code duplicated, block: B:72:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:99:0x026f  */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        boolean z9;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        RunnableC3461h runnableC3461h;
        C3473l c3473l;
        char c;
        String string;
        int i10 = 1;
        int i11 = 2;
        char c10 = 0;
        switch (this.f10005b) {
            case 0:
                C3480o c3480o = this.f10006c;
                String str = this.f10008e;
                int i12 = this.f10007d;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                try {
                    try {
                        C3473l c3473lM5495r = c3480o.m5495r(str);
                        if (c3473lM5495r != null) {
                            try {
                                if (c3480o.f10134B && i12 == c3480o.f10137E) {
                                    Log.i(c3480o.f10152a, AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, 74, -48, -81, 81, -29, -126, -30, 78, 76, -46, -93, 82, -10, -123, -27, 78, 66, -36, -70, 92, -1, -114, -27, 84, 15}, new byte[]{110, 47, -67, -50, 63, -105, -21, -127}) + c3473lM5495r.f10074a);
                                    c3480o.m5493n(c3473lM5495r.f10075b);
                                }
                            } catch (Throwable th) {
                                th = th;
                                z9 = false;
                                c3480o.f10136D = z9;
                                if (c3480o.f10134B && !c3480o.f10138F.isEmpty() && c3480o.f10139G == c3480o.f10137E) {
                                    c3480o.f10153b.schedule(new RunnableC3461h(c3480o, c3480o.f10138F, c3480o.f10139G, i11), 0L, timeUnit);
                                }
                                throw th;
                            }
                            break;
                        }
                        c3480o.f10136D = false;
                        if (c3480o.f10134B && !c3480o.f10138F.isEmpty() && c3480o.f10139G == c3480o.f10137E) {
                            String str2 = c3480o.f10138F;
                            int i13 = c3480o.f10139G;
                            scheduledThreadPoolExecutor = c3480o.f10153b;
                            runnableC3461h = new RunnableC3461h(c3480o, str2, i13, i11);
                            scheduledThreadPoolExecutor.schedule(runnableC3461h, 0L, timeUnit);
                            return;
                        }
                        return;
                    } catch (Exception e) {
                        Log.e(c3480o.f10152a, AbstractC1387m.m2421h(new byte[]{-37, 125, -19, 43, -112, 53, 96, 30, -88, 105, -11, 47, -116, 56, 41, 27, -23, 113, -20, 47, -102}, new byte[]{-120, 24, ByteCompanionObject.MIN_VALUE, 74, -2, 65, 9, 125}), e);
                        c3480o.f10136D = false;
                        if (!c3480o.f10134B || c3480o.f10138F.isEmpty() || c3480o.f10139G != c3480o.f10137E) {
                            return;
                        }
                        String str3 = c3480o.f10138F;
                        int i14 = c3480o.f10139G;
                        scheduledThreadPoolExecutor = c3480o.f10153b;
                        runnableC3461h = new RunnableC3461h(c3480o, str3, i14, i11);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    z9 = false;
                }
                break;
            case 1:
                C3480o c3480o2 = this.f10006c;
                int i15 = this.f10007d;
                String str4 = this.f10008e;
                if (c3480o2.f10134B && i15 == c3480o2.f10146N) {
                    String[] strArrM5477w = C3480o.m5477w(str4);
                    if (strArrM5477w.length < 2 || c3480o2.f10165n.isEmpty()) {
                        c3473l = null;
                    } else {
                        StringBuilder sb = new StringBuilder();
                        if (strArrM5477w.length > 0) {
                            sb.append((CharSequence) strArrM5477w[0]);
                            for (int i16 = 1; i16 < strArrM5477w.length; i16++) {
                                sb.append((CharSequence) " ");
                                sb.append((CharSequence) strArrM5477w[i16]);
                            }
                        }
                        String string2 = sb.toString();
                        Iterator it = c3480o2.f10165n.iterator();
                        String str5 = "";
                        float f8 = -1.0f;
                        Object obj = "";
                        float fMax = -1.0f;
                        C3473l c3473l2 = null;
                        while (it.hasNext()) {
                            C3473l c3473l3 = (C3473l) it.next();
                            c10 = c10;
                            if (c3473l3.f10076c.isEmpty()) {
                                String[] strArrM5477w2 = c3473l3.f10079f;
                                if (strArrM5477w2.length == 0) {
                                    strArrM5477w2 = C3480o.m5477w(C3480o.m5466D(c3473l3.f10074a));
                                }
                                if (c3473l3.f10080g.isEmpty()) {
                                    StringBuilder sb2 = new StringBuilder();
                                    if (strArrM5477w2.length > 0) {
                                        sb2.append((CharSequence) strArrM5477w2[c10]);
                                        for (int i17 = 1; i17 < strArrM5477w2.length; i17++) {
                                            sb2.append((CharSequence) " ");
                                            sb2.append((CharSequence) strArrM5477w2[i17]);
                                        }
                                    }
                                    string = sb2.toString();
                                } else {
                                    str5 = str5;
                                    string = c3473l3.f10080g;
                                }
                                float fM5465B = C3480o.m5465B(string2, string) + (C3480o.m5476v(strArrM5477w2, strArrM5477w) * 0.3f) + (C3480o.m5476v(strArrM5477w, strArrM5477w2) * 0.7f);
                                String strM3009g = AbstractC1920f.m3009g(c3473l3.f10075b);
                                if (fM5465B > f8) {
                                    if (c3473l2 != null && !strM3009g.equals(obj)) {
                                        fMax = Math.max(fMax, f8);
                                    }
                                    obj = strM3009g;
                                    f8 = fM5465B;
                                    c3473l2 = c3473l3;
                                } else if (!strM3009g.equals(obj)) {
                                    obj = obj;
                                    fMax = Math.max(fMax, fM5465B);
                                    obj = obj;
                                }
                                obj = obj;
                                it = it;
                                str5 = str5;
                            }
                        }
                        char c11 = c10;
                        String str6 = str5;
                        float f10 = f8 - fMax;
                        String str7 = c3480o2.f10152a;
                        StringBuilder sb3 = new StringBuilder();
                        AbstractC1178q.m2087u(new byte[]{-49, 90, 51, -83, 109, -59, -117, -16, -5, 66, 125, -2}, new byte[]{-119, 59, 64, -39, 77, -76, -2, -107}, sb3, str4);
                        sb3.append(AbstractC1387m.m2421h(new byte[]{92, -51, -51, -102, 115, 20, 4, -9, 92}, new byte[]{123, -31, -19, -8, 22, 103, 112, -54}));
                        sb3.append(c3473l2 == null ? str6 : c3473l2.f10074a);
                        sb3.append(AbstractC1387m.m2421h(new byte[]{-40, -88, 117, -97, 0, 19, 125, -27, -62}, new byte[]{-1, -124, 85, -20, 99, 124, 15, ByteCompanionObject.MIN_VALUE}));
                        sb3.append(f8);
                        sb3.append(AbstractC1387m.m2421h(new byte[]{-23, 87, -47, 123, 9, -56, 26, -1, -90, 3, -41, 96, 15, -32, 9, -52, -94, 30, -48, 50}, new byte[]{-59, 119, -66, 15, 97, -83, 104, -66}));
                        sb3.append(f10);
                        Log.d(str7, sb3.toString());
                        if (c3473l2 == null || C3480o.m5473q(C3480o.m5466D(c3473l2.f10074a)).length() <= 0 || !C3480o.m5473q(str4).isEmpty()) {
                            if (c3473l2 != null) {
                                String[] strArrM5477w3 = C3480o.m5477w(str4);
                                StringBuilder sb4 = new StringBuilder();
                                if (strArrM5477w3.length > 0) {
                                    sb4.append((CharSequence) strArrM5477w3[c11]);
                                    for (int i18 = 1; i18 < strArrM5477w3.length; i18++) {
                                        sb4.append((CharSequence) " ");
                                        sb4.append((CharSequence) strArrM5477w3[i18]);
                                    }
                                }
                                if (C3480o.m5471m(sb4.toString(), AbstractC1387m.m2421h(new byte[]{-47, ByteCompanionObject.MIN_VALUE, 108, -79, -19, -91, -95, 85, -48, -68}, new byte[]{0, 1, -68, 9, Base64.padSymbol, 17, 113, -32}), AbstractC1387m.m2421h(new byte[]{38, -61, 122, -110}, new byte[]{85, -90, 27, -26, -38, 18, -5, 93}))) {
                                    String[] strArrM5477w4 = C3480o.m5477w(str4);
                                    StringBuilder sb5 = new StringBuilder();
                                    if (strArrM5477w4.length > 0) {
                                        sb5.append((CharSequence) strArrM5477w4[c11]);
                                        for (int i19 = 1; i19 < strArrM5477w4.length; i19++) {
                                            sb5.append((CharSequence) " ");
                                            sb5.append((CharSequence) strArrM5477w4[i19]);
                                        }
                                    }
                                    if (C3480o.m5473q(sb5.toString()).isEmpty()) {
                                        c = c11;
                                    } else {
                                        String strM5473q = C3480o.m5473q(C3480o.m5466D(c3473l2.f10074a));
                                        String[] strArrM5477w5 = C3480o.m5477w(str4);
                                        StringBuilder sb6 = new StringBuilder();
                                        if (strArrM5477w5.length > 0) {
                                            sb6.append((CharSequence) strArrM5477w5[c11]);
                                            for (int i20 = 1; i20 < strArrM5477w5.length; i20++) {
                                                sb6.append((CharSequence) " ");
                                                sb6.append((CharSequence) strArrM5477w5[i20]);
                                            }
                                        }
                                        if (strM5473q.equals(C3480o.m5473q(sb6.toString()))) {
                                            c = 1;
                                        } else {
                                            c = c11;
                                        }
                                    }
                                } else {
                                    c = c11;
                                }
                            } else {
                                c = c11;
                            }
                            if ((f8 < 0.84f || (f10 < 0.12f && (c == 0 || f10 < 0.04f))) && (f8 < 0.67f || f10 < 0.18f)) {
                                c3473l = null;
                            } else {
                                c3473l = c3473l2;
                            }
                        } else {
                            c3473l = null;
                        }
                    }
                    if (c3473l != null && c3480o2.f10134B && i15 == c3480o2.f10146N) {
                        Log.i(c3480o2.f10152a, AbstractC1387m.m2421h(new byte[]{-119, 113, -80, -44, 118, -24, -10, -12, -94, 113, -83, -60, 118, -26, -8, -19, -84, 120, -90, -60, 108, -85}, new byte[]{-49, 16, -61, -96, 86, -117, -103, -103}) + c3473l.f10074a);
                        c3480o2.m5493n(c3473l.f10075b);
                        return;
                    }
                    return;
                }
                return;
            case 2:
                this.f10006c.m5484K(this.f10007d, this.f10008e);
                return;
            case 3:
                C3480o c3480o3 = this.f10006c;
                int i21 = this.f10007d;
                String str8 = this.f10008e;
                if (c3480o3.f10134B && i21 == c3480o3.f10146N) {
                    c3480o3.f10155d.execute(new RunnableC3461h(c3480o3, i21, str8, i10));
                    return;
                }
                return;
            default:
                this.f10006c.m5484K(this.f10007d, this.f10008e);
                return;
        }
    }

    public /* synthetic */ RunnableC3461h(C3480o c3480o, String str, int i10, int i11) {
        this.f10005b = i11;
        this.f10006c = c3480o;
        this.f10008e = str;
        this.f10007d = i10;
    }
}

package w0;

import android.util.Log;
import java.util.Iterator;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5648b;
    public final /* synthetic */ o c;
    public final /* synthetic */ int d;
    public final /* synthetic */ String e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h(o oVar, int i9, String str, int i10) {
        this.f5648b = i10;
        this.c = oVar;
        this.d = i9;
        this.e = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:168:0x0088 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:170:0x0088 */
    /* JADX WARN: Code duplicated, block: B:72:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:99:0x026f  */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        boolean z8;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        h hVar;
        l lVar;
        char c;
        String string;
        char c9 = 0;
        switch (this.f5648b) {
            case 0:
                o oVar = this.c;
                String str = this.e;
                int i9 = this.d;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                try {
                    try {
                        l lVarR = oVar.r(str);
                        if (lVarR != null) {
                            try {
                                if (oVar.B && i9 == oVar.E) {
                                    Log.i(oVar.f5730a, e0.m.h(new byte[]{Base64.padSymbol, 74, -48, -81, 81, -29, -126, -30, 78, 76, -46, -93, 82, -10, -123, -27, 78, 66, -36, -70, 92, -1, -114, -27, 84, 15}, new byte[]{110, 47, -67, -50, 63, -105, -21, -127}) + lVarR.f5690a);
                                    oVar.n(lVarR.f5691b);
                                }
                            } catch (Throwable th) {
                                th = th;
                                z8 = false;
                                oVar.D = z8;
                                if (oVar.B && !oVar.F.isEmpty() && oVar.G == oVar.E) {
                                    oVar.f5731b.schedule(new h(oVar, oVar.F, oVar.G, 2), 0L, timeUnit);
                                }
                                throw th;
                            }
                            break;
                        }
                        oVar.D = false;
                        if (oVar.B && !oVar.F.isEmpty() && oVar.G == oVar.E) {
                            String str2 = oVar.F;
                            int i10 = oVar.G;
                            scheduledThreadPoolExecutor = oVar.f5731b;
                            hVar = new h(oVar, str2, i10, 2);
                            scheduledThreadPoolExecutor.schedule(hVar, 0L, timeUnit);
                            return;
                        }
                        return;
                    } catch (Exception e) {
                        Log.e(oVar.f5730a, e0.m.h(new byte[]{-37, 125, -19, 43, -112, 53, 96, 30, -88, 105, -11, 47, -116, 56, 41, 27, -23, 113, -20, 47, -102}, new byte[]{-120, 24, ByteCompanionObject.MIN_VALUE, 74, -2, 65, 9, 125}), e);
                        oVar.D = false;
                        if (!oVar.B || oVar.F.isEmpty() || oVar.G != oVar.E) {
                            return;
                        }
                        String str3 = oVar.F;
                        int i11 = oVar.G;
                        scheduledThreadPoolExecutor = oVar.f5731b;
                        hVar = new h(oVar, str3, i11, 2);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    z8 = false;
                }
                break;
            case 1:
                o oVar2 = this.c;
                int i12 = this.d;
                String str4 = this.e;
                if (oVar2.B && i12 == oVar2.N) {
                    String[] strArrW = o.w(str4);
                    if (strArrW.length < 2 || oVar2.f5740n.isEmpty()) {
                        lVar = null;
                    } else {
                        StringBuilder sb = new StringBuilder();
                        if (strArrW.length > 0) {
                            sb.append((CharSequence) strArrW[0]);
                            for (int i13 = 1; i13 < strArrW.length; i13++) {
                                sb.append((CharSequence) " ");
                                sb.append((CharSequence) strArrW[i13]);
                            }
                        }
                        String string2 = sb.toString();
                        Iterator it = oVar2.f5740n.iterator();
                        String str5 = "";
                        float f8 = -1.0f;
                        Object obj = "";
                        float fMax = -1.0f;
                        l lVar2 = null;
                        while (it.hasNext()) {
                            l lVar3 = (l) it.next();
                            c9 = c9;
                            if (lVar3.c.isEmpty()) {
                                String[] strArrW2 = lVar3.f5692f;
                                if (strArrW2.length == 0) {
                                    strArrW2 = o.w(o.D(lVar3.f5690a));
                                }
                                if (lVar3.f5693g.isEmpty()) {
                                    StringBuilder sb2 = new StringBuilder();
                                    if (strArrW2.length > 0) {
                                        sb2.append((CharSequence) strArrW2[c9]);
                                        for (int i14 = 1; i14 < strArrW2.length; i14++) {
                                            sb2.append((CharSequence) " ");
                                            sb2.append((CharSequence) strArrW2[i14]);
                                        }
                                    }
                                    string = sb2.toString();
                                } else {
                                    str5 = str5;
                                    string = lVar3.f5693g;
                                }
                                float fB = o.B(string2, string) + (o.v(strArrW2, strArrW) * 0.3f) + (o.v(strArrW, strArrW2) * 0.7f);
                                String strG = j0.f.g(lVar3.f5691b);
                                if (fB > f8) {
                                    if (lVar2 != null && !strG.equals(obj)) {
                                        fMax = Math.max(fMax, f8);
                                    }
                                    obj = strG;
                                    f8 = fB;
                                    lVar2 = lVar3;
                                } else if (!strG.equals(obj)) {
                                    obj = obj;
                                    fMax = Math.max(fMax, fB);
                                    obj = obj;
                                }
                                obj = obj;
                                it = it;
                                str5 = str5;
                            }
                        }
                        char c10 = c9;
                        String str6 = str5;
                        float f9 = f8 - fMax;
                        String str7 = oVar2.f5730a;
                        StringBuilder sb3 = new StringBuilder();
                        com.google.protobuf.q.u(new byte[]{-49, 90, 51, -83, 109, -59, -117, -16, -5, 66, 125, -2}, new byte[]{-119, 59, 64, -39, 77, -76, -2, -107}, sb3, str4);
                        sb3.append(e0.m.h(new byte[]{92, -51, -51, -102, 115, 20, 4, -9, 92}, new byte[]{123, -31, -19, -8, 22, 103, 112, -54}));
                        sb3.append(lVar2 == null ? str6 : lVar2.f5690a);
                        sb3.append(e0.m.h(new byte[]{-40, -88, 117, -97, 0, 19, 125, -27, -62}, new byte[]{-1, -124, 85, -20, 99, 124, 15, ByteCompanionObject.MIN_VALUE}));
                        sb3.append(f8);
                        sb3.append(e0.m.h(new byte[]{-23, 87, -47, 123, 9, -56, 26, -1, -90, 3, -41, 96, 15, -32, 9, -52, -94, 30, -48, 50}, new byte[]{-59, 119, -66, 15, 97, -83, 104, -66}));
                        sb3.append(f9);
                        Log.d(str7, sb3.toString());
                        if (lVar2 == null || o.q(o.D(lVar2.f5690a)).length() <= 0 || !o.q(str4).isEmpty()) {
                            if (lVar2 != null) {
                                String[] strArrW3 = o.w(str4);
                                StringBuilder sb4 = new StringBuilder();
                                if (strArrW3.length > 0) {
                                    sb4.append((CharSequence) strArrW3[c10]);
                                    for (int i15 = 1; i15 < strArrW3.length; i15++) {
                                        sb4.append((CharSequence) " ");
                                        sb4.append((CharSequence) strArrW3[i15]);
                                    }
                                }
                                if (o.m(sb4.toString(), e0.m.h(new byte[]{-47, ByteCompanionObject.MIN_VALUE, 108, -79, -19, -91, -95, 85, -48, -68}, new byte[]{0, 1, -68, 9, Base64.padSymbol, 17, 113, -32}), e0.m.h(new byte[]{38, -61, 122, -110}, new byte[]{85, -90, 27, -26, -38, 18, -5, 93}))) {
                                    String[] strArrW4 = o.w(str4);
                                    StringBuilder sb5 = new StringBuilder();
                                    if (strArrW4.length > 0) {
                                        sb5.append((CharSequence) strArrW4[c10]);
                                        for (int i16 = 1; i16 < strArrW4.length; i16++) {
                                            sb5.append((CharSequence) " ");
                                            sb5.append((CharSequence) strArrW4[i16]);
                                        }
                                    }
                                    if (o.q(sb5.toString()).isEmpty()) {
                                        c = c10;
                                    } else {
                                        String strQ = o.q(o.D(lVar2.f5690a));
                                        String[] strArrW5 = o.w(str4);
                                        StringBuilder sb6 = new StringBuilder();
                                        if (strArrW5.length > 0) {
                                            sb6.append((CharSequence) strArrW5[c10]);
                                            for (int i17 = 1; i17 < strArrW5.length; i17++) {
                                                sb6.append((CharSequence) " ");
                                                sb6.append((CharSequence) strArrW5[i17]);
                                            }
                                        }
                                        if (strQ.equals(o.q(sb6.toString()))) {
                                            c = 1;
                                        } else {
                                            c = c10;
                                        }
                                    }
                                } else {
                                    c = c10;
                                }
                            } else {
                                c = c10;
                            }
                            if ((f8 < 0.84f || (f9 < 0.12f && (c == 0 || f9 < 0.04f))) && (f8 < 0.67f || f9 < 0.18f)) {
                                lVar = null;
                            } else {
                                lVar = lVar2;
                            }
                        } else {
                            lVar = null;
                        }
                    }
                    if (lVar != null && oVar2.B && i12 == oVar2.N) {
                        Log.i(oVar2.f5730a, e0.m.h(new byte[]{-119, 113, -80, -44, 118, -24, -10, -12, -94, 113, -83, -60, 118, -26, -8, -19, -84, 120, -90, -60, 108, -85}, new byte[]{-49, 16, -61, -96, 86, -117, -103, -103}) + lVar.f5690a);
                        oVar2.n(lVar.f5691b);
                        return;
                    }
                    return;
                }
                return;
            case 2:
                this.c.K(this.d, this.e);
                return;
            case 3:
                o oVar3 = this.c;
                int i18 = this.d;
                String str8 = this.e;
                if (oVar3.B && i18 == oVar3.N) {
                    oVar3.d.execute(new h(oVar3, i18, str8, 1));
                    return;
                }
                return;
            default:
                this.c.K(this.d, this.e);
                return;
        }
    }

    public /* synthetic */ h(o oVar, String str, int i9, int i10) {
        this.f5648b = i10;
        this.c = oVar;
        this.e = str;
        this.d = i9;
    }
}

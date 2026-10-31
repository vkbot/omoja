package p115k7;

import okhttp3.Request;
import okhttp3.Response;
import p047e0.AbstractC1387m;
import p078h0.C1652b;

/* JADX INFO: renamed from: k7.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2051a implements InterfaceC2053c {
    static {
        AbstractC1387m.m2421h(new byte[]{26, -31, 1, -106, 3, -94, -105, -39, 19, -27, 28, -56, 31, -24, -35, -104, 95, -8, 16, -110, 21, -9, -106, -107, 29, -8, 90, -112, 65, -73, -34, -103, 0, -16, 22, -121, 3, -20}, new byte[]{114, -107, 117, -26, 112, -104, -72, -10});
    }

    /* JADX INFO: renamed from: a */
    public static String m3151a(String str) {
        Request requestBuild = new Request.Builder().url(str).build();
        try {
            C1652b.m2734a();
            Response responseExecute = C1652b.m2743m().newCall(requestBuild).execute();
            try {
                if (!responseExecute.isSuccessful()) {
                    throw new Exception(AbstractC1387m.m2421h(new byte[]{59, -94, -19, 13, -62, -4, 105, 40, 11, -88, -88, 22, -35, -3, 111, 124}, new byte[]{110, -52, -120, 117, -78, -103, 10, 92}) + responseExecute);
                }
                if (responseExecute.body() == null) {
                    throw new Exception(AbstractC1387m.m2421h(new byte[]{-63, -111, 49, -52, -35, -78, -56, -15, -77, -106, 45, -40, -53, -4, -46, -25, -77, -102, 55, -48, -34}, new byte[]{-109, -12, 66, -68, -78, -36, -69, -108}));
                }
                String strString = responseExecute.body().string();
                responseExecute.close();
                return strString;
            } catch (Throwable th) {
                if (responseExecute != null) {
                    try {
                        responseExecute.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception e) {
            C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{103, -101, -15, -38, 94, -53, 3, 68, 71, -69, -26, -37, 101, -57, 19, 68, 90, -47, -76}, new byte[]{40, -21, -108, -76, 19, -82, 119, 33}) + e.getMessage());
            return "";
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0205  */
    /* JADX WARN: Code duplicated, block: B:42:0x0207  */
    /* JADX WARN: Code duplicated, block: B:43:0x0209  */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0163, code lost:
    
        r10 = "";
     */
    @Override // p115k7.InterfaceC2053c
    /* JADX INFO: renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final p115k7.C2052b mo3152e(java.lang.String r10) {
        /*
            Method dump skipped, instruction units count: 1022
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p115k7.C2051a.mo3152e(java.lang.String):k7.b");
    }
}

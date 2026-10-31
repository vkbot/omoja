package m0;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.IOException;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class i0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n0 f3463b;
    public final /* synthetic */ Context c;
    public final /* synthetic */ int d;
    public final /* synthetic */ k0 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f3464f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i0(n0 n0Var, Context context, int i9, k0 k0Var, boolean z8) {
        this.f3463b = n0Var;
        this.c = context;
        this.d = i9;
        this.e = k0Var;
        this.f3464f = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z8;
        boolean z9;
        String str;
        boolean z10;
        n0 n0Var = this.f3463b;
        Context context = this.c;
        int i9 = this.d;
        k0 k0Var = this.e;
        boolean z11 = this.f3464f;
        String str2 = n0.f3526k;
        String strC = null;
        try {
            d1.a aVarN = com.bumptech.glide.d.n(context);
            try {
                if (i9 == n0Var.c) {
                    String strC2 = d1.d.c(new androidx.fragment.app.h(19, aVarN));
                    String strB = o4.b.B(strC2, k0Var.f3489a, z11);
                    SharedPreferences sharedPreferences = context.getSharedPreferences(e0.m.h(new byte[]{5, 15, 125, ByteCompanionObject.MAX_VALUE, -121, 50, 43, 121, 6, 20, 78, 114, -124, 33, 42}, new byte[]{99, 122, 17, 19, -12, 81, 89, 28}), 0);
                    if (!sharedPreferences.contains(e0.m.h(new byte[]{-19, 75, 70, -90, -104, 115, -1, 118, -35, 74, 78, -73, -108, 121}, new byte[]{-126, 57, 47, -63, -15, 29, -98, 26}))) {
                        if (!sharedPreferences.edit().putBoolean(e0.m.h(new byte[]{44, -39, -84, -127, 99, 43, 105, 99, 28, -40, -92, -112, 111, 33}, new byte[]{67, -85, -59, -26, 10, 69, 8, 15}), true).putBoolean(e0.m.h(new byte[]{16, -102, -89, -87, 76, -60, -63, -15, 32, -119, -84, -67, 64, -60, -44}, new byte[]{ByteCompanionObject.MAX_VALUE, -24, -50, -50, 37, -86, -96, -99}), strC2 == null).putString(e0.m.h(new byte[]{-79, -105, -50, 71, 44, 88, 30, -101, -127, -107, -56, 76, 44, 85, 6}, new byte[]{-34, -27, -89, 32, 69, 54, ByteCompanionObject.MAX_VALUE, -9}), strC2 == null ? "" : strC2).commit()) {
                            throw new IOException(e0.m.h(new byte[]{63, 77, -110, 82, -41, -125, 32, -97, 28, 69, -99, 92, -58}, new byte[]{125, 44, -15, 57, -94, -13, 0, -7}));
                        }
                    }
                    if (i9 == n0Var.c) {
                        strC = d1.d.d(new androidx.fragment.app.h(19, aVarN), strC2, strB);
                        try {
                            aVarN.close();
                            z10 = true;
                            z9 = true;
                        } catch (Exception unused) {
                            z8 = true;
                            try {
                                d1.a aVarN2 = com.bumptech.glide.d.n(context);
                                try {
                                    strC = d1.d.c(new androidx.fragment.app.h(19, aVarN2));
                                    aVarN2.close();
                                    z9 = z8;
                                    z10 = true;
                                } catch (Throwable th) {
                                    try {
                                        aVarN2.close();
                                        throw th;
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                        throw th;
                                    }
                                }
                            } catch (Exception unused2) {
                                z9 = z8;
                                str = strC;
                                z10 = false;
                            }
                        }
                        str = strC;
                        n0Var.f3527b.post(new j0(n0Var, i9, z10, str, z9));
                        return;
                    }
                }
                aVarN.close();
            } catch (Throwable th3) {
                try {
                    aVarN.close();
                    throw th3;
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                    throw th3;
                }
            }
        } catch (Exception unused3) {
            z8 = false;
        }
    }
}

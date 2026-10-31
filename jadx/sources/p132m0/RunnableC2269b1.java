package p132m0;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import com.example.navistart.DPups;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: m0.b1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2269b1 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5942b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Context f5943c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ String f5944d;

    public /* synthetic */ RunnableC2269b1(C2366w1 c2366w1, Context context, String str) {
        this.f5942b = 2;
        this.f5943c = context;
        this.f5944d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5942b) {
            case 0:
                AbstractC3656k.m5878x(this.f5943c, this.f5944d);
                break;
            case 1:
                AbstractC3656k.m5878x(this.f5943c, this.f5944d);
                break;
            default:
                String str = this.f5944d;
                Context context = this.f5943c;
                DevicePolicyManager devicePolicyManagerM3738u = C2366w1.m3738u(context);
                if (devicePolicyManagerM3738u != null) {
                    try {
                        devicePolicyManagerM3738u.setApplicationHidden(new ComponentName(context, (Class<?>) DPups.class), str, false);
                    } catch (Exception unused) {
                        return;
                    }
                    break;
                }
                break;
        }
    }

    public /* synthetic */ RunnableC2269b1(Context context, String str, int i10) {
        this.f5942b = i10;
        this.f5943c = context;
        this.f5944d = str;
    }
}

package p084h7;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: h7.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1680h extends BroadcastReceiver {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f4305a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C1683k f4306b;

    public /* synthetic */ C1680h(C1683k c1683k, int i10) {
        this.f4305a = i10;
        this.f4306b = c1683k;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int i10 = this.f4305a;
        C1683k c1683k = this.f4306b;
        switch (i10) {
            case 0:
                Log.d(AbstractC1387m.m2421h(new byte[]{-7, 48, -117, -48, 112, 122, -89, 21, -64, 48, -116, -33, 99, 122, -114, 41, -38, 54, -118, -47, 118}, new byte[]{-76, 95, -2, -66, 4, 31, -61, 70}), AbstractC1387m.m2421h(new byte[]{-38, -110, 92, -33, 86, 7, -109, -112, -53, -108, 92, -52, 83, 3, -105, -61, -35, -36, 19}, new byte[]{-87, -26, 51, -83, 55, 96, -10, -80}) + intent.getAction() + " " + intent.getDataString());
                c1683k.m2796f(context, intent);
                break;
            default:
                Log.d(AbstractC1387m.m2421h(new byte[]{99, 15, 92, -113, 68, 41, -88, -86, 90, 15, 91, ByteCompanionObject.MIN_VALUE, 87, 41, -127, -106, 64, 9, 93, -114, 66}, new byte[]{46, 96, 41, -31, 48, 76, -52, -7}), AbstractC1387m.m2421h(new byte[]{123, 42, 12, -45, 44, 88, -2, -103, 106, 58, 15, ByteCompanionObject.MIN_VALUE, 58, 16, -79}, new byte[]{14, 89, 110, -13, 78, 42, -111, -8}) + intent.getAction());
                c1683k.m2796f(context, intent);
                break;
        }
    }
}

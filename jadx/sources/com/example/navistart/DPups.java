package com.example.navistart;

import android.app.admin.DeviceAdminReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import p047e0.AbstractC1387m;
import p078h0.C1652b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class DPups extends DeviceAdminReceiver {
    @Override // android.app.admin.DeviceAdminReceiver
    public final void onDisabled(Context context, Intent intent) {
        super.onDisabled(context, intent);
        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{57, 106, 31, 46, -111}, new byte[]{125, 58, 106, 94, -30, -121, 20, -78}), false);
        Log.d(AbstractC1387m.m2421h(new byte[]{-91, -49, -59, -82, -69, 7, 121, 38, -116, -61, -35}, new byte[]{-31, -86, -77, -57, -40, 98, 56, 66}), AbstractC1387m.m2421h(new byte[]{-73, 11, -37, -121, 9, 18, 33, 49, -124, 0, -56, -100, 74, 51, 104, 13, -110, 12, -63, -117, 14}, new byte[]{-13, 110, -83, -18, 106, 119, 1, 126}));
    }

    @Override // android.app.admin.DeviceAdminReceiver
    public final void onEnabled(Context context, Intent intent) {
        super.onEnabled(context, intent);
        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{72, 7, 88, -101, 26}, new byte[]{12, 87, 45, -21, 105, -58, -15, 79}), true);
        Log.e(AbstractC1387m.m2421h(new byte[]{-115, 87, -30, 89, 36, -58, 20, 101, -92, 91, -6}, new byte[]{-55, 50, -108, 48, 71, -93, 85, 1}), AbstractC1387m.m2421h(new byte[]{-86, 19, 67, -117, -15, -99, -79, -67, -103, 24, 80, -112, -78, -67, -1, -109, -116, 26, 80, -122}, new byte[]{-18, 118, 53, -30, -110, -8, -111, -14}));
    }
}

package e0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p2 extends BroadcastReceiver {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra(m.h(new byte[]{23, 26, -52, -81, -116}, new byte[]{100, 110, -83, -37, -23, 99, 82, 102}));
        if (stringExtra == null) {
            return;
        }
        int iHashCode = stringExtra.hashCode();
        if (iHashCode == -830742798) {
            if (stringExtra.equals(m.h(new byte[]{104, 38, 123, 0, 94, -93, -28}, new byte[]{39, 96, Base64.padSymbol, 72, 17, -20, -81, -34}))) {
                h0.b.v(m.h(new byte[]{40, -40, 80, 118, 92, 32, -57, -59, 79, 79, -106, -18, -93, -65, 59, 53, -44, 78, -88, -18, -95, -65, 50, 52, -25, -73}, new byte[]{103, -98, 22, 62, 19, 111, -116, -27}));
            }
        } else if (iHashCode == 2242516) {
            if (stringExtra.equals(m.h(new byte[]{77, 45, -92, 51}, new byte[]{4, 105, -24, 118, -68, 44, -80, 69}))) {
                h0.b.v(m.h(new byte[]{18, 49, 68, -84, -35, -29, 120, 116, -117, -57, -40, 87, 45, 122, 121, 75, -117, -63, -40, 84, 45, 117, ByteCompanionObject.MIN_VALUE}, new byte[]{91, 117, 8, -23, -3, -53, -87, -11}));
            }
        } else if (iHashCode == 1925008274 && stringExtra.equals(m.h(new byte[]{-76, 120, 121, 118, -81, 59, -112}, new byte[]{-26, 49, 55, 49, -26, 117, -41, 16}))) {
            h0.b.v(m.h(new byte[]{99, -5, -17, 87, -74, -59, 69, 65, 25, 98, 19, -63, 122, 91, -68, -79, -123, 99, 46, -63, 118, 91, -70, -79, -120, -101, -101, 48}, new byte[]{49, -78, -95, 16, -1, -117, 2, 97}) + intent.getStringExtra(m.h(new byte[]{48, -42, 39, 78, 34, -15, -81, -3, 6, -42, 49, 76, 45, -3, -77}, new byte[]{89, -72, 68, 33, 79, -104, -63, -102})));
        }
    }
}

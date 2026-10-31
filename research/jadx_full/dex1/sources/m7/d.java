package m7;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build$VERSION;
import android.util.Log;
import android.view.View;
import android.view.View$OnClickListener;
import com.woha.wifim.MainWifiManadger;
import e0.m;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3681b;
    public final /* synthetic */ MainWifiManadger c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(MainWifiManadger mainWifiManadger, int i9) {
        this.f3681b = i9;
        this.c = mainWifiManadger;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:41:0x029f  */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        boolean zB;
        switch (this.f3681b) {
            case 0:
                String str = MainWifiManadger.f1632v;
                k0.c cVar = new k0.c(this.c);
                Context context = cVar.f3155a;
                String str2 = k0.c.f3154b;
                Log.d(str2, m.h(new byte[]{46, 11, ByteCompanionObject.MAX_VALUE, 29, -5, 31, -81, 63, 46, 46, -113, 115, -97, 119, -64, 111, ByteCompanionObject.MAX_VALUE, 69, 45, 114, -88, 119, -63, 110, 67, 68, 17, 115, -104, 119, -64, -98, -87, -3, -23, -54, 11, 119, -62, 110, 75, 68, 18, 115, -98, 119, -54, 110, 72, 68, 26, 114, -85, 119, -50, -112, -48, -70}, new byte[]{-2, -108, -81, -93, 43, -89, 126, -66}));
                android.support.v4.media.h[] hVarArr = {new android.support.v4.media.h((Object) m.h(new byte[]{-90, 28, -19, 80, -84, 42, 0, 124, -68, 0, -10, 80, -83, 33, 20, 112, -86, 23, -27}, new byte[]{-59, 115, ByteCompanionObject.MIN_VALUE, 126, -56, 79, 115, 29}), (Object) m.h(new byte[]{-88, 39, -36, 78, -117, 16, -92, 115, -78, 59, -57, 78, -118, 27, -80, ByteCompanionObject.MAX_VALUE, -92, 44, -44, 78, -102, 28, -7, 69, -94, 46, -40, 33, -116, 1, -66, 100, -94, 60, -56}, new byte[]{-53, 72, -79, 96, -17, 117, -41, 18}), false, 26), new android.support.v4.media.h((Object) m.h(new byte[]{-20, 70, 10, 17, 66, -3, -115, -104, -32, 64, 3, 17, 80, -10, -99, -98, -26, 71, 0, 76}, new byte[]{-113, 41, 103, 63, 35, -109, -23, -22}), (Object) m.h(new byte[]{16, -64, -46, -122, -38, -57, 13, -32, 28, -58, -37, -122, -56, -52, 29, -26, 26, -63, -40, -37, -107, -34, 0, -12, 26, -127, -24, -63, -35, -64, 58, -9, 7, -37, -42, -58, -36, -38}, new byte[]{115, -81, -65, -88, -69, -87, 105, -110}), false, 26), new android.support.v4.media.h((Object) m.h(new byte[]{-97, -3, -66, 94, 43, 118, -66, -43, -109, -5, -73, 94, 57, 125, -82, -45, -107, -4, -76, 3}, new byte[]{-4, -110, -45, 112, 74, 24, -38, -89}), (Object) m.h(new byte[]{4, -40, 11, -70, 80, 16, -87, -122, 8, -34, 2, -70, 66, 27, -71, ByteCompanionObject.MIN_VALUE, 14, -39, 1, -25, 31, 45, -88, ByteCompanionObject.MIN_VALUE, 19, -34, 8, -13, 66, 90, -102, -99, 1, -34, 53, -15, 69, 10, -92, -102, 0, -60, 39, -9, 69, 23, -69, -99, 19, -50}, new byte[]{103, -73, 102, -108, 49, 126, -51, -12}), false, 26), new android.support.v4.media.h((Object) m.h(new byte[]{-10, 115, 53, 44, 48, -10, -12, Base64.padSymbol, -6, 117, 60, 44, 34, -3, -28, 59, -4, 114, 63, 113}, new byte[]{-107, 28, 88, 2, 81, -104, -112, 79}), (Object) m.h(new byte[]{22, -60, -47, 120, 37, 32, 85, 7, 26, -62, -40, 120, 55, 43, 69, 1, 28, -59, -37, 37, 106, 57, 88, 19, 28, -123, -21, 63, 34, 39, 98, 16, 1, -33, -43, 56, 35, Base64.padSymbol, 112, 22, 1, -62, -54, 63, 48, 55}, new byte[]{117, -85, -68, 86, 68, 78, 49, 117}), false, 26), new android.support.v4.media.h((Object) m.h(new byte[]{22, -92, 42, 23, -16, 122, 59, 13, 26, -94, 35, 23, -30, 113, 43, 11, 28, -91, 32, 74}, new byte[]{117, -53, 71, 57, -111, 20, 95, ByteCompanionObject.MAX_VALUE}), (Object) m.h(new byte[]{1, -78, ByteCompanionObject.MIN_VALUE, -30, 119, 80, 91, -68, 13, -76, -119, -30, 101, 91, 75, -70, 11, -77, -118, -65, 56, 109, 90, -70, 22, -76, -125, -85, 101, 26, 104, -89, 4, -76, -66, -87, 98, 74, 86, -96, 5, -82, -33, -115, 117, 74, 86, -72, 11, -87, -108}, new byte[]{98, -35, -19, -52, 22, 62, 63, -50}), false, 26), new android.support.v4.media.h((Object) m.h(new byte[]{-88, 46, -53, -79, -118, -10, 33, 87, -92, 40, -62, -79, -104, -3, 49, 81, -94, 47, -63, -20}, new byte[]{-53, 65, -90, -97, -21, -104, 69, 37}), (Object) m.h(new byte[]{123, -72, -93, 59, -20, -37, 85, 6, 119, -66, -86, 59, -2, -48, 69, 0, 113, -71, -87, 102, -93, -30, 88, 6, 125, -69, -85, 102, -2, -26, 84, 0, 108, -66, -96, 114, -2}, new byte[]{24, -41, -50, 21, -115, -75, 49, 116}), false, 26), new android.support.v4.media.h((Object) m.h(new byte[]{-30, -109, -14, -102, 119, 70, -43, -47, -18, -107, -5, -102, 101, 77, -59, -41, -24, -110, -8, -57}, new byte[]{-127, -4, -97, -76, 22, 40, -79, -93}), (Object) m.h(new byte[]{-9, 59, 77, 83, -78, -38, 105, -56, -5, Base64.padSymbol, 68, 83, -96, -47, 121, -50, -3, 58, 71, 14, -3, -25, 104, -50, -32, Base64.padSymbol, 78, 26, -96, -112, 90, -45, -26, 49, 76, 24, -96, -57, 94, -33, -32, 32, 73, 19, -76, -57, 76, -39, -32, Base64.padSymbol, 86, 20, -89, -51}, new byte[]{-108, 84, 32, 125, -45, -76, 13, -70}), false, 26)};
                for (int i9 = 0; i9 < 7; i9++) {
                    android.support.v4.media.h hVar = hVarArr[i9];
                    String str3 = (String) hVar.c;
                    String str4 = (String) hVar.d;
                    if (cVar.c(str3, str4)) {
                        Log.d(str2, m.h(new byte[]{-21, -52, 7, -58, -14, -44, 21, 111, -22, -25, 6, -6, -14, -43, -27, 10, -116, -65, 102, -105, -99, -70, 70, 11, -78, -65, 99, -105, -97, 81, -27}, new byte[]{59, 111, -42, 71, 34, 107, -59, -38}) + ((String) hVar.c) + m.h(new byte[]{20}, new byte[]{59, -59, 12, 3, 15, -42, 66, -50}) + str4);
                    }
                    break;
                }
                Log.d(str2, m.h(new byte[]{-124, 100, -42, 119, 40, -68, -56, 100, -124, 125, -41, 76, 40, -79, -56, 101, -124, 120, -41, 67, 40, -68, 57, -75, Base64.padSymbol, -125, 111, -24, -71, 106, 109, -117, 34, -84, 114, -79, -40, -39, -92, 50, -31, -27, -42, 117, 40, -71, -55, 91, -124, 113, -42, 125, 40, -76, -56, 105, 120, -27, -42, 119, 41, -119, -55, 92, -124, 116, -41, 75, 40, -68, -55, 94, 116, 21, -72, 24, 73, -40, -112, 50, -20, 21, -77, -24, 40, -75, -55, 87, -123, 71, -42, 118, 40, -67, -56, 105, 122, -21, 40}, new byte[]{84, -59, 6, -56, -8, 9, 25, -30}));
                if (!cVar.b()) {
                    String str5 = k0.c.f3154b;
                    Log.d(str5, m.h(new byte[]{72, -97, -23, 71, 106, -18, -30, -127, 73, -125, -24, 114, 106, -20, 18, -32, 39, -47, -72, 22, 53, ByteCompanionObject.MIN_VALUE, -114, -32, 38, -48, -115, -25, 106, -30, -30, -118, 72, -69, -23, 73, 107, -41, -30, -123, 72, -67, -24, ByteCompanionObject.MAX_VALUE, 106, -27, 18, 103, -15, 70, 81, -23, -108, 126}, new byte[]{-104, 0, 56, -57, -70, 80, 50, 48}));
                    try {
                        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(m.h(new byte[]{102, -105, 28, 95}, new byte[]{17, -2, 122, 54, -123, 110, 64, 126}));
                        if (wifiManager == null) {
                            zB = false;
                        } else {
                            if (wifiManager.isWifiEnabled()) {
                                Log.d(str5, m.h(new byte[]{46, 120, 91, -110, 119, -109, 39, 116, -49, -63, -88, -37, -121, -16, 116, 30, -87, -86, -52, 117, -122, -59, 116, 17, -87, -84}, new byte[]{121, 17, 29, -5, 87, 66, -92, -92}));
                                y5.k.x(context, m.h(new byte[]{19, 74, -60, 89, -103, 5, -7, 108, -14, -13, 55, 16, 105, 102, -86, 6, -108, -104, 83, -66, 104, 83, -86, 9, -108, -98}, new byte[]{68, 35, -126, 48, -71, -44, 122, -68}));
                            } else if (Build$VERSION.SDK_INT >= 29) {
                                zB = cVar.b();
                            } else {
                                boolean wifiEnabled = wifiManager.setWifiEnabled(true);
                                Log.d(str5, m.h(new byte[]{-104, 24, 67, -94, -13, 55, 100, -115, 79, -96, -118, 27, 111, 55, 101, -116, 122, 81, -43, 121, 3, 93, 11, -25, 30, -1, -44, 76, 3, 82, 11, -31, 31, -55, -43, 126, -23, -57}, new byte[]{-49, 113, 5, -53, -45, -25, -37, 92}).concat(wifiEnabled ? m.h(new byte[]{-75, -36, 66, 96, -104, -61, -110, -38, -75, -41, 67, 92, -104, -62}, new byte[]{100, 95, -109, -31, 72, 124, 66, 111}) : m.h(new byte[]{-67, 59, 74, 74, 30, -84, -9, -24, -67, 63, 75, 114}, new byte[]{109, -123, -101, -62, -50, 20, 39, 89})));
                                if (wifiEnabled) {
                                    y5.k.x(context, m.h(new byte[]{63, -35, 32, 70, 6, 121, 1, 114, -46, 100, -35, -2, -88, 120, 52, 114, -35, 100, -37}, new byte[]{104, -76, 102, 47, 38, -87, -77, -94}));
                                } else {
                                    zB = false;
                                }
                            }
                            zB = true;
                        }
                    } catch (Exception e) {
                        Log.d(str5, m.h(new byte[]{91, 76, 102, -11, -14, 12, 107, -97, 91, 104, 103, -51, 2, 100, 4, -1, 11, 3, 56, -83, -98, 100, 5, -2, 56, 2, 9, 93, -14, 6, 107, -108, 91, 105, 102, -13, -13, 51, 107, -101, 91, 111, 103, -59, -13, 59, -101, 121, -30, -108, -34, 71, 2}, new byte[]{-117, -46, -73, 125, 34, -76, -69, 46}) + e.getMessage());
                    }
                    if (!zB) {
                        Log.e(str2, m.h(new byte[]{24, 89, 36, 68, -36, -90, 100, -18, 124, 20, 68, 33, 71, -89, 89, -17, 73, 21, 120, -47, 44, -55, 54, -68, 24, 126, 37, 113, 45, -4, 54, -68, 25, 72, -44, 33, 65, -89, 87, -17, 73, 21, 118, 32, 124, -89, 89, -18, 113, 20, 78, 33, 68, 87, -80, 87, -114, -83}, new byte[]{-56, -60, -12, -15, -4, 119, -25, 62}));
                        y5.k.x(context, m.h(new byte[]{116, -113, 13, 87, -106, 114, -91, -62, -106, 54, -10, -18, 3, 114, -83, -62, -107, 54, -2, -17, 54, -126, -55, -81, -13, 83, 107, -18, 11, 114, -87, -62, -102, 54, -1, -18, 3, 114, -92}, new byte[]{35, -26, 75, 62, -74, -94, 25, 18}));
                        break;
                    }
                }
                break;
            case 1:
                String str6 = MainWifiManadger.f1632v;
                this.c.onBackPressed();
                break;
            case 2:
                String str7 = MainWifiManadger.f1632v;
                this.c.B();
                break;
            default:
                String str8 = MainWifiManadger.f1632v;
                this.c.v();
                break;
        }
    }
}

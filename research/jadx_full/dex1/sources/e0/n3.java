package e0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Base64;
import com.example.navistart.cores.HUDMassageObj;
import com.example.navistart.cores.HUDMassageObj$HudSenderType;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n3 extends BroadcastReceiver {
    public static final String d = m.h(new byte[]{78, 109, 87, 30, -13, -3, -108, -102, 99, 79, 85, 24, -21, -5, -126, -113, ByteCompanionObject.MAX_VALUE, 45, 57, 124, -123, -109, -23, -18, 98, 66, 80, 18, -18, -16, -122, -104, 115, 76, 74, 8, -12, -100, -28, -120, 116, 79, 77, 16, -1, -17, -119, -113, 96, 64, 85, 30, -22, -16, -108, -99, 101, 45, 53, 15, -8, -97, -28, -97, 15, 77, 91, 2, -31, -1, -126, -108}, new byte[]{42, 11, 31, 86, -90, -71, -63, -51});
    public static final v e = w.b(300, m.h(new byte[]{99, -64, 4, -6, -83, -19, 78, -39, 72}, new byte[]{58, -110, 97, -103, -56, -124, 56, -68}));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final HUDMassageObj f1907f = new HUDMassageObj();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f1908g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f1909h = 20;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Boolean f1911b;
    public Boolean c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(Context context) {
        e.execute(new androidx.profileinstaller.c(context, 6));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean b() {
        try {
            if (c().booleanValue()) {
                long jLongValue = h0.b.a().j().l(Long.MAX_VALUE).longValue();
                u0.a aVarO = h0.b.o();
                u0.a aVarO2 = h0.b.o();
                byte[] bArr = m.f1892f;
                String[] strArr = p3.f1924a;
                String strLoadString = aVarO2.loadString(new String(bArr), new String(m.f1893g));
                boolean z8 = true;
                if (jLongValue >= Long.parseLong(new String(Base64.decode(aVarO.loadString(strLoadString, m.h(new byte[]{-50}, new byte[]{-2, -40, -22, 46, -44, 8, -86, -70})), 0)))) {
                    z8 = false;
                }
                return Boolean.valueOf(z8);
            }
        } catch (Exception unused) {
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean c() {
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        com.google.protobuf.q.s(bArr, aVarO, "", sb);
        com.google.protobuf.q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        return Boolean.valueOf(com.google.protobuf.q.g(sb, x1.f1989q).equals(h0.b.o().loadString(new String(m.f1892f), "")));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int d(String str, String str2) {
        return str.contains(m.h(new byte[]{ByteCompanionObject.MAX_VALUE, 27, 1, 125}, new byte[]{-81, -95, -47, -63, 68, -61, -64, -48})) | str.contains(m.h(new byte[]{-30, -110}, new byte[]{-119, -1, -44, -6, 43, 53, -54, 20})) ? Double.valueOf(Double.valueOf(String.valueOf(str2).replace(m.h(new byte[]{104}, new byte[]{68, -45, ByteCompanionObject.MAX_VALUE, 64, -87, 17, -19, 115}), m.h(new byte[]{-79}, new byte[]{-97, -34, -61, 87, 58, 51, -78, -84}))).doubleValue() * 1000.0d).intValue() : Double.valueOf(String.valueOf(str2).replace(m.h(new byte[]{-13}, new byte[]{-33, 115, -9, 101, -92, 76, -30, kotlin.io.encoding.Base64.padSymbol}), m.h(new byte[]{-9}, new byte[]{-39, -103, -73, 28, 112, -95, -50, 1}))).intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:15:0x006f  */
    /* JADX WARN: Code duplicated, block: B:33:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:55:0x01a7  */
    public static void e(String str, String str2, String str3, String str4, String str5) {
        boolean zContains = m.h(new byte[]{-45, -94, -75, -57}, new byte[]{-67, -41, -39, -85, -119, -122, -59, -3}).contains(str);
        HUDMassageObj hUDMassageObj = f1907f;
        if (!zContains) {
            int i9 = 3;
            switch (str.hashCode()) {
                case -2133517805:
                    if (!str.equals(m.h(new byte[]{-29, 110, -19, 20, 69, -57, 27, 27, -14, 96, -36, 6, 73, -47, 6, 55, -24}, new byte[]{ByteCompanionObject.MIN_VALUE, 1, -125, 96, 32, -65, 111, 68}))) {
                        i9 = -1;
                    } else {
                        i9 = 15;
                    }
                    break;
                case -1795333313:
                    if (!str.equals(m.h(new byte[]{-58, 0, -80, 95, -114, 28, -90, -59, -41, 14, -127, 95, -118, 15, -73, -59, -55, 10, -72, 95}, new byte[]{-91, 111, -34, 43, -21, 100, -46, -102}))) {
                        i9 = -1;
                    } else {
                        i9 = 4;
                    }
                    break;
                case -1571012748:
                    if (!str.equals(m.h(new byte[]{-12, 65, -52, -71, -9, -21, -97, 78, -27, 79, -3, -81, -3, -14, -103, 117, -15, 75, -48, -65, -21}, new byte[]{-105, 46, -94, -51, -110, -109, -21, 17}))) {
                        i9 = -1;
                    } else {
                        i9 = 49;
                    }
                    break;
                case -1538673339:
                    if (!str.equals(m.h(new byte[]{-109, -23, -94, -22, -87, 93, 96, 22, -126, -25, -109, -8, -93, 87, 99, 40, -126, -30}, new byte[]{-16, -122, -52, -98, -52, 37, 20, 73}))) {
                        i9 = -1;
                    } else {
                        i9 = 9;
                    }
                    break;
                case -1464231378:
                    if (!str.equals(m.h(new byte[]{-57, -81, -122, -45, 107, -21, 59, 76, -42, -95, -73, -49, 111, -31, 43, 76, -48, -75, -102, -55, 81, -31, 38, 116, -52, -76}, new byte[]{-92, -64, -24, -89, 14, -109, 79, 19}))) {
                        i9 = -1;
                    } else {
                        i9 = 7;
                    }
                    break;
                case -1377438923:
                    if (!str.equals(m.h(new byte[]{6, -30, 58, -108, -92, 109, -105, 93, 23, -20, 11, -119, -81, 74, ByteCompanionObject.MIN_VALUE, 107, 23, -18, 33, -116, -96, 103, -68, 111, 10, -5, 49, -115, -92, 123, -105}, new byte[]{101, -115, 84, -32, -63, 21, -29, 2}))) {
                        i9 = -1;
                    } else {
                        i9 = 24;
                    }
                    break;
                case -1057058274:
                    if (!str.equals(m.h(new byte[]{-93, -89, 50, -82, 106, 103, 5, -6, -78, -87, 3, -75, 122, 107, 46, -58, -87, -70, 63, -81, 99, 126, 3, -6, -83, -89, 42, -65, 98, 122, 31, -47}, new byte[]{-64, -56, 92, -38, 15, 31, 113, -91}))) {
                        i9 = -1;
                    } else {
                        i9 = 55;
                    }
                    break;
                case -368958200:
                    if (!str.equals(m.h(new byte[]{36, -15, 43, -41, -61, 90, -101, -20, 53, -1, 26, -58, -34, 75, -101, -20, 43, -5, 35, -41}, new byte[]{71, -98, 69, -93, -90, 34, -17, -77}))) {
                        i9 = -1;
                    } else {
                        i9 = 4;
                    }
                    break;
                case -47415883:
                    if (!str.equals(m.h(new byte[]{-108, 51, -101, 60, 14, -90, -43, 41, -123, kotlin.io.encoding.Base64.padSymbol, -86, 32, 10, -84, -59, 41, -125, 41, -121, 38, 52, -78, -60, 16, -125}, new byte[]{-9, 92, -11, 72, 107, -34, -95, 118}))) {
                        i9 = -1;
                    } else {
                        i9 = 6;
                    }
                    break;
                case 70319:
                    if (!str.equals(m.h(new byte[]{-47, 22, -40}, new byte[]{-106, 87, -111, 91, 44, 89, 49, 75}))) {
                        i9 = -1;
                    } else {
                        i9 = 14;
                    }
                    break;
                case 184903140:
                    if (!str.equals(m.h(new byte[]{-113, 29, -87, -104, 123, 35, 10, -33, -98, 19, -104, -104, ByteCompanionObject.MAX_VALUE, 48, 27, -33, -98, 27, -96, -124, 106}, new byte[]{-20, 114, -57, -20, 30, 91, 126, ByteCompanionObject.MIN_VALUE}))) {
                        i9 = -1;
                    } else {
                        i9 = 5;
                    }
                    break;
                case 876355849:
                    if (!str.equals(m.h(new byte[]{-115, -64, 36, -22, 121, 54, 17, -72, -100, -50, 21, -22, 105, 60, 11, -72, -126, -54, 44, -22}, new byte[]{-18, -81, 74, -98, 28, 78, 101, -25}))) {
                        i9 = -1;
                    } else {
                        i9 = 2;
                    }
                    break;
                case 1402888538:
                    if (!str.equals(m.h(new byte[]{-71, 49, -32, -30, 2, 118, 60, 3, -88, 63, -47, -30, 18, 124, 38, 3, -88, 55, -23, -2, 19}, new byte[]{-38, 94, -114, -106, 103, 14, 72, 92}))) {
                        i9 = -1;
                    }
                    break;
                case 1452858683:
                    if (!str.equals(m.h(new byte[]{43, 100, 60, -36, 6, -4, 83, 102, 58, 106, 13, -51, 27, -19, 83, 102, 58, 98, 53, -64, 23}, new byte[]{72, 11, 82, -88, 99, -124, 39, 57}))) {
                        i9 = -1;
                    } else {
                        i9 = 5;
                    }
                    break;
                case 1507842118:
                    if (!str.equals(m.h(new byte[]{-69, 108, -69, 123, 60, 36, -53, 47, -86, 98, -118, 123, 44, 46, -47, 47, -70, 98, -74, 100, 6, 46, -42, 23, -80, 119}, new byte[]{-40, 3, -43, 15, 89, 92, -65, 112}))) {
                        i9 = -1;
                    } else {
                        i9 = 19;
                    }
                    break;
                case 1572478109:
                    if (!str.equals(m.h(new byte[]{94, 126, -71, -100, -22, 118, -98, -76, 79, 112, -120, -100, -6, 124, -124, -76, 95, 112, -76, -125, -48, 98, -113, -115, 73}, new byte[]{kotlin.io.encoding.Base64.padSymbol, 17, -41, -24, -113, 14, -22, -21}))) {
                        i9 = -1;
                    } else {
                        i9 = 8;
                    }
                    break;
                default:
                    i9 = -1;
                    break;
            }
            hUDMassageObj.v_mTurnType = i9;
        }
        if (!m.h(new byte[]{-100, 85, 4, -123}, new byte[]{-14, 32, 104, -23, 28, 45, 57, -109}).equals(str2) && !m.h(new byte[]{-46, 34, 96, -80}, new byte[]{-68, 87, 12, -36, -15, 15, -11, -55}).equals(str3)) {
            hUDMassageObj.v_mTurnDis = d(str3, str2);
        }
        if (m.h(new byte[]{2, -119, 108, -106}, new byte[]{108, -4, 0, -6, -24, 114, -116, 21}).equals(str4)) {
            hUDMassageObj.v_mNextRoad = " ";
        } else {
            hUDMassageObj.v_mNextRoad = str4;
        }
        if (m.h(new byte[]{-49, 16, -89, -91}, new byte[]{-95, 101, -53, -55, 28, 7, -94, -104}).equals(str5)) {
            return;
        }
        String[] strArrSplit = str5.split(m.h(new byte[]{-63, 17, 44, -119}, new byte[]{-102, 77, 95, -44, -10, -71, 91, ByteCompanionObject.MIN_VALUE}));
        hUDMassageObj.v_mRemainDis = d(strArrSplit[1], strArrSplit[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(String str) {
        if (m.h(new byte[]{124, 19, 53, 119}, new byte[]{18, 102, 89, 27, -57, -90, -18, 52}).contains(str)) {
            return;
        }
        m.h(new byte[]{-79, -39, 115, 23, -89, -52, 95, 118, -80, -61, 115, 23}, new byte[]{97, 67, -93, -89, 119, 112, -113, -61});
        String[] strArrSplit = str.split(m.h(new byte[]{90, -14, 55, -59}, new byte[]{1, -82, 68, -104, 104, -121, 111, 39}));
        d(strArrSplit[1], strArrSplit[0]);
        this.f1910a = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g() {
        boolean zBooleanValue = this.c.booleanValue();
        HUDMassageObj hUDMassageObj = f1907f;
        if (zBooleanValue) {
            hUDMassageObj.v_mNextRoad = f1908g + m.h(new byte[]{-43, -127, 3, 18, 0, -116, -99}, new byte[]{-66, -20, 44, 122, 32, -95, -67, 51}) + hUDMassageObj.v_mNextRoad;
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(f1908g);
            hUDMassageObj.v_mNextRoad = com.google.protobuf.q.i(new byte[]{-55, 106, -47, 31}, new byte[]{-94, 7, -2, 119, -127, 30, -112, -124}, sb);
        }
        hUDMassageObj.hudSenderType = HUDMassageObj$HudSenderType.NAVI;
        try {
            h0.b.a();
            h0.b.i().e(hUDMassageObj);
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (b().booleanValue()) {
            Context applicationContext = context.getApplicationContext();
            Intent intent2 = new Intent(intent);
            String action = intent2.getAction();
            if (action == null) {
                return;
            }
            int i9 = 0;
            this.f1911b = Boolean.valueOf(h0.b.o().loadBoolean(m.h(new byte[]{-38, 74, -40, -89, -85, -70, -126, 31, -15, 91, -36, -87, -104, -70, -121, 19, -31, 116, -40}, new byte[]{-125, 24, -67, -60, -50, -45, -12, 122}), false));
            this.c = Boolean.valueOf(h0.b.o().loadBoolean(m.h(new byte[]{92, -66, 36, -104, -24, 77, 58, -94, 82, -69, 44}, new byte[]{48, -41, 73, -57, -98, 36, 73, -53}), false));
            h0.b.o().loadBoolean(m.h(new byte[]{-2, 14, -119, -67, 33}, new byte[]{-82, 124, -26, -18, 118, -47, 60, -65}), false);
            h0.b.a();
            boolean zEquals = action.equals(m.h(new byte[]{-61, -8, 46, -93, 111, -58, 80, 2, -1, -92, 109, -91, 116, -54, 65, 17}, new byte[]{-102, -42, 67, -62, 1, -93, 37, 116}));
            HUDMassageObj hUDMassageObj = f1907f;
            if (zEquals) {
                try {
                    Bundle extras = intent2.getExtras();
                    if (extras != null) {
                        if (!m.h(new byte[]{-125, -90, -94, 15}, new byte[]{-19, -45, -50, 99, 91, -76, -86, 123}).contains(String.valueOf(extras.getString(m.h(new byte[]{-82, -30, 46, 59, 55, 36, -116, -36, -76, -26}, new byte[]{-35, -110, 75, 94, 83, 72, -27, -79}))))) {
                            String strValueOf = String.valueOf(extras.getString(m.h(new byte[]{33, 70, -107, 116, 21, 117, -119, -4, 59, 66}, new byte[]{82, 54, -16, 17, 113, 25, -32, -111})));
                            f1908g = strValueOf;
                            try {
                                i9 = Integer.parseInt(strValueOf);
                            } catch (NumberFormatException unused) {
                            }
                            hUDMassageObj.setspeedlimit(i9);
                        }
                        if (m.h(new byte[]{-2, -76, 64}, new byte[]{-71, -15, 20, 65, -32, -33, 94, 113}).equals(extras.getString(m.h(new byte[]{3, -54, -67, 46, 38, 67, -8, 16, 58, -26, -74, 54, 58, 91}, new byte[]{83, -97, -23, 113, ByteCompanionObject.MAX_VALUE, 15, -105, 102})))) {
                            a(applicationContext);
                        }
                        if (this.f1910a && b().booleanValue()) {
                            e(String.valueOf(extras.getString(m.h(new byte[]{-88, 94, -57, -35, -81, -94, -89, -17, -109, 95}, new byte[]{-38, 59, -76, -78, -38, -48, -60, -118}))), String.valueOf(extras.getString(m.h(new byte[]{-95, -4, 26, 35, 110, 98, -122, 13}, new byte[]{-59, -107, 105, 87, 15, 12, -27, 104}))), String.valueOf(extras.getString(m.h(new byte[]{-62, -16, 37, 47}, new byte[]{-73, -98, 76, 91, -93, -9, 22, -57}))), String.valueOf(extras.getString(m.h(new byte[]{-120, -95, 89, 55, -39, 112, 33, -58, -88, -91, 76, 38}, new byte[]{-26, -60, 33, 67, -117, 31, 64, -94}))), String.valueOf(extras.getString(m.h(new byte[]{53, 40, -96, 57, 3, 72, -112, 44, kotlin.io.encoding.Base64.padSymbol, 36, -75, 57}, new byte[]{81, 65, -45, 77, 98, 38, -13, 73}))));
                        } else {
                            this.f1910a = true;
                        }
                        if (this.f1911b.booleanValue() && b().booleanValue()) {
                            f(String.valueOf(extras.getString(m.h(new byte[]{17, -28, 80, 75, 28, 84, -98, -60, 13, -32, 76, 86, 12, 65, -110, -49, 28, -28}, new byte[]{ByteCompanionObject.MAX_VALUE, -127, 40, 63, ByteCompanionObject.MAX_VALUE, 53, -13, -95}))));
                        }
                        if (b().booleanValue()) {
                            g();
                        }
                        if (b().booleanValue()) {
                            int i10 = f1909h;
                            if (i10 < 0) {
                                a(applicationContext);
                                f1909h = 20;
                            } else {
                                f1909h = i10 - 1;
                            }
                        }
                    }
                } catch (Exception unused2) {
                }
            }
            if (action.equals(m.h(new byte[]{-89, -15, 0, 45, 34, kotlin.io.encoding.Base64.padSymbol, -89, 44, -101, -83, 67, 58, 37, 43}, new byte[]{-2, -33, 109, 76, 76, 88, -46, 90}))) {
                try {
                    Bundle extras2 = intent2.getExtras();
                    if (extras2 == null || m.h(new byte[]{-91, -101, -121, 46}, new byte[]{-53, -18, -21, 66, 59, 59, 21, -106}).contains(String.valueOf(extras2.getBoolean(m.h(new byte[]{-78, -74, 26, -3, 3, 5, -47}, new byte[]{-28, -33, 105, -108, 97, 105, -76, -15}))))) {
                        return;
                    }
                    boolean z8 = extras2.getBoolean(m.h(new byte[]{-75, -100, 93, kotlin.io.encoding.Base64.padSymbol, 75, -98, -20}, new byte[]{-29, -11, 46, 84, 41, -14, -119, ByteCompanionObject.MIN_VALUE}));
                    hUDMassageObj.NaviOn = Boolean.valueOf(z8);
                    if (z8) {
                        return;
                    }
                    g();
                } catch (Exception unused3) {
                }
            }
        }
    }
}

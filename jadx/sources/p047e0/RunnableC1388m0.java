package p047e0;

import com.example.navistart.MainActivity;
import com.google.protobuf.AbstractC1178q;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p078h0.C1652b;

/* JADX INFO: renamed from: e0.m0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1388m0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3324b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ MainActivity f3325c;

    public /* synthetic */ RunnableC1388m0(MainActivity mainActivity, int i10) {
        this.f3324b = i10;
        this.f3325c = mainActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f3324b;
        MainActivity mainActivity = this.f3325c;
        switch (i10) {
            case 0:
                String str = MainActivity.f1288e1;
                new AsyncTaskC1379k1(mainActivity).execute(new Void[0]);
                break;
            case 1:
                String str2 = MainActivity.f1288e1;
                C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-114, 35, 41, -88, -123, 119, -111, 37, -107, 46, 32, -82, -106, 122, -99, 36, -122, 51, 41, -67, -127, 107, -102, 40, -117, 38, 34, -94, -117, 107, -111, 53, -126, 42, 38}, new byte[]{-57, 103, 118, -21, -60, 37, -50, 97}, new StringBuilder(), mainActivity), mainActivity.f1306F.getTemperatureValue());
                break;
            case 2:
                String str3 = MainActivity.f1288e1;
                C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{25, 123, -61, 71, -40, 109, 83, 126, 31, 111, -43, 72, -42, 107, 83, 110, 21, 126, -56, 91, -47, 122, 77, 105, 15, 75, -11, 105, -4, 96, 104, 88, 60, 94, -27, 91, -42, 121, 74}, new byte[]{80, 63, -100, 4, -103, 63, 12, Base64.padSymbol}, new StringBuilder(), mainActivity), mainActivity.f1304E.getTimeValue());
                break;
            case 3:
                String str4 = MainActivity.f1288e1;
                C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-104, -57, -103, 32, -100, -125, -55, 97, -98, -45, -113, 47, -110, -123, -55, 113, -108, -62, -110, 60, -117, -108, -40, 118, -104, -49, -121, 55, -108, -98, -40, 125, -91, -22, -85, 6, -126, -75, -13, 78, -80, -6, -103, 44, -101, -105}, new byte[]{-47, -125, -58, 99, -35, -47, -106, 34}, new StringBuilder(), mainActivity), mainActivity.f1308G.getTimeValue());
                break;
            case 4:
                String str5 = MainActivity.f1288e1;
                C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-53, 85, 79, 118, -105, 49, -55, 109, -42, 84, 85, 103, -119, 52, -34, 123, -57, 93, 79, 125, -109, 34, -62, 97, -10, 120, 125, 80, -119, 7, -13, 82, -29, 104, 79, 122, -112, 37}, new byte[]{-126, 17, 16, 53, -42, 99, -106, 62}, new StringBuilder(), mainActivity), mainActivity.f1310H.getTimeValue());
                break;
            case 5:
                String str6 = MainActivity.f1288e1;
                C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{86, 74, 91, -61, -3, -9, -62, 36, 80, 64, 80, -35, -7, -28, -59, 37, 76, 81, 76, -57, -1, -4, -37, 2, 118, 99, 97, -35, -38, -51, -24, 23, 102, 81, 75, -60, -8}, new byte[]{31, 14, 4, -126, -66, -88, -124, 118}, new StringBuilder(), mainActivity), mainActivity.f1312I.getTimeValue());
                break;
            case 6:
                String str7 = MainActivity.f1288e1;
                C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{36, 87, -8, 20, -50, -28, -68, -8, 44, 65, -8, 17, -56, -3, -68, -14, 62, 71, -8, 33, -28, -42, -117, -30, 9, 118, -53, 52, -12, -28, -95, -5, 43}, new byte[]{109, 19, -89, 85, -115, -69, -18, -67}, new StringBuilder(), mainActivity), mainActivity.f1314J.getTimeValue());
                break;
            case 7:
                String str8 = MainActivity.f1288e1;
                C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-48, -44, 31, 4, -51, -26, 52, -8, -3, -11, 23, 0, -3, -40, 55, -19, -37, -34, 19, 19, -6, -13, 57, -21, -16}, new byte[]{-124, -67, 114, 97, -119, -121, 88, -103}, new StringBuilder(), mainActivity), mainActivity.f1316K.getTemperatureValue());
                break;
            case 8:
                String str9 = MainActivity.f1288e1;
                C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-38, -60, -98, -57, -40, 119, 57, -69, -63, -55, -105, -63, -53, 122, 53, -70, -46, -44, -98, -52, -36, 100, 50, -96, -57, -59, -116, -44}, new byte[]{-109, ByteCompanionObject.MIN_VALUE, -63, -124, -103, 37, 102, -1}, new StringBuilder(), mainActivity), mainActivity.f1302D.getTemperatureValue());
                break;
            case 9:
                String str10 = MainActivity.f1288e1;
                C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{45, 124, 49, 63, 72, -91, 80, -20, 43, 104, 39, 48, 70, -93, 80, -4, 33, 121, 58, 35, 65, -78, 78, -5, 59, 108, 43, 49, 89}, new byte[]{100, 56, 110, 124, 9, -9, 15, -81}, new StringBuilder(), mainActivity), mainActivity.f1304E.getTemperatureValue());
                break;
            case 10:
                String str11 = MainActivity.f1288e1;
                C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{29, -7, 3, -84, 118, -112, 119, 53, 27, -19, 21, -93, 120, -106, 119, 37, 17, -4, 8, -80, 97, -121, 102, 34, 29, -15, 29, -69, 126, -115, 102, 41, 0, -8, 17, -65}, new byte[]{84, -67, 92, -17, 55, -62, 40, 118}, new StringBuilder(), mainActivity), mainActivity.f1308G.getTemperatureValue());
                break;
            case 11:
                String str12 = MainActivity.f1288e1;
                C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{105, 121, 20, -69, 86, -75, 56, 119, 116, 120, 14, -86, 72, -80, 47, 97, 101, 113, 20, -80, 82, -90, 51, 123, 116, 120, 6, -88}, new byte[]{32, Base64.padSymbol, 75, -8, 23, -25, 103, 36}, new StringBuilder(), mainActivity), mainActivity.f1310H.getTemperatureValue());
                break;
            case 12:
                String str13 = MainActivity.f1288e1;
                C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{6, 69, 6, -109, 117, -30, -49, 5, 0, 79, 13, -115, 113, -15, -56, 4, 28, 94, 17, -105, 119, -23, -42, 3, 10, 76, 9}, new byte[]{79, 1, 89, -46, 54, -67, -119, 87}, new StringBuilder(), mainActivity), mainActivity.f1312I.getTemperatureValue());
                break;
            case 13:
                String str14 = MainActivity.f1288e1;
                C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{50, -96, 116, -79, 105, -56, -74, -70, 58, -74, 116, -76, 111, -47, -74, -80, 40, -80, 116, -92, 111, -38, -76}, new byte[]{123, -28, 43, -16, 42, -105, -28, -1}, new StringBuilder(), mainActivity), mainActivity.f1314J.getTemperatureValue());
                break;
            case 14:
                String str15 = MainActivity.f1288e1;
                C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{8, -21, 30, 76, 35, -35, 122, -65, 37, -35, 60, 71, 56, -13, 112, -72, 3, -47, 48, 123, 34, -7, 88}, new byte[]{92, -126, 115, 41, 103, -68, 22, -34}, new StringBuilder(), mainActivity), mainActivity.f1316K.getTimeValue());
                break;
            case 15:
                String str16 = MainActivity.f1288e1;
                C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{89, -87, 35, -39, -79, 88, -45, -91, 66, -92, 42, -33, -94, 85, -33, -92, 81, -71, 35, -52, -75, 68, -40, -88, 92, -84, 40, -45, -65, 68, -45, -107, 121, ByteCompanionObject.MIN_VALUE, 25, -59, -108, 111, -32, ByteCompanionObject.MIN_VALUE, 105, -78, 51, -36, -74}, new byte[]{16, -19, 124, -102, -16, 10, -116, -31}, new StringBuilder(), mainActivity), mainActivity.f1306F.getTimeValue());
                break;
            case 16:
                String str17 = MainActivity.f1288e1;
                C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{64, ByteCompanionObject.MAX_VALUE, -15, 51, Base64.padSymbol, 105, 10, -117, 91, 114, -8, 53, 46, 100, 6, -118, 72, 111, -15, 56, 57, 122, 1, -112, 125, 82, -61, 21, 35, 95, 48, -93, 104, 66, -15, 63, 58, 125}, new byte[]{9, 59, -82, 112, 124, 59, 85, -49}, new StringBuilder(), mainActivity), mainActivity.f1302D.getTimeValue());
                break;
            case 17:
                mainActivity.f1356d = 0;
                break;
            case 18:
                MainActivity.m1424s(mainActivity);
                break;
            case 19:
                String strValueOf = String.valueOf(Integer.parseInt(mainActivity.f1331R0.getYLayMovX()) + 1);
                C1652b.m2745o().saveString(mainActivity.f1363g, strValueOf);
                mainActivity.f1331R0.setYLayMovX(strValueOf);
                C1396n3.m2439a(mainActivity);
                break;
            case 20:
                String strValueOf2 = String.valueOf(Integer.parseInt(mainActivity.f1331R0.getYLayMovX()) - 1);
                C1652b.m2745o().saveString(mainActivity.f1363g, strValueOf2);
                mainActivity.f1331R0.setYLayMovX(strValueOf2);
                C1396n3.m2439a(mainActivity);
                break;
            case 21:
                String strValueOf3 = String.valueOf(Integer.parseInt(mainActivity.f1331R0.getYLayMovY()) - 1);
                C1652b.m2745o().saveString(mainActivity.f1365h, strValueOf3);
                mainActivity.f1331R0.setYLayMovY(strValueOf3);
                C1396n3.m2439a(mainActivity);
                break;
            case 22:
                String strValueOf4 = String.valueOf(Integer.parseInt(mainActivity.f1331R0.getYLayMovY()) + 1);
                C1652b.m2745o().saveString(mainActivity.f1365h, strValueOf4);
                mainActivity.f1331R0.setYLayMovY(strValueOf4);
                C1396n3.m2439a(mainActivity);
                break;
            case 23:
                String strValueOf5 = String.valueOf(Integer.parseInt(mainActivity.f1333S0.getYLayMovX()) - 1);
                C1652b.m2745o().saveString(mainActivity.f1371k, strValueOf5);
                mainActivity.f1333S0.setYLayMovX(strValueOf5);
                C1396n3.m2439a(mainActivity);
                break;
            case 24:
                String strValueOf6 = String.valueOf(Integer.parseInt(mainActivity.f1333S0.getYLayMovX()) + 1);
                C1652b.m2745o().saveString(mainActivity.f1371k, strValueOf6);
                mainActivity.f1333S0.setYLayMovX(strValueOf6);
                C1396n3.m2439a(mainActivity);
                break;
            case 25:
                String strValueOf7 = String.valueOf(Integer.parseInt(mainActivity.f1333S0.getYLayMovY()) - 1);
                C1652b.m2745o().saveString(mainActivity.f1373l, strValueOf7);
                mainActivity.f1333S0.setYLayMovY(strValueOf7);
                C1396n3.m2439a(mainActivity);
                break;
            case 26:
                String strValueOf8 = String.valueOf(Integer.parseInt(mainActivity.f1333S0.getYLayMovY()) + 1);
                C1652b.m2745o().saveString(mainActivity.f1373l, strValueOf8);
                mainActivity.f1333S0.setYLayMovY(strValueOf8);
                C1396n3.m2439a(mainActivity);
                break;
            case 27:
                String strValueOf9 = String.valueOf(Integer.parseInt(mainActivity.f1335T0.getYLayMovX()) - 1);
                C1652b.m2745o().saveString(mainActivity.f1379o, strValueOf9);
                mainActivity.f1335T0.setYLayMovX(strValueOf9);
                C1396n3.m2439a(mainActivity);
                break;
            case 28:
                String strValueOf10 = String.valueOf(Integer.parseInt(mainActivity.f1335T0.getYLayMovX()) + 1);
                C1652b.m2745o().saveString(mainActivity.f1379o, strValueOf10);
                mainActivity.f1335T0.setYLayMovX(strValueOf10);
                C1396n3.m2439a(mainActivity);
                break;
            default:
                String strValueOf11 = String.valueOf(Integer.parseInt(mainActivity.f1335T0.getYLayMovY()) + 1);
                C1652b.m2745o().saveString(mainActivity.f1381p, strValueOf11);
                mainActivity.f1335T0.setYLayMovY(strValueOf11);
                C1396n3.m2439a(mainActivity);
                break;
        }
    }
}

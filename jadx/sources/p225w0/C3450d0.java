package p225w0;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0077d;
import com.google.protobuf.AbstractC1178q;
import java.io.InputStreamReader;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p099j1.C1929i;
import p201t5.AbstractC3258b;
import p201t5.C3261e;
import p212u5.C3299b;
import p212u5.C3300c;
import p212u5.C3301d;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: w0.d0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3450d0 {

    /* JADX INFO: renamed from: a */
    public final List f9945a;

    static {
        AbstractC1387m.m2421h(new byte[]{122, -68, -59, 76, 59, -116, -127, 86, 120, -70, -61, 65, 1, -78, -116, 92, 109, -96, -55, 92, 112, -71, -109, 90, 98}, new byte[]{12, -45, -84, 47, 94, -45, -32, 53});
    }

    public C3450d0(ArrayList arrayList) {
        this.f9945a = Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: renamed from: a */
    public static String m5388a(String str) {
        switch (str.hashCode()) {
            case -1982622772:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-118, -48, -115, -84, 108, 25, -49, 112, -118, -41, -115, -84}, new byte[]{91, 87, 93, 25, -67, -101, 30, -5}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{75}, new byte[]{ByteCompanionObject.MAX_VALUE, -94, -27, 59, -91, 13, -89, -20});
            case -1913000586:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-28, -68, -81, -30, -30, -81, 16, -63, -27, -126, -81, -28, -30, -96, 17, -8, -28, -80}, new byte[]{53, 60, ByteCompanionObject.MAX_VALUE, 82, 50, 24, -64, 122}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-16, 72, 111, 86, -19, -41, -65, -39, -15, 118, 111, 80, -19, -40, -66, -32, -16, 68}, new byte[]{33, -56, -65, -26, Base64.padSymbol, 96, 111, 98});
            case -1897617612:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{72, -42, 52, -110, -94, -58, -117, -103, 73, -21, 53, -88, -93, -2, -118, -84, 73, -21, 52, -98}, new byte[]{-104, 105, -27, 18, 114, 126, 91, 39}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{123, 57, -58, 52, -1, 72, -67, -75, 122, 4, -57, 14, -2, 112, -68, ByteCompanionObject.MIN_VALUE, 122, 4, -58, 56}, new byte[]{-85, -122, 23, -76, 47, -16, 109, 11});
            case -1888806610:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-84, -13, 18, 6, -53, -98, -116, 39, -84, -9, 19, 54, -54, -92, -115, 31}, new byte[]{125, 113, -61, -122, 27, 38, 92, -109}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-10, -30}, new byte[]{-59, -46, 122, 41, -13, -34, 110, 9});
            case -1697188122:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{16, -108, 14, ByteCompanionObject.MIN_VALUE, 12, -33, 39, -51, 16, -101, 15, -78, 12, -33, 38, -2, 17, -89}, new byte[]{-64, 43, -33, 0, -36, 103, -9, 124}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-54, -80, 85, 117, 52, -101, 118, -64, -53, -117, 84, 64, 52, -106, 119, -7, -54, -65}, new byte[]{27, 51, -123, -57, -28, 46, -90, 123});
            case -1604351807:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{66, -23, -79, 49, 85, 8, -87, -14, 67, -39, -79, 48, 85, 8}, new byte[]{-110, 90, 96, -79, -123, -72, 121, 70}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-125, -44, 33, 82, 97, -87, 81, 78, -126, -28, 33, 83, 97, -89, 81, 72}, new byte[]{83, 103, -16, -46, -79, 25, -127, -6});
            case -1334818050:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-66, -96, 42, -103, -46, -38, -76, -30, -65, -101, 43, -84, -46, -41, -75, -37, -66, -81}, new byte[]{111, 35, -6, 43, 2, 111, 100, 89}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-54, -80, 85, 117, 52, -101, 118, -64, -53, -117, 84, 64, 52, -106, 119, -7, -54, -65}, new byte[]{27, 51, -123, -57, -28, 46, -90, 123});
            case -1308139908:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{63, 111, 30, 49, -69, -119, 30, -112, 62, 82, 31, 11, -70, -79, 30, -112, 63, 105}, new byte[]{-17, -48, -49, -79, 107, 49, -50, 46}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{123, 57, -58, 52, -1, 72, -67, -75, 122, 4, -57, 14, -2, 112, -68, ByteCompanionObject.MIN_VALUE, 122, 4, -58, 56}, new byte[]{-85, -122, 23, -76, 47, -16, 109, 11});
            case -1010825371:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{90, -43, -28, 26, -21, 68, -43, 2, 90, -38, -27, 46, -21, 73, -44, Base64.padSymbol, 90, -38}, new byte[]{-117, 86, 52, -90, 59, -15, 5, -65}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-119, 104, 19, -44, -109, -125, 23, -3, -119, 103, 18, -32, -109, -114, 22, -62, -119, 103}, new byte[]{88, -21, -61, 104, 67, 54, -57, 64});
            case -1003547392:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-13, 119, -87, 65, -124, -89, 22, 19, -13, 120, -87, 77, -123, -98, 22, 19, -14, 68}, new byte[]{35, -56, 121, -1, 85, 38, -57, -111}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-82, 50, 46, -34, -12, 24, 41, 67, -81, 12, 47, -31, -11, 40, 41, 75, -82, 51, 46, -45}, new byte[]{ByteCompanionObject.MAX_VALUE, -79, -1, 95, 37, -102, -7, -13});
            case -874698270:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, 120, 0, 17, -126, -6}, new byte[]{-12, 16, 105, 99, -10, -125, -77, -35}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-10, -30}, new byte[]{-59, -46, 122, 41, -13, -34, 110, 9});
            case -860968463:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{81, -98, -92, -29, -1, -98}, new byte[]{37, -23, -63, -115, -117, -25, -93, 95}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-9, 23}, new byte[]{-59, 39, 112, -17, -72, -49, -23, 75});
            case -848286923:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-63, 92, 123, 87, -111, -122, -125, 82, -64, 98, 123, 83, -111, -118}, new byte[]{17, -30, -85, -26, 65, 56, 83, -31}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{71, 124, 36, 109, -96, 47, -37, 105, 71, 112, 37, 83, -96, 46, -37, 101}, new byte[]{-105, -61, -12, -45, 112, -101, 11, -41});
            case -718702158:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-83, -85, -102, -86, 121, 93, -51, 40, -84, -112, -101, -103, 120, 97}, new byte[]{124, 40, 74, 27, -87, -19, 29, -102}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-119, 104, 19, -44, -109, -125, 23, -3, -119, 103, 18, -32, -109, -114, 22, -62, -119, 103}, new byte[]{88, -21, -61, 104, 67, 54, -57, 64});
            case -685187128:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{1, 59, 79, -1, -40, 90, ByteCompanionObject.MAX_VALUE, -19, 0, 0, 78, -54, -39, 99}, new byte[]{-48, -72, -97, 77, 8, -17, -81, 86}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-54, -80, 85, 117, 52, -101, 118, -64, -53, -117, 84, 64, 52, -106, 119, -7, -54, -65}, new byte[]{27, 51, -123, -57, -28, 46, -90, 123});
            case -678927291:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{114, 18, 68, -22, 22, -83, -45}, new byte[]{2, 119, 54, -119, 115, -61, -89, -89}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-54, 109, 0, -11, -18, 92, -105, -20, -44, 97, 6}, new byte[]{-70, 8, 114, -106, -117, 50, -29, -103});
            case -629119210:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-43, -99, -58, 17, -30, 14, 49, -42, -44, -88, -58, 19, -29, 55, 49, -44}, new byte[]{5, 47, 22, -85, 50, -75, -32, 88}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-74, -94, -28, 20, -49, -30, 18, -117, -73, -105, -28, 22, -50, -37, 18, -119}, new byte[]{102, 16, 52, -82, 31, 89, -61, 5});
            case -527089765:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-1, 78, ByteCompanionObject.MAX_VALUE, 31, 120, -2, -36, 40, -2, 112, ByteCompanionObject.MAX_VALUE, 27, 120, -14, -36, 43}, new byte[]{47, -16, -81, -82, -88, 64, 12, -101}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-41, -17, -27, 33, 30, 18, 55, 101, -41, -29, -28, 31, 30, 19, 55, 105, -41, -32}, new byte[]{7, 80, 53, -97, -50, -90, -25, -37});
            case -408142861:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{1, -99, 45, 88, 29, 95, -87, 16, 1, -111, 44, 102, 29, 94, -87, 28}, new byte[]{-47, 34, -3, -26, -51, -21, 121, -82}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{71, 124, 36, 109, -96, 47, -37, 105, 71, 112, 37, 83, -96, 46, -37, 101}, new byte[]{-105, -61, -12, -45, 112, -101, 11, -41});
            case -398816805:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-109, 25, -8, 45, -42, -123, -105, -95, -109, 22, -7, 25, -42, -120}, new byte[]{66, -102, 40, -111, 6, 48, 71, 28}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-119, 104, 19, -44, -109, -125, 23, -3, -119, 103, 18, -32, -109, -114, 22, -62, -119, 103}, new byte[]{88, -21, -61, 104, 67, 54, -57, 64});
            case -365033094:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{2, -48, 73, 20, -72, -4, 117, -45, 3, -32, 73, 17, -72, -2}, new byte[]{-46, 110, -104, -106, 104, 70, -91, 104}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{30, -13, -89, -124, -9, -125, -80, 126, 31, -49, -89, -120, -9, -127, -79, 71, 31, -51}, new byte[]{-50, 65, 118, 15, 39, 57, 96, -59});
            case -364887157:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-36, 12, 31, 15, -94, -61, -122, -40, -35, 57, 31, 15, -93, -11}, new byte[]{12, -78, -50, -115, 114, 121, 87, 88}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-85, -35, -36, -57, -126, 28, -23, -50, -86, -24, -36, -57, -125, 42}, new byte[]{123, 99, 13, 69, 82, -90, 56, 78});
            case -287530378:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{86, -74, 4, -40, 122, 103, -84, 88, 87, -124, 4, -38, 123, 85, -83, 96}, new byte[]{-122, 2, -44, 106, -86, -41, 124, -20}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-9, 23}, new byte[]{-59, 39, 112, -17, -72, -49, -23, 75});
            case -262955079:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-4, 90, 63, -47, 7, 12, 115, 84, -4, 81, 62, -21, 7, 15, 115, 87, -3, 103}, new byte[]{44, -27, -18, 94, -42, -114, -94, -40}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-10, -82}, new byte[]{-61, -98, 1, 75, -101, 21, 31, -93});
            case -60966395:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{70, -1, -32, 42, 38, -7, -34, -2, 70, -11, -31, 23, 39, -59, -33, -58, 70, -14}, new byte[]{-106, 64, 49, -86, -10, 71, 15, 120}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-54, 109, 0, -11, -18, 92, -105, -20, -44, 97, 6}, new byte[]{-70, 8, 114, -106, -117, 50, -29, -103});
            case 110182:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{125, -99, 0}, new byte[]{18, -13, 101, 115, -18, 53, -17, -124}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-19}, new byte[]{-36, -106, 99, 59, 102, 115, 83, -24});
            case 113890:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{86, 94, 89}, new byte[]{37, 55, 33, -44, 8, -41, 55, 83}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{91}, new byte[]{109, 37, -104, -114, -45, -20, -107, -11});
            case 114717:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{21, 75, 73}, new byte[]{97, 46, 39, 5, 117, 45, 104, -15}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{65, 103}, new byte[]{112, 87, -49, 99, -16, -48, 78, -106});
            case 115276:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{7, 46, 111}, new byte[]{115, 89, 0, 104, -61, 19, -53, -65}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-97}, new byte[]{-83, 110, 99, -61, 2, 3, 35, -101});
            case 1068402:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-82, -11, -77, 95, -13, -40}, new byte[]{126, 65, 99, -19, 35, 104, 56, -9}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-97}, new byte[]{-83, 110, 99, -61, 2, 3, 35, -101});
            case 1068407:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-71, -26, 16, 24, -41, 111}, new byte[]{105, 82, -64, -86, 7, -38, 3, -76}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-97}, new byte[]{-83, 110, 99, -61, 2, 3, 35, -101});
            case 1081405:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-68, -25, 6, -96, ByteCompanionObject.MIN_VALUE, -97}, new byte[]{109, 102, -41, 34, 80, 33, -108, 19}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-58, 77, -34}, new byte[]{-9, 125, -18, 31, -109, -90, -23, -19});
            case 1082298:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{27, -51, 26, 49, 117, 126}, new byte[]{-54, 79, -53, -79, -91, -58, -75, -92}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{84}, new byte[]{103, 53, -38, 52, -14, -65, 81, 98});
            case 3143346:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{109, -36, -87, 79}, new byte[]{11, -75, -33, 42, -56, 83, -38, -38}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-50}, new byte[]{-5, -69, 112, -94, -24, 4, -63, -83});
            case 3149094:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{33, -31, -51, Base64.padSymbol}, new byte[]{71, -114, -72, 79, -74, -87, -106, 113}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{75}, new byte[]{ByteCompanionObject.MAX_VALUE, -94, -27, 59, -91, 13, -89, -20});
            case 3381426:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-56, -118, -48, -25}, new byte[]{-90, -29, -66, -126, 45, -110, -100, -123}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-83}, new byte[]{-108, 77, -80, -92, -37, 52, -89, 19});
            case 3735208:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{95, 56, -28, -83}, new byte[]{37, 93, -106, -62, -49, -127, -13, 37}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{126}, new byte[]{78, -105, 10, 80, -91, -72, 14, 80});
            case 33401554:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{101, 117, -39, 31, 47, 75, 108, -80}, new byte[]{-75, -56, 9, -95, -1, -16, -67, 60}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{126}, new byte[]{78, -105, 10, 80, -91, -72, 14, 80});
            case 33421627:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-126, -50, -60, -44, -42, -55, -42, 12}, new byte[]{82, 112, 20, 96, 6, 113, 6, -79}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-19}, new byte[]{-36, -106, 99, 59, 102, 115, 83, -24});
            case 33421769:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{37, 14, -125, -98, -78, -16, 103, 65}, new byte[]{-11, -80, 83, 42, 98, 77, -73, -15}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-19}, new byte[]{-36, -106, 99, 59, 102, 115, 83, -24});
            case 33477690:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{85, -80, 62, 27, -23, 5, 121, 111}, new byte[]{-123, 15, -17, -108, 56, -121, -88, -29}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-50}, new byte[]{-5, -69, 112, -94, -24, 4, -63, -83});
            case 33512100:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-31, 32, 38, 9, 108, 89, -55, -30}, new byte[]{48, -95, -10, -68, -68, -27, 24, 110}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-17}, new byte[]{-40, -65, 119, -3, 45, -2, 79, -117});
            case 96505999:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-41, 36, 48, -106, -92}, new byte[]{-78, 77, 87, -2, -48, 34, -12, -70}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-125}, new byte[]{-69, 12, 64, -45, -16, 40, -114, -40});
            case 97428936:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{110, 3, -79, -124, 25}, new byte[]{8, 106, -41, -16, 96, 66, 33, -32}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-10, -82}, new byte[]{-61, -98, 1, 75, -101, 21, 31, -93});
            case 109330445:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-39, 125, -16, 25, -57}, new byte[]{-86, 24, -122, 124, -87, 94, 89, -55}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-17}, new byte[]{-40, -65, 119, -3, 45, -2, 79, -117});
            case 110339486:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{19, -24, -115, -121, -108}, new byte[]{103, ByteCompanionObject.MIN_VALUE, -1, -30, -15, 51, 38, -105}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{84}, new byte[]{103, 53, -38, 52, -14, -65, 81, 98});
            case 110590735:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-57, 15, 92, 40, -20, -102, -18, 124, -58, 51, 92, 36, -20, -104, -17, 69, -58, 49}, new byte[]{23, -67, -115, -93, 60, 32, 62, -57}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{30, -13, -89, -124, -9, -125, -80, 126, 31, -49, -89, -120, -9, -127, -79, 71, 31, -51}, new byte[]{-50, 65, 118, 15, 39, 57, 96, -59});
            case 232474269:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-53, 7, 67, -34, 7, 4, -51, 124, -53, 11, 66, -32, 7, 5, -51, 112, -53, 8}, new byte[]{27, -72, -109, 96, -41, -80, 29, -62}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-41, -17, -27, 33, 30, 18, 55, 101, -41, -29, -28, 31, 30, 19, 55, 105, -41, -32}, new byte[]{7, 80, 53, -97, -50, -90, -25, -37});
            case 372038717:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-116, 35, -60, 96, 126, -112, 120, -42, -115, 29, -59, 95, ByteCompanionObject.MAX_VALUE, -96, 120, -34, -116, 34, -60, 109}, new byte[]{93, -96, 21, -31, -81, 18, -88, 102}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-82, 50, 46, -34, -12, 24, 41, 67, -81, 12, 47, -31, -11, 40, 41, 75, -82, 51, 46, -45}, new byte[]{ByteCompanionObject.MAX_VALUE, -79, -1, 95, 37, -102, -7, -13});
            case 414597706:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{85, -27, 81, 12, -15, -100, -36, ByteCompanionObject.MIN_VALUE, 85, -22, 81, 0, -15, -111}, new byte[]{-123, 90, -127, -78, 32, 29, 13, 2}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-82, 50, 46, -34, -12, 24, 41, 67, -81, 12, 47, -31, -11, 40, 41, 75, -82, 51, 46, -45}, new byte[]{ByteCompanionObject.MAX_VALUE, -79, -1, 95, 37, -102, -7, -13});
            case 463037872:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-8, 98, -36, -124, -75, 34, 105, -74, -8, 109, -35, -74, -76, 22}, new byte[]{40, -35, 13, 4, 101, -102, -71, 7}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-54, -80, 85, 117, 52, -101, 118, -64, -53, -117, 84, 64, 52, -106, 119, -7, -54, -65}, new byte[]{27, 51, -123, -57, -28, 46, -90, 123});
            case 469209745:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{91, -53, -104, 50, ByteCompanionObject.MIN_VALUE, 32, 108, -67, 91, -63, -103, 15, -127, 28}, new byte[]{-117, 116, 73, -78, 80, -98, -67, 59}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-54, 109, 0, -11, -18, 92, -105, -20, -44, 97, 6}, new byte[]{-70, 8, 114, -106, -117, 50, -29, -103});
            case 891863084:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-54, 50, 101, 68, 1, -39, 72, -124, -53, 12, 101, 66, 1, -42}, new byte[]{27, -78, -75, -12, -47, 110, -104, 63}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-16, 72, 111, 86, -19, -41, -65, -39, -15, 118, 111, 80, -19, -40, -66, -32, -16, 68}, new byte[]{33, -56, -65, -26, Base64.padSymbol, 96, 111, 98});
            case 1023849651:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-109, 113, -29, 32, -77, 56, -79, -57, -110, 79, -30, 31, -78, 8, -79, -49}, new byte[]{66, -14, 50, -95, 98, -70, 97, 119}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-82, 50, 46, -34, -12, 24, 41, 67, -81, 12, 47, -31, -11, 40, 41, 75, -82, 51, 46, -45}, new byte[]{ByteCompanionObject.MAX_VALUE, -79, -1, 95, 37, -102, -7, -13});
            case 1039056166:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{48, -103, -11, 75, -80, 80, -101, 112, 49, -96}, new byte[]{-31, 24, 37, -16, 96, -18, 75, -58}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-96, -100, -56, 25, -105, -1, 29, -30, -95, -91, -55, 32, -106, -51}, new byte[]{113, 29, 24, -94, 71, 65, -51, 84});
            case 1040591740:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-104, 111, -54, -90, -6, -92, -31, -96, -104, 96}, new byte[]{73, -20, 26, 23, 42, 20, 49, 18}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-119, 104, 19, -44, -109, -125, 23, -3, -119, 103, 18, -32, -109, -114, 22, -62, -119, 103}, new byte[]{88, -21, -61, 104, 67, 54, -57, 64});
            case 1045345342:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{101, 2, 100, -110, -8, -69, -13, 46, 101, 6}, new byte[]{-76, -118, -76, 39, 41, 58, 34, -84}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{91}, new byte[]{109, 37, -104, -114, -45, -20, -107, -11});
            case 1265392174:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-86, 99, -67, -1, -52, 31, 0}, new byte[]{-62, 22, -45, -101, -66, 122, 100, 117}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-58, 77, -34}, new byte[]{-9, 125, -18, 31, -109, -90, -23, -19});
            case 1301405849:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{93, 49, 51, 39, 93, 55, -72, -14, 93, 63, 51, 36, 92, 6, -72, -13, 92, 5, 51, 41, 93, 52, -71, -53}, new byte[]{-115, -125, -29, -103, -116, -74, 104, 71}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{80, 45}, new byte[]{97, 21, 78, -101, 38, -28, 71, -73});
            case 1390549828:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{95, -47, -65, 64, 18, 42, -49, -100, 94, -31, -65, 69, 18, 40, -50, -91, 94, -29}, new byte[]{-113, 111, 110, -62, -62, -112, 31, 39}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{30, -13, -89, -124, -9, -125, -80, 126, 31, -49, -89, -120, -9, -127, -79, 71, 31, -51}, new byte[]{-50, 65, 118, 15, 39, 57, 96, -59});
            case 1497196950:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-95, -50, -8, 14, -34, -44, -10, 3, -96, -14, -7, 60, -33, -30}, new byte[]{113, 121, 40, -66, 14, 110, 39, -125}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{11, -2, 56, -107, -127, 47, -84, 100, 10, -62, 57, -89, ByteCompanionObject.MIN_VALUE, 25}, new byte[]{-37, 73, -24, 37, 81, -107, 125, -28});
            case 1660601279:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{93, -47, 106, 104, -1, -80, -88, -19, 93, -37, 107, 85, -2, -116, -87, -37}, new byte[]{-115, 110, -69, -24, 47, 14, 121, 107}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-54, 109, 0, -11, -18, 92, -105, -20, -44, 97, 6}, new byte[]{-70, 8, 114, -106, -117, 50, -29, -103});
            case 1677195487:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{83, -9, -124, -47, -119, -41, 118, 54}, new byte[]{54, -98, -29, -71, -3, -78, 19, 88}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{80, 45}, new byte[]{97, 21, 78, -101, 38, -28, 71, -73});
            case 1715544524:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-20, 23, -83, -65, 90, 85, -63, -46, -19, 34, -83, -67}, new byte[]{60, -91, 125, 5, -118, -18, 16, 92}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-74, -94, -28, 20, -49, -30, 18, -117, -73, -105, -28, 22, -50, -37, 18, -119}, new byte[]{102, 16, 52, -82, 31, 89, -61, 5});
            case 1719393008:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-87, 70, -9, 29, -11, -59, -94, 15, -87, 72, -10, 47}, new byte[]{121, -12, 39, -93, 36, 68, 114, -70}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-125}, new byte[]{-69, 12, 64, -45, -16, 40, -114, -40});
            case 1749361999:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-124, -60, 93, -71, 51, -85, -26, 82, -123, -12, 93, -72}, new byte[]{84, 119, -116, 57, -29, 27, 54, -26}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-125, -44, 33, 82, 97, -87, 81, 78, -126, -28, 33, 83, 97, -89, 81, 72}, new byte[]{83, 103, -16, -46, -79, 25, -127, -6});
            case 1767917928:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-1, 75, -47, 52, -11, 62, -51, -87, -2, 125, -48, 13}, new byte[]{47, -1, 1, -127, 37, -116, 28, 38}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-83}, new byte[]{-108, 77, -80, -92, -37, 52, -89, 19});
            case 1768364793:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{26, -114, 106, 82, 117, -13, 30, -19, 27, -72, 107, 107}, new byte[]{-54, 58, -70, -25, -92, 114, -49, 98}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{65, 103}, new byte[]{112, 87, -49, 99, -16, -48, 78, -106});
            case 1804703043:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{118, -115, -50, -82, -14, 64, 76, -32, 119, -67, -50, -81, -14, 78, 76, -26}, new byte[]{-90, 62, 31, 46, 34, -16, -100, 84}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-125, -44, 33, 82, 97, -87, 81, 78, -126, -28, 33, 83, 97, -89, 81, 72}, new byte[]{83, 103, -16, -46, -79, 25, -127, -6});
            case 1849411546:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, 29, 26, 3, -54, -56, 52, -82, ByteCompanionObject.MAX_VALUE, 20, 26, 10}, new byte[]{-81, -86, -54, -77, 26, 114, -27, 46}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{11, -2, 56, -107, -127, 47, -84, 100, 10, -62, 57, -89, ByteCompanionObject.MIN_VALUE, 25}, new byte[]{-37, 73, -24, 37, 81, -107, 125, -28});
            case 1892023265:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-21, 96, 84, -106, 9, 32, -38, -58, -22, 81, 85, -96, 8, 25}, new byte[]{58, -31, -124, 34, -39, -107, 10, 125}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{5, -111, -86, -127, -101, -17, 118, -28, 4, -96, -85, -73, -102, -42}, new byte[]{-44, 16, 122, 53, 75, 90, -90, 95});
            case 2066438981:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{100, -101, 53, -46, 62, 92, 91, 38, 100, -101, 52, -23}, new byte[]{-76, 37, -28, 80, -18, -26, -118, -90}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-85, -35, -36, -57, -126, 28, -23, -50, -86, -24, -36, -57, -125, 42}, new byte[]{123, 99, 13, 69, 82, -90, 56, 78});
            case 2100597744:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{72, -118, 119, -122, -60, 84, -76, 49, 73, -77, 118, -65, -59, 102}, new byte[]{-103, 11, -89, Base64.padSymbol, 20, -22, 100, -121}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{-96, -100, -56, 25, -105, -1, 29, -30, -95, -91, -55, 32, -106, -51}, new byte[]{113, 29, 24, -94, 71, 65, -51, 84});
            case 2127486981:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-5, 83, -104, 11, -115, 118, 46, 12, -6, 111, -104, 7, -115, 116}, new byte[]{43, -31, 73, ByteCompanionObject.MIN_VALUE, 93, -52, -2, -73}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{30, -13, -89, -124, -9, -125, -80, 126, 31, -49, -89, -120, -9, -127, -79, 71, 31, -51}, new byte[]{-50, 65, 118, 15, 39, 57, 96, -59});
            case 2139242946:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{46, 25, 106, -112, 7, 10, 100, -57, 47, 40, 106, -99}, new byte[]{-1, -104, -70, 36, -41, -65, -76, 124}))) {
                    return str;
                }
                return AbstractC1387m.m2421h(new byte[]{5, -111, -86, -127, -101, -17, 118, -28, 4, -96, -85, -73, -102, -42}, new byte[]{-44, 16, 122, 53, 75, 90, -90, 95});
            default:
                return str;
        }
    }

    /* JADX INFO: renamed from: c */
    public static C3450d0 m5389c(InputStreamReader inputStreamReader) {
        C3261e c3261eM5195f = AbstractC3656k.m5867m(inputStreamReader).m5195f();
        if (c3261eM5195f.m5200l(AbstractC1387m.m2421h(new byte[]{39, 69, 95, -121, -13, 116, 80}, new byte[]{81, 32, 45, -12, -102, 27, 62, -47})).mo5191d() != 1) {
            C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{18, 116, 84, -7, 117, 89, -4, 123, 51, ByteCompanionObject.MAX_VALUE, 67, -84, 115, 70, -6, 106, 34, 58, 70, -32, 108, 72, -32, 41, 36, 123, 83, -19, 105, 70, -12, 41, 49, ByteCompanionObject.MAX_VALUE, 85, -1, 108, 70, -3}, new byte[]{71, 26, 39, -116, 5, 41, -109, 9}));
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = ((C3300c) ((C3261e) c3261eM5195f.f9548b.get(AbstractC1387m.m2421h(new byte[]{-112, 5, 103, -71, -111, 94, 107}, new byte[]{-15, 102, 19, -48, -2, 48, 24, 82}))).f9548b.entrySet()).iterator();
        while (((C3299b) it).hasNext()) {
            C3301d c3301dM5222b = ((C3299b) it).m5222b();
            if (!((String) c3301dM5222b.getKey()).matches(AbstractC1387m.m2421h(new byte[]{73, 43, -42, 28, -80, -67, 39, 52, 17, 102, -125, 31, -73, -92, 47, 52, 0, 100, -100, 5, -83, -72, 38, 33, 21, Base64.padSymbol, -42, 87, -11}, new byte[]{97, 20, -20, 121, -34, -56, 74, 72}))) {
                throw new IllegalArgumentException(AbstractC1387m.m2421h(new byte[]{-85, -71, -13, -35, 58, -2, -78, -48, -108, -72, -20, -33, 51, -73, -73, -100, -117, -74, -10, -100, 55, -12, -94, -103, -115, -71, -65, -100}, new byte[]{-30, -41, -123, -68, 86, -105, -42, -16}) + ((String) c3301dM5222b.getKey()));
            }
            Iterator it2 = ((C3300c) ((AbstractC3258b) c3301dM5222b.getValue()).m5195f().f9548b.entrySet()).iterator();
            while (((C3299b) it2).hasNext()) {
                C3301d c3301dM5222b2 = ((C3299b) it2).m5222b();
                ArrayList arrayList2 = ((AbstractC3258b) c3301dM5222b2.getValue()).m5194e().f9546b;
                int size = arrayList2.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList2.get(i10);
                    i10++;
                    String strTrim = ((AbstractC3258b) obj).mo5192g().trim();
                    String str = (String) c3301dM5222b.getKey();
                    C3447c0 c3447c0 = new C3447c0(str, strTrim);
                    if (c3447c0.f9942c.split(" ").length < 2 || strTrim.length() > 200) {
                        C1929i.m3029k(AbstractC1178q.m2078l(new byte[]{114, 122, 68, 43, 27, -94, 110, 109, 72, 125, 84, 47, 93, -90, 34, 114, 70, 103, 13, 106}, new byte[]{39, 20, 55, 74, 125, -57, 78, 27}, new StringBuilder(), strTrim));
                        return null;
                    }
                    arrayList.add(c3447c0);
                }
            }
        }
        return new C3450d0(arrayList);
    }

    /* JADX INFO: renamed from: d */
    public static String m5390d(String str) {
        if (str == null) {
            return "";
        }
        String strTrim = Normalizer.normalize(str, Normalizer.Form.NFKC).toLowerCase(Locale.ROOT).replace((char) 1105, (char) 1077).replaceAll(AbstractC1387m.m2421h(new byte[]{35, -87, -89, -56, -47, -2, 20, 58, 71, -21, -57, -103, -15, -20, 25, 28, 34, -51, -74, 11, 2, 48, 57, 29, 120, -68, -77, -42, -73, -2, 0, 104}, new byte[]{11, -106, -101, -23, -118, -94, 100, 65}), AbstractC1387m.m2421h(new byte[]{21, 52, -89, 97, -124, -40, 54, 120, 80, 122}, new byte[]{53, 90, -62, 6, -27, -84, 95, 14})).replaceAll(AbstractC1387m.m2421h(new byte[]{122, -78, -49, 5, -106, -114, 100, 59, 30, -16, -81, 84, -74, -100, 105, 29, 123, -47, -40, 120, -66, -8, 60, ByteCompanionObject.MAX_VALUE, 111, -47, -105, 13}, new byte[]{82, -115, -13, 36, -51, -46, 20, 64}), AbstractC1387m.m2421h(new byte[]{34, 29, 25, 76, 72, -71, -27, -88, 103, 77}, new byte[]{2, 109, 118, 63, 33, -51, -116, -34})).replace(AbstractC1387m.m2421h(new byte[]{-86}, new byte[]{-113, -86, 104, -69, -38, -18, 117, 113}), AbstractC1387m.m2421h(new byte[]{93, 99, 25, -38, -125, -98, 79, 92, -5, 99, 19, -37, -66, -97, 115, 93, -61, 99, 20, 43}, new byte[]{125, -77, -90, 11, 3, 78, -15, -115})).replaceAll(AbstractC1387m.m2421h(new byte[]{-91, 99, -110, -95, 1, -62, 93, -97, -114, 70, ByteCompanionObject.MIN_VALUE, -84, 39, -91}, new byte[]{-2, Base64.padSymbol, -50, -47, 122, -114, 32, -61}), " ").trim();
        if (strTrim.isEmpty()) {
            return "";
        }
        String[] strArr = {AbstractC1387m.m2421h(new byte[]{-46, 32, -55, -126, 17, 70, -71, 105, -45, 18, -55, ByteCompanionObject.MIN_VALUE, 16, 116, -72, 81, 34, 68, -83, -32, 115, 38, -39}, new byte[]{2, -108, 25, 48, -63, -10, 105, -35}), AbstractC1387m.m2421h(new byte[]{52, 114, -96, -104, 10, 25, 43, 93, 53, 64, -96, -102, 11, 43, 42, 101, -60, 23, -9, -6, 111, 120, 121, 56, 111, 23, -16, -6, 111}, new byte[]{-28, -58, 112, 42, -38, -87, -5, -23}), AbstractC1387m.m2421h(new byte[]{-101, 70, 78, 5, -8, -64, -26, -34, -102, 116, 78, 7, -7, -14, -25, -26, 107, 34, 33, 102, -89, -95, -76, -69, -57}, new byte[]{75, -14, -98, -73, 40, 112, 54, 106}), AbstractC1387m.m2421h(new byte[]{54, -15, -115, 63, -89, 117, 29, -92, 55, -61, -115, Base64.padSymbol, -90, 71, 28, -100, -58, -108, -43, 93, -62, 20, 76, -63, 100, -108, -47}, new byte[]{-26, 69, 93, -115, 119, -59, -51, 16}), AbstractC1387m.m2421h(new byte[]{95, -15, 10, 52, -19, -125, -89, 27, 94, -61, 10, 54, -20, -79, -90, 35, -81, -107, 104, 86, -125, -30, -10, ByteCompanionObject.MAX_VALUE, 58, -107, 102, 87, -79}, new byte[]{-113, 69, -38, -122, Base64.padSymbol, 51, 119, -81}), AbstractC1387m.m2421h(new byte[]{108, 99, 87, 2, 114, 27, 8, -18, 109, 86, 87, 2, 115, 38, 8, -19, 108, 96, -89, 103, 29, 118, 86, -77, 63, 51, 11}, new byte[]{-67, -30, -121, -73, -94, -89, -39, 98}), AbstractC1387m.m2421h(new byte[]{71, -4, 7, -3, 75, 104, -24, -2, 68, -28}, new byte[]{51, -117, 98, -109, 63, 17, -56, -118}), AbstractC1387m.m2421h(new byte[]{-121, -47, 94, -17, -63, -105, 58, 52, -100, -45, 73}, new byte[]{-13, -90, 59, -127, -75, -18, 26, 82}), AbstractC1387m.m2421h(new byte[]{-26, 92, -85, 22, -21, -78, 13, 38, -5, 93, -85}, new byte[]{-110, 43, -50, 120, -97, -53, 45, 64}), AbstractC1387m.m2421h(new byte[]{6, -16, -77, -56, 123, -76, 5, 64, 27, -1}, new byte[]{114, -121, -42, -90, 15, -51, 37, 51}), AbstractC1387m.m2421h(new byte[]{23, -36, -27, 81, 119, -105, -101, -97, 10, -52, -24, 75}, new byte[]{99, -85, ByteCompanionObject.MIN_VALUE, 63, 3, -18, -69, -6}), AbstractC1387m.m2421h(new byte[]{-80, -44, 10, 43, -116, 10, 75, 22, -91, -40, 10, 43}, new byte[]{-61, -79, 124, 78, -30, 126, 50, 54})};
        String[] strArr2 = {AbstractC1387m.m2421h(new byte[]{117, -58}, new byte[]{71, -12, -14, 10, -118, -89, -81, 60}), AbstractC1387m.m2421h(new byte[]{-59, -8}, new byte[]{-9, -52, -102, 13, -47, -98, -21, 1}), AbstractC1387m.m2421h(new byte[]{23, -81}, new byte[]{37, -102, 40, 37, 39, 43, -19, 66}), AbstractC1387m.m2421h(new byte[]{-50, 8}, new byte[]{-4, 62, -38, -5, -125, -27, 93, -16}), AbstractC1387m.m2421h(new byte[]{-27, 59}, new byte[]{-41, 3, 123, 21, 12, 68, 95, -105}), AbstractC1387m.m2421h(new byte[]{-68, 66}, new byte[]{-117, 119, -104, 45, -7, 125, -38, -127}), AbstractC1387m.m2421h(new byte[]{66, -17}, new byte[]{112, -35, -15, -89, -117, -106, 25, ByteCompanionObject.MIN_VALUE}), AbstractC1387m.m2421h(new byte[]{-32, -85}, new byte[]{-46, -97, 93, -69, 105, -57, -117, 86}), AbstractC1387m.m2421h(new byte[]{-90, 123}, new byte[]{-108, 78, 50, 55, 83, 14, 112, 68}), AbstractC1387m.m2421h(new byte[]{-95, -24}, new byte[]{-109, -34, 84, 16, 115, -2, 76, -50}), AbstractC1387m.m2421h(new byte[]{-98, -6}, new byte[]{-84, -62, -103, 120, 122, 51, Base64.padSymbol, -8}), AbstractC1387m.m2421h(new byte[]{-81, -61}, new byte[]{-104, -10, 70, 121, 71, 2, 68, -11})};
        String strM162m = AbstractC0074a.m162m(" ", strTrim, " ");
        for (int i10 = 0; i10 < 12; i10++) {
            strM162m = strM162m.replace(AbstractC0074a.m165p(new StringBuilder(" "), strArr[i10], " "), " " + strArr2[i10] + " ");
        }
        String strTrim2 = strM162m.trim();
        ArrayList arrayList = new ArrayList();
        for (String str2 : strTrim2.split(AbstractC1387m.m2421h(new byte[]{-15, 69, -116}, new byte[]{-83, 54, -89, 11, -83, -45, 39, 105}))) {
            if (!str2.equals(AbstractC1387m.m2421h(new byte[]{-84, 7, 115, -50, -98, -101, 20, -97, -84, 3, 114, -13, -98, -108, 21, -82, -83, 58, 115, -64}, new byte[]{124, -72, -93, 112, 78, 45, -60, 47})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{108, -39, -47, -37, 1, 8, -61, 87, 108, -44}, new byte[]{-68, 109, 1, 107, -47, -70, 19, -25})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{96, 48, 108, -61, -124, 120}, new byte[]{16, 92, 9, -94, -9, 29, 72, 67}))) {
                arrayList.add(m5388a(str2));
            }
        }
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            while (true) {
                sb.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                }
                sb.append((CharSequence) " ");
            }
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: b */
    public final List m5391b(LinkedHashMap linkedHashMap) {
        HashMap map = new HashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Iterator it = ((List) entry.getValue()).iterator();
            while (it.hasNext()) {
                String strM5390d = m5390d((String) it.next());
                String str = (String) entry.getKey();
                if (!strM5390d.isEmpty()) {
                    ((Set) map.computeIfAbsent(strM5390d, new C0077d(9))).add(str);
                }
            }
        }
        List<C3447c0> list = this.f9945a;
        for (C3447c0 c3447c0 : list) {
            if (linkedHashMap.containsKey(c3447c0.f9940a)) {
                String str2 = c3447c0.f9942c;
                String str3 = c3447c0.f9940a;
                if (!str2.isEmpty()) {
                    ((Set) map.computeIfAbsent(str2, new C0077d(9))).add(str3);
                }
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (C3447c0 c3447c1 : list) {
            String str4 = c3447c1.f9940a;
            String str5 = c3447c1.f9942c;
            if (linkedHashMap.containsKey(str4) && ((Set) map.get(str5)).size() == 1) {
                linkedHashMap2.putIfAbsent(str5 + (char) 0 + c3447c1.f9940a, c3447c1);
            }
        }
        return Collections.unmodifiableList(new ArrayList(linkedHashMap2.values()));
    }
}

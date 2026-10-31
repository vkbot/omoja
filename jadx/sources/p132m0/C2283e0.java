package p132m0;

import android.R;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.fragment.app.C0566h;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONObject;
import p032c7.RunnableC1001e;
import p041d4.C1275i;
import p041d4.C1279m;
import p047e0.AbstractC1387m;
import p047e0.C1344d1;
import p062f5.RunnableC1556j;
import p078h0.C1652b;
import p098j0.C1917c;
import p098j0.C1919e;
import p121l0.C2194a;
import p121l0.C2195b;
import p142n0.EnumC2468c;
import p142n0.EnumC2469d;
import p225w0.C3481o0;

/* JADX INFO: renamed from: m0.e0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2283e0 extends C2195b {

    /* JADX INFO: renamed from: A */
    public static final String f6014A;

    /* JADX INFO: renamed from: B */
    public static final String f6015B;

    /* JADX INFO: renamed from: b */
    public View f6016b;

    /* JADX INFO: renamed from: c */
    public Spinner f6017c;

    /* JADX INFO: renamed from: d */
    public Spinner f6018d;

    /* JADX INFO: renamed from: e */
    public ImageView f6019e;

    /* JADX INFO: renamed from: f */
    public TextView f6020f;

    /* JADX INFO: renamed from: g */
    public TextView f6021g;

    /* JADX INFO: renamed from: h */
    public TextView f6022h;

    /* JADX INFO: renamed from: i */
    public Button f6023i;

    /* JADX INFO: renamed from: j */
    public Button f6024j;

    /* JADX INFO: renamed from: k */
    public TabLayout f6025k;

    /* JADX INFO: renamed from: l */
    public RecyclerView f6026l;

    /* JADX INFO: renamed from: m */
    public C2342q1 f6027m;

    /* JADX INFO: renamed from: n */
    public ArrayList f6028n;

    /* JADX INFO: renamed from: p */
    public RunnableC2273c0 f6030p;

    /* JADX INFO: renamed from: q */
    public RunnableC2273c0 f6031q;

    /* JADX INFO: renamed from: r */
    public int f6032r;

    /* JADX INFO: renamed from: x */
    public long f6038x;

    /* JADX INFO: renamed from: y */
    public boolean f6039y;

    /* JADX INFO: renamed from: o */
    public final Handler f6029o = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: s */
    public int f6033s = -1;

    /* JADX INFO: renamed from: t */
    public String f6034t = "";

    /* JADX INFO: renamed from: u */
    public String f6035u = "";

    /* JADX INFO: renamed from: v */
    public String f6036v = "";

    /* JADX INFO: renamed from: w */
    public String f6037w = "";

    /* JADX INFO: renamed from: z */
    public EnumC2278d0 f6040z = EnumC2278d0.f5994h;

    static {
        AbstractC1387m.m2421h(new byte[]{48, -85, 70, 11, 115, 24, -91, -84, 10, -93, 66, 19, 110, 5, -81, -75, 57, -116, 72, 31, 105, 24, -93, -70, 10, -78, 78, 14, 111, 9, -65, -89}, new byte[]{85, -45, 42, 106, 29, 108, -52, -44});
        AbstractC1387m.m2421h(new byte[]{123, 40, -53, -86, -52, 79, 121, -39, 65, 32, -49, -78, -47, 82, 115, -64, 114, 15, -59, -66, -42, 79, ByteCompanionObject.MAX_VALUE, -49, 65, 35, -58, -89, -42}, new byte[]{30, 80, -89, -53, -94, 59, 16, -95});
        AbstractC1387m.m2421h(new byte[]{-74, 39, 59, 86, 116, 84, -67, 109, -116, 47, 63, 78, 105, 73, -73, 116, -65, 0, 53, 66, 110, 84, -69, 123, -116, 60, 56, 90, 119, 65, -70, 113, -96}, new byte[]{-45, 95, 87, 55, 26, 32, -44, 21});
        AbstractC1387m.m2421h(new byte[]{-49, -89, 68, -97, 93, -107, -80, -90, -11, -82, 90, -122, 93, -66, -69, -85, -34, -85, 71, -112, 108, ByteCompanionObject.MIN_VALUE, -67, -70, -40, -70, 91, -115}, new byte[]{-86, -33, 40, -2, 51, -31, -39, -34});
        AbstractC1387m.m2421h(new byte[]{-109, 100, -102, -29, -10, 8, -54, -37, -87, 109, -124, -6, -10, 35, -63, -42, -126, 104, -103, -20, -57, 31, -52, -50, -101, 125, -104, -26, -21}, new byte[]{-10, 28, -10, -126, -104, 124, -93, -93});
        f6014A = AbstractC1387m.m2421h(new byte[]{58, -91, 13, 4, -95, -125, -20, 63, 54, -71, 69, 6, -79, -54, -68, 103, 96}, new byte[]{89, -51, 104, 118, -40, -82, -115, 86});
        AbstractC1387m.m2421h(new byte[]{-88, 14, 49, 120, 100, -37, -110, -58, -92, 18, 121, 123, 111, -114, -99, -126, -69, 15, 48, 59, 46, -63}, new byte[]{-53, 102, 84, 10, 29, -10, -13, -81});
        f6015B = AbstractC1387m.m2421h(new byte[]{8, 77, -54, -17, -83, -50, 126, 112, 39, 71, -58, -24, -80, -62, 113, 67, 11, 64, -33, -7, -89, -39, 122, 120, 39, 81, -54, -20, -95}, new byte[]{120, 37, -77, -100, -60, -83, 31, 28});
    }

    /* JADX INFO: renamed from: E */
    public static boolean m3669E(String str) {
        return AbstractC1387m.m2421h(new byte[]{110, 17, -88, 11, 79, 9, -28, -106}, new byte[]{Base64.padSymbol, 69, -23, 89, 27, 64, -86, -47}).equals(str) || AbstractC1387m.m2421h(new byte[]{109, -1, 95, 80, -55, -39, -71, -31}, new byte[]{62, -68, 30, 30, -121, -112, -9, -90}).equals(str) || AbstractC1387m.m2421h(new byte[]{-73, 59, 92, -127, 98, -81, 64, -45, -70, 51}, new byte[]{-12, 116, 18, -49, 39, -20, 20, -102}).equals(str) || AbstractC1387m.m2421h(new byte[]{-34, 73, -17, -29, 106, -41, -94, 124, -45, 78, -5}, new byte[]{-102, 0, -68, -96, 37, -127, -25, 46}).equals(str) || AbstractC1387m.m2421h(new byte[]{98, -96, -98, 99, -19, 68, 43, 53, 120, -96, -112, 117, -24, 75, 44, 49, 102, -70, -106, 110, -17, 94}, new byte[]{39, -18, -33, 33, -95, 13, 101, 114}).equals(str) || AbstractC1387m.m2421h(new byte[]{-73, -79, 101, 65, 107, -75, 40, -81, -94, -71, 98, 81, 125, -67, Base64.padSymbol, -79, -83, -75}, new byte[]{-32, -16, 44, 21, 34, -5, 111, -16}).equals(str) || AbstractC1387m.m2421h(new byte[]{-55, 69, 108, 40, -112, -41, -82, 91, -43, 71, 98, 57, -112, -46, -77, 81, -34, 95, 121, 60, -127, -59}, new byte[]{-101, 0, Base64.padSymbol, 125, -43, -124, -6, 18}).equals(str) || AbstractC1387m.m2421h(new byte[]{98, 89, -38, 20, 62, -83, -42, -37, 126, 91, -44, 5, 62, -88, -53, -47, 117, 67, -55, 8, 53, -70}, new byte[]{48, 28, -117, 65, 123, -2, -126, -110}).equals(str) || AbstractC1387m.m2421h(new byte[]{-5, -25, 49, 114, 79, 29, -117, 106, -22, -21, 49, 114, 89, 1, -119, 102, -3, -18, 43}, new byte[]{-88, -94, ByteCompanionObject.MAX_VALUE, 54, 6, 83, -52, 53}).equals(str);
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000d  */
    /* JADX INFO: renamed from: u */
    public static String m3670u(String str) {
        String strTrim;
        if (str == null) {
            strTrim = "";
        } else {
            strTrim = str.trim();
            if (strTrim.length() == 0) {
                strTrim = "";
            }
        }
        return strTrim.length() == 0 ? AbstractC1387m.m2421h(new byte[]{-120, 20, 81, -24, 14, 91, -120, 85, -20, 89, 49, -115, -107, 90, -75, 84, -39, 88, 13, 125, -2, 56, -38, 14, -120, 54, 81, -29, -2, 49, -37, 56, -120, 49, 80, -33, -1, 6, 43, 85, -30, 89, 63, -115, -110, 90, -69, 85, -27, 89, 53, -116, -83, -92, 43, 85, -57, 88, 1, -115, -112, 91, -113, 85, -32, 89, 58, -116, -94, -86, -37, 56, -120, 60, -95, -115, -111, 90, -66, 84, -40, 89, 52, -115, -102, 90, -69, 85, -29, -87, 81, -30, -1, 10, -37, Base64.padSymbol, -119, 14, 81, -27, -2, 55, -38, 6, 118}, new byte[]{88, -119, -127, 93, 46, -118, 11, -123}) : m3671x(strTrim);
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000d  */
    /* JADX INFO: renamed from: x */
    public static String m3671x(String str) {
        String strTrim;
        if (str == null) {
            strTrim = "";
        } else {
            strTrim = str.trim();
            if (strTrim.length() == 0) {
                strTrim = "";
            }
        }
        String lowerCase = strTrim.toLowerCase();
        if (lowerCase.length() == 0) {
            return AbstractC1387m.m2421h(new byte[]{111, -42, -11, -99, 18, -74, -92, 32, 11, -101, -107, -8, -119, -73, -103, 33, 62, -102, -87, 8, -29, -26, -9, 78, 111, -12, -12, -88, -29, -24, -10, 119, 110, -57, 5, -8, -120, -73, -102, 32, 1, -101, -102, -8, -120, -73, -97, -34, -97, -101, -70, -7, -78, -73, -97, 33, 56, -101, -99, -8, -113, -73, -105, -48, 111, -10, -11, -99, 18, -73, -104, 32, 10, -102, -91, -8, -121, -73, -109, 32, 15, -101, -104, -8, -126, 71, -9, 79, 110, -53, -11, -106, -29, -29, -9, 72, 111, -16, -11, -99, -30, -37, 9}, new byte[]{-65, 75, 37, 40, 50, 103, 39, -16});
        }
        if (lowerCase.contains(AbstractC1387m.m2421h(new byte[]{-102, -61, 19, -4, Base64.padSymbol, -14, -109, -20, -106, -33, 41, -5, 49, -60, -106}, new byte[]{-7, -85, 118, -114, 68, -83, -14, -123})) || lowerCase.contains(AbstractC1387m.m2421h(new byte[]{103, 114, -110, 76, -9, -80, -21, -21, 119, 105}, new byte[]{18, 7, -5, 40, -40, -60, -124, ByteCompanionObject.MIN_VALUE}))) {
            return AbstractC1387m.m2421h(new byte[]{36, -4, -28, 48, 99, 126, 103, 97, 70, -79, -124, 84, -63, ByteCompanionObject.MAX_VALUE, 82, 97, 65, -80, -74, -91, -109, 27, 50, 1, 36, -36, -28, 56, -110, 36, 51, 52, -44, 34, 92, -32, 49, -42, -62, -16, -67, 14, 96, -65, 99, -38, -105, -40, -112, 78, 64, -22, 40, -54, -116, -97, -44, -79, -86, 84, -63, ByteCompanionObject.MAX_VALUE, 88, 96, 116, -79, -118, 85, -6, 126, 96, 97, 65, 65, 119, -19, 38, -35, -101, -111, -75, 40, 91, -47, 99, ByteCompanionObject.MAX_VALUE, 90, -111, 36, -34, -28, 59, -109, 29, 51, 51, 36, -33, -27, 5, -109, 23, 51, 51, 36, -44, 20, 85, -15, 126, 103, 97, 74, -79, ByteCompanionObject.MIN_VALUE, -85}, new byte[]{-12, 97, 52, -123, 67, -81, -30, -79});
        }
        if (lowerCase.contains(AbstractC1387m.m2421h(new byte[]{-7, 100, 28, 100, -122, -43, 38, 40, -13, 40, 25, 100, ByteCompanionObject.MIN_VALUE, -41, 32, 47, -24, 97, 6, 111}, new byte[]{-101, 8, 105, 1, -14, -70, 73, 92})) || lowerCase.contains(AbstractC1387m.m2421h(new byte[]{-74, 90, 51, 90, 40, 70, -55, -111, -76, 74, 47, 67, 40, 88, -33, -40, -85, 65, 46}, new byte[]{-60, 47, 93, 46, 65, 43, -84, -79}))) {
            return AbstractC1387m.m2421h(new byte[]{27, 123, 89, -91, 34, -72, -13, 78, 75, 54, 57, -64, 68, -21, 83, 79, 126, 55, 1, -64, 70, -22, 110, 79, 115, 55, 6, 48, -79, 86, -90, -6, -65, -119, -26, 100, -101, 21, 3, 44, 27, 83, 89, -82, 35, -127, 3, 33, 27, 92, 89, -96, 34, -68, 3, 39, 27, 94, -89, 48, 35, -88, 2, 20, 27, 82, 89, -96, 35, -125, 2, 29, 27, 83, -87, -63, 115, -22, 99, 79, 124, 55, 9, -64, 70, -21, 91, 79, 126, 54, 52, -64, 75, -21, 92, -65, 27, 89, 88, -112, 35, -126, 3, 36, 27, 88, 89, -90, 35, -113, 3, 34, 27, 94, 88, -98, -45, -22, 107, -65, 27, 89, 89, -82, 35, -120, 2, 29, 27, 88, 88, -112, 35, -126, 2, 29, 27, 83, -87, -63, 114, -22, 109, 79, 116, 55, 9, -63, 124, -22, 101, 79, 126, 54, 52, -64, 75, -22, 102, -79}, new byte[]{-53, -26, -119, 16, -13, 58, -45, -97});
        }
        if (lowerCase.contains(AbstractC1387m.m2421h(new byte[]{-57, 101, 58, 22, -2, -96, 60, -4, -51, 41, 46, 23, -21, -65, 39, -19, -41, 41, 38, 0, -86, -95, 60, -4, -123, 108, 33, 18, -24, -93, 54, -20}, new byte[]{-91, 9, 79, 115, -118, -49, 83, -120}))) {
            return AbstractC1387m.m2421h(new byte[]{-123, 51, -20, -91, -67, -10, -59, 47, -81, ByteCompanionObject.MAX_VALUE, 73, 114, 24, 18, 122, -31, 23, -28, 72, 78, 24, 30, 122, -18, 23, -30, -73, -32, 25, 11, 122, -31, 23, -28, 72, 78, 24, 30, 122, -29, 22, -35, 73, 117, -23, -37, -58, 46, -94, 43, -10, -81, -67, -15, -118, -117, ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MAX_VALUE, 73, ByteCompanionObject.MAX_VALUE, 25, 39, 122, -23, 22, -35, 73, 126, 24, 25, 122, -29, 22, -35, 73, 117, -23, 72, 43, -117, 121, -113, 38, 17, 73, 72, 37, -117, 113, -113, 44, 16, 116, 73, 18, -117, 114, 113}, new byte[]{-57, 95, -103, -64, -55, -103, -86, 91});
        }
        if (lowerCase.contains(AbstractC1387m.m2421h(new byte[]{2, -64, -7, 68, 108, -62, -69, 89, 8, -64, -23, 82, 123, -52, -70, 67, 5, -34, -84, 72, 107, -115, -70, 88, 12, -64}, new byte[]{96, -84, -116, 33, 24, -83, -44, 45}))) {
            return AbstractC1387m.m2421h(new byte[]{-52, -66, -101, 10, -50, -34, 60, 18, 94, 66, 14, -102, -49, -22, Base64.padSymbol, 40, -82, 34, 99, -9, -86, -113, 88, 120, 48, 35, 95, -10, -99, -114, 111, 120, 49, 34, 107, -9, -94, 113, -52, 120, 17, 34, 107, -10, -97, -113, 89, 120, 57, 34, 110, -9, -96, -114, 111, 121, 15, 35, 92, -9, -89, -114, 110, 120, 59, -46, -100, 75, 106, 58, -104, -57, -31, -122, -74, 7, -49, -25, 60, 19, 94, 74, -2, -9, -84, -113, 82, 120, 53, 34, 96, -9, -83, -113, 81, 120, 48, 34, 107, 7, -50, -36, Base64.padSymbol, 41, 95, 112, 15, -89, -49, -31, 60, 17, 95, 115, 15, -91, -49, -19, 60, 22, -96}, new byte[]{-114, -14, -34, 39, 31, 95, -20, -88});
        }
        if (lowerCase.contains(AbstractC1387m.m2421h(new byte[]{85, 88, 62, 59, 91, -51, 100, -109, 67, 84, 42, 33}, new byte[]{38, 59, 95, 85, 123, -71, 13, -2}))) {
            return AbstractC1387m.m2421h(new byte[]{125, -84, 18, 60, 119, 108, 102, 121, 125, -116, 18, 49, -121, 2, 11, 22, 24, 22, 18, 60, 119, 98, 102, ByteCompanionObject.MAX_VALUE, 125, -126, 18, 52, 119, 111, 102, 118, -125, 22, 18, 19, 119, 104, 102, 125, 124, -72, 19, 6, 119, 106, 103, 68, 125, -125, -30, 80, 39, 2, 3, 22, 27, -26, 122, 81, 27, -14, 103, 71, 125, -120, 18, 62, 118, 82, 103, 73, 125, ByteCompanionObject.MIN_VALUE, 18, 52, 119, 111, 102, 126, 124, -71, -30, 81, 26, 2, 6, -26, 125, -116, 18, 60, 119, 108, 102, 121, 125, -116, 18, 49, 118, 87, -106, 22, 21, 22, 18, 53, 119, 103, 103, 70, 125, ByteCompanionObject.MIN_VALUE, 18, 57, 118, 80, 102, 115, -115, -26, 122, 80, 34, -14, 103, 70, 124, -71, 18, 53, 119, 108, 102, 122, -125}, new byte[]{-83, 54, -62, -127, -89, -46, -74, -58});
        }
        if (lowerCase.contains(AbstractC1387m.m2421h(new byte[]{74, 49, 118, 16, 125, 72, 97, -2, 85, 55, 115}, new byte[]{57, 82, 23, 126, 93, 46, 0, -105}))) {
            return AbstractC1387m.m2421h(new byte[]{99, -122, 96, 30, 57, -9, 113, 97, 99, -97, 97, 36, 57, -7, 113, 110, 99, -105, 96, 25, 57, -1, 113, 105, -109, 101, -4, -31, -55, -105, 28, 12, 6, 7, 96, 19, 57, -9, 113, 99, 98, -92, 97, 37, 56, -59, 113, 100, 99, -100, 96, 26, 56, -58, 112, 80, -119, 7}, new byte[]{-77, 39, -80, -92, -23, 71, -95, -36}).concat(strTrim);
        }
        if (lowerCase.contains(AbstractC1387m.m2421h(new byte[]{14, -93, -35, -91, 42, 121, 121, -53, 5, -95, -34, -95, 50, ByteCompanionObject.MAX_VALUE, 114, -97, 15, -19, -54, -96, 34, 98, 120, -104, 20}, new byte[]{103, -51, -85, -60, 70, 16, 29, -21}))) {
            return AbstractC1387m.m2421h(new byte[]{-75, 35, 99, 29, -83, -38, -9, 77, -75, 50, 99, 30, -84, -22, -10, 112, 69, 82, 14, 115, -55, -113, -100, 29, -37, 83, 51, 114, -4, -113, -109, 29, -33, 83, 49, 115, -63, -114, -83, 29, -36, -94, 99, 19, -84, -21, -9, 77, -75, 55, 98, 34, 92, -113, -100, 29, -40, 82, 13, 115, -61, -113, -100, 29, -35, -84, -109, 115, -35, -113, -104, 29, -38, 83, 51, 114, -13, -113, -107, 29, -35, 83, 49, 115, -55, ByteCompanionObject.MAX_VALUE, -10, 119, -75, 63, 99, 29, -84, -32, -10, 119, -75, 58, -109, 115, -53, -113, -106, 29, -40, 82, 13, 115, -50, -113, -104, -19, -76, 5, 99, 22, -83, -33, -10, 120, -75, 53, -109, 115, -61, -113, -104, 29, -35, 83, 50, 115, -58, 113}, new byte[]{101, -126, -77, -93, 124, 95, 38, -51});
        }
        if (lowerCase.contains(AbstractC1387m.m2421h(new byte[]{101, 35, 100, 91, -126, -98, 4, -57, 103, 56, 126, 21, -107, -104, 4, -43, 116, 34, 111, 81, -57, -109, 5, -52, 106}, new byte[]{6, 76, 10, 53, -25, -3, 112, -96})) || lowerCase.contains(AbstractC1387m.m2421h(new byte[]{-26, 37, 117, 115, -20, -127, -60, 7, -22, 36, 59, 110, -3, -125, -60, 27, -10, 119}, new byte[]{-123, 74, 27, 29, -119, -30, -80, 110})) || lowerCase.contains(AbstractC1387m.m2421h(new byte[]{58, -17, -47, 35, 114, -122, 23, 57, 47, -31, -51, 37}, new byte[]{74, -114, -72, 81, 82, -14, 126, 84}))) {
            return AbstractC1387m.m2421h(new byte[]{-111, 38, 12, 9, -8, -54, -59, 124, -11, 107, 108, 108, 99, -53, -8, 125, -64, 106, 80, -100, 8, -92, -106, 18, -111, 15, 12, 6, 8, -96, -105, 34, -112, 60, 12, 4, 9, -103, -105, 32, -112, 58, 13, 51, -8, -53, -4, -116, -111, 1, 12, 1, 8, -91, -106, 19, -111, 1, 12, 12, 8, -89, 102, 124, -2, 107, 98, -100, -102, 87, 3, -106, 97}, new byte[]{65, -69, -36, -68, -40, 27, 70, -84}).concat(strTrim);
        }
        if (lowerCase.contains(AbstractC1387m.m2421h(new byte[]{-15, 47, -16, -86, -41, -93, 119, 102, -26, 35, -15, -65, -47, -74, 119, 103, -75, 53, -9, -88, -52, -96, 97, 41}, new byte[]{-107, 70, -125, -55, -72, -43, 18, 20})) || lowerCase.contains(AbstractC1387m.m2421h(new byte[]{-58, -50, -27, -17, -9, -10, 29, 54, -47, -59, -32, -69, -9, -21, 23, 48, -121, -54, -20, -85, -71, -31}, new byte[]{-89, -84, -125, -34, -41, -123, 120, 68})) || lowerCase.contains(AbstractC1387m.m2421h(new byte[]{67, 49, 93, 52, 125, 112, -111, -57, 80, 50, 88, 114, 56, 97, -112, -43, 86, 58, 88, 38, 51, 124, -115, -122, 68, 60, 78, 104, 57}, new byte[]{34, 83, 59, 6, 93, 19, -7, -90})) || lowerCase.contains(AbstractC1387m.m2421h(new byte[]{41, -41, -26, -126, 65, -44, 107, -90, 41, -58, -20, -106, 21, -33, 124, -11, 36, -37, -15, -58, 7, -33, 123, -69, 46}, new byte[]{74, -76, -123, -26, 97, -80, 14, -43}))) {
            return AbstractC1387m.m2421h(new byte[]{51, 99, -29, 10, 82, 26, 113, 12, 51, 67, -29, 15, -94, 116, 30, 99, 93, 41, -121, 103, 56, 116, 26, 98, 109, 40, -76, 103, 58, 116, 26, 99, 91, 40, -78, 102, 14, -120, -127, 99, 94, 41, -115, -105, 82, 25, 112, 48, 51, 79, -29, 10, 83, 47, 113, 10, -61, -69, ByteCompanionObject.MAX_VALUE, -14, -81, 116, 30, 98, 99, 41, -115, 102, 6, 116, 25, 99, 88, 40, -65, -105, 82, 25, 113, 6, -61, 41, -114, 103, 50, 116, 24, 99, 87, 41, -122, 103, 63, -98, -127}, new byte[]{-29, -7, 51, -73, -126, -92, -95, -77}).concat(strTrim);
        }
        if (lowerCase.contains(AbstractC1387m.m2421h(new byte[]{-78, 43, 87, -49, -14, -91, -113, 20, -90, Base64.padSymbol}, new byte[]{-59, 89, 62, -69, -105, -123, -20, 119})) || lowerCase.contains(AbstractC1387m.m2421h(new byte[]{-101, 87, -105, 27, -71, 45, -44, 15, -116, 81, -44, 12, -19, 59, -46, 19, -117}, new byte[]{-8, 52, -12, ByteCompanionObject.MAX_VALUE, -103, 90, -90, 102})) || lowerCase.contains(AbstractC1387m.m2421h(new byte[]{-21, 56, -65, 81, -4, -43, -3, -125, -3, 56, -73, 70, -19, -112, -20, -126, -17, 62, -65, 70}, new byte[]{-100, 74, -42, 37, -103, -11, -98, -21})) || lowerCase.contains(AbstractC1387m.m2421h(new byte[]{103, 51, 7, 72, 67, -9, -49, 106, 113, 53, 27, 79}, new byte[]{16, 65, 110, 60, 38, -41, -68, 30}))) {
            return AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, 36, 73, 37, 49, 60, -29, -121, 27, 105, 41, 64, -86, Base64.padSymbol, -34, -122, 46, 104, 21, -80, -63, 83, -79, -43, ByteCompanionObject.MAX_VALUE, 6, 72, 16, -63, 93, -80, -27, ByteCompanionObject.MAX_VALUE, 1, 72, 18, -64, 97, 64, -121, 21, 105, 39, 64, -83, Base64.padSymbol, -48, -121, 18, 105, 45, 65, -110, -51, -80, -19, ByteCompanionObject.MAX_VALUE, 4, 73, 46, -63, 82, -80, -19, ByteCompanionObject.MAX_VALUE, 9, 73, 44, 49, Base64.padSymbol, -33, -121, 17, -103, -37, -36, 84, -41, 64}, new byte[]{-81, -71, -103, -112, 17, -19, 96, 87}).concat(strTrim);
        }
        if (lowerCase.contains(AbstractC1387m.m2421h(new byte[]{19, -80, 71, -73, 86, -30, 118, 93, 30, -96, 87}, new byte[]{114, -59, 51, -33, 118, -124, 23, 52})) || lowerCase.contains(AbstractC1387m.m2421h(new byte[]{-105, 112, -64}, new byte[]{-27, 3, -95, -7, 118, -30, 66, -8})) || lowerCase.contains(AbstractC1387m.m2421h(new byte[]{-26, 93, -35, -34, -23, 89, -94, 97, -22, 64, -48}, new byte[]{-123, 53, -76, -80, -120, 116, -63, 13})) || lowerCase.contains(AbstractC1387m.m2421h(new byte[]{-34, -17, 2, 28, 37, -56, -38, -113, -46, -14, 15, 82, 38, -127, -41, -121, -99, -31, 10, 27, 40, -115, -35}, new byte[]{-67, -121, 107, 114, 68, -24, -71, -29})) || lowerCase.contains(AbstractC1387m.m2421h(new byte[]{-42, 44, 6, -95, 45}, new byte[]{-75, 64, 105, -44, 73, 65, -79, -8})) || lowerCase.contains(AbstractC1387m.m2421h(new byte[]{93, -87, -112, 28, -67}, new byte[]{53, -35, -28, 108, ByteCompanionObject.MIN_VALUE, -116, 18, 22})) || lowerCase.contains(AbstractC1387m.m2421h(new byte[]{126, 2, 36, -96, -63, 33, 46}, new byte[]{12, 103, 87, -43, -83, 85, 19, 59}))) {
            return AbstractC1387m.m2421h(new byte[]{-19, 85, 108, 24, -94, -53, 97, -32, 126, -106, -7, -126, -94, -58, -111, -126, 26, -56, -88, -28, -15, -101, Base64.padSymbol, 126, -113, -55, -108, -27, -51, 106, 97, -17, ByteCompanionObject.MAX_VALUE, -84, 9, -28, -16, -102, 5, -126, 31, -55, -110, -27, -51, -101, 48, -125, 35, 57, -7, -118, -93, -12, 97, -26, 126, -101, -7, -121, -93, -1, 96, -46, ByteCompanionObject.MAX_VALUE, -83, -7, -115, -94, -56, 96, -34, -113, -55, -106, -28, -13, -102, 9, -126, 29, -56, -90, -27, -60, -102, 11, -125, 44, 57, -8, -78, -93, -1, 96, -46, ByteCompanionObject.MAX_VALUE, -84, -7, -126, 83, 9, -39, 55, -35, 96, 9, 116, 58, 37, -27, 104, -113}, new byte[]{-81, 25, 41, 53, 115, 74, -79, 82}).concat(strTrim);
        }
        return lowerCase.contains(AbstractC1387m.m2421h(new byte[]{124, 63, -83, -3, -52, 2, 111, -84, 117, 51, -67, -31, -63, 9, 108, -84, 112, 35, -86, -26, -123, 8, 105, -8, 112}, new byte[]{17, 86, -34, -114, -91, 108, 8, -116})) ? AbstractC1387m.m2421h(new byte[]{-5, -13, -86, 52, -51, 40, 64, -14, -5, -45, -86, 49, Base64.padSymbol, 70, 46, -100, -87, -71, -56, 89, -88, 71, 18, -99, -109, -71, -63, 89, -91, -70, -80, -99, -106, -71, -60, -87, -51, 41, 65, -51, -5, -41, -85, 13, -51, 46, 64, -10, -6, -27, 90, 89, -96, 70, 37, 109, -5, -42, -86, 55, -51, 45, 65, -50, -6, -18, -86, 49, -51, 45, -80, -99, -97, -71, -54, 89, -96, 70, 45, -100, -96, -71, -49, -87, -51, 38, 64, -1, -6, -21, -86, 55, -52, 22, 64, -11, -5, -34, -86, 57, -52, 16, 64, -11, -5, -47, 90, 89, -87, 70, 43, -100, -92, 73, -86, 62, -51, 38, 64, -1, -5, -36, -85, 9, -52, 30, 64, -8, -5, -44, -86, 49, -52, 25, -80, -99, -108, -72, -6, 89, -91, 70, 34, -100, -92, -71, -51, 89, -89, 70, 40, 99}, new byte[]{43, 105, 122, -119, 29, -106, -112, 77}) : AbstractC1387m.m2421h(new byte[]{94, 31, 76, 71, -45, 53, -119, -32, 58, 82, 44, 34, 72, 52, -76, -31, 15, 83, 16, -46, 34, 101, -38, -114, 94, Base64.padSymbol, 77, 114, 34, 107, -37, -73, 95, 14, -68, 34, 73, 52, -73, -32, 48, 82, 35, 34, 73, 52, -78, 10, -82}, new byte[]{-114, -126, -100, -14, -13, -28, 10, 48}).concat(strTrim);
    }

    /* JADX INFO: renamed from: A */
    public final void m3672A(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{115, -82, 5, -29, 45, 126}, new byte[]{7, -49, 119, -124, 72, 10, -9, 63}), AbstractC1387m.m2421h(new byte[]{112, -55, -7, 54, 40, -106, 11, 36, 74, -63, -3, 46, 53, -117, 1, Base64.padSymbol, 121, -18, -9, 34, 50, -106, 13, 50}, new byte[]{21, -79, -107, 87, 70, -30, 98, 92}));
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-101, 5, -55}, new byte[]{-8, 104, -83, 11, 110, 120, -76, 9}), str);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-39, 116, -63, 86, 4, -62, -61, -97}, new byte[]{-87, 6, -82, 34, 107, -95, -84, -13}), this.f6040z.f5997c);
            C1652b.m2734a().m2755j().m1641tx(jSONObject);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: B */
    public final boolean m3673B(String str, boolean z9) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{115, -47, 77, 80, 112, 92}, new byte[]{7, -80, 63, 55, 21, 40, -91, 12}), AbstractC1387m.m2421h(new byte[]{31, -7, -109, -43, -102, 49, 103, 93, 37, -15, -105, -51, -121, 44, 109, 68, 22, -34, -99, -63, ByteCompanionObject.MIN_VALUE, 49, 97, 75}, new byte[]{122, -127, -1, -76, -12, 69, 14, 37}));
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{39, 36, -126}, new byte[]{68, 73, -26, -101, 9, -42, 48, 21}), str);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-97, 111, -37, -84, -110, 71, 99, -60}, new byte[]{-17, 29, -76, -40, -3, 36, 12, -88}), this.f6040z.f5997c);
            if (z9) {
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{52, -64, 88, -71, -41, 67, -88, -77, 60}, new byte[]{82, -81, 42, -38, -78, 16, -53, -46}), true);
            }
            JSONObject jSONObjectM1641tx = C1652b.m2734a().m2755j().m1641tx(jSONObject);
            if (jSONObjectM1641tx == null) {
                this.f6039y = false;
                m3674C(AbstractC1387m.m2421h(new byte[]{-34, 52, 8, 16, 82, -124, -71, -62, -34, 20, 8, 21, -94, -22, -44, -83, -69, -114, 9, 44, 82, -124, -71, -62, -33, 46, 9, 34, 82, -116, -71, -56, -34, 19, 9, 38}, new byte[]{14, -82, -40, -83, -126, 58, 105, 125}), AbstractC1387m.m2421h(new byte[]{-106, 18, -65, 53, 53, 106, 26, -25, -106, 53, -66, 14, 52, 88, -21, -77, -5, 93, -37, -107, 53, 102, 27, -42, -105, 13, -66, 8, 52, 87, 27, -40, 102, 93, -48, 100, 103, 4, 121, -77, -13, 92, -20, -101}, new byte[]{70, -115, 110, -75, -27, -44, -53, 99}), m3679v());
                return false;
            }
            JSONObject jSONObjectOptJSONObject = jSONObjectM1641tx.optJSONObject(AbstractC1387m.m2421h(new byte[]{-16, 19, 76, -77, -43, -123}, new byte[]{-108, 118, 58, -38, -74, -32, -92, -43}));
            if (jSONObjectOptJSONObject != null) {
                String strOptString = jSONObjectOptJSONObject.optString(AbstractC1387m.m2421h(new byte[]{66, 92, 1, -113, -83, -94, -50}, new byte[]{35, 56, 101, -3, -56, -47, -67, 98}), "");
                String strOptString2 = jSONObjectOptJSONObject.optString(AbstractC1387m.m2421h(new byte[]{39, -71, -20, 116}, new byte[]{84, -40, ByteCompanionObject.MIN_VALUE, 0, -125, -115, -48, -89}), "");
                if (strOptString.length() > 0) {
                    this.f6034t = strOptString;
                }
                if (strOptString2.length() > 0) {
                    this.f6035u = strOptString2;
                }
            }
            m3677G(jSONObjectM1641tx);
            return m3669E(jSONObjectM1641tx.optString(AbstractC1387m.m2421h(new byte[]{117, 65, -60, -26, 66}, new byte[]{6, 53, -91, -110, 39, -78, -59, -18}), ""));
        } catch (Exception e) {
            this.f6039y = false;
            m3674C(AbstractC1387m.m2421h(new byte[]{-18, 23, 63, 27, 125, 3, 72, 94, -18, 55, 63, 30, -115, 109, 37, 49, -117, -83, 62, 39, 125, 3, 72, 94, -17, 13, 62, 41, 125, 11, 72, 84, -18, 48, 62, 45}, new byte[]{62, -115, -17, -90, -83, -67, -104, -31}), m3670u(e.getMessage()), m3679v());
            return false;
        }
    }

    /* JADX INFO: renamed from: C */
    public final void m3674C(String str, String str2, boolean z9) {
        TextView textView = this.f6020f;
        if (textView != null) {
            textView.setText(str);
        }
        TextView textView2 = this.f6021g;
        if (textView2 != null) {
            textView2.setText(str2);
        }
        ImageView imageView = this.f6019e;
        if (imageView != null) {
            imageView.setVisibility(z9 ? 0 : 8);
        }
        Button button = this.f6023i;
        if (button != null) {
            button.setText(z9 ? AbstractC1387m.m2421h(new byte[]{-62, -45, -111, 113, -74, -66, 66, -37, -61, -3, -112, 72, -73, -115, -77, -117, -91, -94, -15, 31, -37, -47, 45, -117, -96, -94, -1}, new byte[]{18, 114, 65, -49, 102, 1, -109, 91}) : AbstractC1387m.m2421h(new byte[]{4, 23, -124, 118, 84, 79, -104, -110, 5, 57, -123, 79, 85, 124, 105, -62, 110, 102, -23, 24, 58, 32, -10, -62, 110, 102, -20}, new byte[]{-44, -74, 84, -56, -124, -16, 73, 18}));
            this.f6023i.setVisibility(this.f6039y ? 8 : 0);
        }
        Button button2 = this.f6024j;
        if (button2 != null) {
            button2.setVisibility(this.f6039y ? 0 : 8);
        }
    }

    /* JADX INFO: renamed from: D */
    public final void m3675D(Spinner spinner, String str, int i10) {
        int i11;
        String[] strArr = {"", AbstractC1387m.m2421h(new byte[]{-95, -75, 24, 126, 29, -95, 0, -15, -96, -94, 16}, new byte[]{-43, -48, 117, 14, 120, -45, 97, -123}), AbstractC1387m.m2421h(new byte[]{28, 17, -78, -104, 24, 89}, new byte[]{106, 126, -34, -19, 117, 60, 35, -89})};
        String strLoadString = C1652b.m2745o().loadString(str, "");
        if (AbstractC1387m.m2421h(new byte[]{33, 125, -111, 116, -100, -9, 47, -57, 32, 106, -103}, new byte[]{85, 24, -4, 4, -7, -123, 78, -77}).equals(strLoadString)) {
            i11 = 1;
        } else {
            i11 = AbstractC1387m.m2421h(new byte[]{-19, 104, -110, 69, -37, 59}, new byte[]{-101, 7, -2, 48, -74, 94, -90, 13}).equals(strLoadString) ? 2 : 0;
        }
        spinner.setOnItemSelectedListener(null);
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), R.layout.simple_spinner_item, new String[]{getString(com.example.navistart.R.string.exlantix_knob_unassigned), getString(i10), getString(com.example.navistart.R.string.exlantix_knob_volume)});
        arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        spinner.setSelection(i11);
        spinner.setOnItemSelectedListener(new C1344d1(strArr, str));
    }

    /* JADX INFO: renamed from: F */
    public final void m3676F() {
        RunnableC2273c0 runnableC2273c0 = this.f6030p;
        if (runnableC2273c0 != null) {
            this.f6029o.removeCallbacks(runnableC2273c0);
            this.f6030p = null;
        }
    }

    /* JADX INFO: renamed from: G */
    public final void m3677G(JSONObject jSONObject) {
        String strOptString = jSONObject.optString(AbstractC1387m.m2421h(new byte[]{84, -88, -34, -97, -110}, new byte[]{39, -36, -65, -21, -9, 58, 63, -6}), "");
        String strOptString2 = jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-62, 85, 36}, new byte[]{-95, 56, 64, -49, 47, 19, 65, -95}), "");
        boolean z9 = m3679v() || AbstractC1387m.m2421h(new byte[]{45, -108, -120, 36, -2, -119}, new byte[]{125, -43, -63, 118, -69, -51, -14, 36}).equals(strOptString) || AbstractC1387m.m2421h(new byte[]{-95, -9, 84, -1, -116, 118, 21, 56, -86}, new byte[]{-19, -66, 7, -85, -55, 56, 92, 118}).equals(strOptString);
        this.f6039y = m3669E(strOptString);
        if (AbstractC1387m.m2421h(new byte[]{-125, -43, 115, 24, 123, 77, 19, -37, -106, -64}, new byte[]{-13, -76, 26, 106, 30, 41, 76, -68}).equals(strOptString2) || AbstractC1387m.m2421h(new byte[]{-78, 63, 82, -98, 91, -50, 36, 53, -99, 53, 94, -103, 70, -62, 43, 6, -78, 54, 66, -97, 87, -55, 26, 62, -89, 35}, new byte[]{-62, 87, 43, -19, 50, -83, 69, 89}).equals(strOptString2)) {
            this.f6039y = false;
            m3674C(z9 ? AbstractC1387m.m2421h(new byte[]{-70, -103, -9, -86, -44, -29, 41, -22, -70, -71, -9, -81, 36, -116, 120, -123, -44, -45, -104, -58, -124, -116, 118, -123, -36, -45, -110, -57, -71, -116, 114}, new byte[]{106, 3, 39, 23, 4, 93, -7, 85}) : AbstractC1387m.m2421h(new byte[]{64, 51, 124, -77, -16, 97, -99, -82, 64, 19, 124, -74, 0, 15, -16, -63, 37, -119, 125, -113, -16, 97, -99, -82, 65, 41, 125, -127, -16, 105, -99, -92, 64, 20, 125, -123}, new byte[]{-112, -87, -84, 14, 32, -33, 77, 17}), z9 ? AbstractC1387m.m2421h(new byte[]{-117, 78, -72, -78, 3, 104, -113, -107, -118, 96, -72, -70, 3, 98, -114, -88, -117, 87, -72, -71, -13, 6, -33, -59, -27, 62, -19, -35, 83, 7, -18, -59, -26, 63, -35, -36, 110, 7, -32, 59}, new byte[]{91, -17, 104, 12, -45, -41, 94, 21}) : AbstractC1387m.m2421h(new byte[]{107, 24, -91, -111, -86, -110, 87, -124, 107, Base64.padSymbol, -92, -93, -86, -111, -89, -6, 16, 85, -44, -15, -60, -12, 56, -23, 59, 84, -6, -16, -3, -11, 11, 24, 107, 63, -91, -100, -86, -102, 87, -121, 107, 63, -91, -103, -72, -97, -89, -24, 3, -91, -91, -109, -86, -98, 87, -125, 106, 11, -92, -90, -86, -100, 86, -70, 107, 48, 85, -16, -6, -12, 50, -24, 13, 85, -51, -15, -58, 4, 86, -71, 107, 59, -91, -98, -85, -92, 86, -73, 107, 51, -91, -108, -86, -103, 87, ByteCompanionObject.MIN_VALUE, 106, 10, 85, -15, -57, -12, 55, 24, 107, 63, -91, -100, -86, -102, 87, -121, 107, 63, -91, -111, -85, -95, -87}, new byte[]{-69, -123, 117, 33, 122, 36, -121, 56}), z9);
            return;
        }
        if (!jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{-106, -4}, new byte[]{-7, -105, 44, ByteCompanionObject.MIN_VALUE, 51, 105, -43, -70}), true) && !AbstractC1387m.m2421h(new byte[]{35, 117, 67, 48, 67, 28}, new byte[]{101, 52, 10, 124, 6, 88, 1, -106}).equals(strOptString)) {
            this.f6039y = false;
            m3674C(z9 ? AbstractC1387m.m2421h(new byte[]{-40, -36, 29, 105, 43, 48, -111, 58, -40, -4, 29, 108, -37, 95, -64, 85, -74, -106, 114, 5, 123, 95, -50, 85, -66, -106, 120, 4, 70, 95, -54}, new byte[]{8, 70, -51, -44, -5, -114, 65, -123}) : AbstractC1387m.m2421h(new byte[]{-81, 95, -13, 62, -33, -33, -30, 34, -81, ByteCompanionObject.MAX_VALUE, -13, 59, 47, -79, -113, 77, -54, -27, -14, 2, -33, -33, -30, 34, -82, 69, -14, 12, -33, -41, -30, 40, -81, 120, -14, 8}, new byte[]{ByteCompanionObject.MAX_VALUE, -59, 35, -125, 15, 97, 50, -99}), m3670u(jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-119, -70, 68, -92, 93, -55, -83}, new byte[]{-28, -33, 55, -41, 60, -82, -56, -103}), "")), z9);
            return;
        }
        if (AbstractC1387m.m2421h(new byte[]{-50, -86, 19, -1, ByteCompanionObject.MIN_VALUE, 17, -21, -21}, new byte[]{-99, -2, 82, -83, -44, 88, -91, -84}).equals(strOptString)) {
            m3674C(AbstractC1387m.m2421h(new byte[]{84, 90, 12, -62, -79, -20, 113, 118, -92, 19, 93, -90, -33, -119, 31, 37, 4, 19, 83, -90, -41, -119, 21, 36, 57, 18, 100, -90, -44}, new byte[]{-124, -62, -36, 118, 97, 89, -96, -12}), AbstractC1387m.m2421h(new byte[]{-39, 55, 10, 11, -61, -111, -125, Base64.padSymbol, -40, 34, 10, 9, -62, -88, -126, 6, 41, 116, 90, 97, -90, -6, -28, 99, -79, 117, 102, -111, -62, -85, -126, 13, -39, 26, 11, 49, -62, -91, -126, 5, -39, 16, 10, 12, -61, -110, -125, 60, 41, 117, 103, 97, -93, 10, -126, 9, -39, 24, 10, 15, -61, -107, -126, 9, -39, 21, 11, 52, Base64.padSymbol}, new byte[]{9, -91, -38, -79, 19, 42, 82, -77}), z9);
            return;
        }
        if (AbstractC1387m.m2421h(new byte[]{-90, -98, 68, -15, -112, -79, 66, 16}, new byte[]{-11, -35, 5, -65, -34, -8, 12, 87}).equals(strOptString)) {
            m3674C(AbstractC1387m.m2421h(new byte[]{3, -97, -37, 20, -90, -113, 68, -110, -13, -42, -118, 112, -56, -22, 42, -63, 83, -42, -124, 112, -64, -22, 32, -64, 110, -41, -77, 112, -61}, new byte[]{-45, 7, 11, -96, 118, 58, -107, 16}), AbstractC1387m.m2421h(new byte[]{23, -48, -111, 111, 108, -126, 41, 104, -25, -104, -6, 54, 1, -25, 71, 4, 120, -104, -6, 54, 4, 23, 40, 84, 22, -57, -112, 82, 108, -119, 41, 104, -25, -103, -63, -58, 109, -75, 41, 97, 23, -13, -112, 83, 109, -77, 41, 106, 23, -11, -112, 88, 108, -117, -41}, new byte[]{-57, 72, 64, -26, -68, 55, -7, -44}), z9);
            return;
        }
        if (AbstractC1387m.m2421h(new byte[]{108, -102, -71, 82, -31, 70, 65, -66, 97, -110}, new byte[]{47, -43, -9, 28, -92, 5, 21, -9}).equals(strOptString) || AbstractC1387m.m2421h(new byte[]{67, -72, -94, 33, -42, -73, -40, 29, 78, -65, -74}, new byte[]{7, -15, -15, 98, -103, -31, -99, 79}).equals(strOptString) || AbstractC1387m.m2421h(new byte[]{5, -121, 51, 116, 58, -124, -30, 75, 31, -121, Base64.padSymbol, 98, 63, -117, -27, 79, 1, -99, 59, 121, 56, -98}, new byte[]{64, -55, 114, 54, 118, -51, -84, 12}).equals(strOptString)) {
            m3674C(AbstractC1387m.m2421h(new byte[]{-7, -4, 54, -89, 20, -75, -11, -97, 9, -75, 103, -61, 122, -48, -101, -52, -87, -75, 105, -61, 114, -48, -111, -51, -108, -76, 94, -61, 113}, new byte[]{41, 100, -26, 19, -60, 0, 36, 29}), AbstractC1387m.m2421h(new byte[]{-50, 54, 98, 120, -63, -8, -50, 3, -50, 18, 99, 72, -64, -53, -50, 9, -50, 28, 98, 122, -64, -51, -49, 54, 62, 121, 8, -26, -63, -10, -50, 4, -50, 23, 98, 121, -63, -10, -50, 9, -50, 21, -100}, new byte[]{30, -87, -78, -58, 17, 76, 30, -71}), z9);
            return;
        }
        if (AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, 6, -4, 20, 28, 48, -38, 86, 106, 14, -5, 4, 10, 56, -49, 72, 101, 2}, new byte[]{40, 71, -75, 64, 85, 126, -99, 9}).equals(strOptString)) {
            m3674C(AbstractC1387m.m2421h(new byte[]{71, -99, -82, 45, 0, -103, 29, -1, -73, -44, -1, 73, 110, -4, 115, -84, 23, -44, -15, 73, 102, -4, 121, -83, 42, -43, -58, 73, 101}, new byte[]{-105, 5, 126, -103, -48, 44, -52, 125}), AbstractC1387m.m2421h(new byte[]{5, 36, 0, 50, 114, -8, 51, 112, -11, 98, 110, 87, 32, -99, 81, 28, 96, 99, 82, -90, 114, -9, 51, 113, 5, 12, 0, 57, 114, -13, 51, 118, -5}, new byte[]{-43, -78, -48, -122, -94, 77, -29, -52}), z9);
            return;
        }
        if (AbstractC1387m.m2421h(new byte[]{6, -117, 4, 20, 42, 91, -91, -117, 26, -119, 10, 5, 42, 94, -72, -127, 17, -111, 17, 0, 59, 73}, new byte[]{84, -50, 85, 65, 111, 8, -15, -62}).equals(strOptString) || AbstractC1387m.m2421h(new byte[]{-95, 85, -15, -37, -47, -65, 111, 112, -67, 87, -1, -54, -47, -70, 114, 122, -74, 79, -30, -57, -38, -88}, new byte[]{-13, 16, -96, -114, -108, -20, 59, 57}).equals(strOptString) || AbstractC1387m.m2421h(new byte[]{7, -51, 7, 109, 87, -67, 34, 57, 22, -63, 7, 109, 65, -95, 32, 53, 1, -60, 29}, new byte[]{84, -120, 73, 41, 30, -13, 101, 102}).equals(strOptString)) {
            m3674C(AbstractC1387m.m2421h(new byte[]{-16, 28, 80, 24, 69, 41, -4, 59, 0, 85, 1, 124, 43, 76, -110, 104, -96, 85, 15, 124, 35, 76, -104, 105, -99, 84, 56, 124, 32}, new byte[]{32, -124, ByteCompanionObject.MIN_VALUE, -84, -107, -100, 45, -71}), AbstractC1387m.m2421h(new byte[]{52, 109, 13, 95, -96, 11, 36, -4, 53, 122, 12, 103, -96, 9, 36, -4, 52, 70, -3, 63, -49, 104, 116, -103, 92, 42, 111, 62, -1, 105, 67, -103, 94, 43, 94, -63}, new byte[]{-28, -6, -35, -17, 112, -71, -12, 73}), z9);
            return;
        }
        if (AbstractC1387m.m2421h(new byte[]{-86, 50, -24, 57, -12, -51}, new byte[]{-6, 115, -95, 107, -79, -119, 51, -96}).equals(strOptString)) {
            m3674C(AbstractC1387m.m2421h(new byte[]{25, 54, -65, 112, 59, 31, 58, -3, 25, 22, -65, 117, -53, 112, 107, -110, 119, 124, -48, 28, 107, 112, 101, -110, ByteCompanionObject.MAX_VALUE, 124, -38, 29, 86, 112, 97}, new byte[]{-55, -84, 111, -51, -21, -95, -22, 66}), AbstractC1387m.m2421h(new byte[]{-118, 21, 9, 50, 119, -113, -1, 74, -117, 59, 9, 58, 119, -123, -2, 119, -118, 12, 9, 57, -121, -32, -100, 27, -47, 100, 102, 92, 25, -32, -107, 26, -25, 100, 108, 92, 26, -32, -112, -28}, new byte[]{90, -76, -39, -116, -89, 48, 46, -54}), true);
            return;
        }
        if (AbstractC1387m.m2421h(new byte[]{74, 9, -47, -61, 0, -114, 120, -115, 65}, new byte[]{6, 64, -126, -105, 69, -64, 49, -61}).equals(strOptString)) {
            m3674C(AbstractC1387m.m2421h(new byte[]{72, 110, -59, -123, 84, -22, 41, 29, 72, 78, -59, ByteCompanionObject.MIN_VALUE, -92, -124, 70, 114, 38, 36, -95, -24, 62, -124, 66, 115, 22, 37, -110, -24, 49, -124, 68, 115, 19}, new byte[]{-104, -12, 21, 56, -124, 84, -7, -94}), AbstractC1387m.m2421h(new byte[]{-112, 115, -31, 0, -80, 63, 95, -116, -112, 83, -31, 5, 64, 81, 60, -29, -2, 56, -77, 109, -34, 81, Base64.padSymbol, -30, -53, -55, -31, 7, 64, 80, 15, -29, -16, 57, ByteCompanionObject.MIN_VALUE, 109, -34, 80, 13, -29, -11, -57}, new byte[]{64, -23, 49, -67, 96, -127, -113, 51}), true);
            return;
        }
        if (AbstractC1387m.m2421h(new byte[]{-70, 35, 87, -13, 121, 21, -21, 44, -67, 62, 65, -12}, new byte[]{-2, 106, 4, -80, 54, 91, -91, 105}).equals(strOptString)) {
            m3674C(z9 ? AbstractC1387m.m2421h(new byte[]{118, 67, -113, -64, -43, -109, 18, 26, 118, 99, -113, -59, 37, -4, 67, 117, 24, 9, -32, -84, -123, -4, 77, 117, 16, 9, -22, -83, -72, -4, 73}, new byte[]{-90, -39, 95, 125, 5, 45, -62, -91}) : AbstractC1387m.m2421h(new byte[]{-85, -81, 81, -78, -81, 26, -100, -95, -85, -113, 81, -73, 95, 116, -15, -50, -50, 21, 80, -114, -81, 26, -100, -95, -86, -75, 80, ByteCompanionObject.MIN_VALUE, -81, 18, -100, -85, -85, -120, 80, -124}, new byte[]{123, 53, -127, 15, ByteCompanionObject.MAX_VALUE, -92, 76, 30}), AbstractC1387m.m2421h(new byte[]{118, 35, 28, 88, -17, -65, -32, 95, 119, 14, -20, 58, -127, -32, -114, 57, 36, 82, 121, 59, -66, -31, -65, 56, 27, 82, 124, -58, 30, -32, -113, 57, 38, 82, 114, 59, -70, -32, -120, 56, 29, 83, 64, -54, -18, -113, -32, 86, 118, 54, 28, 80, -18, -117, -31, 102, 119, 5, 28, 82, -17, -78, -31, 105, 119, 13, -20, 58, -119, -32, ByteCompanionObject.MIN_VALUE, 56, 27, 82, 114, 58, -116, -32, -114, -58}, new byte[]{-90, -126, -52, -22, 62, 48, 48, -24}), z9);
            return;
        }
        if (AbstractC1387m.m2421h(new byte[]{-112, -53, -52, -75, -56, 31}, new byte[]{-42, -118, -123, -7, -115, 91, -102, ByteCompanionObject.MIN_VALUE}).equals(strOptString)) {
            this.f6039y = false;
            m3674C(z9 ? AbstractC1387m.m2421h(new byte[]{18, 7, -88, 121, -70, -55, 55, 121, 18, 39, -88, 124, 74, -90, 102, 22, 124, 77, -57, 21, -22, -90, 104, 22, 116, 77, -51, 20, -41, -90, 108}, new byte[]{-62, -99, 120, -60, 106, 119, -25, -58}) : AbstractC1387m.m2421h(new byte[]{-106, 34, 121, -68, -82, 3, 97, -108, -106, 2, 121, -71, 94, 109, 12, -5, -13, -104, 120, ByteCompanionObject.MIN_VALUE, -82, 3, 97, -108, -105, 56, 120, -114, -82, 11, 97, -98, -106, 5, 120, -118}, new byte[]{70, -72, -87, 1, 126, -67, -79, 43}), m3671x(jSONObject.optString(AbstractC1387m.m2421h(new byte[]{14, -109, 95, -112, -14, -69, 106}, new byte[]{99, -10, 44, -29, -109, -36, 15, -37}), "")), z9);
        } else if (AbstractC1387m.m2421h(new byte[]{-107, -82, 38, -111, -68, -96, 122}, new byte[]{-58, -6, 105, -63, -20, -27, 62, 50}).equals(strOptString)) {
            m3674C(z9 ? AbstractC1387m.m2421h(new byte[]{-16, 113, -120, 91, -11, -71, 58, -83, -16, 81, -120, 94, 5, -42, 107, -62, -98, 59, -25, 55, -91, -42, 101, -62, -106, 59, -19, 54, -104, -42, 97}, new byte[]{32, -21, 88, -26, 37, 7, -22, 18}) : AbstractC1387m.m2421h(new byte[]{29, -89, 51, -17, -38, -19, -59, -110, 29, -121, 51, -22, 42, -125, -88, -3, 120, 29, 50, -45, -38, -19, -59, -110, 28, -67, 50, -35, -38, -27, -59, -104, 29, ByteCompanionObject.MIN_VALUE, 50, -39}, new byte[]{-51, Base64.padSymbol, -29, 82, 10, 83, 21, 45}), AbstractC1387m.m2421h(new byte[]{69, -84, 17, -53, 68, 111, 74, -41, 68, -126, 17, -61, 68, 101, 75, -22, 69, -75, 17, -64, -76, 0, 37, -122, 20, -36, 67, -91, 36, 0, 38, -121, 43, -35, 115, -91, 47, 0, 46, -121, 40, -35, ByteCompanionObject.MAX_VALUE, 91}, new byte[]{-107, 13, -63, 117, -108, -48, -101, 87}), z9);
        } else {
            m3674C(z9 ? AbstractC1387m.m2421h(new byte[]{9, 91, 93, 102, 125, -28, 114, -94, 9, 123, 93, 99, -115, -117, 35, -51, 103, 17, 50, 10, 45, -117, 45, -51, 111, 17, 56, 11, 16, -117, 41}, new byte[]{-39, -63, -115, -37, -83, 90, -94, 29}) : AbstractC1387m.m2421h(new byte[]{-60, 91, -83, -13, -39, -6, -52, 29, -60, 123, -83, -10, 41, -108, -95, 114, -95, -31, -84, -49, -39, -6, -52, 29, -59, 65, -84, -63, -39, -14, -52, 23, -60, 124, -84, -59}, new byte[]{20, -63, 125, 78, 9, 68, 28, -94}), z9 ? AbstractC1387m.m2421h(new byte[]{-56, 18, 22, -32, 56, -19, 11, -43, -55, 60, 22, -24, 56, -25, 10, -24, -56, 11, 22, -21, -56, -125, 91, -123, -90, 98, 67, -113, 104, -126, 106, -123, -91, 99, 115, -114, 85, -126, 100, 123}, new byte[]{24, -77, -58, 94, -24, 82, -38, 85}) : AbstractC1387m.m2421h(new byte[]{-1, 13, 52, -37, -113, 126, 46, -27, -1, 40, 53, -23, -113, 125, -34, -101, -124, 64, 69, -69, -31, 24, 65, -120, -81, 65, 107, -70, -40, 25, 114, 121, -1, 42, 52, -42, -113, 118, 46, -26, -1, 42, 52, -45, -99, 115, -34, -119, -105, -80, 52, -39, -113, 114, 46, -30, -2, 30, 53, -20, -113, 112, 47, -37, -1, 37, -60, -70, -33, 24, 75, -119, -103, 64, 92, -69, -29, -24, 47, -40, -1, 46, 52, -44, -114, 72, 47, -42, -1, 38, 52, -34, -113, 117, 46, -31, -2, 31, -60, -69, -30, 24, 78, 121, -1, 42, 52, -42, -113, 118, 46, -26, -1, 42, 52, -37, -114, 77, -48}, new byte[]{47, -112, -28, 107, 95, -56, -2, 89}), z9);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        EnumC2278d0 enumC2278d0;
        View viewInflate = layoutInflater.inflate(com.example.navistart.R.layout.exlantix_physical_button_settings_fragment, viewGroup, false);
        this.f6016b = viewInflate.findViewById(com.example.navistart.R.id.physicalKnobSettings);
        this.f6017c = (Spinner) viewInflate.findViewById(com.example.navistart.R.id.spinnerPhysicalKnobLeft);
        this.f6018d = (Spinner) viewInflate.findViewById(com.example.navistart.R.id.spinnerPhysicalKnobRight);
        this.f6019e = (ImageView) viewInflate.findViewById(com.example.navistart.R.id.imagePhysicalButtonState);
        this.f6020f = (TextView) viewInflate.findViewById(com.example.navistart.R.id.textPhysicalButtonPairTitle);
        this.f6021g = (TextView) viewInflate.findViewById(com.example.navistart.R.id.textPhysicalButtonPairStatus);
        this.f6022h = (TextView) viewInflate.findViewById(com.example.navistart.R.id.textLastPhysicalButtonEvent);
        this.f6023i = (Button) viewInflate.findViewById(com.example.navistart.R.id.btnStartPhysicalButtonPairing);
        this.f6024j = (Button) viewInflate.findViewById(com.example.navistart.R.id.btnStopPhysicalButtonPairing);
        this.f6025k = (TabLayout) viewInflate.findViewById(com.example.navistart.R.id.tabsPhysicalButtonTypes);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(com.example.navistart.R.id.recyclerPhysicalButtonCommands);
        this.f6026l = recyclerView;
        recyclerView.setHasFixedSize(false);
        this.f6026l.setLayoutManager(new LinearLayoutManager(requireActivity()));
        String string = f6014A;
        if (bundle != null) {
            string = bundle.getString(f6015B, string);
        }
        EnumC2278d0[] enumC2278d0ArrValues = EnumC2278d0.values();
        int length = enumC2278d0ArrValues.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                enumC2278d0 = EnumC2278d0.f5994h;
                break;
            }
            enumC2278d0 = enumC2278d0ArrValues[i10];
            if (enumC2278d0.f5997c.equals(string)) {
                break;
            }
            i10++;
        }
        this.f6040z = enumC2278d0;
        this.f6025k.m1840k();
        EnumC2278d0[] enumC2278d0ArrValues2 = EnumC2278d0.values();
        int length2 = enumC2278d0ArrValues2.length;
        for (int i11 = 0; i11 < length2; i11++) {
            EnumC2278d0 enumC2278d1 = enumC2278d0ArrValues2[i11];
            C1275i c1275iM1838i = this.f6025k.m1838i();
            c1275iM1838i.m2277a(enumC2278d1.f5996b);
            c1275iM1838i.f3052a = enumC2278d1;
            this.f6025k.m1832b(c1275iM1838i, enumC2278d1 == this.f6040z);
        }
        this.f6025k.m1831a(new C1279m(2, this));
        m3680w();
        final int i12 = 0;
        this.f6023i.setOnClickListener(new View.OnClickListener(this) { // from class: m0.b0

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2283e0 f5941c;

            {
                this.f5941c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i13 = i12;
                C2283e0 c2283e0 = this.f5941c;
                switch (i13) {
                    case 0:
                        c2283e0.f6039y = true;
                        c2283e0.m3674C(AbstractC1387m.m2421h(new byte[]{24, -108, -115, -119, 123, -11, -107, 70, -24, -35, -36, -19, 21, -112, -5, 21, 72, -35, -46, -19, 29, -112, -15, 20, 117, -36, -27, -19, 30}, new byte[]{-56, 12, 93, Base64.padSymbol, -85, 64, 68, -60}), AbstractC1387m.m2421h(new byte[]{-106, 73, -50, -21, 63, 112, -80, -9, -105, 92, -50, -23, 62, 73, -79, -52, 102, 10, -98, -127, 90, 27, -41, -87, -2, 11, -94, 113, 62, 74, -79, -57, -106, 100, -49, -47, 62, 68, -79, -49, -106, 110, -50, -20, 63, 115, -80, -10, 102, 11, -93, -127, 95, -21, -79, -61, -106, 102, -50, -17, 63, 116, -79, -61, -106, 107, -49, -44, -63}, new byte[]{70, -37, 30, 81, -17, -53, 97, 121}), c2283e0.m3679v());
                        c2283e0.m3673B(AbstractC1387m.m2421h(new byte[]{76, 47, 121, -35, -96, -106, 118, -9, 78, 58}, new byte[]{60, 78, 16, -81, -1, -27, 2, -106}), true);
                        c2283e0.m3676F();
                        c2283e0.f6032r = 0;
                        RunnableC2273c0 runnableC2273c0 = new RunnableC2273c0(c2283e0, 0);
                        c2283e0.f6030p = runnableC2273c0;
                        c2283e0.f6029o.postDelayed(runnableC2273c0, 1500L);
                        break;
                    case 1:
                        c2283e0.f6039y = false;
                        c2283e0.m3676F();
                        c2283e0.m3673B(AbstractC1387m.m2421h(new byte[]{-37, 27, 93, -48, 58, -12, -54, 92, -37}, new byte[]{-85, 122, 52, -94, 101, -121, -66, 51}), false);
                        break;
                    case 2:
                        String str = c2283e0.f6036v;
                        if (c2283e0.f6028n != null && c2283e0.f6027m != null) {
                            String strTrim = str == null ? "" : str.trim();
                            if (strTrim.length() == 0) {
                                TextView textView = c2283e0.f6022h;
                                if (textView != null) {
                                    textView.setText(AbstractC1387m.m2421h(new byte[]{43, 105, 62, -55, -62, -83, -116, -19, 43, 76, 63, -5, -62, -82, 124, -127, 65, 36, 83, -87, -84, -53, -29, -127, 65, 37, 109, 89, -62, -90, -116, -31, -37, 36, 81, -87, -94, -53, -31, -127, 78, 36, 85, -87, -86}, new byte[]{-5, -12, -18, 121, 18, 27, 92, 81}));
                                }
                                break;
                            } else {
                                c2283e0.f6028n.add(new C3481o0(strTrim, C1919e.m3000c(EnumC2469d.f6756e, c2283e0.requireActivity()), true, true));
                                c2283e0.f6027m.notifyItemInserted(c2283e0.f6028n.size() - 1);
                                c2283e0.m3682z();
                                RecyclerView recyclerView2 = c2283e0.f6026l;
                                if (recyclerView2 != null) {
                                    recyclerView2.post(new RunnableC1001e(c2283e0, true, 7));
                                    break;
                                }
                            }
                        }
                        break;
                    default:
                        String str2 = C2283e0.f6014A;
                        c2283e0.m3682z();
                        if (c2283e0.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2283e0.getParentFragment()).dismiss();
                        }
                        break;
                }
            }
        });
        final int i13 = 1;
        this.f6024j.setOnClickListener(new View.OnClickListener(this) { // from class: m0.b0

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2283e0 f5941c;

            {
                this.f5941c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i14 = i13;
                C2283e0 c2283e0 = this.f5941c;
                switch (i14) {
                    case 0:
                        c2283e0.f6039y = true;
                        c2283e0.m3674C(AbstractC1387m.m2421h(new byte[]{24, -108, -115, -119, 123, -11, -107, 70, -24, -35, -36, -19, 21, -112, -5, 21, 72, -35, -46, -19, 29, -112, -15, 20, 117, -36, -27, -19, 30}, new byte[]{-56, 12, 93, Base64.padSymbol, -85, 64, 68, -60}), AbstractC1387m.m2421h(new byte[]{-106, 73, -50, -21, 63, 112, -80, -9, -105, 92, -50, -23, 62, 73, -79, -52, 102, 10, -98, -127, 90, 27, -41, -87, -2, 11, -94, 113, 62, 74, -79, -57, -106, 100, -49, -47, 62, 68, -79, -49, -106, 110, -50, -20, 63, 115, -80, -10, 102, 11, -93, -127, 95, -21, -79, -61, -106, 102, -50, -17, 63, 116, -79, -61, -106, 107, -49, -44, -63}, new byte[]{70, -37, 30, 81, -17, -53, 97, 121}), c2283e0.m3679v());
                        c2283e0.m3673B(AbstractC1387m.m2421h(new byte[]{76, 47, 121, -35, -96, -106, 118, -9, 78, 58}, new byte[]{60, 78, 16, -81, -1, -27, 2, -106}), true);
                        c2283e0.m3676F();
                        c2283e0.f6032r = 0;
                        RunnableC2273c0 runnableC2273c0 = new RunnableC2273c0(c2283e0, 0);
                        c2283e0.f6030p = runnableC2273c0;
                        c2283e0.f6029o.postDelayed(runnableC2273c0, 1500L);
                        break;
                    case 1:
                        c2283e0.f6039y = false;
                        c2283e0.m3676F();
                        c2283e0.m3673B(AbstractC1387m.m2421h(new byte[]{-37, 27, 93, -48, 58, -12, -54, 92, -37}, new byte[]{-85, 122, 52, -94, 101, -121, -66, 51}), false);
                        break;
                    case 2:
                        String str = c2283e0.f6036v;
                        if (c2283e0.f6028n != null && c2283e0.f6027m != null) {
                            String strTrim = str == null ? "" : str.trim();
                            if (strTrim.length() == 0) {
                                TextView textView = c2283e0.f6022h;
                                if (textView != null) {
                                    textView.setText(AbstractC1387m.m2421h(new byte[]{43, 105, 62, -55, -62, -83, -116, -19, 43, 76, 63, -5, -62, -82, 124, -127, 65, 36, 83, -87, -84, -53, -29, -127, 65, 37, 109, 89, -62, -90, -116, -31, -37, 36, 81, -87, -94, -53, -31, -127, 78, 36, 85, -87, -86}, new byte[]{-5, -12, -18, 121, 18, 27, 92, 81}));
                                }
                                break;
                            } else {
                                c2283e0.f6028n.add(new C3481o0(strTrim, C1919e.m3000c(EnumC2469d.f6756e, c2283e0.requireActivity()), true, true));
                                c2283e0.f6027m.notifyItemInserted(c2283e0.f6028n.size() - 1);
                                c2283e0.m3682z();
                                RecyclerView recyclerView2 = c2283e0.f6026l;
                                if (recyclerView2 != null) {
                                    recyclerView2.post(new RunnableC1001e(c2283e0, true, 7));
                                    break;
                                }
                            }
                        }
                        break;
                    default:
                        String str2 = C2283e0.f6014A;
                        c2283e0.m3682z();
                        if (c2283e0.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2283e0.getParentFragment()).dismiss();
                        }
                        break;
                }
            }
        });
        final int i14 = 2;
        viewInflate.findViewById(com.example.navistart.R.id.btnUseLastPhysicalButton).setOnClickListener(new View.OnClickListener(this) { // from class: m0.b0

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2283e0 f5941c;

            {
                this.f5941c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i15 = i14;
                C2283e0 c2283e0 = this.f5941c;
                switch (i15) {
                    case 0:
                        c2283e0.f6039y = true;
                        c2283e0.m3674C(AbstractC1387m.m2421h(new byte[]{24, -108, -115, -119, 123, -11, -107, 70, -24, -35, -36, -19, 21, -112, -5, 21, 72, -35, -46, -19, 29, -112, -15, 20, 117, -36, -27, -19, 30}, new byte[]{-56, 12, 93, Base64.padSymbol, -85, 64, 68, -60}), AbstractC1387m.m2421h(new byte[]{-106, 73, -50, -21, 63, 112, -80, -9, -105, 92, -50, -23, 62, 73, -79, -52, 102, 10, -98, -127, 90, 27, -41, -87, -2, 11, -94, 113, 62, 74, -79, -57, -106, 100, -49, -47, 62, 68, -79, -49, -106, 110, -50, -20, 63, 115, -80, -10, 102, 11, -93, -127, 95, -21, -79, -61, -106, 102, -50, -17, 63, 116, -79, -61, -106, 107, -49, -44, -63}, new byte[]{70, -37, 30, 81, -17, -53, 97, 121}), c2283e0.m3679v());
                        c2283e0.m3673B(AbstractC1387m.m2421h(new byte[]{76, 47, 121, -35, -96, -106, 118, -9, 78, 58}, new byte[]{60, 78, 16, -81, -1, -27, 2, -106}), true);
                        c2283e0.m3676F();
                        c2283e0.f6032r = 0;
                        RunnableC2273c0 runnableC2273c0 = new RunnableC2273c0(c2283e0, 0);
                        c2283e0.f6030p = runnableC2273c0;
                        c2283e0.f6029o.postDelayed(runnableC2273c0, 1500L);
                        break;
                    case 1:
                        c2283e0.f6039y = false;
                        c2283e0.m3676F();
                        c2283e0.m3673B(AbstractC1387m.m2421h(new byte[]{-37, 27, 93, -48, 58, -12, -54, 92, -37}, new byte[]{-85, 122, 52, -94, 101, -121, -66, 51}), false);
                        break;
                    case 2:
                        String str = c2283e0.f6036v;
                        if (c2283e0.f6028n != null && c2283e0.f6027m != null) {
                            String strTrim = str == null ? "" : str.trim();
                            if (strTrim.length() == 0) {
                                TextView textView = c2283e0.f6022h;
                                if (textView != null) {
                                    textView.setText(AbstractC1387m.m2421h(new byte[]{43, 105, 62, -55, -62, -83, -116, -19, 43, 76, 63, -5, -62, -82, 124, -127, 65, 36, 83, -87, -84, -53, -29, -127, 65, 37, 109, 89, -62, -90, -116, -31, -37, 36, 81, -87, -94, -53, -31, -127, 78, 36, 85, -87, -86}, new byte[]{-5, -12, -18, 121, 18, 27, 92, 81}));
                                }
                                break;
                            } else {
                                c2283e0.f6028n.add(new C3481o0(strTrim, C1919e.m3000c(EnumC2469d.f6756e, c2283e0.requireActivity()), true, true));
                                c2283e0.f6027m.notifyItemInserted(c2283e0.f6028n.size() - 1);
                                c2283e0.m3682z();
                                RecyclerView recyclerView2 = c2283e0.f6026l;
                                if (recyclerView2 != null) {
                                    recyclerView2.post(new RunnableC1001e(c2283e0, true, 7));
                                    break;
                                }
                            }
                        }
                        break;
                    default:
                        String str2 = C2283e0.f6014A;
                        c2283e0.m3682z();
                        if (c2283e0.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2283e0.getParentFragment()).dismiss();
                        }
                        break;
                }
            }
        });
        final int i15 = 3;
        viewInflate.findViewById(com.example.navistart.R.id.btnSavePhysicalButtonCommands).setOnClickListener(new View.OnClickListener(this) { // from class: m0.b0

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2283e0 f5941c;

            {
                this.f5941c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i16 = i15;
                C2283e0 c2283e0 = this.f5941c;
                switch (i16) {
                    case 0:
                        c2283e0.f6039y = true;
                        c2283e0.m3674C(AbstractC1387m.m2421h(new byte[]{24, -108, -115, -119, 123, -11, -107, 70, -24, -35, -36, -19, 21, -112, -5, 21, 72, -35, -46, -19, 29, -112, -15, 20, 117, -36, -27, -19, 30}, new byte[]{-56, 12, 93, Base64.padSymbol, -85, 64, 68, -60}), AbstractC1387m.m2421h(new byte[]{-106, 73, -50, -21, 63, 112, -80, -9, -105, 92, -50, -23, 62, 73, -79, -52, 102, 10, -98, -127, 90, 27, -41, -87, -2, 11, -94, 113, 62, 74, -79, -57, -106, 100, -49, -47, 62, 68, -79, -49, -106, 110, -50, -20, 63, 115, -80, -10, 102, 11, -93, -127, 95, -21, -79, -61, -106, 102, -50, -17, 63, 116, -79, -61, -106, 107, -49, -44, -63}, new byte[]{70, -37, 30, 81, -17, -53, 97, 121}), c2283e0.m3679v());
                        c2283e0.m3673B(AbstractC1387m.m2421h(new byte[]{76, 47, 121, -35, -96, -106, 118, -9, 78, 58}, new byte[]{60, 78, 16, -81, -1, -27, 2, -106}), true);
                        c2283e0.m3676F();
                        c2283e0.f6032r = 0;
                        RunnableC2273c0 runnableC2273c0 = new RunnableC2273c0(c2283e0, 0);
                        c2283e0.f6030p = runnableC2273c0;
                        c2283e0.f6029o.postDelayed(runnableC2273c0, 1500L);
                        break;
                    case 1:
                        c2283e0.f6039y = false;
                        c2283e0.m3676F();
                        c2283e0.m3673B(AbstractC1387m.m2421h(new byte[]{-37, 27, 93, -48, 58, -12, -54, 92, -37}, new byte[]{-85, 122, 52, -94, 101, -121, -66, 51}), false);
                        break;
                    case 2:
                        String str = c2283e0.f6036v;
                        if (c2283e0.f6028n != null && c2283e0.f6027m != null) {
                            String strTrim = str == null ? "" : str.trim();
                            if (strTrim.length() == 0) {
                                TextView textView = c2283e0.f6022h;
                                if (textView != null) {
                                    textView.setText(AbstractC1387m.m2421h(new byte[]{43, 105, 62, -55, -62, -83, -116, -19, 43, 76, 63, -5, -62, -82, 124, -127, 65, 36, 83, -87, -84, -53, -29, -127, 65, 37, 109, 89, -62, -90, -116, -31, -37, 36, 81, -87, -94, -53, -31, -127, 78, 36, 85, -87, -86}, new byte[]{-5, -12, -18, 121, 18, 27, 92, 81}));
                                }
                                break;
                            } else {
                                c2283e0.f6028n.add(new C3481o0(strTrim, C1919e.m3000c(EnumC2469d.f6756e, c2283e0.requireActivity()), true, true));
                                c2283e0.f6027m.notifyItemInserted(c2283e0.f6028n.size() - 1);
                                c2283e0.m3682z();
                                RecyclerView recyclerView2 = c2283e0.f6026l;
                                if (recyclerView2 != null) {
                                    recyclerView2.post(new RunnableC1001e(c2283e0, true, 7));
                                    break;
                                }
                            }
                        }
                        break;
                    default:
                        String str2 = C2283e0.f6014A;
                        c2283e0.m3682z();
                        if (c2283e0.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2283e0.getParentFragment()).dismiss();
                        }
                        break;
                }
            }
        });
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        m3676F();
        RunnableC2273c0 runnableC2273c0 = this.f6031q;
        if (runnableC2273c0 != null) {
            this.f6029o.removeCallbacks(runnableC2273c0);
            this.f6031q = null;
        }
        m3672A(AbstractC1387m.m2421h(new byte[]{75, -14, 30, 106, -102, 52, 18, -70, 93, -15, 25, 119, -115, 25, 14, -74, 75}, new byte[]{46, -124, 123, 4, -18, 107, 103, -44}));
        this.f6026l = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putString(f6015B, this.f6040z.f5997c);
        super.onSaveInstanceState(bundle);
    }

    /* JADX INFO: renamed from: t */
    public final void m3678t(String str) {
        int i10;
        ArrayList arrayList = this.f6028n;
        if (arrayList == null || this.f6027m == null || (i10 = this.f6033s) == -1) {
            return;
        }
        if (i10 < 0 || i10 >= arrayList.size()) {
            this.f6033s = -1;
            this.f6027m.m3720a(-1);
            return;
        }
        ((C3481o0) this.f6028n.get(this.f6033s)).f10178a = str;
        int i11 = this.f6033s;
        this.f6033s = -1;
        this.f6027m.m3720a(-1);
        this.f6027m.notifyItemChanged(i11);
        m3682z();
        RecyclerView recyclerView = this.f6026l;
        if (recyclerView == null) {
            return;
        }
        recyclerView.post(new RunnableC1001e(this, false, 7));
    }

    /* JADX INFO: renamed from: v */
    public final boolean m3679v() {
        String str = this.f6034t;
        if (str == null || str.trim().length() == 0) {
            return false;
        }
        if (!this.f6040z.f6001g) {
            return true;
        }
        String str2 = this.f6035u;
        return str2 != null && str2.trim().length() > 0;
    }

    /* JADX INFO: renamed from: w */
    public final void m3680w() {
        boolean z9 = this.f6040z == EnumC2278d0.f5994h && EnumC2468c.f6681B.name().equals(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-118, 44, -26, 78, -43, 8, -72, -3, -91, 8}, new byte[]{-55, 109, -76, 30, -89, 103, -34, -108}), ""));
        this.f6016b.setVisibility(z9 ? 0 : 8);
        if (z9) {
            m3675D(this.f6017c, AbstractC1387m.m2421h(new byte[]{-126, -90, -21, -6, -119, 112, 23, 102, -72, -82, -17, -30, -108, 109, 29, ByteCompanionObject.MAX_VALUE, -117, -127, -20, -11, -120, 102, 33, 114, -126, -72, -13}, new byte[]{-25, -34, -121, -101, -25, 4, 126, 30}), com.example.navistart.R.string.exlantix_knob_driver_temperature);
            m3675D(this.f6018d, AbstractC1387m.m2421h(new byte[]{99, 4, -8, 126, -8, -24, 22, 117, 89, 12, -4, 102, -27, -11, 28, 108, 106, 35, -1, 113, -7, -2, 32, ByteCompanionObject.MAX_VALUE, 111, 27, -4, 107}, new byte[]{6, 124, -108, 31, -106, -100, ByteCompanionObject.MAX_VALUE, 13}), com.example.navistart.R.string.exlantix_knob_passenger_temperature);
        }
        this.f6039y = false;
        this.f6033s = -1;
        this.f6034t = C1652b.m2745o().loadString(this.f6040z.f5998d, "");
        this.f6035u = this.f6040z.f5999e.length() == 0 ? "" : C1652b.m2745o().loadString(this.f6040z.f5999e, "");
        this.f6036v = "";
        this.f6037w = "";
        this.f6038x = 0L;
        TextView textView = this.f6022h;
        if (textView != null) {
            textView.setText(AbstractC1387m.m2421h(new byte[]{-114, 46, -118, -4, 27, -105, -98, -56, -114, 4, -118, -10, 26, -85, -97, -4, -113, 62, 122, -110, 112, -58, -13, -93, -32, 97, -27, -110, 112, -58, -2, 73, 126, 97, -25, -110, ByteCompanionObject.MAX_VALUE, -57, -52}, new byte[]{94, -79, 90, 66, -54, 22, 78, 115}));
        }
        C1652b.m2734a();
        this.f6028n = C1652b.m2737f().m2993i(this.f6040z.f6000f);
        C2342q1 c2342q1 = new C2342q1(requireActivity(), this.f6028n);
        this.f6027m = c2342q1;
        c2342q1.f6315c = new C0566h(18, this);
        c2342q1.f6316d = new RunnableC1556j(7, this);
        this.f6026l.setAdapter(c2342q1);
        m3672A(AbstractC1387m.m2421h(new byte[]{-86, 108, 100, 59, -35, 38, -80, -120, -83, 105, 98, 39, -64, 27, -90}, new byte[]{-49, 26, 1, 85, -87, 121, -61, -3}));
        m3673B(AbstractC1387m.m2421h(new byte[]{34, 86, -69, -35, -73, 67, 4, 23, 55, 67}, new byte[]{82, 55, -46, -81, -46, 39, 91, 112}), false);
        m3681y();
        RunnableC2273c0 runnableC2273c0 = this.f6031q;
        Handler handler = this.f6029o;
        if (runnableC2273c0 != null) {
            handler.removeCallbacks(runnableC2273c0);
            this.f6031q = null;
        }
        RunnableC2273c0 runnableC2273c1 = new RunnableC2273c0(this, 1);
        this.f6031q = runnableC2273c1;
        handler.postDelayed(runnableC2273c1, 1000L);
    }

    /* JADX INFO: renamed from: y */
    public final void m3681y() {
        JSONObject jSONObjectOptJSONObject;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-102, 67, 119, -22, -43, 57}, new byte[]{-18, 34, 5, -115, -80, 77, -125, -74}), AbstractC1387m.m2421h(new byte[]{27, 124, 16, 117, 50, 48, 87, -4, 33, 116, 20, 109, 47, 45, 93, -27, 18, 91, 30, 97, 40, 48, 81, -22}, new byte[]{126, 4, 124, 20, 92, 68, 62, -124}));
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-99, 45, 0}, new byte[]{-2, 64, 100, 115, -40, 58, -26, 81}), AbstractC1387m.m2421h(new byte[]{-63, 96, 66, 14, 102, -24, -35, 38, -61, 117, 110, 29, 92, -7}, new byte[]{-83, 1, 49, 122, 57, -115, -85, 67}));
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, -68, 53, 93, -95, -11, -65, 57}, new byte[]{77, -50, 90, 41, -50, -106, -48, 85}), this.f6040z.f5997c);
            JSONObject jSONObjectM1641tx = C1652b.m2734a().m2755j().m1641tx(jSONObject);
            if (jSONObjectM1641tx != null && (jSONObjectOptJSONObject = jSONObjectM1641tx.optJSONObject(AbstractC1387m.m2421h(new byte[]{-66, -53, -38, -88, -123}, new byte[]{-37, -67, -65, -58, -15, 88, -17, 68}))) != null) {
                String strOptString = jSONObjectOptJSONObject.optString(AbstractC1387m.m2421h(new byte[]{100, -34, 63}, new byte[]{15, -69, 70, 101, 83, -92, -38, -59}), "");
                long jOptLong = jSONObjectOptJSONObject.optLong(AbstractC1387m.m2421h(new byte[]{-91, 18, ByteCompanionObject.MIN_VALUE, -80, -40, 33, 103, -79, -117, 4, -66, -90}, new byte[]{-54, 112, -13, -43, -86, 87, 2, -43}), 0L);
                if (strOptString.length() != 0 && jOptLong > this.f6038x) {
                    this.f6036v = strOptString;
                    this.f6037w = jSONObjectOptJSONObject.optString(AbstractC1387m.m2421h(new byte[]{-89, 26, -103, 45, 35}, new byte[]{-53, 123, -5, 72, 79, -120, 67, -63}), strOptString);
                    this.f6038x = jOptLong;
                    TextView textView = this.f6022h;
                    if (textView != null) {
                        textView.setText(AbstractC1387m.m2421h(new byte[]{-26, -81, 24, -18, 2, 94, 76, -48, -26, -123, 24, -28, 3, 98, 77, -28, -25, -65, -24, ByteCompanionObject.MIN_VALUE, 105, 15, 33, -69, -120, -32, 119, ByteCompanionObject.MIN_VALUE, 105, 15, 44, 81, 22}, new byte[]{54, 48, -56, 80, -45, -33, -100, 107}) + this.f6037w);
                    }
                    m3678t(strOptString);
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: z */
    public final void m3682z() {
        if (this.f6028n != null) {
            C1652b.m2734a();
            C1917c c1917cM2737f = C1652b.m2737f();
            ArrayList arrayList = this.f6028n;
            String str = this.f6040z.f6000f;
            c1917cM2737f.getClass();
            C1917c.m2987l(str, arrayList);
        }
    }
}

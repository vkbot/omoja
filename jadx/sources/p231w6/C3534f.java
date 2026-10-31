package p231w6;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.location.LocationRequestCompat;
import okhttp3.internal.p160ws.WebSocketProtocol;
import org.apache.commons.net.ftp.FTPReply;
import org.apache.commons.net.nntp.NNTP;
import p031c6.C0995a;
import p097j.C1897i;
import p130l9.C2237i;

/* JADX INFO: renamed from: w6.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3534f {

    /* JADX INFO: renamed from: e */
    public static final int[] f10499e = {31892, 34236, 39577, 42195, 48118, 51042, 55367, 58893, 63784, 68472, 70749, 76311, 79154, 84390, 87683, 92361, 96236, 102084, 102881, 110507, 110734, 117786, 119615, 126325, 127568, 133589, 136944, 141498, 145311, 150283, 152622, 158308, 161089, 167017};

    /* JADX INFO: renamed from: f */
    public static final C3534f[] f10500f = m5637a();

    /* JADX INFO: renamed from: a */
    public final int f10501a;

    /* JADX INFO: renamed from: b */
    public final int[] f10502b;

    /* JADX INFO: renamed from: c */
    public final C1897i[] f10503c;

    /* JADX INFO: renamed from: d */
    public final int f10504d;

    public C3534f(int i10, int[] iArr, C1897i... c1897iArr) {
        this.f10501a = i10;
        this.f10502b = iArr;
        this.f10503c = c1897iArr;
        C1897i c1897i = c1897iArr[0];
        int i11 = c1897i.f4929b;
        int i12 = 0;
        for (C0995a c0995a : (C0995a[]) c1897i.f4930c) {
            i12 += (c0995a.f951c + i11) * c0995a.f950b;
        }
        this.f10504d = i12;
    }

    /* JADX INFO: renamed from: a */
    public static C3534f[] m5637a() {
        return new C3534f[]{new C3534f(1, new int[0], new C1897i(7, new C0995a(1, 19, 3)), new C1897i(10, new C0995a(1, 16, 3)), new C1897i(13, new C0995a(1, 13, 3)), new C1897i(17, new C0995a(1, 9, 3))), new C3534f(2, new int[]{6, 18}, new C1897i(10, new C0995a(1, 34, 3)), new C1897i(16, new C0995a(1, 28, 3)), new C1897i(22, new C0995a(1, 22, 3)), new C1897i(28, new C0995a(1, 16, 3))), new C3534f(3, new int[]{6, 22}, new C1897i(15, new C0995a(1, 55, 3)), new C1897i(26, new C0995a(1, 44, 3)), new C1897i(18, new C0995a(2, 17, 3)), new C1897i(22, new C0995a(2, 13, 3))), new C3534f(4, new int[]{6, 26}, new C1897i(20, new C0995a(1, 80, 3)), new C1897i(18, new C0995a(2, 32, 3)), new C1897i(26, new C0995a(2, 24, 3)), new C1897i(16, new C0995a(4, 9, 3))), new C3534f(5, new int[]{6, 30}, new C1897i(26, new C0995a(1, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 3)), new C1897i(24, new C0995a(2, 43, 3)), new C1897i(18, new C0995a(2, 15, 3), new C0995a(2, 16, 3)), new C1897i(22, new C0995a(2, 11, 3), new C0995a(2, 12, 3))), new C3534f(6, new int[]{6, 34}, new C1897i(18, new C0995a(2, 68, 3)), new C1897i(16, new C0995a(4, 27, 3)), new C1897i(24, new C0995a(4, 19, 3)), new C1897i(28, new C0995a(4, 15, 3))), new C3534f(7, new int[]{6, 22, 38}, new C1897i(20, new C0995a(2, 78, 3)), new C1897i(18, new C0995a(4, 31, 3)), new C1897i(18, new C0995a(2, 14, 3), new C0995a(4, 15, 3)), new C1897i(26, new C0995a(4, 13, 3), new C0995a(1, 14, 3))), new C3534f(8, new int[]{6, 24, 42}, new C1897i(24, new C0995a(2, 97, 3)), new C1897i(22, new C0995a(2, 38, 3), new C0995a(2, 39, 3)), new C1897i(22, new C0995a(4, 18, 3), new C0995a(2, 19, 3)), new C1897i(26, new C0995a(4, 14, 3), new C0995a(2, 15, 3))), new C3534f(9, new int[]{6, 26, 46}, new C1897i(30, new C0995a(2, 116, 3)), new C1897i(22, new C0995a(3, 36, 3), new C0995a(2, 37, 3)), new C1897i(20, new C0995a(4, 16, 3), new C0995a(4, 17, 3)), new C1897i(24, new C0995a(4, 12, 3), new C0995a(4, 13, 3))), new C3534f(10, new int[]{6, 28, 50}, new C1897i(18, new C0995a(2, 68, 3), new C0995a(2, 69, 3)), new C1897i(26, new C0995a(4, 43, 3), new C0995a(1, 44, 3)), new C1897i(24, new C0995a(6, 19, 3), new C0995a(2, 20, 3)), new C1897i(28, new C0995a(6, 15, 3), new C0995a(2, 16, 3))), new C3534f(11, new int[]{6, 30, 54}, new C1897i(20, new C0995a(4, 81, 3)), new C1897i(30, new C0995a(1, 50, 3), new C0995a(4, 51, 3)), new C1897i(28, new C0995a(4, 22, 3), new C0995a(4, 23, 3)), new C1897i(24, new C0995a(3, 12, 3), new C0995a(8, 13, 3))), new C3534f(12, new int[]{6, 32, 58}, new C1897i(24, new C0995a(2, 92, 3), new C0995a(2, 93, 3)), new C1897i(22, new C0995a(6, 36, 3), new C0995a(2, 37, 3)), new C1897i(26, new C0995a(4, 20, 3), new C0995a(6, 21, 3)), new C1897i(28, new C0995a(7, 14, 3), new C0995a(4, 15, 3))), new C3534f(13, new int[]{6, 34, 62}, new C1897i(26, new C0995a(4, 107, 3)), new C1897i(22, new C0995a(8, 37, 3), new C0995a(1, 38, 3)), new C1897i(24, new C0995a(8, 20, 3), new C0995a(4, 21, 3)), new C1897i(22, new C0995a(12, 11, 3), new C0995a(4, 12, 3))), new C3534f(14, new int[]{6, 26, 46, 66}, new C1897i(30, new C0995a(3, 115, 3), new C0995a(1, 116, 3)), new C1897i(24, new C0995a(4, 40, 3), new C0995a(5, 41, 3)), new C1897i(20, new C0995a(11, 16, 3), new C0995a(5, 17, 3)), new C1897i(24, new C0995a(11, 12, 3), new C0995a(5, 13, 3))), new C3534f(15, new int[]{6, 26, 48, 70}, new C1897i(22, new C0995a(5, 87, 3), new C0995a(1, 88, 3)), new C1897i(24, new C0995a(5, 41, 3), new C0995a(5, 42, 3)), new C1897i(30, new C0995a(5, 24, 3), new C0995a(7, 25, 3)), new C1897i(24, new C0995a(11, 12, 3), new C0995a(7, 13, 3))), new C3534f(16, new int[]{6, 26, 50, 74}, new C1897i(24, new C0995a(5, 98, 3), new C0995a(1, 99, 3)), new C1897i(28, new C0995a(7, 45, 3), new C0995a(3, 46, 3)), new C1897i(24, new C0995a(15, 19, 3), new C0995a(2, 20, 3)), new C1897i(30, new C0995a(3, 15, 3), new C0995a(13, 16, 3))), new C3534f(17, new int[]{6, 30, 54, 78}, new C1897i(28, new C0995a(1, 107, 3), new C0995a(5, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 3)), new C1897i(28, new C0995a(10, 46, 3), new C0995a(1, 47, 3)), new C1897i(28, new C0995a(1, 22, 3), new C0995a(15, 23, 3)), new C1897i(28, new C0995a(2, 14, 3), new C0995a(17, 15, 3))), new C3534f(18, new int[]{6, 30, 56, 82}, new C1897i(30, new C0995a(5, FTPReply.SERVICE_NOT_READY, 3), new C0995a(1, 121, 3)), new C1897i(26, new C0995a(9, 43, 3), new C0995a(4, 44, 3)), new C1897i(28, new C0995a(17, 22, 3), new C0995a(1, 23, 3)), new C1897i(28, new C0995a(2, 14, 3), new C0995a(19, 15, 3))), new C3534f(19, new int[]{6, 30, 58, 86}, new C1897i(28, new C0995a(3, 113, 3), new C0995a(4, 114, 3)), new C1897i(26, new C0995a(3, 44, 3), new C0995a(11, 45, 3)), new C1897i(26, new C0995a(17, 21, 3), new C0995a(4, 22, 3)), new C1897i(26, new C0995a(9, 13, 3), new C0995a(16, 14, 3))), new C3534f(20, new int[]{6, 34, 62, 90}, new C1897i(28, new C0995a(3, 107, 3), new C0995a(5, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 3)), new C1897i(26, new C0995a(3, 41, 3), new C0995a(13, 42, 3)), new C1897i(30, new C0995a(15, 24, 3), new C0995a(5, 25, 3)), new C1897i(28, new C0995a(15, 15, 3), new C0995a(10, 16, 3))), new C3534f(21, new int[]{6, 28, 50, 72, 94}, new C1897i(28, new C0995a(4, 116, 3), new C0995a(4, 117, 3)), new C1897i(26, new C0995a(17, 42, 3)), new C1897i(28, new C0995a(17, 22, 3), new C0995a(6, 23, 3)), new C1897i(30, new C0995a(19, 16, 3), new C0995a(6, 17, 3))), new C3534f(22, new int[]{6, 26, 50, 74, 98}, new C1897i(28, new C0995a(2, 111, 3), new C0995a(7, 112, 3)), new C1897i(28, new C0995a(17, 46, 3)), new C1897i(30, new C0995a(7, 24, 3), new C0995a(16, 25, 3)), new C1897i(24, new C0995a(34, 13, 3))), new C3534f(23, new int[]{6, 30, 54, 78, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY}, new C1897i(30, new C0995a(4, 121, 3), new C0995a(5, 122, 3)), new C1897i(28, new C0995a(4, 47, 3), new C0995a(14, 48, 3)), new C1897i(30, new C0995a(11, 24, 3), new C0995a(14, 25, 3)), new C1897i(30, new C0995a(16, 15, 3), new C0995a(14, 16, 3))), new C3534f(24, new int[]{6, 28, 54, 80, 106}, new C1897i(30, new C0995a(6, 117, 3), new C0995a(4, 118, 3)), new C1897i(28, new C0995a(6, 45, 3), new C0995a(14, 46, 3)), new C1897i(30, new C0995a(11, 24, 3), new C0995a(16, 25, 3)), new C1897i(30, new C0995a(30, 16, 3), new C0995a(2, 17, 3))), new C3534f(25, new int[]{6, 32, 58, 84, 110}, new C1897i(26, new C0995a(8, 106, 3), new C0995a(4, 107, 3)), new C1897i(28, new C0995a(8, 47, 3), new C0995a(13, 48, 3)), new C1897i(30, new C0995a(7, 24, 3), new C0995a(22, 25, 3)), new C1897i(30, new C0995a(22, 15, 3), new C0995a(13, 16, 3))), new C3534f(26, new int[]{6, 30, 58, 86, 114}, new C1897i(28, new C0995a(10, 114, 3), new C0995a(2, 115, 3)), new C1897i(28, new C0995a(19, 46, 3), new C0995a(4, 47, 3)), new C1897i(28, new C0995a(28, 22, 3), new C0995a(6, 23, 3)), new C1897i(30, new C0995a(33, 16, 3), new C0995a(4, 17, 3))), new C3534f(27, new int[]{6, 34, 62, 90, 118}, new C1897i(30, new C0995a(8, 122, 3), new C0995a(4, 123, 3)), new C1897i(28, new C0995a(22, 45, 3), new C0995a(3, 46, 3)), new C1897i(30, new C0995a(8, 23, 3), new C0995a(26, 24, 3)), new C1897i(30, new C0995a(12, 15, 3), new C0995a(28, 16, 3))), new C3534f(28, new int[]{6, 26, 50, 74, 98, 122}, new C1897i(30, new C0995a(3, 117, 3), new C0995a(10, 118, 3)), new C1897i(28, new C0995a(3, 45, 3), new C0995a(23, 46, 3)), new C1897i(30, new C0995a(4, 24, 3), new C0995a(31, 25, 3)), new C1897i(30, new C0995a(11, 15, 3), new C0995a(31, 16, 3))), new C3534f(29, new int[]{6, 30, 54, 78, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, WebSocketProtocol.PAYLOAD_SHORT}, new C1897i(30, new C0995a(7, 116, 3), new C0995a(7, 117, 3)), new C1897i(28, new C0995a(21, 45, 3), new C0995a(7, 46, 3)), new C1897i(30, new C0995a(1, 23, 3), new C0995a(37, 24, 3)), new C1897i(30, new C0995a(19, 15, 3), new C0995a(26, 16, 3))), new C3534f(30, new int[]{6, 26, 52, 78, LocationRequestCompat.QUALITY_LOW_POWER, 130}, new C1897i(30, new C0995a(5, 115, 3), new C0995a(10, 116, 3)), new C1897i(28, new C0995a(19, 47, 3), new C0995a(10, 48, 3)), new C1897i(30, new C0995a(15, 24, 3), new C0995a(25, 25, 3)), new C1897i(30, new C0995a(23, 15, 3), new C0995a(25, 16, 3))), new C3534f(31, new int[]{6, 30, 56, 82, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 134}, new C1897i(30, new C0995a(13, 115, 3), new C0995a(3, 116, 3)), new C1897i(28, new C0995a(2, 46, 3), new C0995a(29, 47, 3)), new C1897i(30, new C0995a(42, 24, 3), new C0995a(1, 25, 3)), new C1897i(30, new C0995a(23, 15, 3), new C0995a(28, 16, 3))), new C3534f(32, new int[]{6, 34, 60, 86, 112, 138}, new C1897i(30, new C0995a(17, 115, 3)), new C1897i(28, new C0995a(10, 46, 3), new C0995a(23, 47, 3)), new C1897i(30, new C0995a(10, 24, 3), new C0995a(35, 25, 3)), new C1897i(30, new C0995a(19, 15, 3), new C0995a(35, 16, 3))), new C3534f(33, new int[]{6, 30, 58, 86, 114, 142}, new C1897i(30, new C0995a(17, 115, 3), new C0995a(1, 116, 3)), new C1897i(28, new C0995a(14, 46, 3), new C0995a(21, 47, 3)), new C1897i(30, new C0995a(29, 24, 3), new C0995a(19, 25, 3)), new C1897i(30, new C0995a(11, 15, 3), new C0995a(46, 16, 3))), new C3534f(34, new int[]{6, 34, 62, 90, 118, 146}, new C1897i(30, new C0995a(13, 115, 3), new C0995a(6, 116, 3)), new C1897i(28, new C0995a(14, 46, 3), new C0995a(23, 47, 3)), new C1897i(30, new C0995a(44, 24, 3), new C0995a(7, 25, 3)), new C1897i(30, new C0995a(59, 16, 3), new C0995a(1, 17, 3))), new C3534f(35, new int[]{6, 30, 54, 78, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, WebSocketProtocol.PAYLOAD_SHORT, FTPReply.FILE_STATUS_OK}, new C1897i(30, new C0995a(12, 121, 3), new C0995a(7, 122, 3)), new C1897i(28, new C0995a(12, 47, 3), new C0995a(26, 48, 3)), new C1897i(30, new C0995a(39, 24, 3), new C0995a(14, 25, 3)), new C1897i(30, new C0995a(22, 15, 3), new C0995a(41, 16, 3))), new C3534f(36, new int[]{6, 24, 50, 76, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, 128, 154}, new C1897i(30, new C0995a(6, 121, 3), new C0995a(14, 122, 3)), new C1897i(28, new C0995a(6, 47, 3), new C0995a(34, 48, 3)), new C1897i(30, new C0995a(46, 24, 3), new C0995a(10, 25, 3)), new C1897i(30, new C0995a(2, 15, 3), new C0995a(64, 16, 3))), new C3534f(37, new int[]{6, 28, 54, 80, 106, 132, 158}, new C1897i(30, new C0995a(17, 122, 3), new C0995a(4, 123, 3)), new C1897i(28, new C0995a(29, 46, 3), new C0995a(14, 47, 3)), new C1897i(30, new C0995a(49, 24, 3), new C0995a(10, 25, 3)), new C1897i(30, new C0995a(24, 15, 3), new C0995a(46, 16, 3))), new C3534f(38, new int[]{6, 32, 58, 84, 110, 136, 162}, new C1897i(30, new C0995a(4, 122, 3), new C0995a(18, 123, 3)), new C1897i(28, new C0995a(13, 46, 3), new C0995a(32, 47, 3)), new C1897i(30, new C0995a(48, 24, 3), new C0995a(14, 25, 3)), new C1897i(30, new C0995a(42, 15, 3), new C0995a(32, 16, 3))), new C3534f(39, new int[]{6, 26, 54, 82, 110, 138, 166}, new C1897i(30, new C0995a(20, 117, 3), new C0995a(4, 118, 3)), new C1897i(28, new C0995a(40, 47, 3), new C0995a(7, 48, 3)), new C1897i(30, new C0995a(43, 24, 3), new C0995a(22, 25, 3)), new C1897i(30, new C0995a(10, 15, 3), new C0995a(67, 16, 3))), new C3534f(40, new int[]{6, 30, 58, 86, 114, 142, 170}, new C1897i(30, new C0995a(19, 118, 3), new C0995a(6, NNTP.DEFAULT_PORT, 3)), new C1897i(28, new C0995a(18, 47, 3), new C0995a(31, 48, 3)), new C1897i(30, new C0995a(34, 24, 3), new C0995a(34, 25, 3)), new C1897i(30, new C0995a(20, 15, 3), new C0995a(61, 16, 3)))};
    }

    /* JADX INFO: renamed from: b */
    public static C3534f m5638b(int i10) {
        int i11 = Integer.MAX_VALUE;
        int i12 = 0;
        for (int i13 = 0; i13 < 34; i13++) {
            int i14 = f10499e[i13];
            if (i14 == i10) {
                return m5639c(i13 + 7);
            }
            int iBitCount = Integer.bitCount(i14 ^ i10);
            if (iBitCount < i11) {
                i12 = i13 + 7;
                i11 = iBitCount;
            }
        }
        if (i11 <= 3) {
            return m5639c(i12);
        }
        return null;
    }

    /* JADX INFO: renamed from: c */
    public static C3534f m5639c(int i10) {
        if (i10 <= 0 || i10 > 40) {
            C2237i.m3594a();
            return null;
        }
        return f10500f[i10 - 1];
    }

    public final String toString() {
        return String.valueOf(this.f10501a);
    }
}

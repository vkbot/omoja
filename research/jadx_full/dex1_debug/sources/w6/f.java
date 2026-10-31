package w6;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.location.LocationRequestCompat;
import j.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f {
    public static final int[] e = {31892, 34236, 39577, 42195, 48118, 51042, 55367, 58893, 63784, 68472, 70749, 76311, 79154, 84390, 87683, 92361, 96236, 102084, 102881, 110507, 110734, 117786, 119615, 126325, 127568, 133589, 136944, 141498, 145311, 150283, 152622, 158308, 161089, 167017};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final f[] f5942f = a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5943a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f5944b;
    public final i[] c;
    public final int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(int i9, int[] iArr, i... iVarArr) {
        this.f5943a = i9;
        this.f5944b = iArr;
        this.c = iVarArr;
        i iVar = iVarArr[0];
        int i10 = iVar.f2793b;
        int i11 = 0;
        for (c6.a aVar : (c6.a[]) iVar.c) {
            i11 += (aVar.c + i10) * aVar.f501b;
        }
        this.d = i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f[] a() {
        return new f[]{new f(1, new int[0], new i(7, new c6.a(1, 19, 3)), new i(10, new c6.a(1, 16, 3)), new i(13, new c6.a(1, 13, 3)), new i(17, new c6.a(1, 9, 3))), new f(2, new int[]{6, 18}, new i(10, new c6.a(1, 34, 3)), new i(16, new c6.a(1, 28, 3)), new i(22, new c6.a(1, 22, 3)), new i(28, new c6.a(1, 16, 3))), new f(3, new int[]{6, 22}, new i(15, new c6.a(1, 55, 3)), new i(26, new c6.a(1, 44, 3)), new i(18, new c6.a(2, 17, 3)), new i(22, new c6.a(2, 13, 3))), new f(4, new int[]{6, 26}, new i(20, new c6.a(1, 80, 3)), new i(18, new c6.a(2, 32, 3)), new i(26, new c6.a(2, 24, 3)), new i(16, new c6.a(4, 9, 3))), new f(5, new int[]{6, 30}, new i(26, new c6.a(1, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 3)), new i(24, new c6.a(2, 43, 3)), new i(18, new c6.a(2, 15, 3), new c6.a(2, 16, 3)), new i(22, new c6.a(2, 11, 3), new c6.a(2, 12, 3))), new f(6, new int[]{6, 34}, new i(18, new c6.a(2, 68, 3)), new i(16, new c6.a(4, 27, 3)), new i(24, new c6.a(4, 19, 3)), new i(28, new c6.a(4, 15, 3))), new f(7, new int[]{6, 22, 38}, new i(20, new c6.a(2, 78, 3)), new i(18, new c6.a(4, 31, 3)), new i(18, new c6.a(2, 14, 3), new c6.a(4, 15, 3)), new i(26, new c6.a(4, 13, 3), new c6.a(1, 14, 3))), new f(8, new int[]{6, 24, 42}, new i(24, new c6.a(2, 97, 3)), new i(22, new c6.a(2, 38, 3), new c6.a(2, 39, 3)), new i(22, new c6.a(4, 18, 3), new c6.a(2, 19, 3)), new i(26, new c6.a(4, 14, 3), new c6.a(2, 15, 3))), new f(9, new int[]{6, 26, 46}, new i(30, new c6.a(2, 116, 3)), new i(22, new c6.a(3, 36, 3), new c6.a(2, 37, 3)), new i(20, new c6.a(4, 16, 3), new c6.a(4, 17, 3)), new i(24, new c6.a(4, 12, 3), new c6.a(4, 13, 3))), new f(10, new int[]{6, 28, 50}, new i(18, new c6.a(2, 68, 3), new c6.a(2, 69, 3)), new i(26, new c6.a(4, 43, 3), new c6.a(1, 44, 3)), new i(24, new c6.a(6, 19, 3), new c6.a(2, 20, 3)), new i(28, new c6.a(6, 15, 3), new c6.a(2, 16, 3))), new f(11, new int[]{6, 30, 54}, new i(20, new c6.a(4, 81, 3)), new i(30, new c6.a(1, 50, 3), new c6.a(4, 51, 3)), new i(28, new c6.a(4, 22, 3), new c6.a(4, 23, 3)), new i(24, new c6.a(3, 12, 3), new c6.a(8, 13, 3))), new f(12, new int[]{6, 32, 58}, new i(24, new c6.a(2, 92, 3), new c6.a(2, 93, 3)), new i(22, new c6.a(6, 36, 3), new c6.a(2, 37, 3)), new i(26, new c6.a(4, 20, 3), new c6.a(6, 21, 3)), new i(28, new c6.a(7, 14, 3), new c6.a(4, 15, 3))), new f(13, new int[]{6, 34, 62}, new i(26, new c6.a(4, 107, 3)), new i(22, new c6.a(8, 37, 3), new c6.a(1, 38, 3)), new i(24, new c6.a(8, 20, 3), new c6.a(4, 21, 3)), new i(22, new c6.a(12, 11, 3), new c6.a(4, 12, 3))), new f(14, new int[]{6, 26, 46, 66}, new i(30, new c6.a(3, 115, 3), new c6.a(1, 116, 3)), new i(24, new c6.a(4, 40, 3), new c6.a(5, 41, 3)), new i(20, new c6.a(11, 16, 3), new c6.a(5, 17, 3)), new i(24, new c6.a(11, 12, 3), new c6.a(5, 13, 3))), new f(15, new int[]{6, 26, 48, 70}, new i(22, new c6.a(5, 87, 3), new c6.a(1, 88, 3)), new i(24, new c6.a(5, 41, 3), new c6.a(5, 42, 3)), new i(30, new c6.a(5, 24, 3), new c6.a(7, 25, 3)), new i(24, new c6.a(11, 12, 3), new c6.a(7, 13, 3))), new f(16, new int[]{6, 26, 50, 74}, new i(24, new c6.a(5, 98, 3), new c6.a(1, 99, 3)), new i(28, new c6.a(7, 45, 3), new c6.a(3, 46, 3)), new i(24, new c6.a(15, 19, 3), new c6.a(2, 20, 3)), new i(30, new c6.a(3, 15, 3), new c6.a(13, 16, 3))), new f(17, new int[]{6, 30, 54, 78}, new i(28, new c6.a(1, 107, 3), new c6.a(5, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 3)), new i(28, new c6.a(10, 46, 3), new c6.a(1, 47, 3)), new i(28, new c6.a(1, 22, 3), new c6.a(15, 23, 3)), new i(28, new c6.a(2, 14, 3), new c6.a(17, 15, 3))), new f(18, new int[]{6, 30, 56, 82}, new i(30, new c6.a(5, 120, 3), new c6.a(1, 121, 3)), new i(26, new c6.a(9, 43, 3), new c6.a(4, 44, 3)), new i(28, new c6.a(17, 22, 3), new c6.a(1, 23, 3)), new i(28, new c6.a(2, 14, 3), new c6.a(19, 15, 3))), new f(19, new int[]{6, 30, 58, 86}, new i(28, new c6.a(3, 113, 3), new c6.a(4, 114, 3)), new i(26, new c6.a(3, 44, 3), new c6.a(11, 45, 3)), new i(26, new c6.a(17, 21, 3), new c6.a(4, 22, 3)), new i(26, new c6.a(9, 13, 3), new c6.a(16, 14, 3))), new f(20, new int[]{6, 34, 62, 90}, new i(28, new c6.a(3, 107, 3), new c6.a(5, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 3)), new i(26, new c6.a(3, 41, 3), new c6.a(13, 42, 3)), new i(30, new c6.a(15, 24, 3), new c6.a(5, 25, 3)), new i(28, new c6.a(15, 15, 3), new c6.a(10, 16, 3))), new f(21, new int[]{6, 28, 50, 72, 94}, new i(28, new c6.a(4, 116, 3), new c6.a(4, 117, 3)), new i(26, new c6.a(17, 42, 3)), new i(28, new c6.a(17, 22, 3), new c6.a(6, 23, 3)), new i(30, new c6.a(19, 16, 3), new c6.a(6, 17, 3))), new f(22, new int[]{6, 26, 50, 74, 98}, new i(28, new c6.a(2, 111, 3), new c6.a(7, 112, 3)), new i(28, new c6.a(17, 46, 3)), new i(30, new c6.a(7, 24, 3), new c6.a(16, 25, 3)), new i(24, new c6.a(34, 13, 3))), new f(23, new int[]{6, 30, 54, 78, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY}, new i(30, new c6.a(4, 121, 3), new c6.a(5, 122, 3)), new i(28, new c6.a(4, 47, 3), new c6.a(14, 48, 3)), new i(30, new c6.a(11, 24, 3), new c6.a(14, 25, 3)), new i(30, new c6.a(16, 15, 3), new c6.a(14, 16, 3))), new f(24, new int[]{6, 28, 54, 80, 106}, new i(30, new c6.a(6, 117, 3), new c6.a(4, 118, 3)), new i(28, new c6.a(6, 45, 3), new c6.a(14, 46, 3)), new i(30, new c6.a(11, 24, 3), new c6.a(16, 25, 3)), new i(30, new c6.a(30, 16, 3), new c6.a(2, 17, 3))), new f(25, new int[]{6, 32, 58, 84, 110}, new i(26, new c6.a(8, 106, 3), new c6.a(4, 107, 3)), new i(28, new c6.a(8, 47, 3), new c6.a(13, 48, 3)), new i(30, new c6.a(7, 24, 3), new c6.a(22, 25, 3)), new i(30, new c6.a(22, 15, 3), new c6.a(13, 16, 3))), new f(26, new int[]{6, 30, 58, 86, 114}, new i(28, new c6.a(10, 114, 3), new c6.a(2, 115, 3)), new i(28, new c6.a(19, 46, 3), new c6.a(4, 47, 3)), new i(28, new c6.a(28, 22, 3), new c6.a(6, 23, 3)), new i(30, new c6.a(33, 16, 3), new c6.a(4, 17, 3))), new f(27, new int[]{6, 34, 62, 90, 118}, new i(30, new c6.a(8, 122, 3), new c6.a(4, 123, 3)), new i(28, new c6.a(22, 45, 3), new c6.a(3, 46, 3)), new i(30, new c6.a(8, 23, 3), new c6.a(26, 24, 3)), new i(30, new c6.a(12, 15, 3), new c6.a(28, 16, 3))), new f(28, new int[]{6, 26, 50, 74, 98, 122}, new i(30, new c6.a(3, 117, 3), new c6.a(10, 118, 3)), new i(28, new c6.a(3, 45, 3), new c6.a(23, 46, 3)), new i(30, new c6.a(4, 24, 3), new c6.a(31, 25, 3)), new i(30, new c6.a(11, 15, 3), new c6.a(31, 16, 3))), new f(29, new int[]{6, 30, 54, 78, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, 126}, new i(30, new c6.a(7, 116, 3), new c6.a(7, 117, 3)), new i(28, new c6.a(21, 45, 3), new c6.a(7, 46, 3)), new i(30, new c6.a(1, 23, 3), new c6.a(37, 24, 3)), new i(30, new c6.a(19, 15, 3), new c6.a(26, 16, 3))), new f(30, new int[]{6, 26, 52, 78, LocationRequestCompat.QUALITY_LOW_POWER, 130}, new i(30, new c6.a(5, 115, 3), new c6.a(10, 116, 3)), new i(28, new c6.a(19, 47, 3), new c6.a(10, 48, 3)), new i(30, new c6.a(15, 24, 3), new c6.a(25, 25, 3)), new i(30, new c6.a(23, 15, 3), new c6.a(25, 16, 3))), new f(31, new int[]{6, 30, 56, 82, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 134}, new i(30, new c6.a(13, 115, 3), new c6.a(3, 116, 3)), new i(28, new c6.a(2, 46, 3), new c6.a(29, 47, 3)), new i(30, new c6.a(42, 24, 3), new c6.a(1, 25, 3)), new i(30, new c6.a(23, 15, 3), new c6.a(28, 16, 3))), new f(32, new int[]{6, 34, 60, 86, 112, 138}, new i(30, new c6.a(17, 115, 3)), new i(28, new c6.a(10, 46, 3), new c6.a(23, 47, 3)), new i(30, new c6.a(10, 24, 3), new c6.a(35, 25, 3)), new i(30, new c6.a(19, 15, 3), new c6.a(35, 16, 3))), new f(33, new int[]{6, 30, 58, 86, 114, 142}, new i(30, new c6.a(17, 115, 3), new c6.a(1, 116, 3)), new i(28, new c6.a(14, 46, 3), new c6.a(21, 47, 3)), new i(30, new c6.a(29, 24, 3), new c6.a(19, 25, 3)), new i(30, new c6.a(11, 15, 3), new c6.a(46, 16, 3))), new f(34, new int[]{6, 34, 62, 90, 118, 146}, new i(30, new c6.a(13, 115, 3), new c6.a(6, 116, 3)), new i(28, new c6.a(14, 46, 3), new c6.a(23, 47, 3)), new i(30, new c6.a(44, 24, 3), new c6.a(7, 25, 3)), new i(30, new c6.a(59, 16, 3), new c6.a(1, 17, 3))), new f(35, new int[]{6, 30, 54, 78, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, 126, 150}, new i(30, new c6.a(12, 121, 3), new c6.a(7, 122, 3)), new i(28, new c6.a(12, 47, 3), new c6.a(26, 48, 3)), new i(30, new c6.a(39, 24, 3), new c6.a(14, 25, 3)), new i(30, new c6.a(22, 15, 3), new c6.a(41, 16, 3))), new f(36, new int[]{6, 24, 50, 76, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, 128, 154}, new i(30, new c6.a(6, 121, 3), new c6.a(14, 122, 3)), new i(28, new c6.a(6, 47, 3), new c6.a(34, 48, 3)), new i(30, new c6.a(46, 24, 3), new c6.a(10, 25, 3)), new i(30, new c6.a(2, 15, 3), new c6.a(64, 16, 3))), new f(37, new int[]{6, 28, 54, 80, 106, 132, 158}, new i(30, new c6.a(17, 122, 3), new c6.a(4, 123, 3)), new i(28, new c6.a(29, 46, 3), new c6.a(14, 47, 3)), new i(30, new c6.a(49, 24, 3), new c6.a(10, 25, 3)), new i(30, new c6.a(24, 15, 3), new c6.a(46, 16, 3))), new f(38, new int[]{6, 32, 58, 84, 110, 136, 162}, new i(30, new c6.a(4, 122, 3), new c6.a(18, 123, 3)), new i(28, new c6.a(13, 46, 3), new c6.a(32, 47, 3)), new i(30, new c6.a(48, 24, 3), new c6.a(14, 25, 3)), new i(30, new c6.a(42, 15, 3), new c6.a(32, 16, 3))), new f(39, new int[]{6, 26, 54, 82, 110, 138, 166}, new i(30, new c6.a(20, 117, 3), new c6.a(4, 118, 3)), new i(28, new c6.a(40, 47, 3), new c6.a(7, 48, 3)), new i(30, new c6.a(43, 24, 3), new c6.a(22, 25, 3)), new i(30, new c6.a(10, 15, 3), new c6.a(67, 16, 3))), new f(40, new int[]{6, 30, 58, 86, 114, 142, 170}, new i(30, new c6.a(19, 118, 3), new c6.a(6, 119, 3)), new i(28, new c6.a(18, 47, 3), new c6.a(31, 48, 3)), new i(30, new c6.a(34, 24, 3), new c6.a(34, 25, 3)), new i(30, new c6.a(20, 15, 3), new c6.a(61, 16, 3)))};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f b(int i9) {
        int i10 = Integer.MAX_VALUE;
        int i11 = 0;
        for (int i12 = 0; i12 < 34; i12++) {
            int i13 = e[i12];
            if (i13 == i9) {
                return c(i12 + 7);
            }
            int iBitCount = Integer.bitCount(i13 ^ i9);
            if (iBitCount < i10) {
                i11 = i12 + 7;
                i10 = iBitCount;
            }
        }
        if (i10 <= 3) {
            return c(i11);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f c(int i9) {
        if (i9 <= 0 || i9 > 40) {
            l9.i.a();
            return null;
        }
        return f5942f[i9 - 1];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return String.valueOf(this.f5943a);
    }
}

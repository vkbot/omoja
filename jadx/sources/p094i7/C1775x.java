package p094i7;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.location.LocationRequestCompat;
import com.example.navistart.R;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;
import p078h0.C1652b;

/* JADX INFO: renamed from: i7.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1775x {

    /* JADX INFO: renamed from: a */
    public int f4660a;

    /* JADX INFO: renamed from: b */
    public double f4661b;

    /* JADX INFO: renamed from: c */
    public double f4662c;

    /* JADX INFO: renamed from: d */
    public int f4663d;

    /* JADX INFO: renamed from: e */
    public int f4664e;

    /* JADX INFO: renamed from: f */
    public int f4665f;

    /* JADX INFO: renamed from: g */
    public int f4666g;

    /* JADX INFO: renamed from: h */
    public int f4667h;

    /* JADX INFO: renamed from: i */
    public int f4668i;

    /* JADX INFO: renamed from: a */
    public final String m2895a() {
        int i10 = this.f4663d;
        if (i10 == 1) {
            return C1652b.m2739h().getString(R.string.cam_type_1);
        }
        if (i10 == 2) {
            return C1652b.m2739h().getString(R.string.cam_type_2);
        }
        if (i10 == 3) {
            return C1652b.m2739h().getString(R.string.cam_type_3);
        }
        if (i10 == 4) {
            return C1652b.m2739h().getString(R.string.cam_type_4);
        }
        if (i10 == 5) {
            return C1652b.m2739h().getString(R.string.cam_type_5);
        }
        if (i10 == 11) {
            return C1652b.m2739h().getString(R.string.cam_type_11);
        }
        switch (i10) {
            case 20:
                return C1652b.m2739h().getString(R.string.cam_type_20);
            case 21:
                return C1652b.m2739h().getString(R.string.cam_type_21);
            case 22:
                return C1652b.m2739h().getString(R.string.cam_type_22);
            default:
                switch (i10) {
                    case 100:
                        return C1652b.m2739h().getString(R.string.cam_type_100);
                    case TypedValues.TYPE_TARGET /* 101 */:
                        return C1652b.m2739h().getString(R.string.cam_type_101);
                    case LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY /* 102 */:
                        return C1652b.m2739h().getString(R.string.cam_type_102);
                    case 103:
                        return C1652b.m2739h().getString(R.string.cam_type_103);
                    case LocationRequestCompat.QUALITY_LOW_POWER /* 104 */:
                        return C1652b.m2739h().getString(R.string.cam_type_104);
                    case 105:
                        return C1652b.m2739h().getString(R.string.cam_type_105);
                    case 106:
                        return C1652b.m2739h().getString(R.string.cam_type_106);
                    case 107:
                        return C1652b.m2739h().getString(R.string.cam_type_107);
                    default:
                        return C1652b.m2739h().getString(R.string.cam_type_non);
                }
        }
    }

    public final String toString() {
        return AbstractC1387m.m2421h(new byte[]{0, -16, -52, 53, 109, -59, -79, -10, 54, -24, -56, 48, ByteCompanionObject.MAX_VALUE, -41, -69, -35, 44, -65}, new byte[]{84, -126, -83, 83, 11, -84, -46, -71}) + this.f4660a + AbstractC1387m.m2421h(new byte[]{-15, 20, 101, -2, -120, 7, 93, 78, -71, 81, 52}, new byte[]{-35, 52, 9, -97, -4, 110, 41, 59}) + this.f4661b + AbstractC1387m.m2421h(new byte[]{-55, -58, -40, -26, 33, 124, -46, 0, -112, -126, -47, -76}, new byte[]{-27, -26, -76, -119, 79, 27, -69, 116}) + this.f4662c + AbstractC1387m.m2421h(new byte[]{126, 80, 19, 125, -3, 23, 36}, new byte[]{82, 112, 103, 4, -115, 114, 25, 65}) + this.f4663d + AbstractC1387m.m2421h(new byte[]{-114, 108}, new byte[]{-82, 68, 52, -97, -120, 102, -34, 93}) + m2895a() + AbstractC1387m.m2421h(new byte[]{118, -108, -35, 113, 60, -34, 52, 25, 98}, new byte[]{95, -72, -3, 2, 76, -69, 81, 125}) + this.f4664e + AbstractC1387m.m2421h(new byte[]{103, -98, 33, -6, 78, 122, -125, 105, 46, -125}, new byte[]{75, -66, 69, -109, 60, 46, -6, 25}) + this.f4665f + AbstractC1387m.m2421h(new byte[]{62, -105, -50, -77, 45, -58, 91, -9, 123, -40, -60, -25}, new byte[]{18, -73, -86, -38, 95, -93, 56, -125}) + this.f4666g + AbstractC1387m.m2421h(new byte[]{91, 115, 51, ByteCompanionObject.MIN_VALUE, 15, -115, 47, -116, 20, 54, 106}, new byte[]{119, 83, 87, -23, 124, -7, 78, -30}) + this.f4667h + AbstractC1387m.m2421h(new byte[]{-1, 121, -10, 111, 99, -65, -68, 26}, new byte[]{-45, 89, -105, 1, 4, -45, -39, 39}) + this.f4668i + '}';
    }
}

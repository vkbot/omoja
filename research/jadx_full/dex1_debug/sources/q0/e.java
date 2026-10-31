package q0;

import android.location.Location;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import com.example.navistart.MockGPS.MockGpsService;
import java.util.HashSet;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e {
    public static final String c = e0.m.h(new byte[]{-35, -122, -57, 76, -70, 4, 43, 23, -30, -122, -46, 78, -103, 17, 42}, new byte[]{-112, -23, -92, 39, -3, 116, 88, 71});
    public static final String[] d = {e0.m.h(new byte[]{-44, -79, -6}, new byte[]{-77, -63, -119, -5, -102, -18, 99, -48}), e0.m.h(new byte[]{93, -111, -12, -85, -73, -68, -118}, new byte[]{51, -12, ByteCompanionObject.MIN_VALUE, -36, -40, -50, -31, ByteCompanionObject.MAX_VALUE})};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LocationManager f4777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f4778b = new HashSet();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(MockGpsService mockGpsService) {
        this.f4777a = (LocationManager) mockGpsService.getSystemService(e0.m.h(new byte[]{-16, 55, -35, 9, -79, 115, 70, -8}, new byte[]{-100, 88, -66, 104, -59, 26, 41, -106}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Location a(q qVar, String str) {
        Location location = new Location(str);
        double d9 = qVar.f4824a;
        Float f8 = qVar.f4832l;
        Float f9 = qVar.f4831k;
        int i9 = qVar.f4829i;
        int i10 = qVar.f4830j;
        Float f10 = qVar.e;
        location.setLatitude(d9);
        location.setLongitude(qVar.f4825b);
        location.setTime(qVar.c);
        location.setElapsedRealtimeNanos(SystemClock.elapsedRealtimeNanos());
        Double d10 = qVar.d;
        if (d10 != null) {
            location.setAltitude(d10.doubleValue());
        }
        if (f10 != null) {
            location.setAccuracy(f10.floatValue());
        }
        Float f11 = qVar.f4826f;
        if (f11 != null) {
            location.setBearing(f11.floatValue());
        }
        Float f12 = qVar.f4827g;
        if (f12 != null) {
            location.setSpeed(f12.floatValue());
        }
        Bundle bundle = new Bundle();
        bundle.putString(e0.m.h(new byte[]{-124, -9, 26, -106, -58, 83, -56, -62, -74, -21, 22, -120, -21, 87, -35}, new byte[]{-23, -104, 121, -3, -103, 52, -72, -79}), qVar.f4833m);
        int i11 = qVar.f4828h;
        if (i11 <= 0) {
            if (i10 > 0) {
                i11 = i10;
            } else if (i9 > 0) {
                i11 = i9;
            } else if (f10 == null || f10.floatValue() > 10.0f) {
                i11 = (f10 == null || f10.floatValue() > 30.0f) ? 4 : 6;
            } else {
                i11 = 10;
            }
        }
        bundle.putInt(e0.m.h(new byte[]{-114, -100, 13, -2, -111, 29, -70, 86, -104, -114}, new byte[]{-3, -3, 121, -101, -3, 113, -45, 34}), i11);
        String strH = e0.m.h(new byte[]{-34, 100, 78, -13, 84, -120, 121, 117, -56, 118, 108, -1, 75, -115, 114, 109, -56}, new byte[]{-83, 5, 58, -106, 56, -28, 16, 1});
        if (i9 <= 0) {
            i9 = i11;
        }
        bundle.putInt(strH, i9);
        String strH2 = e0.m.h(new byte[]{-67, -83, -116, 53, -93, -109, -93, -94, -85, -65, -83, 35, -86, -101, -125, -72, -120, -91, ByteCompanionObject.MIN_VALUE}, new byte[]{-50, -52, -8, 80, -49, -1, -54, -42});
        if (i10 <= 0) {
            i10 = i11;
        }
        bundle.putInt(strH2, i10);
        c(bundle, e0.m.h(new byte[]{75, -75, 38, 67, -114, 111, 19}, new byte[]{38, -48, 71, 45, -51, 1, 35, -126}), f9);
        c(bundle, e0.m.h(new byte[]{117, -123, -73, -83, 31, 94, -90, -104, 122, -88, -84}, new byte[]{24, -32, -42, -61, 92, 48, -106, -36}), f9);
        c(bundle, e0.m.h(new byte[]{27, -33, 122, 124, -114, 82}, new byte[]{118, -66, 2, 63, -32, 98, -80, 57}), f8);
        c(bundle, e0.m.h(new byte[]{-10, 46, -6, -52, -33, 42, 0, 122, -45, 53}, new byte[]{-101, 79, -126, -113, -79, 26, 68, 24}), f8);
        location.setExtras(bundle);
        return location;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(Bundle bundle, String str, Float f8) {
        if (f8 == null || f8.floatValue() <= 0.0f) {
            return;
        }
        bundle.putFloat(str, f8.floatValue());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean b() {
        LocationManager locationManager;
        String str;
        e eVar = this;
        HashSet hashSet = eVar.f4778b;
        if (!hashSet.isEmpty()) {
            return true;
        }
        String[] strArr = d;
        int length = strArr.length;
        int i9 = 0;
        while (i9 < length) {
            String str2 = strArr[i9];
            String str3 = c;
            LocationManager locationManager2 = eVar.f4777a;
            try {
                locationManager2.removeTestProvider(str2);
            } catch (Exception unused) {
            }
            try {
                LocationManager locationManager3 = eVar.f4777a;
                locationManager = locationManager2;
                str = str3;
                try {
                    locationManager3.addTestProvider(str2, e0.m.h(new byte[]{121, 110, -125, 90, -89, 117, 104}, new byte[]{23, 11, -9, 45, -56, 7, 3, 75}).equals(str2), e0.m.h(new byte[]{28, ByteCompanionObject.MIN_VALUE, -100}, new byte[]{123, -16, -17, -8, -102, -74, 92, 20}).equals(str2), false, false, true, true, true, 1, e0.m.h(new byte[]{104, -56, -123}, new byte[]{15, -72, -10, 43, 40, 101, -84, 99}).equals(str2) ? 1 : 2);
                    locationManager.setTestProviderEnabled(str2, true);
                    hashSet.add(str2);
                } catch (IllegalArgumentException e) {
                    e = e;
                    try {
                        locationManager.setTestProviderEnabled(str2, true);
                        hashSet.add(str2);
                        Log.i(str, e0.m.h(new byte[]{ByteCompanionObject.MIN_VALUE, 117, 117, 38, 106, 19, -45, -27, -86, 121, 115, 33, 102, 25, -108, -96, -65, ByteCompanionObject.MAX_VALUE, 99, 62, 47, 7, -127, -17, -92, 121, 100, 48, 125, 87, -110, -26, -90, 117, 114, 117, 125, 18, -112, -17, -68, 126, 101, 54, 123, 77, -45}, new byte[]{-46, 16, 0, 85, 15, 119, -13, ByteCompanionObject.MIN_VALUE}) + str2);
                    } catch (IllegalArgumentException | SecurityException unused2) {
                        Log.w(str, com.google.protobuf.q.l(new byte[]{-46, 17, 120, -31, 102, 54, 54, 12, -1, 17, 116, -29, 108, 98, 123, 6, -14, 27, 54, -1, 123, 45, 96, 0, -11, 21, 100, -75, 41}, new byte[]{-111, 112, 22, -113, 9, 66, 22, 105}, new StringBuilder(), str2), e);
                    }
                } catch (SecurityException e6) {
                    e = e6;
                    locationManager.setTestProviderEnabled(str2, true);
                    hashSet.add(str2);
                    Log.i(str, e0.m.h(new byte[]{ByteCompanionObject.MIN_VALUE, 117, 117, 38, 106, 19, -45, -27, -86, 121, 115, 33, 102, 25, -108, -96, -65, ByteCompanionObject.MAX_VALUE, 99, 62, 47, 7, -127, -17, -92, 121, 100, 48, 125, 87, -110, -26, -90, 117, 114, 117, 125, 18, -112, -17, -68, 126, 101, 54, 123, 77, -45}, new byte[]{-46, 16, 0, 85, 15, 119, -13, ByteCompanionObject.MIN_VALUE}) + str2);
                }
            } catch (IllegalArgumentException | SecurityException e9) {
                e = e9;
                locationManager = locationManager2;
                str = str3;
            }
            i9++;
            eVar = this;
        }
        return !hashSet.isEmpty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void d() {
        for (String str : d) {
            try {
                this.f4777a.setTestProviderEnabled(str, false);
            } catch (Exception unused) {
            }
            try {
                this.f4777a.removeTestProvider(str);
            } catch (Exception unused2) {
            }
        }
        this.f4778b.clear();
    }
}

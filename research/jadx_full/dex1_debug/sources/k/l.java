package k;

import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.os.Build$VERSION;
import c0.p;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map$Entry;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l {
    public static final Bitmap$Config[] d;
    public static final Bitmap$Config[] e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Bitmap$Config[] f3147f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Bitmap$Config[] f3148g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Bitmap$Config[] f3149h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f3150a = new f(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.support.v4.media.h f3151b = new android.support.v4.media.h(25);
    public final HashMap c = new HashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Bitmap$Config[] bitmap$ConfigArr = {Bitmap$Config.ARGB_8888, null};
        if (Build$VERSION.SDK_INT >= 26) {
            bitmap$ConfigArr = (Bitmap$Config[]) Arrays.copyOf(bitmap$ConfigArr, 3);
            bitmap$ConfigArr[bitmap$ConfigArr.length - 1] = c5.h.A();
        }
        d = bitmap$ConfigArr;
        e = bitmap$ConfigArr;
        f3147f = new Bitmap$Config[]{Bitmap$Config.RGB_565};
        f3148g = new Bitmap$Config[]{Bitmap$Config.ARGB_4444};
        f3149h = new Bitmap$Config[]{Bitmap$Config.ALPHA_8};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String c(int i9, Bitmap$Config bitmap$Config) {
        return "[" + i9 + "](" + bitmap$Config + ")";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(Integer num, Bitmap bitmap) {
        NavigableMap navigableMapD = d(bitmap.getConfig());
        Integer num2 = (Integer) navigableMapD.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                navigableMapD.remove(num);
                return;
            } else {
                navigableMapD.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        StringBuilder sb = new StringBuilder("Tried to decrement empty size, size: ");
        sb.append(num);
        String strC = c(p.c(bitmap), bitmap.getConfig());
        sb.append(", removed: ");
        sb.append(strC);
        sb.append(", this: ");
        sb.append(this);
        throw new NullPointerException(sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Bitmap b(int i9, int i10, Bitmap$Config bitmap$Config) {
        Bitmap$Config[] bitmap$ConfigArr;
        int iD = p.d(bitmap$Config) * i9 * i10;
        f fVar = this.f3150a;
        i iVarE = (i) ((ArrayDeque) fVar.f3128b).poll();
        if (iVarE == null) {
            iVarE = fVar.e();
        }
        k kVar = (k) iVarE;
        kVar.f3146b = iD;
        kVar.c = bitmap$Config;
        if (Build$VERSION.SDK_INT < 26 || !c5.h.A().equals(bitmap$Config)) {
            int i11 = j.f3144a[bitmap$Config.ordinal()];
            if (i11 == 1) {
                bitmap$ConfigArr = d;
            } else if (i11 == 2) {
                bitmap$ConfigArr = f3147f;
            } else if (i11 != 3) {
                bitmap$ConfigArr = i11 != 4 ? new Bitmap$Config[]{bitmap$Config} : f3149h;
            } else {
                bitmap$ConfigArr = f3148g;
            }
        } else {
            bitmap$ConfigArr = e;
        }
        for (Bitmap$Config bitmap$Config2 : bitmap$ConfigArr) {
            Integer num = (Integer) d(bitmap$Config2).ceilingKey(Integer.valueOf(iD));
            if (num != null && num.intValue() <= iD * 8) {
                if (num.intValue() == iD && (bitmap$Config2 != null ? bitmap$Config2.equals(bitmap$Config) : bitmap$Config == null)) {
                    break;
                    break;
                }
                fVar.c(kVar);
                int iIntValue = num.intValue();
                i iVarE2 = (i) ((ArrayDeque) fVar.f3128b).poll();
                if (iVarE2 == null) {
                    iVarE2 = fVar.e();
                }
                kVar = (k) iVarE2;
                kVar.f3146b = iIntValue;
                kVar.c = bitmap$Config2;
                break;
            }
        }
        Bitmap bitmap = (Bitmap) this.f3151b.h(kVar);
        if (bitmap != null) {
            a(Integer.valueOf(kVar.f3146b), bitmap);
            bitmap.reconfigure(i9, i10, bitmap$Config);
        }
        return bitmap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavigableMap d(Bitmap$Config bitmap$Config) {
        HashMap map = this.c;
        NavigableMap navigableMap = (NavigableMap) map.get(bitmap$Config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(bitmap$Config, treeMap);
        return treeMap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(Bitmap bitmap) {
        int iC = p.c(bitmap);
        Bitmap$Config config = bitmap.getConfig();
        f fVar = this.f3150a;
        i iVarE = (i) ((ArrayDeque) fVar.f3128b).poll();
        if (iVarE == null) {
            iVarE = fVar.e();
        }
        k kVar = (k) iVarE;
        kVar.f3146b = iC;
        kVar.c = config;
        this.f3151b.q(kVar, bitmap);
        NavigableMap navigableMapD = d(bitmap.getConfig());
        Integer num = (Integer) navigableMapD.get(Integer.valueOf(kVar.f3146b));
        navigableMapD.put(Integer.valueOf(kVar.f3146b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sbU = ai.onnxruntime.a.u("SizeConfigStrategy{groupedMap=");
        sbU.append(this.f3151b);
        sbU.append(", sortedSizes=(");
        HashMap map = this.c;
        for (Map$Entry map$Entry : map.entrySet()) {
            sbU.append(map$Entry.getKey());
            sbU.append('[');
            sbU.append(map$Entry.getValue());
            sbU.append("], ");
        }
        if (!map.isEmpty()) {
            sbU.replace(sbU.length() - 2, sbU.length(), "");
        }
        sbU.append(")}");
        return sbU.toString();
    }
}

package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class KeyCache {
    HashMap<Object, HashMap<String, float[]>> mMap = new HashMap<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFloatValue(Object obj, String str, int i9) {
        HashMap<String, float[]> map;
        float[] fArr;
        if (this.mMap.containsKey(obj) && (map = this.mMap.get(obj)) != null && map.containsKey(str) && (fArr = map.get(str)) != null && fArr.length > i9) {
            return fArr[i9];
        }
        return Float.NaN;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFloatValue(Object obj, String str, int i9, float f8) {
        if (!this.mMap.containsKey(obj)) {
            HashMap<String, float[]> map = new HashMap<>();
            float[] fArr = new float[i9 + 1];
            fArr[i9] = f8;
            map.put(str, fArr);
            this.mMap.put(obj, map);
            return;
        }
        HashMap<String, float[]> map2 = this.mMap.get(obj);
        if (map2 == null) {
            map2 = new HashMap<>();
        }
        if (!map2.containsKey(str)) {
            float[] fArr2 = new float[i9 + 1];
            fArr2[i9] = f8;
            map2.put(str, fArr2);
            this.mMap.put(obj, map2);
            return;
        }
        float[] fArrCopyOf = map2.get(str);
        if (fArrCopyOf == null) {
            fArrCopyOf = new float[0];
        }
        if (fArrCopyOf.length <= i9) {
            fArrCopyOf = Arrays.copyOf(fArrCopyOf, i9 + 1);
        }
        fArrCopyOf[i9] = f8;
        map2.put(str, fArrCopyOf);
    }
}

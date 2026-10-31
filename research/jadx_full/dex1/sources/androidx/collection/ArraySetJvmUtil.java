package androidx.collection;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class ArraySetJvmUtil {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ArraySetJvmUtil() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T> T[] resizeForToArray(T[] tArr, int i9) {
        if (tArr.length < i9) {
            return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i9));
        }
        if (tArr.length > i9) {
            tArr[i9] = null;
        }
        return tArr;
    }
}

package androidx.transition;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Transition$ArrayListManager {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Transition$ArrayListManager() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T> ArrayList<T> add(ArrayList<T> arrayList, T t) {
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        if (!arrayList.contains(t)) {
            arrayList.add(t);
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T> ArrayList<T> remove(ArrayList<T> arrayList, T t) {
        if (arrayList == null) {
            return arrayList;
        }
        arrayList.remove(t);
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }
}

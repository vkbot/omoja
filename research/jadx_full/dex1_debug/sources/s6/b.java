package s6;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f5303a = new HashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int[] a() {
        ArrayList arrayList = new ArrayList();
        int iIntValue = -1;
        for (Map$Entry map$Entry : this.f5303a.entrySet()) {
            if (((Integer) map$Entry.getValue()).intValue() > iIntValue) {
                iIntValue = ((Integer) map$Entry.getValue()).intValue();
                arrayList.clear();
                arrayList.add(map$Entry.getKey());
            } else if (((Integer) map$Entry.getValue()).intValue() == iIntValue) {
                arrayList.add(map$Entry.getKey());
            }
        }
        return r6.a.a(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(int i9) {
        Integer numValueOf = Integer.valueOf(i9);
        HashMap map = this.f5303a;
        Integer num = (Integer) map.get(numValueOf);
        if (num == null) {
            num = 0;
        }
        map.put(Integer.valueOf(i9), Integer.valueOf(num.intValue() + 1));
    }
}

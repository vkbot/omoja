package p194s6;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import p185r6.AbstractC3106a;

/* JADX INFO: renamed from: s6.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3210b {

    /* JADX INFO: renamed from: a */
    public final HashMap f9382a = new HashMap();

    /* JADX INFO: renamed from: a */
    public final int[] m5143a() {
        ArrayList arrayList = new ArrayList();
        int iIntValue = -1;
        for (Map.Entry entry : this.f9382a.entrySet()) {
            if (((Integer) entry.getValue()).intValue() > iIntValue) {
                iIntValue = ((Integer) entry.getValue()).intValue();
                arrayList.clear();
                arrayList.add(entry.getKey());
            } else if (((Integer) entry.getValue()).intValue() == iIntValue) {
                arrayList.add(entry.getKey());
            }
        }
        return AbstractC3106a.m4945a(arrayList);
    }

    /* JADX INFO: renamed from: b */
    public final void m5144b(int i10) {
        Integer numValueOf = Integer.valueOf(i10);
        HashMap map = this.f9382a;
        Integer num = (Integer) map.get(numValueOf);
        if (num == null) {
            num = 0;
        }
        map.put(Integer.valueOf(i10), Integer.valueOf(num.intValue() + 1));
    }
}

package p143n2;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0075b;
import android.util.SparseArray;
import java.util.HashMap;
import p003a2.EnumC0005b;
import p099j1.C1929i;

/* JADX INFO: renamed from: n2.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2473a {

    /* JADX INFO: renamed from: a */
    public static final SparseArray f6814a = new SparseArray();

    /* JADX INFO: renamed from: b */
    public static final HashMap f6815b;

    static {
        HashMap map = new HashMap();
        f6815b = map;
        map.put(EnumC0005b.f5b, 0);
        map.put(EnumC0005b.f6c, 1);
        map.put(EnumC0005b.f7d, 2);
        for (EnumC0005b enumC0005b : map.keySet()) {
            f6814a.append(((Integer) f6815b.get(enumC0005b)).intValue(), enumC0005b);
        }
    }

    /* JADX INFO: renamed from: a */
    public static int m3839a(EnumC0005b enumC0005b) {
        Integer num = (Integer) f6815b.get(enumC0005b);
        if (num != null) {
            return num.intValue();
        }
        C0075b.m192q(enumC0005b, "PriorityMapping is missing known Priority value ");
        return 0;
    }

    /* JADX INFO: renamed from: b */
    public static EnumC0005b m3840b(int i10) {
        EnumC0005b enumC0005b = (EnumC0005b) f6814a.get(i10);
        if (enumC0005b != null) {
            return enumC0005b;
        }
        C1929i.m3029k(AbstractC0074a.m154e(i10, "Unknown Priority for value "));
        return null;
    }
}

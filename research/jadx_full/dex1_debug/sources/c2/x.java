package c2;

import android.util.SparseArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class x {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final x f472b;
    public static final /* synthetic */ x[] c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        x xVar = new x("DEFAULT", 0);
        f472b = xVar;
        x xVar2 = new x("UNMETERED_ONLY", 1);
        x xVar3 = new x("UNMETERED_OR_DAILY", 2);
        x xVar4 = new x("FAST_IF_RADIO_AWAKE", 3);
        x xVar5 = new x("NEVER", 4);
        x xVar6 = new x("UNRECOGNIZED", 5);
        c = new x[]{xVar, xVar2, xVar3, xVar4, xVar5, xVar6};
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, xVar);
        sparseArray.put(1, xVar2);
        sparseArray.put(2, xVar3);
        sparseArray.put(3, xVar4);
        sparseArray.put(4, xVar5);
        sparseArray.put(-1, xVar6);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static x valueOf(String str) {
        return (x) Enum.valueOf(x.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static x[] values() {
        return (x[]) c.clone();
    }
}

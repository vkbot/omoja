package androidx.appcompat.widget;

import java.util.HashSet;
import java.util.Set;
import java.util.function.IntFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LinearLayoutCompat$InspectionCompanion$2 implements IntFunction<Set<String>> {
    final /* synthetic */ LinearLayoutCompat$InspectionCompanion this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LinearLayoutCompat$InspectionCompanion$2(LinearLayoutCompat$InspectionCompanion linearLayoutCompat$InspectionCompanion) {
        this.this$0 = linearLayoutCompat$InspectionCompanion;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.IntFunction
    /* JADX INFO: renamed from: apply, reason: avoid collision after fix types in other method */
    public Set<String> apply2(int i9) {
        HashSet hashSet = new HashSet();
        if (i9 == 0) {
            hashSet.add("none");
        }
        if (i9 == 1) {
            hashSet.add("beginning");
        }
        if (i9 == 2) {
            hashSet.add("middle");
        }
        if (i9 == 4) {
            hashSet.add("end");
        }
        return hashSet;
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.function.IntFunction
    public /* bridge */ /* synthetic */ Set<String> apply(int i9) {
        return apply2(i9);
    }
}

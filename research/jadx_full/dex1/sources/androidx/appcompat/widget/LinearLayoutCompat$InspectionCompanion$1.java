package androidx.appcompat.widget;

import java.util.function.IntFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LinearLayoutCompat$InspectionCompanion$1 implements IntFunction<String> {
    final /* synthetic */ LinearLayoutCompat$InspectionCompanion this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LinearLayoutCompat$InspectionCompanion$1(LinearLayoutCompat$InspectionCompanion linearLayoutCompat$InspectionCompanion) {
        this.this$0 = linearLayoutCompat$InspectionCompanion;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.IntFunction
    /* JADX INFO: renamed from: apply, reason: avoid collision after fix types in other method */
    public String apply2(int i9) {
        if (i9 != 0) {
            return i9 != 1 ? String.valueOf(i9) : "vertical";
        }
        return "horizontal";
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.function.IntFunction
    public /* bridge */ /* synthetic */ String apply(int i9) {
        return apply2(i9);
    }
}

package androidx.appcompat.widget;

import java.util.function.IntFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatTextView$InspectionCompanion$1 implements IntFunction<String> {
    final /* synthetic */ AppCompatTextView$InspectionCompanion this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatTextView$InspectionCompanion$1(AppCompatTextView$InspectionCompanion appCompatTextView$InspectionCompanion) {
        this.this$0 = appCompatTextView$InspectionCompanion;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.IntFunction
    /* JADX INFO: renamed from: apply, reason: avoid collision after fix types in other method */
    public String apply2(int i9) {
        if (i9 != 0) {
            return i9 != 1 ? String.valueOf(i9) : "uniform";
        }
        return "none";
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.function.IntFunction
    public /* bridge */ /* synthetic */ String apply(int i9) {
        return apply2(i9);
    }
}

package androidx.core.content.res;

import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class GradientColorInflaterCompat$ColorStops {
    final int[] mColors;
    final float[] mOffsets;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public GradientColorInflaterCompat$ColorStops(@NonNull List<Integer> list, @NonNull List<Float> list2) {
        int size = list.size();
        this.mColors = new int[size];
        this.mOffsets = new float[size];
        for (int i9 = 0; i9 < size; i9++) {
            this.mColors[i9] = list.get(i9).intValue();
            this.mOffsets[i9] = list2.get(i9).floatValue();
        }
    }

    public GradientColorInflaterCompat$ColorStops(@ColorInt int i9, @ColorInt int i10) {
        this.mColors = new int[]{i9, i10};
        this.mOffsets = new float[]{0.0f, 1.0f};
    }

    public GradientColorInflaterCompat$ColorStops(@ColorInt int i9, @ColorInt int i10, @ColorInt int i11) {
        this.mColors = new int[]{i9, i10, i11};
        this.mOffsets = new float[]{0.0f, 0.5f, 1.0f};
    }
}

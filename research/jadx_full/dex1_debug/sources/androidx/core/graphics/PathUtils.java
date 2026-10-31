package androidx.core.graphics;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class PathUtils {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private PathUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(26)
    public static Collection<PathSegment> flatten(@NonNull Path path, @FloatRange(from = 0.0d) float f8) {
        float[] fArrApproximate = PathUtils$Api26Impl.approximate(path, f8);
        int length = fArrApproximate.length / 3;
        ArrayList arrayList = new ArrayList(length);
        for (int i9 = 1; i9 < length; i9++) {
            int i10 = i9 * 3;
            int i11 = (i9 - 1) * 3;
            float f9 = fArrApproximate[i10];
            float f10 = fArrApproximate[i10 + 1];
            float f11 = fArrApproximate[i10 + 2];
            float f12 = fArrApproximate[i11];
            float f13 = fArrApproximate[i11 + 1];
            float f14 = fArrApproximate[i11 + 2];
            if (f9 != f12 && (f10 != f13 || f11 != f14)) {
                arrayList.add(new PathSegment(new PointF(f13, f14), f12, new PointF(f10, f11), f9));
            }
        }
        return arrayList;
    }

    @NonNull
    @RequiresApi(26)
    public static Collection<PathSegment> flatten(@NonNull Path path) {
        return flatten(path, 0.5f);
    }
}

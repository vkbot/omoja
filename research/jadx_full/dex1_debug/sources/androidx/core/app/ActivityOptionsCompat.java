package androidx.core.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActivityOptionsCompat {
    public static final String EXTRA_USAGE_TIME_REPORT = "android.activity.usage_time";
    public static final String EXTRA_USAGE_TIME_REPORT_PACKAGES = "android.usage_time_packages";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static ActivityOptionsCompat makeBasic() {
        return new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptionsCompat$Api23Impl.makeBasic());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static ActivityOptionsCompat makeClipRevealAnimation(@NonNull View view, int i9, int i10, int i11, int i12) {
        return new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptionsCompat$Api23Impl.makeClipRevealAnimation(view, i9, i10, i11, i12));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static ActivityOptionsCompat makeCustomAnimation(@NonNull Context context, int i9, int i10) {
        return new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptions.makeCustomAnimation(context, i9, i10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static ActivityOptionsCompat makeScaleUpAnimation(@NonNull View view, int i9, int i10, int i11, int i12) {
        return new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptions.makeScaleUpAnimation(view, i9, i10, i11, i12));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static ActivityOptionsCompat makeSceneTransitionAnimation(@NonNull Activity activity, @Nullable Pair<View, String>... pairArr) {
        android.util.Pair[] pairArr2;
        if (pairArr != null) {
            pairArr2 = new android.util.Pair[pairArr.length];
            for (int i9 = 0; i9 < pairArr.length; i9++) {
                Pair<View, String> pair = pairArr[i9];
                pairArr2[i9] = android.util.Pair.create(pair.first, pair.second);
            }
        } else {
            pairArr2 = null;
        }
        return new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptionsCompat$Api21Impl.makeSceneTransitionAnimation(activity, pairArr2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static ActivityOptionsCompat makeTaskLaunchBehind() {
        return new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptionsCompat$Api21Impl.makeTaskLaunchBehind());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static ActivityOptionsCompat makeThumbnailScaleUpAnimation(@NonNull View view, @NonNull Bitmap bitmap, int i9, int i10) {
        return new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptions.makeThumbnailScaleUpAnimation(view, bitmap, i9, i10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Rect getLaunchBounds() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Bundle toBundle() {
        return null;
    }

    public void requestUsageTimeReport(@NonNull PendingIntent pendingIntent) {
    }

    @NonNull
    public ActivityOptionsCompat setLaunchBounds(@Nullable Rect rect) {
        return this;
    }

    @NonNull
    public ActivityOptionsCompat setShareIdentityEnabled(boolean z8) {
        return this;
    }

    public void update(@NonNull ActivityOptionsCompat activityOptionsCompat) {
    }

    @NonNull
    public static ActivityOptionsCompat makeSceneTransitionAnimation(@NonNull Activity activity, @NonNull View view, @NonNull String str) {
        return new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptionsCompat$Api21Impl.makeSceneTransitionAnimation(activity, view, str));
    }
}

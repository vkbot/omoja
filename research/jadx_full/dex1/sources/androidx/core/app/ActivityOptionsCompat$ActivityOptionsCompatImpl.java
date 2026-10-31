package androidx.core.app;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.graphics.Rect;
import android.os.Build$VERSION;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActivityOptionsCompat$ActivityOptionsCompatImpl extends ActivityOptionsCompat {
    private final ActivityOptions mActivityOptions;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptions activityOptions) {
        this.mActivityOptions = activityOptions;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.ActivityOptionsCompat
    public Rect getLaunchBounds() {
        return ActivityOptionsCompat$Api24Impl.getLaunchBounds(this.mActivityOptions);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.ActivityOptionsCompat
    public void requestUsageTimeReport(@NonNull PendingIntent pendingIntent) {
        ActivityOptionsCompat$Api23Impl.requestUsageTimeReport(this.mActivityOptions, pendingIntent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.ActivityOptionsCompat
    @NonNull
    public ActivityOptionsCompat setLaunchBounds(@Nullable Rect rect) {
        return new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptionsCompat$Api24Impl.setLaunchBounds(this.mActivityOptions, rect));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.ActivityOptionsCompat
    public ActivityOptionsCompat setShareIdentityEnabled(boolean z8) {
        return Build$VERSION.SDK_INT < 34 ? this : new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptionsCompat$Api34Impl.setShareIdentityEnabled(this.mActivityOptions, z8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.ActivityOptionsCompat
    public Bundle toBundle() {
        return this.mActivityOptions.toBundle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.ActivityOptionsCompat
    public void update(@NonNull ActivityOptionsCompat activityOptionsCompat) {
        if (activityOptionsCompat instanceof ActivityOptionsCompat$ActivityOptionsCompatImpl) {
            this.mActivityOptions.update(((ActivityOptionsCompat$ActivityOptionsCompatImpl) activityOptionsCompat).mActivityOptions);
        }
    }
}

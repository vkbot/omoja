package androidx.core.app;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(23)
public class ActivityOptionsCompat$Api23Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ActivityOptionsCompat$Api23Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static ActivityOptions makeBasic() {
        return ActivityOptions.makeBasic();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static ActivityOptions makeClipRevealAnimation(View view, int i9, int i10, int i11, int i12) {
        return ActivityOptions.makeClipRevealAnimation(view, i9, i10, i11, i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void requestUsageTimeReport(ActivityOptions activityOptions, PendingIntent pendingIntent) {
        activityOptions.requestUsageTimeReport(pendingIntent);
    }
}

package androidx.navigation;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.app.ActivityOptionsCompat;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u00012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"ActivityNavigatorExtras", "Landroidx/navigation/ActivityNavigator$Extras;", "activityOptions", "Landroidx/core/app/ActivityOptionsCompat;", "flags", "", "navigation-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ActivityNavigatorExtrasKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final ActivityNavigator$Extras ActivityNavigatorExtras(ActivityOptionsCompat activityOptionsCompat, int i9) {
        ActivityNavigator$Extras$Builder activityNavigator$Extras$Builder = new ActivityNavigator$Extras$Builder();
        if (activityOptionsCompat != null) {
            activityNavigator$Extras$Builder.setActivityOptions(activityOptionsCompat);
        }
        activityNavigator$Extras$Builder.addFlags(i9);
        return activityNavigator$Extras$Builder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ActivityNavigator$Extras ActivityNavigatorExtras$default(ActivityOptionsCompat activityOptionsCompat, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            activityOptionsCompat = null;
        }
        if ((i10 & 2) != 0) {
            i9 = 0;
        }
        return ActivityNavigatorExtras(activityOptionsCompat, i9);
    }
}

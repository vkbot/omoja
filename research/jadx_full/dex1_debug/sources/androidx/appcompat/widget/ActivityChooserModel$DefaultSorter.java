package androidx.appcompat.widget;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ActivityChooserModel$DefaultSorter implements ActivityChooserModel$ActivitySorter {
    private static final float WEIGHT_DECAY_COEFFICIENT = 0.95f;
    private final Map<ComponentName, ActivityChooserModel$ActivityResolveInfo> mPackageNameToActivityMap = new HashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ActivityChooserModel$ActivitySorter
    public void sort(Intent intent, List<ActivityChooserModel$ActivityResolveInfo> list, List<ActivityChooserModel$HistoricalRecord> list2) {
        Map<ComponentName, ActivityChooserModel$ActivityResolveInfo> map = this.mPackageNameToActivityMap;
        map.clear();
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            ActivityChooserModel$ActivityResolveInfo activityChooserModel$ActivityResolveInfo = list.get(i9);
            activityChooserModel$ActivityResolveInfo.weight = 0.0f;
            ActivityInfo activityInfo = activityChooserModel$ActivityResolveInfo.resolveInfo.activityInfo;
            map.put(new ComponentName(activityInfo.packageName, activityInfo.name), activityChooserModel$ActivityResolveInfo);
        }
        float f8 = 1.0f;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            ActivityChooserModel$HistoricalRecord activityChooserModel$HistoricalRecord = list2.get(size2);
            ActivityChooserModel$ActivityResolveInfo activityChooserModel$ActivityResolveInfo2 = map.get(activityChooserModel$HistoricalRecord.activity);
            if (activityChooserModel$ActivityResolveInfo2 != null) {
                activityChooserModel$ActivityResolveInfo2.weight = (activityChooserModel$HistoricalRecord.weight * f8) + activityChooserModel$ActivityResolveInfo2.weight;
                f8 *= WEIGHT_DECAY_COEFFICIENT;
            }
        }
        Collections.sort(list);
    }
}

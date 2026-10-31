package androidx.appcompat.widget;

import android.content.ComponentName;
import java.math.BigDecimal;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ActivityChooserModel$HistoricalRecord {
    public final ComponentName activity;
    public final long time;
    public final float weight;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActivityChooserModel$HistoricalRecord(ComponentName componentName, long j9, float f8) {
        this.activity = componentName;
        this.time = j9;
        this.weight = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ActivityChooserModel$HistoricalRecord.class != obj.getClass()) {
            return false;
        }
        ActivityChooserModel$HistoricalRecord activityChooserModel$HistoricalRecord = (ActivityChooserModel$HistoricalRecord) obj;
        ComponentName componentName = this.activity;
        ComponentName componentName2 = activityChooserModel$HistoricalRecord.activity;
        if (componentName == null) {
            if (componentName2 != null) {
                return false;
            }
        } else if (!componentName.equals(componentName2)) {
            return false;
        }
        return this.time == activityChooserModel$HistoricalRecord.time && Float.floatToIntBits(this.weight) == Float.floatToIntBits(activityChooserModel$HistoricalRecord.weight);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        ComponentName componentName = this.activity;
        int iHashCode = componentName == null ? 0 : componentName.hashCode();
        long j9 = this.time;
        return Float.floatToIntBits(this.weight) + ((((iHashCode + 31) * 31) + ((int) (j9 ^ (j9 >>> 32)))) * 31);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "[; activity:" + this.activity + "; time:" + this.time + "; weight:" + new BigDecimal(this.weight) + "]";
    }

    public ActivityChooserModel$HistoricalRecord(String str, long j9, float f8) {
        this(ComponentName.unflattenFromString(str), j9, f8);
    }
}

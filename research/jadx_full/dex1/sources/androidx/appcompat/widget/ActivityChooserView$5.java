package androidx.appcompat.widget;

import android.database.DataSetObserver;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActivityChooserView$5 extends DataSetObserver {
    final /* synthetic */ ActivityChooserView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActivityChooserView$5(ActivityChooserView activityChooserView) {
        this.this$0 = activityChooserView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.database.DataSetObserver
    public void onChanged() {
        super.onChanged();
        this.this$0.updateAppearance();
    }
}

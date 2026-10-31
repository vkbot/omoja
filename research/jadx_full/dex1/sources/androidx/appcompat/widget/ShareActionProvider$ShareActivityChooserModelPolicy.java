package androidx.appcompat.widget;

import android.content.Intent;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ShareActionProvider$ShareActivityChooserModelPolicy implements ActivityChooserModel$OnChooseActivityListener {
    final /* synthetic */ ShareActionProvider this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ShareActionProvider$ShareActivityChooserModelPolicy(ShareActionProvider shareActionProvider) {
        this.this$0 = shareActionProvider;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ActivityChooserModel$OnChooseActivityListener
    public boolean onChooseActivity(ActivityChooserModel activityChooserModel, Intent intent) {
        ShareActionProvider shareActionProvider = this.this$0;
        ShareActionProvider$OnShareTargetSelectedListener shareActionProvider$OnShareTargetSelectedListener = shareActionProvider.mOnShareTargetSelectedListener;
        if (shareActionProvider$OnShareTargetSelectedListener == null) {
            return false;
        }
        shareActionProvider$OnShareTargetSelectedListener.onShareTargetSelected(shareActionProvider, intent);
        return false;
    }
}

package androidx.appcompat.widget;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem$OnMenuItemClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ShareActionProvider$ShareMenuItemOnMenuItemClickListener implements MenuItem$OnMenuItemClickListener {
    final /* synthetic */ ShareActionProvider this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ShareActionProvider$ShareMenuItemOnMenuItemClickListener(ShareActionProvider shareActionProvider) {
        this.this$0 = shareActionProvider;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.MenuItem$OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        ShareActionProvider shareActionProvider = this.this$0;
        Intent intentChooseActivity = ActivityChooserModel.get(shareActionProvider.mContext, shareActionProvider.mShareHistoryFileName).chooseActivity(menuItem.getItemId());
        if (intentChooseActivity == null) {
            return true;
        }
        String action = intentChooseActivity.getAction();
        if ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) {
            this.this$0.updateIntent(intentChooseActivity);
        }
        this.this$0.mContext.startActivity(intentChooseActivity);
        return true;
    }
}

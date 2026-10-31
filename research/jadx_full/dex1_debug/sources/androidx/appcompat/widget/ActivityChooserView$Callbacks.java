package androidx.appcompat.widget;

import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnLongClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.PopupWindow$OnDismissListener;
import androidx.core.view.ActionProvider;
import l9.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActivityChooserView$Callbacks implements AdapterView$OnItemClickListener, View$OnClickListener, View$OnLongClickListener, PopupWindow$OnDismissListener {
    final /* synthetic */ ActivityChooserView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActivityChooserView$Callbacks(ActivityChooserView activityChooserView) {
        this.this$0 = activityChooserView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void notifyOnDismissListener() {
        PopupWindow$OnDismissListener popupWindow$OnDismissListener = this.this$0.mOnDismissListener;
        if (popupWindow$OnDismissListener != null) {
            popupWindow$OnDismissListener.onDismiss();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        ActivityChooserView activityChooserView = this.this$0;
        if (view != activityChooserView.mDefaultActivityButton) {
            if (view != activityChooserView.mExpandActivityOverflowButton) {
                i.a();
                return;
            } else {
                activityChooserView.mIsSelectingDefaultActivity = false;
                activityChooserView.showPopupUnchecked(activityChooserView.mInitialActivityCount);
                return;
            }
        }
        activityChooserView.dismissPopup();
        Intent intentChooseActivity = this.this$0.mAdapter.getDataModel().chooseActivity(this.this$0.mAdapter.getDataModel().getActivityIndex(this.this$0.mAdapter.getDefaultActivity()));
        if (intentChooseActivity != null) {
            intentChooseActivity.addFlags(524288);
            this.this$0.getContext().startActivity(intentChooseActivity);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.PopupWindow$OnDismissListener
    public void onDismiss() {
        notifyOnDismissListener();
        ActionProvider actionProvider = this.this$0.mProvider;
        if (actionProvider != null) {
            actionProvider.subUiVisibilityChanged(false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i9, long j9) {
        int itemViewType = ((ActivityChooserView$ActivityChooserViewAdapter) adapterView.getAdapter()).getItemViewType(i9);
        if (itemViewType != 0) {
            if (itemViewType == 1) {
                this.this$0.showPopupUnchecked(Integer.MAX_VALUE);
                return;
            } else {
                i.a();
                return;
            }
        }
        this.this$0.dismissPopup();
        ActivityChooserView activityChooserView = this.this$0;
        if (activityChooserView.mIsSelectingDefaultActivity) {
            if (i9 > 0) {
                activityChooserView.mAdapter.getDataModel().setDefaultActivity(i9);
                return;
            }
            return;
        }
        if (!activityChooserView.mAdapter.getShowDefaultActivity()) {
            i9++;
        }
        Intent intentChooseActivity = this.this$0.mAdapter.getDataModel().chooseActivity(i9);
        if (intentChooseActivity != null) {
            intentChooseActivity.addFlags(524288);
            this.this$0.getContext().startActivity(intentChooseActivity);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnLongClickListener
    public boolean onLongClick(View view) {
        ActivityChooserView activityChooserView = this.this$0;
        if (view != activityChooserView.mDefaultActivityButton) {
            i.a();
            return false;
        }
        if (activityChooserView.mAdapter.getCount() > 0) {
            ActivityChooserView activityChooserView2 = this.this$0;
            activityChooserView2.mIsSelectingDefaultActivity = true;
            activityChooserView2.showPopupUnchecked(activityChooserView2.mInitialActivityCount);
        }
        return true;
    }
}

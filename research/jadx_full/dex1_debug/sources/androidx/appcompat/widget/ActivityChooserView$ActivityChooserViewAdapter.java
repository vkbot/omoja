package androidx.appcompat.widget;

import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$string;
import l9.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActivityChooserView$ActivityChooserViewAdapter extends BaseAdapter {
    private static final int ITEM_VIEW_TYPE_ACTIVITY = 0;
    private static final int ITEM_VIEW_TYPE_COUNT = 3;
    private static final int ITEM_VIEW_TYPE_FOOTER = 1;
    public static final int MAX_ACTIVITY_COUNT_DEFAULT = 4;
    public static final int MAX_ACTIVITY_COUNT_UNLIMITED = Integer.MAX_VALUE;
    private ActivityChooserModel mDataModel;
    private boolean mHighlightDefaultActivity;
    private int mMaxActivityCount = 4;
    private boolean mShowDefaultActivity;
    private boolean mShowFooterView;
    final /* synthetic */ ActivityChooserView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActivityChooserView$ActivityChooserViewAdapter(ActivityChooserView activityChooserView) {
        this.this$0 = activityChooserView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getActivityCount() {
        return this.mDataModel.getActivityCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public int getCount() {
        int activityCount = this.mDataModel.getActivityCount();
        if (!this.mShowDefaultActivity && this.mDataModel.getDefaultActivity() != null) {
            activityCount--;
        }
        int iMin = Math.min(activityCount, this.mMaxActivityCount);
        return this.mShowFooterView ? iMin + 1 : iMin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActivityChooserModel getDataModel() {
        return this.mDataModel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ResolveInfo getDefaultActivity() {
        return this.mDataModel.getDefaultActivity();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHistorySize() {
        return this.mDataModel.getHistorySize();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public Object getItem(int i9) {
        int itemViewType = getItemViewType(i9);
        if (itemViewType != 0) {
            if (itemViewType == 1) {
                return null;
            }
            i.a();
            return null;
        }
        if (!this.mShowDefaultActivity && this.mDataModel.getDefaultActivity() != null) {
            i9++;
        }
        return this.mDataModel.getActivity(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public long getItemId(int i9) {
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i9) {
        return (this.mShowFooterView && i9 == getCount() - 1) ? 1 : 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getShowDefaultActivity() {
        return this.mShowDefaultActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public View getView(int i9, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i9);
        if (itemViewType != 0) {
            if (itemViewType != 1) {
                i.a();
                return null;
            }
            if (view != null && view.getId() == 1) {
                return view;
            }
            View viewInflate = LayoutInflater.from(this.this$0.getContext()).inflate(R$layout.abc_activity_chooser_view_list_item, viewGroup, false);
            viewInflate.setId(1);
            ((TextView) viewInflate.findViewById(R$id.title)).setText(this.this$0.getContext().getString(R$string.abc_activity_chooser_view_see_all));
            return viewInflate;
        }
        if (view == null || view.getId() != R$id.list_item) {
            view = LayoutInflater.from(this.this$0.getContext()).inflate(R$layout.abc_activity_chooser_view_list_item, viewGroup, false);
        }
        PackageManager packageManager = this.this$0.getContext().getPackageManager();
        ImageView imageView = (ImageView) view.findViewById(R$id.icon);
        ResolveInfo resolveInfo = (ResolveInfo) getItem(i9);
        imageView.setImageDrawable(resolveInfo.loadIcon(packageManager));
        ((TextView) view.findViewById(R$id.title)).setText(resolveInfo.loadLabel(packageManager));
        if (this.mShowDefaultActivity && i9 == 0 && this.mHighlightDefaultActivity) {
            view.setActivated(true);
            return view;
        }
        view.setActivated(false);
        return view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int measureContentWidth() {
        int i9 = this.mMaxActivityCount;
        this.mMaxActivityCount = Integer.MAX_VALUE;
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(0, 0);
        int count = getCount();
        int iMax = 0;
        View view = null;
        for (int i10 = 0; i10 < count; i10++) {
            view = getView(i10, view, null);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax = Math.max(iMax, view.getMeasuredWidth());
        }
        this.mMaxActivityCount = i9;
        return iMax;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDataModel(ActivityChooserModel activityChooserModel) {
        ActivityChooserModel dataModel = this.this$0.mAdapter.getDataModel();
        if (dataModel != null && this.this$0.isShown()) {
            dataModel.unregisterObserver(this.this$0.mModelDataSetObserver);
        }
        this.mDataModel = activityChooserModel;
        if (activityChooserModel != null && this.this$0.isShown()) {
            activityChooserModel.registerObserver(this.this$0.mModelDataSetObserver);
        }
        notifyDataSetChanged();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxActivityCount(int i9) {
        if (this.mMaxActivityCount != i9) {
            this.mMaxActivityCount = i9;
            notifyDataSetChanged();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShowDefaultActivity(boolean z8, boolean z9) {
        if (this.mShowDefaultActivity == z8 && this.mHighlightDefaultActivity == z9) {
            return;
        }
        this.mShowDefaultActivity = z8;
        this.mHighlightDefaultActivity = z9;
        notifyDataSetChanged();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShowFooterView(boolean z8) {
        if (this.mShowFooterView != z8) {
            this.mShowFooterView = z8;
            notifyDataSetChanged();
        }
    }
}

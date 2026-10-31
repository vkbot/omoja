package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SpinnerAdapter;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@VisibleForTesting
public class AppCompatSpinner$DropdownPopup extends ListPopupWindow implements AppCompatSpinner$SpinnerPopup {
    ListAdapter mAdapter;
    private CharSequence mHintText;
    private int mOriginalHorizontalOffset;
    private final Rect mVisibleRect;
    final /* synthetic */ AppCompatSpinner this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatSpinner$DropdownPopup(AppCompatSpinner appCompatSpinner, Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.this$0 = appCompatSpinner;
        this.mVisibleRect = new Rect();
        setAnchorView(appCompatSpinner);
        setModal(true);
        setPromptPosition(0);
        setOnItemClickListener(new AppCompatSpinner$DropdownPopup$1(this, appCompatSpinner));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$001(AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup) {
        super.show();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void computeContentWidth() {
        int i9;
        Drawable background = getBackground();
        AppCompatSpinner appCompatSpinner = this.this$0;
        if (background != null) {
            background.getPadding(appCompatSpinner.mTempRect);
            boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this.this$0);
            AppCompatSpinner appCompatSpinner2 = this.this$0;
            i9 = zIsLayoutRtl ? appCompatSpinner2.mTempRect.right : -appCompatSpinner2.mTempRect.left;
        } else {
            Rect rect = appCompatSpinner.mTempRect;
            rect.right = 0;
            rect.left = 0;
            i9 = 0;
        }
        int paddingLeft = this.this$0.getPaddingLeft();
        int paddingRight = this.this$0.getPaddingRight();
        int width = this.this$0.getWidth();
        AppCompatSpinner appCompatSpinner3 = this.this$0;
        int i10 = appCompatSpinner3.mDropDownWidth;
        if (i10 == -2) {
            int iCompatMeasureContentWidth = appCompatSpinner3.compatMeasureContentWidth((SpinnerAdapter) this.mAdapter, getBackground());
            int i11 = this.this$0.getContext().getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.this$0.mTempRect;
            int i12 = (i11 - rect2.left) - rect2.right;
            if (iCompatMeasureContentWidth > i12) {
                iCompatMeasureContentWidth = i12;
            }
            setContentWidth(Math.max(iCompatMeasureContentWidth, (width - paddingLeft) - paddingRight));
        } else if (i10 == -1) {
            setContentWidth((width - paddingLeft) - paddingRight);
        } else {
            setContentWidth(i10);
        }
        setHorizontalOffset(ViewUtils.isLayoutRtl(this.this$0) ? (((width - paddingRight) - getWidth()) - getHorizontalOriginalOffset()) + i9 : paddingLeft + getHorizontalOriginalOffset() + i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public CharSequence getHintText() {
        return this.mHintText;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public int getHorizontalOriginalOffset() {
        return this.mOriginalHorizontalOffset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isVisibleToUser(View view) {
        return view.isAttachedToWindow() && view.getGlobalVisibleRect(this.mVisibleRect);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
        this.mAdapter = listAdapter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void setHorizontalOriginalOffset(int i9) {
        this.mOriginalHorizontalOffset = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void setPromptText(CharSequence charSequence) {
        this.mHintText = charSequence;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void show(int i9, int i10) {
        ViewTreeObserver viewTreeObserver;
        boolean zIsShowing = isShowing();
        computeContentWidth();
        setInputMethodMode(2);
        super.show();
        ListView listView = getListView();
        listView.setChoiceMode(1);
        listView.setTextDirection(i9);
        listView.setTextAlignment(i10);
        setSelection(this.this$0.getSelectedItemPosition());
        if (zIsShowing || (viewTreeObserver = this.this$0.getViewTreeObserver()) == null) {
            return;
        }
        AppCompatSpinner$DropdownPopup$2 appCompatSpinner$DropdownPopup$2 = new AppCompatSpinner$DropdownPopup$2(this);
        viewTreeObserver.addOnGlobalLayoutListener(appCompatSpinner$DropdownPopup$2);
        setOnDismissListener(new AppCompatSpinner$DropdownPopup$3(this, appCompatSpinner$DropdownPopup$2));
    }
}

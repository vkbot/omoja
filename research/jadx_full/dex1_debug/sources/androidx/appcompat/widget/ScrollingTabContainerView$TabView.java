package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.TextUtils$TruncateAt;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.app.ActionBar$Tab;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ScrollingTabContainerView$TabView extends LinearLayout {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.app.ActionBar$Tab";
    private final int[] BG_ATTRS;
    private View mCustomView;
    private ImageView mIconView;
    private ActionBar$Tab mTab;
    private TextView mTextView;
    final /* synthetic */ ScrollingTabContainerView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollingTabContainerView$TabView(ScrollingTabContainerView scrollingTabContainerView, Context context, ActionBar$Tab actionBar$Tab, boolean z8) {
        super(context, null, R$attr.actionBarTabStyle);
        this.this$0 = scrollingTabContainerView;
        int[] iArr = {android.R$attr.background};
        this.BG_ATTRS = iArr;
        this.mTab = actionBar$Tab;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, null, iArr, R$attr.actionBarTabStyle, 0);
        if (tintTypedArrayObtainStyledAttributes.hasValue(0)) {
            setBackgroundDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(0));
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        if (z8) {
            setGravity(8388627);
        }
        update();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void bindTab(ActionBar$Tab actionBar$Tab) {
        this.mTab = actionBar$Tab;
        update();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActionBar$Tab getTab() {
        return this.mTab;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        if (this.this$0.mMaxTabWidth > 0) {
            int measuredWidth = getMeasuredWidth();
            int i11 = this.this$0.mMaxTabWidth;
            if (measuredWidth > i11) {
                super.onMeasure(View$MeasureSpec.makeMeasureSpec(i11, BasicMeasure.EXACTLY), i10);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setSelected(boolean z8) {
        boolean z9 = isSelected() != z8;
        super.setSelected(z8);
        if (z9 && z8) {
            sendAccessibilityEvent(4);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void update() {
        ActionBar$Tab actionBar$Tab = this.mTab;
        View customView = actionBar$Tab.getCustomView();
        if (customView != null) {
            ViewParent parent = customView.getParent();
            if (parent != this) {
                if (parent != null) {
                    ((ViewGroup) parent).removeView(customView);
                }
                addView(customView);
            }
            this.mCustomView = customView;
            TextView textView = this.mTextView;
            if (textView != null) {
                textView.setVisibility(8);
            }
            ImageView imageView = this.mIconView;
            if (imageView != null) {
                imageView.setVisibility(8);
                this.mIconView.setImageDrawable(null);
                return;
            }
            return;
        }
        View view = this.mCustomView;
        if (view != null) {
            removeView(view);
            this.mCustomView = null;
        }
        Drawable icon = actionBar$Tab.getIcon();
        CharSequence text = actionBar$Tab.getText();
        ImageView imageView2 = this.mIconView;
        if (icon != null) {
            if (imageView2 == null) {
                AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-2, -2);
                linearLayout$LayoutParams.gravity = 16;
                appCompatImageView.setLayoutParams(linearLayout$LayoutParams);
                addView(appCompatImageView, 0);
                this.mIconView = appCompatImageView;
            }
            this.mIconView.setImageDrawable(icon);
            this.mIconView.setVisibility(0);
        } else if (imageView2 != null) {
            imageView2.setVisibility(8);
            this.mIconView.setImageDrawable(null);
        }
        boolean zIsEmpty = TextUtils.isEmpty(text);
        TextView textView2 = this.mTextView;
        if (!zIsEmpty) {
            if (textView2 == null) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, R$attr.actionBarTabTextStyle);
                appCompatTextView.setEllipsize(TextUtils$TruncateAt.END);
                LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(-2, -2);
                linearLayout$LayoutParams2.gravity = 16;
                appCompatTextView.setLayoutParams(linearLayout$LayoutParams2);
                addView(appCompatTextView);
                this.mTextView = appCompatTextView;
            }
            this.mTextView.setText(text);
            this.mTextView.setVisibility(0);
        } else if (textView2 != null) {
            textView2.setVisibility(8);
            this.mTextView.setText((CharSequence) null);
        }
        ImageView imageView3 = this.mIconView;
        if (imageView3 != null) {
            imageView3.setContentDescription(actionBar$Tab.getContentDescription());
        }
        TooltipCompat.setTooltipText(this, zIsEmpty ? actionBar$Tab.getContentDescription() : null);
    }
}

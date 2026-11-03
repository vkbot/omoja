package com.android.launcher3.views;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.android.launcher3.R;
import com.android.launcher3.activity.view.ShakeFrameLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppIconView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0013H\u0014J\u0010\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/android/launcher3/views/AppIconView;", "Lcom/android/launcher3/activity/view/ShakeFrameLayout;", "Lcom/android/launcher3/views/AppIconContainer;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "mIconSize", "mIconTop", "mIconView", "Landroid/widget/ImageView;", "mWidth", "getIcon", "Landroid/graphics/drawable/Drawable;", "getIconBounds", "", "bounds", "Landroid/graphics/Rect;", "onFinishInflate", "setIconVisible", "visible", "", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AppIconView extends ShakeFrameLayout implements AppIconContainer {
    private final int mIconSize;
    private final int mIconTop;
    private ImageView mIconView;
    private final int mWidth;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AppIconView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppIconView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.mWidth = context.getResources().getDimensionPixelSize(R.dimen.icon_height_width);
        this.mIconSize = context.getResources().getDimensionPixelSize(R.dimen.icon_image_height_weight);
        this.mIconTop = context.getResources().getDimensionPixelSize(R.dimen.icon_image_margin_top);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        View viewFindViewById = findViewById(R.id.list_icon);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById<ImageView>(R.id.list_icon)");
        this.mIconView = (ImageView) viewFindViewById;
    }

    @Override // com.android.launcher3.views.AppIconContainer
    public void getIconBounds(Rect bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        int i = this.mWidth;
        int i2 = this.mIconSize;
        int i3 = (i - i2) / 2;
        int i4 = this.mIconTop;
        bounds.set(i3, i4, i3 + i2, i2 + i4);
    }

    @Override // com.android.launcher3.views.AppIconContainer
    public Drawable getIcon() {
        ImageView imageView = this.mIconView;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mIconView");
            imageView = null;
        }
        return imageView.getDrawable();
    }

    @Override // com.android.launcher3.views.AppIconContainer
    public void setIconVisible(boolean visible) {
        ImageView imageView = this.mIconView;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mIconView");
            imageView = null;
        }
        imageView.setVisibility(visible ? 0 : 4);
    }
}

package com.android.launcher3.popup;

import android.app.ActivityOptions;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.Launcher;
import com.android.launcher3.R;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.InstantAppResolver;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.widget.WidgetsBottomSheet;

/* JADX INFO: loaded from: classes.dex */
public abstract class SystemShortcut<T extends BaseDraggingActivity> extends ItemInfo implements View.OnClickListener {
    private final int mAccessibilityActionId;
    private final int mIconResId;
    protected final ItemInfo mItemInfo;
    private final int mLabelResId;
    protected final T mTarget;
    public static final Factory<Launcher> WIDGETS = new Factory() { // from class: com.android.launcher3.popup.SystemShortcut$$ExternalSyntheticLambda0
        @Override // com.android.launcher3.popup.SystemShortcut.Factory
        public final SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
            return SystemShortcut.lambda$static$0((Launcher) baseDraggingActivity, itemInfo);
        }
    };
    public static final Factory<BaseDraggingActivity> APP_INFO = new Factory() { // from class: com.android.launcher3.popup.SystemShortcut$$ExternalSyntheticLambda1
        @Override // com.android.launcher3.popup.SystemShortcut.Factory
        public final SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
            return new SystemShortcut.AppInfo(baseDraggingActivity, itemInfo);
        }
    };
    public static final Factory<BaseDraggingActivity> INSTALL = new Factory() { // from class: com.android.launcher3.popup.SystemShortcut$$ExternalSyntheticLambda2
        @Override // com.android.launcher3.popup.SystemShortcut.Factory
        public final SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
            return SystemShortcut.lambda$static$1(baseDraggingActivity, itemInfo);
        }
    };

    public interface Factory<T extends BaseDraggingActivity> {
        SystemShortcut<T> getShortcut(T activity, ItemInfo itemInfo);
    }

    public boolean hasHandlerForAction(int action) {
        return this.mAccessibilityActionId == action;
    }

    public boolean isLeftGroup() {
        return false;
    }

    public SystemShortcut(int iconResId, int labelResId, T target, ItemInfo itemInfo) {
        this.mIconResId = iconResId;
        this.mLabelResId = labelResId;
        this.mAccessibilityActionId = labelResId;
        this.mTarget = target;
        this.mItemInfo = itemInfo;
    }

    public SystemShortcut(SystemShortcut<T> other) {
        this.mIconResId = other.mIconResId;
        this.mLabelResId = other.mLabelResId;
        this.mAccessibilityActionId = other.mAccessibilityActionId;
        this.mTarget = other.mTarget;
        this.mItemInfo = other.mItemInfo;
    }

    public void setIconAndLabelFor(View iconView, TextView labelView) {
        iconView.setBackgroundResource(this.mIconResId);
        labelView.setText(this.mLabelResId);
    }

    public void setIconAndContentDescriptionFor(ImageView view) {
        view.setImageResource(this.mIconResId);
        view.setContentDescription(view.getContext().getText(this.mLabelResId));
    }

    public AccessibilityNodeInfo.AccessibilityAction createAccessibilityAction(Context context) {
        return new AccessibilityNodeInfo.AccessibilityAction(this.mAccessibilityActionId, context.getText(this.mLabelResId));
    }

    static /* synthetic */ SystemShortcut lambda$static$0(Launcher launcher, ItemInfo itemInfo) {
        if (itemInfo.getTargetComponent() == null || launcher.getPopupDataProvider().getWidgetsForPackageUser(new PackageUserKey(itemInfo.getTargetComponent().getPackageName(), itemInfo.user)) == null) {
            return null;
        }
        return new Widgets(launcher, itemInfo);
    }

    public static class Widgets extends SystemShortcut<Launcher> {
        public Widgets(Launcher target, ItemInfo itemInfo) {
            super(R.drawable.ic_widget, R.string.widget_button_text, target, itemInfo);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractFloatingView.closeAllOpenViews(this.mTarget);
            ((WidgetsBottomSheet) ((Launcher) this.mTarget).getLayoutInflater().inflate(R.layout.widgets_bottom_sheet, (ViewGroup) ((Launcher) this.mTarget).getDragLayer(), false)).populateAndShow(this.mItemInfo);
            ((Launcher) this.mTarget).getUserEventDispatcher().logActionOnControl(0, 2, view, new int[0]);
        }
    }

    public static class AppInfo extends SystemShortcut {
        public AppInfo(BaseDraggingActivity target, ItemInfo itemInfo) {
            super(R.drawable.ic_info_no_shadow, R.string.app_info_drop_target_label, target, itemInfo);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            dismissTaskMenuView(this.mTarget);
            new PackageManagerHelper(this.mTarget).startDetailsActivityForInfo(this.mItemInfo, this.mTarget.getViewBounds(view), ActivityOptions.makeBasic().toBundle());
            this.mTarget.getUserEventDispatcher().logActionOnControl(0, 7, view, new int[0]);
        }
    }

    static /* synthetic */ SystemShortcut lambda$static$1(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
        boolean zIsInstantApp = false;
        boolean z = (itemInfo instanceof WorkspaceItemInfo) && ((WorkspaceItemInfo) itemInfo).hasStatusFlag(16);
        if (itemInfo instanceof com.android.launcher3.model.data.AppInfo) {
            zIsInstantApp = InstantAppResolver.newInstance(baseDraggingActivity).isInstantApp((com.android.launcher3.model.data.AppInfo) itemInfo);
        }
        if (z || zIsInstantApp) {
            return new Install(baseDraggingActivity, itemInfo);
        }
        return null;
    }

    public static class Install extends SystemShortcut {
        public Install(BaseDraggingActivity target, ItemInfo itemInfo) {
            super(R.drawable.ic_install_no_shadow, R.string.install_drop_target_label, target, itemInfo);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.mTarget.startActivitySafely(view, new PackageManagerHelper(view.getContext()).getMarketIntent(this.mItemInfo.getTargetComponent().getPackageName()), this.mItemInfo, null);
            AbstractFloatingView.closeAllOpenViews(this.mTarget);
        }
    }

    public static void dismissTaskMenuView(BaseDraggingActivity activity) {
        AbstractFloatingView.closeOpenViews(activity, true, 3467);
    }
}

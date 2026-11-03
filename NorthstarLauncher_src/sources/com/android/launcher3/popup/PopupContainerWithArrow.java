package com.android.launcher3.popup;

import android.animation.AnimatorSet;
import android.animation.LayoutTransition;
import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.R;
import com.android.launcher3.Utilities;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.accessibility.ShortcutMenuAccessibilityDelegate;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.notification.NotificationInfo;
import com.android.launcher3.notification.NotificationItemView;
import com.android.launcher3.notification.NotificationKeyData;
import com.android.launcher3.notification.NotificationMainView;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.shortcuts.ShortcutDragPreviewProvider;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.userevent.nano.LauncherLogProto;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.ShortcutUtil;
import com.android.launcher3.views.BaseDragLayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class PopupContainerWithArrow<T extends BaseDraggingActivity> extends ArrowPopup<T> implements DragSource, DragController.DragListener {
    private static final String TAG = "PopupContainerWithArrow";
    protected LauncherAccessibilityDelegate mAccessibilityDelegate;
    private final PointF mInterceptTouchDown;
    private NotificationItemView mNotificationItemView;
    private int mNumNotifications;
    private BubbleTextView mOriginalIcon;
    protected PopupItemDragHandler mPopupItemDragHandler;
    private final List<DeepShortcutView> mShortcuts;
    private final int mStartDragThreshold;
    private ViewGroup mSystemShortcutContainer;

    public interface PopupItemDragHandler extends View.OnLongClickListener, View.OnTouchListener {
    }

    public static PopupContainerWithArrow showForIcon(BubbleTextView icon) {
        return null;
    }

    @Override // android.view.View
    public LauncherAccessibilityDelegate getAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public PopupItemDragHandler getItemDragHandler() {
        return this.mPopupItemDragHandler;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public int getLogContainerType() {
        return 9;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    protected boolean isOfType(int type) {
        return (type & 2) != 0;
    }

    @Override // com.android.launcher3.DragSource
    public void onDropCompleted(View target, DropTarget.DragObject d, boolean success) {
    }

    public PopupContainerWithArrow(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mShortcuts = new ArrayList();
        this.mInterceptTouchDown = new PointF();
        this.mStartDragThreshold = getResources().getDimensionPixelSize(R.dimen.deep_shortcuts_start_drag_threshold);
    }

    public PopupContainerWithArrow(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public PopupContainerWithArrow(Context context) {
        this(context, null, 0);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (ev.getAction() == 0) {
            this.mInterceptTouchDown.set(ev.getX(), ev.getY());
        }
        NotificationItemView notificationItemView = this.mNotificationItemView;
        return (notificationItemView != null && notificationItemView.onInterceptTouchEvent(ev)) || Utilities.squaredHypot(this.mInterceptTouchDown.x - ev.getX(), this.mInterceptTouchDown.y - ev.getY()) > Utilities.squaredTouchSlop(getContext());
    }

    @Override // com.android.launcher3.AbstractFloatingView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        NotificationItemView notificationItemView = this.mNotificationItemView;
        if (notificationItemView != null) {
            return notificationItemView.onTouchEvent(ev) || super.onTouchEvent(ev);
        }
        return super.onTouchEvent(ev);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int command) {
        this.mLauncher.getUserEventDispatcher().logActionCommand(command, this.mOriginalIcon, getLogContainerType());
    }

    public View.OnClickListener getItemClickListener() {
        return new View.OnClickListener() { // from class: com.android.launcher3.popup.PopupContainerWithArrow$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m134x9cf43b81(view);
            }
        };
    }

    /* JADX INFO: renamed from: lambda$getItemClickListener$0$com-android-launcher3-popup-PopupContainerWithArrow, reason: not valid java name */
    /* synthetic */ void m134x9cf43b81(View view) {
        this.mLauncher.getItemOnClickListener().onClick(view);
        close(true);
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent ev) {
        if (ev.getAction() != 0) {
            return false;
        }
        BaseDragLayer popupContainer = getPopupContainer();
        if (popupContainer.isEventOverView(this, ev)) {
            return false;
        }
        this.mLauncher.getUserEventDispatcher().logActionTapOutside(LoggerUtils.newContainerTarget(9));
        close(true);
        BubbleTextView bubbleTextView = this.mOriginalIcon;
        return bubbleTextView == null || !popupContainer.isEventOverView(bubbleTextView, ev);
    }

    public static boolean canShow(View icon, ItemInfo item) {
        return (icon instanceof BubbleTextView) && ShortcutUtil.supportsShortcuts(item);
    }

    private void configureForLauncher(Launcher launcher) {
        addOnAttachStateChangeListener(new LiveUpdateHandler(launcher));
        this.mPopupItemDragHandler = new LauncherPopupItemDragHandler(launcher, this);
        this.mAccessibilityDelegate = new ShortcutMenuAccessibilityDelegate(launcher);
        launcher.getDragController().addDragListener(this);
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    protected void onInflationComplete(boolean isReversed) {
        NotificationItemView notificationItemView;
        if (isReversed && (notificationItemView = this.mNotificationItemView) != null) {
            notificationItemView.inverseGutterMargin();
        }
        int childCount = getChildCount();
        DeepShortcutView deepShortcutView = null;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (childAt instanceof DeepShortcutView)) {
                if (deepShortcutView != null) {
                    deepShortcutView.setDividerVisibility(0);
                }
                DeepShortcutView deepShortcutView2 = (DeepShortcutView) childAt;
                deepShortcutView2.setDividerVisibility(4);
                deepShortcutView = deepShortcutView2;
            }
        }
    }

    public void populateAndShow(final BubbleTextView originalIcon, int shortcutCount, final List<NotificationKeyData> notificationKeys, List<SystemShortcut> systemShortcuts) {
        this.mNumNotifications = notificationKeys.size();
        this.mOriginalIcon = originalIcon;
        boolean z = shortcutCount > 0;
        int dimension = (int) getResources().getDimension(R.dimen.bg_popup_item_width);
        if (z) {
            dimension = (int) Math.max(dimension, systemShortcuts.size() * getResources().getDimension(R.dimen.system_shortcut_header_icon_touch_size));
        }
        if (this.mNumNotifications > 0) {
            View.inflate(getContext(), R.layout.notification_content, this);
            NotificationItemView notificationItemView = new NotificationItemView(this);
            this.mNotificationItemView = notificationItemView;
            if (this.mNumNotifications == 1) {
                notificationItemView.removeFooter();
            } else {
                notificationItemView.setFooterWidth(dimension);
            }
            updateNotificationHeader();
        }
        int childCount = getChildCount();
        this.mSystemShortcutContainer = this;
        if (z) {
            NotificationItemView notificationItemView2 = this.mNotificationItemView;
            if (notificationItemView2 != null) {
                notificationItemView2.addGutter();
            }
            while (shortcutCount > 0) {
                DeepShortcutView deepShortcutView = (DeepShortcutView) inflateAndAdd(R.layout.deep_shortcut, this);
                deepShortcutView.getLayoutParams().width = dimension;
                this.mShortcuts.add(deepShortcutView);
                shortcutCount--;
            }
            updateHiddenShortcuts();
            if (!systemShortcuts.isEmpty()) {
                this.mSystemShortcutContainer = (ViewGroup) inflateAndAdd(R.layout.system_shortcut_icons, this);
                Iterator<SystemShortcut> it = systemShortcuts.iterator();
                while (it.hasNext()) {
                    initializeSystemShortcut(R.layout.system_shortcut_icon_only, this.mSystemShortcutContainer, it.next());
                }
            }
        } else if (!systemShortcuts.isEmpty()) {
            NotificationItemView notificationItemView3 = this.mNotificationItemView;
            if (notificationItemView3 != null) {
                notificationItemView3.addGutter();
            }
            Iterator<SystemShortcut> it2 = systemShortcuts.iterator();
            while (it2.hasNext()) {
                initializeSystemShortcut(R.layout.system_shortcut, this, it2.next());
            }
        }
        reorderAndShow(childCount);
        ItemInfo itemInfo = (ItemInfo) originalIcon.getTag();
        setAccessibilityPaneTitle(getTitleForAccessibility());
        this.mOriginalIcon.setForceHideDot(true);
        setLayoutTransition(new LayoutTransition());
        Executors.MODEL_EXECUTOR.getHandler().postAtFrontOfQueue(PopupPopulator.createUpdateRunnable(this.mLauncher, itemInfo, new Handler(Looper.getMainLooper()), this, this.mShortcuts, notificationKeys));
    }

    private String getTitleForAccessibility() {
        return getContext().getString(this.mNumNotifications == 0 ? R.string.action_deep_shortcut : R.string.shortcuts_menu_with_notifications_description);
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    protected void getTargetObjectLocation(Rect outPos) {
        int height;
        getPopupContainer().getDescendantRectRelativeToSelf(this.mOriginalIcon, outPos);
        outPos.top += this.mOriginalIcon.getPaddingTop();
        outPos.left += this.mOriginalIcon.getPaddingLeft();
        outPos.right -= this.mOriginalIcon.getPaddingRight();
        int i = outPos.top;
        if (this.mOriginalIcon.getIcon() != null) {
            height = this.mOriginalIcon.getIcon().getBounds().height();
        } else {
            height = this.mOriginalIcon.getHeight();
        }
        outPos.bottom = i + height;
    }

    public void applyNotificationInfos(List<NotificationInfo> notificationInfos) {
        NotificationItemView notificationItemView = this.mNotificationItemView;
        if (notificationItemView != null) {
            notificationItemView.applyNotificationInfos(notificationInfos);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHiddenShortcuts() {
        int i = this.mNotificationItemView != null ? 2 : 4;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.bg_popup_item_height);
        int dimensionPixelSize2 = this.mNotificationItemView != null ? getResources().getDimensionPixelSize(R.dimen.bg_popup_item_condensed_height) : dimensionPixelSize;
        float f = dimensionPixelSize2 / dimensionPixelSize;
        int size = this.mShortcuts.size();
        int i2 = 0;
        while (i2 < size) {
            DeepShortcutView deepShortcutView = this.mShortcuts.get(i2);
            deepShortcutView.setVisibility(i2 >= i ? 8 : 0);
            deepShortcutView.getLayoutParams().height = dimensionPixelSize2;
            deepShortcutView.getIconView().setScaleX(f);
            deepShortcutView.getIconView().setScaleY(f);
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDividers() {
        int childCount = getChildCount();
        DeepShortcutView deepShortcutView = null;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (childAt instanceof DeepShortcutView)) {
                if (deepShortcutView != null) {
                    deepShortcutView.setDividerVisibility(0);
                }
                DeepShortcutView deepShortcutView2 = (DeepShortcutView) childAt;
                deepShortcutView2.setDividerVisibility(4);
                deepShortcutView = deepShortcutView2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initializeSystemShortcut(int resId, ViewGroup container, SystemShortcut info) {
        View viewInflateAndAdd = inflateAndAdd(resId, container, getInsertIndexForSystemShortcut(container, info));
        if (viewInflateAndAdd instanceof DeepShortcutView) {
            DeepShortcutView deepShortcutView = (DeepShortcutView) viewInflateAndAdd;
            info.setIconAndLabelFor(deepShortcutView.getIconView(), deepShortcutView.getBubbleText());
        } else if (viewInflateAndAdd instanceof ImageView) {
            info.setIconAndContentDescriptionFor((ImageView) viewInflateAndAdd);
            if (Utilities.ATLEAST_OREO) {
                viewInflateAndAdd.setTooltipText(viewInflateAndAdd.getContentDescription());
            }
        }
        viewInflateAndAdd.setTag(info);
        viewInflateAndAdd.setOnClickListener(info);
    }

    private int getInsertIndexForSystemShortcut(ViewGroup container, SystemShortcut shortcut) {
        View viewFindViewById = container.findViewById(R.id.separator);
        if (viewFindViewById != null && shortcut.isLeftGroup()) {
            return container.indexOfChild(viewFindViewById);
        }
        return container.getChildCount();
    }

    public DragOptions.PreDragCondition createPreDragCondition() {
        return new DragOptions.PreDragCondition() { // from class: com.android.launcher3.popup.PopupContainerWithArrow.1
            @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
            public boolean shouldStartDrag(double distanceDragged) {
                return distanceDragged > ((double) PopupContainerWithArrow.this.mStartDragThreshold);
            }

            @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
            public void onPreDragStart(DropTarget.DragObject dragObject) {
                if (PopupContainerWithArrow.this.mIsAboveIcon) {
                    PopupContainerWithArrow.this.mOriginalIcon.setIconVisible(false);
                    PopupContainerWithArrow.this.mOriginalIcon.setVisibility(0);
                } else {
                    PopupContainerWithArrow.this.mOriginalIcon.setVisibility(4);
                }
            }

            @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
            public void onPreDragEnd(DropTarget.DragObject dragObject, boolean dragStarted) {
                PopupContainerWithArrow.this.mOriginalIcon.setIconVisible(true);
                if (dragStarted) {
                    PopupContainerWithArrow.this.mOriginalIcon.setVisibility(4);
                    return;
                }
                PopupContainerWithArrow.this.mLauncher.getUserEventDispatcher().logDeepShortcutsOpen(PopupContainerWithArrow.this.mOriginalIcon);
                if (PopupContainerWithArrow.this.mIsAboveIcon) {
                    return;
                }
                PopupContainerWithArrow.this.mOriginalIcon.setVisibility(0);
                PopupContainerWithArrow.this.mOriginalIcon.setTextVisibility(false);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNotificationHeader() {
        ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) this.mOriginalIcon.getTag();
        DotInfo dotInfoForItem = this.mLauncher.getDotInfoForItem(itemInfoWithIcon);
        NotificationItemView notificationItemView = this.mNotificationItemView;
        if (notificationItemView == null || dotInfoForItem == null) {
            return;
        }
        notificationItemView.updateHeader(dotInfoForItem.getNotificationCount(), itemInfoWithIcon.bitmap.color);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions options) {
        MLog.d(TAG, "onDragStart() called with: dragObject = [" + dragObject + "], options = [" + options + "]");
        this.mDeferContainerRemoval = true;
        animateClose();
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragEnd() {
        if (this.mIsOpen) {
            return;
        }
        if (this.mOpenCloseAnimator != null) {
            this.mDeferContainerRemoval = false;
        } else if (this.mDeferContainerRemoval) {
            closeComplete();
        }
    }

    @Override // com.android.launcher3.logging.StatsLogUtils.LogContainerProvider
    public void fillInLogContainerData(ItemInfo childInfo, LauncherLogProto.Target child, ArrayList<LauncherLogProto.Target> parents) {
        if (childInfo == NotificationMainView.NOTIFICATION_ITEM_INFO) {
            child.itemType = 8;
        } else {
            child.itemType = 5;
            child.rank = childInfo.rank;
        }
        parents.add(LoggerUtils.newContainerTarget(9));
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    protected void onCreateCloseAnimation(AnimatorSet anim) {
        anim.play(this.mOriginalIcon.createTextAlphaAnimator(true));
        this.mOriginalIcon.setForceHideDot(false);
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    protected void closeComplete() {
        PopupContainerWithArrow open = getOpen(this.mLauncher);
        if (open == null || open.mOriginalIcon != this.mOriginalIcon) {
            BubbleTextView bubbleTextView = this.mOriginalIcon;
            bubbleTextView.setTextVisibility(bubbleTextView.shouldTextBeVisible());
            this.mOriginalIcon.setForceHideDot(false);
        }
        super.closeComplete();
    }

    public static PopupContainerWithArrow getOpen(BaseDraggingActivity launcher) {
        return (PopupContainerWithArrow) getOpenView(launcher, 2);
    }

    private class LiveUpdateHandler implements PopupDataProvider.PopupDataChangeListener, View.OnAttachStateChangeListener {
        private final Launcher mLauncher;

        LiveUpdateHandler(Launcher launcher) {
            this.mLauncher = launcher;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.mLauncher.getPopupDataProvider().setChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            this.mLauncher.getPopupDataProvider().setChangeListener(null);
        }

        @Override // com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener
        public void onWidgetsBound(boolean updateAppsOnly) {
            View childAt;
            SystemShortcut<T> shortcut = SystemShortcut.WIDGETS.getShortcut(this.mLauncher, (ItemInfo) PopupContainerWithArrow.this.mOriginalIcon.getTag());
            int childCount = PopupContainerWithArrow.this.mSystemShortcutContainer.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    childAt = null;
                    break;
                }
                childAt = PopupContainerWithArrow.this.mSystemShortcutContainer.getChildAt(i);
                if (childAt.getTag() instanceof SystemShortcut.Widgets) {
                    break;
                } else {
                    i++;
                }
            }
            if (shortcut != null && childAt == null) {
                ViewGroup viewGroup = PopupContainerWithArrow.this.mSystemShortcutContainer;
                PopupContainerWithArrow popupContainerWithArrow = PopupContainerWithArrow.this;
                if (viewGroup != popupContainerWithArrow) {
                    popupContainerWithArrow.initializeSystemShortcut(R.layout.system_shortcut_icon_only, popupContainerWithArrow.mSystemShortcutContainer, shortcut);
                    return;
                } else {
                    popupContainerWithArrow.close(false);
                    PopupContainerWithArrow.showForIcon(PopupContainerWithArrow.this.mOriginalIcon);
                    return;
                }
            }
            if (shortcut != null || childAt == null) {
                return;
            }
            ViewGroup viewGroup2 = PopupContainerWithArrow.this.mSystemShortcutContainer;
            PopupContainerWithArrow popupContainerWithArrow2 = PopupContainerWithArrow.this;
            if (viewGroup2 != popupContainerWithArrow2) {
                popupContainerWithArrow2.mSystemShortcutContainer.removeView(childAt);
            } else {
                popupContainerWithArrow2.close(false);
                PopupContainerWithArrow.showForIcon(PopupContainerWithArrow.this.mOriginalIcon);
            }
        }

        @Override // com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener
        public void onNotificationDotsUpdated(Predicate<PackageUserKey> updatedDots) {
            if (updatedDots.test(PackageUserKey.fromItemInfo((ItemInfo) PopupContainerWithArrow.this.mOriginalIcon.getTag()))) {
                PopupContainerWithArrow.this.updateNotificationHeader();
            }
        }

        @Override // com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener
        public void trimNotifications(Map<PackageUserKey, DotInfo> updatedDots) {
            if (PopupContainerWithArrow.this.mNotificationItemView == null) {
                return;
            }
            DotInfo dotInfo = updatedDots.get(PackageUserKey.fromItemInfo((ItemInfo) PopupContainerWithArrow.this.mOriginalIcon.getTag()));
            if (dotInfo == null || dotInfo.getNotificationKeys().size() == 0) {
                PopupContainerWithArrow.this.mNotificationItemView.removeAllViews();
                PopupContainerWithArrow.this.mNotificationItemView = null;
                PopupContainerWithArrow.this.updateHiddenShortcuts();
                PopupContainerWithArrow.this.updateDividers();
                return;
            }
            PopupContainerWithArrow.this.mNotificationItemView.trimNotifications(NotificationKeyData.extractKeysOnly(dotInfo.getNotificationKeys()));
        }
    }

    public static class LauncherPopupItemDragHandler implements PopupItemDragHandler {
        private final PopupContainerWithArrow mContainer;
        protected final Point mIconLastTouchPos = new Point();
        private final Launcher mLauncher;

        LauncherPopupItemDragHandler(Launcher launcher, PopupContainerWithArrow container) {
            this.mLauncher = launcher;
            this.mContainer = container;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v, MotionEvent ev) {
            int action = ev.getAction();
            if (action != 0 && action != 2) {
                return false;
            }
            this.mIconLastTouchPos.set((int) ev.getX(), (int) ev.getY());
            return false;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v) {
            if (!ItemLongClickListener.canStartDrag(this.mLauncher) || !(v.getParent() instanceof DeepShortcutView)) {
                return false;
            }
            DeepShortcutView deepShortcutView = (DeepShortcutView) v.getParent();
            deepShortcutView.setWillDrawIcon(false);
            Point point = new Point();
            point.x = this.mIconLastTouchPos.x - deepShortcutView.getIconCenter().x;
            point.y = this.mIconLastTouchPos.y - this.mLauncher.getDeviceProfile().iconSizePx;
            DraggableView draggableViewOfType = DraggableView.ofType(0);
            WorkspaceItemInfo finalInfo = deepShortcutView.getFinalInfo();
            finalInfo.container = LauncherSettings.Favorites.CONTAINER_SHORTCUTS;
            this.mLauncher.getWorkspace().beginDragShared(deepShortcutView.getIconView(), draggableViewOfType, this.mContainer, finalInfo, new ShortcutDragPreviewProvider(deepShortcutView.getIconView(), point), new DragOptions()).animateShift(-point.x, -point.y);
            AbstractFloatingView.closeOpenContainer(this.mLauncher, 1);
            return false;
        }
    }
}

package com.android.launcher3.accessibility;

import android.app.AlertDialog;
import android.appwidget.AppWidgetProviderInfo;
import android.content.DialogInterface;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.launcher3.AppWidgetResizeFrame;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.ButtonDropTarget;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.R;
import com.android.launcher3.Workspace;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.keyboard.CustomActionsPopup;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.ShortcutUtil;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class LauncherAccessibilityDelegate extends View.AccessibilityDelegate implements DragController.DragListener {
    protected static final int ADD_TO_WORKSPACE = 2131361844;
    public static final int DEEP_SHORTCUTS = 2131361854;
    public static final int DISMISS_PREDICTION = 2131361856;
    protected static final int MOVE = 2131361864;
    protected static final int MOVE_TO_WORKSPACE = 2131361867;
    public static final int PIN_PREDICTION = 2131361868;
    public static final int RECONFIGURE = 2131361869;
    public static final int REMOVE = 2131361871;
    protected static final int RESIZE = 2131361872;
    public static final int SHORTCUTS_AND_NOTIFICATIONS = 2131361873;
    private static final String TAG = "LauncherAccessibilityDelegate";
    public static final int UNINSTALL = 2131361875;
    protected final SparseArray<AccessibilityNodeInfo.AccessibilityAction> mActions;
    private DragInfo mDragInfo;
    final Launcher mLauncher;

    public interface AccessibilityActionHandler {
        void addSupportedAccessibilityActions(AccessibilityNodeInfo accessibilityNodeInfo);

        boolean performAccessibilityAction(int action, ItemInfo itemInfo);
    }

    public static class DragInfo {
        public DragType dragType;
        public ItemInfo info;
        public View item;
    }

    public enum DragType {
        ICON,
        FOLDER,
        WIDGET
    }

    public DragInfo getDragInfo() {
        return this.mDragInfo;
    }

    public boolean isInAccessibleDrag() {
        return this.mDragInfo != null;
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions options) {
    }

    public LauncherAccessibilityDelegate(Launcher launcher) {
        SparseArray<AccessibilityNodeInfo.AccessibilityAction> sparseArray = new SparseArray<>();
        this.mActions = sparseArray;
        this.mDragInfo = null;
        this.mLauncher = launcher;
        sparseArray.put(R.id.action_remove, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_remove, launcher.getText(R.string.remove_drop_target_label)));
        sparseArray.put(R.id.action_uninstall, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_uninstall, launcher.getText(R.string.uninstall_drop_target_label)));
        sparseArray.put(R.id.action_dismiss_prediction, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_dismiss_prediction, launcher.getText(R.string.dismiss_prediction_label)));
        sparseArray.put(R.id.action_reconfigure, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_reconfigure, launcher.getText(R.string.gadget_setup_text)));
        sparseArray.put(R.id.action_add_to_workspace, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_add_to_workspace, launcher.getText(R.string.action_add_to_workspace)));
        sparseArray.put(R.id.action_move, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move, launcher.getText(R.string.action_move)));
        sparseArray.put(R.id.action_move_to_workspace, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_to_workspace, launcher.getText(R.string.action_move_to_workspace)));
        sparseArray.put(R.id.action_resize, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_resize, launcher.getText(R.string.action_resize)));
        sparseArray.put(R.id.action_deep_shortcuts, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_deep_shortcuts, launcher.getText(R.string.action_deep_shortcut)));
        sparseArray.put(R.id.action_shortcuts_and_notifications, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_deep_shortcuts, launcher.getText(R.string.shortcuts_menu_with_notifications_description)));
    }

    public void addAccessibilityAction(int action, int actionLabel) {
        this.mActions.put(action, new AccessibilityNodeInfo.AccessibilityAction(action, this.mLauncher.getText(actionLabel)));
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityNodeInfo(View host, AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(host, info);
        addSupportedActions(host, info, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addSupportedActions(View host, AccessibilityNodeInfo info, boolean fromKeyboard) {
        if (host.getTag() instanceof ItemInfo) {
            ItemInfo itemInfo = (ItemInfo) host.getTag();
            if (host instanceof AccessibilityActionHandler) {
                ((AccessibilityActionHandler) host).addSupportedAccessibilityActions(info);
            }
            if (!fromKeyboard && ShortcutUtil.supportsShortcuts(itemInfo)) {
                info.addAction(this.mActions.get(NotificationListener.getInstanceIfConnected() != null ? R.id.action_shortcuts_and_notifications : R.id.action_deep_shortcuts));
            }
            if (this.mLauncher.getDropTargetBar() != null) {
                for (ButtonDropTarget buttonDropTarget : this.mLauncher.getDropTargetBar().getDropTargets()) {
                    if (buttonDropTarget.supportsAccessibilityDrop(itemInfo, host)) {
                        info.addAction(this.mActions.get(buttonDropTarget.getAccessibilityAction()));
                    }
                }
            }
            if (!fromKeyboard && itemSupportsAccessibleDrag(itemInfo)) {
                info.addAction(this.mActions.get(R.id.action_move));
                if (itemInfo.container >= 0) {
                    info.addAction(this.mActions.get(R.id.action_move_to_workspace));
                } else if ((itemInfo instanceof LauncherAppWidgetInfo) && !getSupportedResizeActions(host, (LauncherAppWidgetInfo) itemInfo).isEmpty()) {
                    info.addAction(this.mActions.get(R.id.action_resize));
                }
            }
            if (!fromKeyboard && !itemSupportsLongClick(host, itemInfo)) {
                info.setLongClickable(false);
                info.removeAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_LONG_CLICK);
            }
            if ((itemInfo instanceof AppInfo) || (itemInfo instanceof PendingAddItemInfo)) {
                info.addAction(this.mActions.get(R.id.action_add_to_workspace));
            }
        }
    }

    private boolean itemSupportsLongClick(View host, ItemInfo info) {
        return PopupContainerWithArrow.canShow(host, info) || new CustomActionsPopup(this.mLauncher, host).canShow();
    }

    private boolean itemSupportsAccessibleDrag(ItemInfo item) {
        if (item instanceof WorkspaceItemInfo) {
            return item.screenId >= 0 && item.container != -103;
        }
        return (item instanceof LauncherAppWidgetInfo) || (item instanceof FolderInfo);
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean performAccessibilityAction(View host, int action, Bundle args) {
        if ((host.getTag() instanceof ItemInfo) && performAction(host, (ItemInfo) host.getTag(), action)) {
            return true;
        }
        return super.performAccessibilityAction(host, action, args);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean performAction(final View host, final ItemInfo item, int action) {
        if (action == 32) {
            if (PopupContainerWithArrow.canShow(host, item)) {
                PopupContainerWithArrow.showForIcon((BubbleTextView) host);
                return true;
            }
            CustomActionsPopup customActionsPopup = new CustomActionsPopup(this.mLauncher, host);
            if (customActionsPopup.canShow()) {
                customActionsPopup.show();
                return true;
            }
        }
        if ((host instanceof AccessibilityActionHandler) && ((AccessibilityActionHandler) host).performAccessibilityAction(action, item)) {
            return true;
        }
        if (action == R.id.action_move) {
            beginAccessibleDrag(host, item);
        } else {
            if (action == R.id.action_add_to_workspace) {
                final int[] iArr = new int[2];
                final int iFindSpaceOnWorkspace = findSpaceOnWorkspace(item, iArr);
                this.mLauncher.getStateManager().goToState(LauncherState.NORMAL, true, new Runnable() { // from class: com.android.launcher3.accessibility.LauncherAccessibilityDelegate.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ItemInfo itemInfo = item;
                        if (itemInfo instanceof AppInfo) {
                            WorkspaceItemInfo workspaceItemInfoMakeWorkspaceItem = ((AppInfo) itemInfo).makeWorkspaceItem();
                            ModelWriter modelWriter = LauncherAccessibilityDelegate.this.mLauncher.getModelWriter();
                            int i = iFindSpaceOnWorkspace;
                            int[] iArr2 = iArr;
                            modelWriter.addItemToDatabase(workspaceItemInfoMakeWorkspaceItem, -100, i, iArr2[0], iArr2[1]);
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(workspaceItemInfoMakeWorkspaceItem);
                            LauncherAccessibilityDelegate.this.mLauncher.bindItems(arrayList, true);
                            LauncherAccessibilityDelegate.this.announceConfirmation(R.string.item_added_to_workspace);
                            return;
                        }
                        if (itemInfo instanceof PendingAddItemInfo) {
                            PendingAddItemInfo pendingAddItemInfo = (PendingAddItemInfo) itemInfo;
                            Workspace workspace = LauncherAccessibilityDelegate.this.mLauncher.getWorkspace();
                            workspace.snapToPage(workspace.getPageIndexForScreenId(iFindSpaceOnWorkspace));
                            LauncherAccessibilityDelegate.this.mLauncher.addPendingItem(pendingAddItemInfo, -100, iFindSpaceOnWorkspace, iArr, pendingAddItemInfo.spanX, pendingAddItemInfo.spanY);
                        }
                    }
                });
                return true;
            }
            if (action == R.id.action_move_to_workspace) {
                Folder open = Folder.getOpen(this.mLauncher);
                open.close(true);
                WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) item;
                open.getInfo().remove(workspaceItemInfo, false);
                int[] iArr2 = new int[2];
                this.mLauncher.getModelWriter().moveItemInDatabase(workspaceItemInfo, -100, findSpaceOnWorkspace(item, iArr2), iArr2[0], iArr2[1]);
                new Handler().post(new Runnable() { // from class: com.android.launcher3.accessibility.LauncherAccessibilityDelegate.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(item);
                        LauncherAccessibilityDelegate.this.mLauncher.bindItems(arrayList, true);
                        LauncherAccessibilityDelegate.this.announceConfirmation(R.string.item_moved);
                    }
                });
            } else {
                if (action == R.id.action_resize) {
                    final LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) item;
                    final IntArray supportedResizeActions = getSupportedResizeActions(host, launcherAppWidgetInfo);
                    CharSequence[] charSequenceArr = new CharSequence[supportedResizeActions.size()];
                    for (int i = 0; i < supportedResizeActions.size(); i++) {
                        charSequenceArr[i] = this.mLauncher.getText(supportedResizeActions.get(i));
                    }
                    new AlertDialog.Builder(this.mLauncher).setTitle(R.string.action_resize).setItems(charSequenceArr, new DialogInterface.OnClickListener() { // from class: com.android.launcher3.accessibility.LauncherAccessibilityDelegate.3
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialog, int which) {
                            LauncherAccessibilityDelegate.this.performResizeAction(supportedResizeActions.get(which), host, launcherAppWidgetInfo);
                            dialog.dismiss();
                        }
                    }).show();
                    return true;
                }
                if (action == R.id.action_deep_shortcuts) {
                    return PopupContainerWithArrow.showForIcon((BubbleTextView) host) != null;
                }
                if (this.mLauncher.getDropTargetBar() != null) {
                    for (ButtonDropTarget buttonDropTarget : this.mLauncher.getDropTargetBar().getDropTargets()) {
                        if (buttonDropTarget.supportsAccessibilityDrop(item, host) && action == buttonDropTarget.getAccessibilityAction()) {
                            buttonDropTarget.onAccessibilityDrop(host, item);
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private CellLayout getParentCellLayout(View view) {
        if (view == null) {
            return null;
        }
        while (true) {
            Object parent = view.getParent();
            if (parent instanceof CellLayout) {
                return (CellLayout) parent;
            }
            if (!(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
    }

    private IntArray getSupportedResizeActions(View host, LauncherAppWidgetInfo info) {
        CellLayout parentCellLayout;
        IntArray intArray = new IntArray();
        AppWidgetProviderInfo appWidgetInfo = ((LauncherAppWidgetHostView) host).getAppWidgetInfo();
        if (appWidgetInfo == null || (parentCellLayout = getParentCellLayout(host)) == null) {
            return intArray;
        }
        if ((appWidgetInfo.resizeMode & 1) != 0) {
            if (parentCellLayout.isRegionVacant(info.cellX + info.spanX, info.cellY, 1, info.spanY) || parentCellLayout.isRegionVacant(info.cellX - 1, info.cellY, 1, info.spanY)) {
                intArray.add(R.string.action_increase_width);
            }
            if (info.spanX > info.minSpanX && info.spanX > 1) {
                intArray.add(R.string.action_decrease_width);
            }
        }
        if ((appWidgetInfo.resizeMode & 2) != 0) {
            if (parentCellLayout.isRegionVacant(info.cellX, info.cellY + info.spanY, info.spanX, 1) || parentCellLayout.isRegionVacant(info.cellX, info.cellY - 1, info.spanX, 1)) {
                intArray.add(R.string.action_increase_height);
            }
            if (info.spanY > info.minSpanY && info.spanY > 1) {
                intArray.add(R.string.action_decrease_height);
            }
        }
        return intArray;
    }

    void performResizeAction(int action, View host, LauncherAppWidgetInfo info) {
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) host.getLayoutParams();
        CellLayout cellLayout = (CellLayout) host.getParent().getParent();
        cellLayout.markCellsAsUnoccupiedForView(host);
        if (action == R.string.action_increase_width) {
            if ((host.getLayoutDirection() == 1 && cellLayout.isRegionVacant(info.cellX - 1, info.cellY, 1, info.spanY)) || !cellLayout.isRegionVacant(info.cellX + info.spanX, info.cellY, 1, info.spanY)) {
                layoutParams.cellX--;
                info.cellX--;
            }
            layoutParams.cellHSpan++;
            info.spanX++;
        } else if (action == R.string.action_decrease_width) {
            layoutParams.cellHSpan--;
            info.spanX--;
        } else if (action == R.string.action_increase_height) {
            if (!cellLayout.isRegionVacant(info.cellX, info.cellY + info.spanY, info.spanX, 1)) {
                layoutParams.cellY--;
                info.cellY--;
            }
            layoutParams.cellVSpan++;
            info.spanY++;
        } else if (action == R.string.action_decrease_height) {
            layoutParams.cellVSpan--;
            info.spanY--;
        }
        cellLayout.markCellsAsOccupiedForView(host);
        Rect rect = new Rect();
        AppWidgetResizeFrame.getWidgetSizeRanges(this.mLauncher, info.spanX, info.spanY, rect);
        ((LauncherAppWidgetHostView) host).updateAppWidgetSize(null, rect.left, rect.top, rect.right, rect.bottom);
        host.requestLayout();
        this.mLauncher.getModelWriter().updateItemInDatabase(info);
        announceConfirmation(this.mLauncher.getString(R.string.widget_resized, new Object[]{Integer.valueOf(info.spanX), Integer.valueOf(info.spanY)}));
    }

    void announceConfirmation(int resId) {
        announceConfirmation(this.mLauncher.getResources().getString(resId));
    }

    void announceConfirmation(String confirmation) {
        this.mLauncher.getDragLayer().announceForAccessibility(confirmation);
    }

    public void handleAccessibleDrop(View clickedTarget, Rect dropLocation, String confirmation) {
        if (isInAccessibleDrag()) {
            int[] iArr = new int[2];
            if (dropLocation == null) {
                iArr[0] = clickedTarget.getWidth() / 2;
                iArr[1] = clickedTarget.getHeight() / 2;
            } else {
                iArr[0] = dropLocation.centerX();
                iArr[1] = dropLocation.centerY();
            }
            this.mLauncher.getDragLayer().getDescendantCoordRelativeToSelf(clickedTarget, iArr);
            this.mLauncher.getDragController().completeAccessibleDrag(iArr);
            if (TextUtils.isEmpty(confirmation)) {
                return;
            }
            announceConfirmation(confirmation);
        }
    }

    public void beginAccessibleDrag(View item, ItemInfo info) {
        DragInfo dragInfo = new DragInfo();
        this.mDragInfo = dragInfo;
        dragInfo.info = info;
        this.mDragInfo.item = item;
        this.mDragInfo.dragType = DragType.ICON;
        if (info instanceof FolderInfo) {
            this.mDragInfo.dragType = DragType.FOLDER;
        } else if (info instanceof LauncherAppWidgetInfo) {
            this.mDragInfo.dragType = DragType.WIDGET;
        }
        Rect rect = new Rect();
        this.mLauncher.getDragLayer().getDescendantRectRelativeToSelf(item, rect);
        this.mLauncher.getDragController().addDragListener(this);
        DragOptions dragOptions = new DragOptions();
        dragOptions.isAccessibleDrag = true;
        dragOptions.simulatedDndStartPoint = new Point(rect.centerX(), rect.centerY());
        ItemLongClickListener.beginDrag(item, this.mLauncher, info, dragOptions);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragEnd() {
        this.mLauncher.getDragController().removeDragListener(this);
        this.mDragInfo = null;
    }

    public int findSpaceOnWorkspace(ItemInfo info, int[] outCoordinates) {
        Workspace workspace = this.mLauncher.getWorkspace();
        IntArray screenOrder = workspace.getScreenOrder();
        int currentPage = workspace.getCurrentPage();
        int i = screenOrder.get(currentPage);
        boolean zFindCellForSpan = ((CellLayout) workspace.getPageAt(currentPage)).findCellForSpan(outCoordinates, info.spanX, info.spanY);
        for (int i2 = 0; !zFindCellForSpan && i2 < screenOrder.size(); i2++) {
            i = screenOrder.get(i2);
            zFindCellForSpan = ((CellLayout) workspace.getPageAt(i2)).findCellForSpan(outCoordinates, info.spanX, info.spanY);
        }
        if (zFindCellForSpan) {
            return i;
        }
        if (!workspace.addExtraEmptyScreen()) {
            Log.wtf(TAG, "Not enough space on an empty screen");
            return -1;
        }
        int iCommitExtraEmptyScreen = workspace.commitExtraEmptyScreen();
        if (!workspace.getScreenWithId(iCommitExtraEmptyScreen).findCellForSpan(outCoordinates, info.spanX, info.spanY)) {
            Log.wtf(TAG, "Not enough space on an empty screen");
        }
        return iCommitExtraEmptyScreen;
    }

    public int findSpaceOnCurrentWorkspace(ItemInfo info, int[] outCoordinates) {
        Workspace workspace = this.mLauncher.getWorkspace();
        IntArray screenOrder = workspace.getScreenOrder();
        int currentPage = workspace.getCurrentPage();
        int i = screenOrder.get(currentPage);
        if (((CellLayout) workspace.getPageAt(currentPage)).findCellForSpan(outCoordinates, info.spanX, info.spanY)) {
            return i;
        }
        return -1;
    }

    public int findSpaceOnInfiniteWorkspace(ItemInfo info, int[] outCoordinates) {
        Workspace workspace = this.mLauncher.getWorkspace();
        IntArray screenOrder = workspace.getScreenOrder();
        int currentPage = workspace.getCurrentPage();
        int i = screenOrder.get(currentPage);
        CellLayout cellLayout = (CellLayout) workspace.getPageAt(currentPage);
        if (!cellLayout.findCellForSpan(outCoordinates, info.spanX, info.spanY)) {
            cellLayout.appendCell(info.spanX);
        }
        if (cellLayout.findCellForSpan(outCoordinates, info.spanX, info.spanY)) {
            return i;
        }
        return -1;
    }
}

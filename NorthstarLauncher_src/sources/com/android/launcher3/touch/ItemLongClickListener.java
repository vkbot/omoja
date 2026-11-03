package com.android.launcher3.touch;

import android.view.View;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.testing.TestProtocol;
import com.android.launcher3.views.OptionsPopupView;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class ItemLongClickListener {
    public static final View.OnLongClickListener INSTANCE_WORKSPACE = new View.OnLongClickListener() { // from class: com.android.launcher3.touch.ItemLongClickListener$$ExternalSyntheticLambda0
        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            return ItemLongClickListener.onWorkspaceItemLongClick(view);
        }
    };
    private static final String TAG = "ItemLongClickListener";

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean onWorkspaceItemLongClick(View v) {
        TestLogging.recordEvent(TestProtocol.SEQUENCE_MAIN, "onWorkspaceItemLongClick");
        MLog.d(TAG, "onWorkspaceItemLongClick() called with: v = [" + v + "]");
        Launcher launcher = Launcher.getLauncher(v.getContext());
        if (!canStartDrag(launcher)) {
            return false;
        }
        if ((!launcher.isInState(LauncherState.NORMAL) && !launcher.isInState(LauncherState.OVERVIEW) && !launcher.isInState(LauncherState.WIDGET_SPRING_LOADED)) || !(v.getTag() instanceof ItemInfo)) {
            return false;
        }
        launcher.setWaitingForResult(null);
        OptionsPopupView.openWidgets(launcher);
        beginDrag(v, launcher, (ItemInfo) v.getTag(), new DragOptions());
        return true;
    }

    public static void beginDrag(View v, Launcher launcher, ItemInfo info, DragOptions dragOptions) {
        Folder open;
        if (info.container >= 0 && (open = Folder.getOpen(launcher)) != null) {
            if (!open.getIconsInReadingOrder().contains(v)) {
                open.close(true);
            } else {
                open.startDrag(v, dragOptions);
                return;
            }
        }
        launcher.getWorkspace().startDrag(new CellLayout.CellInfo(v, info), dragOptions);
    }

    public static boolean canStartDrag(Launcher launcher) {
        return (launcher == null || launcher.isWorkspaceLocked() || launcher.getDragController().isDragging()) ? false : true;
    }
}

package com.android.launcher3.touch;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.R;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.AppLaunchTracker;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.testing.TestProtocol;
import com.android.launcher3.util.Const;
import com.android.launcher3.views.FloatingIconView;
import com.android.launcher3.widget.PendingAppWidgetHostView;
import com.android.launcher3.widget.WidgetAddFlowHandler;
import com.android.launcher3.widget.WidgetManagerHelper;
import com.mega.chery.utils.ToastViewUtils;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class ItemClickHandler {
    public static final View.OnClickListener INSTANCE = getInstance(null);
    private static final String TAG = "ItemClickHandler";

    public static final View.OnClickListener getInstance(final String sourceContainer) {
        return new View.OnClickListener() { // from class: com.android.launcher3.touch.ItemClickHandler$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ItemClickHandler.onClick(view, sourceContainer);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void onClick(View v, String sourceContainer) {
        Object tag = v.getTag();
        if (v.getWindowToken() == null) {
            return;
        }
        Launcher launcher = Launcher.getLauncher(v.getContext());
        if (launcher.getWorkspace().isFinishedSwitchingState()) {
            MLog.d(TAG, "onClick: tag=" + tag + " sourceContainer=" + sourceContainer);
            if (tag instanceof WorkspaceItemInfo) {
                WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) tag;
                onClickAppShortcut(v, workspaceItemInfo, launcher, sourceContainer);
                LaunchHistory.get().noteAppLaunched(v, workspaceItemInfo);
                return;
            }
            if (tag instanceof FolderInfo) {
                if (v instanceof FolderIcon) {
                    onClickFolderIcon(v);
                }
            } else {
                if (tag instanceof AppInfo) {
                    AppInfo appInfo = (AppInfo) tag;
                    if (sourceContainer == null) {
                        sourceContainer = AppLaunchTracker.CONTAINER_ALL_APPS;
                    }
                    startAppShortcutOrInfoActivity(v, appInfo, launcher, sourceContainer);
                    LaunchHistory.get().noteAppLaunched(v, appInfo);
                    return;
                }
                if ((tag instanceof LauncherAppWidgetInfo) && (v instanceof PendingAppWidgetHostView)) {
                    onClickPendingWidget((PendingAppWidgetHostView) v, launcher);
                    LaunchHistory.get().noteAppLaunched(v, (LauncherAppWidgetInfo) tag);
                }
            }
        }
    }

    private static void onClickFolderIcon(View v) {
        Folder folder = ((FolderIcon) v).getFolder();
        if (folder.isOpen() || folder.isDestroyed()) {
            return;
        }
        folder.animateOpen();
        StatsLogManager.newInstance(v.getContext()).logger().withItemInfo(folder.mInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_FOLDER_OPEN);
    }

    private static void onClickPendingWidget(PendingAppWidgetHostView v, Launcher launcher) {
        LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfoFindProvider;
        if (launcher.getPackageManager().isSafeMode()) {
            ToastViewUtils.makeText(launcher, R.string.safemode_widget_error, 3000L).show();
            return;
        }
        LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) v.getTag();
        if (!v.isReadyForClickSetup() || (launcherAppWidgetProviderInfoFindProvider = new WidgetManagerHelper(launcher).findProvider(launcherAppWidgetInfo.providerName, launcherAppWidgetInfo.user)) == null) {
            return;
        }
        WidgetAddFlowHandler widgetAddFlowHandler = new WidgetAddFlowHandler(launcherAppWidgetProviderInfoFindProvider);
        if (launcherAppWidgetInfo.hasRestoreFlag(1)) {
            if (launcherAppWidgetInfo.hasRestoreFlag(16)) {
                widgetAddFlowHandler.startBindFlow(launcher, launcherAppWidgetInfo.appWidgetId, launcherAppWidgetInfo, 12);
                return;
            }
            return;
        }
        widgetAddFlowHandler.startConfigActivity(launcher, launcherAppWidgetInfo, 13);
    }

    public static void onClickAppShortcut(View v, WorkspaceItemInfo shortcut, Launcher launcher, String sourceContainer) {
        int i;
        if (shortcut.isDisabled() && (shortcut.runtimeStatusFlags & 51) != 0) {
            if (!TextUtils.isEmpty(shortcut.disabledMessage)) {
                ToastViewUtils.makeText(launcher, shortcut.disabledMessage.toString(), 3000L).show();
                return;
            }
            if ((shortcut.runtimeStatusFlags & 1) != 0) {
                i = R.string.safemode_shortcut_error;
            } else {
                i = ((shortcut.runtimeStatusFlags & 16) == 0 && (shortcut.runtimeStatusFlags & 32) == 0) ? R.string.activity_not_available : R.string.shortcut_not_available;
            }
            ToastViewUtils.makeText(launcher, i, 3000L).show();
            return;
        }
        if (sourceContainer == null && (shortcut.container == -101 || shortcut.container == -103)) {
            sourceContainer = AppLaunchTracker.CONTAINER_HOTSEAT;
        }
        startAppShortcutOrInfoActivity(v, shortcut, launcher, sourceContainer);
    }

    private static void startAppShortcutOrInfoActivity(View v, ItemInfo item, Launcher launcher, String sourceContainer) {
        TestLogging.recordEvent(TestProtocol.SEQUENCE_MAIN, "start: startAppShortcutOrInfoActivity");
        Intent intent = item.getIntent();
        if (intent == null) {
            throw new IllegalArgumentException("Input must have a valid intent");
        }
        if ((item instanceof WorkspaceItemInfo) && ((WorkspaceItemInfo) item).hasStatusFlag(16) && "android.intent.action.VIEW".equals(intent.getAction())) {
            Intent intent2 = new Intent(intent);
            intent2.setPackage(null);
            intent = intent2;
        }
        if (v != null && launcher.getAppTransitionManager().supportsAdaptiveIconAnimation()) {
            FloatingIconView.fetchIcon(launcher, v, item, true);
        }
        launcher.startActivitySafely(v, intent, item, sourceContainer);
    }

    public static void removeItem(final Launcher launcher, View view, ItemInfo item) {
        MLog.d(TAG, "removeItem() called with: view = [" + view + "], item = [" + item + "]");
        if (Const.isCantRemoveWidget(item.getTargetComponent())) {
            MLog.d(TAG, "removeItem: ignore remove widget");
        } else {
            launcher.removeItem(view, item, true);
            launcher.getWorkspace().post(new Runnable() { // from class: com.android.launcher3.touch.ItemClickHandler$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    launcher.getWorkspace().stripEmptyScreens();
                }
            });
        }
    }
}

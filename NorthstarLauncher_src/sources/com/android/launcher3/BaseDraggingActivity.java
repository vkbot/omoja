package com.android.launcher3;

import android.app.ActivityOptions;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Process;
import android.os.StrictMode;
import android.os.UserHandle;
import android.util.Log;
import android.view.ActionMode;
import android.view.Display;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowMetrics;
import com.android.launcher3.activity.model.Utils;
import com.android.launcher3.model.AppLaunchTracker;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.launcher3.util.AppStarter;
import com.android.launcher3.util.DefaultDisplay;
import com.android.launcher3.util.WindowBounds;
import com.mega.chery.utils.ToastViewUtils;
import com.mega.nexus.content.pm.MegaPackageManager;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseDraggingActivity extends BaseActivity implements DefaultDisplay.DisplayInfoChangeListener {
    public static final Object AUTO_CANCEL_ACTION_MODE = new Object();
    private static final String TAG = "BaseDraggingActivity";
    private ActionMode mCurrentActionMode;
    private Runnable mOnStartCallback;

    public void clearRunOnceOnStartCallback() {
        this.mOnStartCallback = null;
    }

    public abstract ActivityOptions getActivityLaunchOptions(View v);

    public abstract <T extends View> T getOverviewPanel();

    public abstract View getRootView();

    protected boolean onErrorStartingShortcut(Intent intent, ItemInfo info) {
        return false;
    }

    protected abstract void reapplyUi();

    public void returnToHomescreen() {
    }

    public void runOnceOnStart(Runnable action) {
        this.mOnStartCallback = action;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DefaultDisplay.INSTANCE.m166x39265fe7(this).addChangeListener(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onActionModeStarted(ActionMode mode) {
        super.onActionModeStarted(mode);
        this.mCurrentActionMode = mode;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onActionModeFinished(ActionMode mode) {
        super.onActionModeFinished(mode);
        this.mCurrentActionMode = null;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public boolean finishAutoCancelActionMode() {
        ActionMode actionMode = this.mCurrentActionMode;
        if (actionMode == null || AUTO_CANCEL_ACTION_MODE != actionMode.getTag()) {
            return false;
        }
        this.mCurrentActionMode.finish();
        return true;
    }

    public Rect getViewBounds(View v) {
        int[] iArr = new int[2];
        v.getLocationOnScreen(iArr);
        int i = iArr[0];
        return new Rect(i, iArr[1], v.getWidth() + i, iArr[1] + v.getHeight());
    }

    public final Bundle getActivityLaunchOptionsAsBundle(View v) {
        ActivityOptions activityLaunchOptions = getActivityLaunchOptions(v);
        if (activityLaunchOptions == null) {
            return null;
        }
        return activityLaunchOptions.toBundle();
    }

    public boolean startActivitySafely(View v, Intent intent, ItemInfo item, String sourceContainer) {
        Bundle activityLaunchOptionsAsBundle = v != null ? getActivityLaunchOptionsAsBundle(v) : null;
        UserHandle userHandle = item != null ? item.user : null;
        intent.addFlags(MegaPackageManager.MATCH_DEBUG_TRIAGED_MISSING);
        if (v != null) {
            intent.setSourceBounds(getViewBounds(v));
        }
        try {
            if ((item instanceof WorkspaceItemInfo) && ((item.itemType == 1 || item.itemType == 6) && !((WorkspaceItemInfo) item).isPromise())) {
                startShortcutIntentSafely(intent, activityLaunchOptionsAsBundle, item, sourceContainer);
            } else if (userHandle == null || userHandle.equals(Process.myUserHandle())) {
                if (!Utils.canStartApp(this, item.getTargetComponent().getPackageName())) {
                    return false;
                }
                AppStarter.startPackageActivity(this, intent, activityLaunchOptionsAsBundle, "Launcher");
                AppLaunchTracker.INSTANCE.m166x39265fe7(this).onStartApp(intent.getComponent(), Process.myUserHandle(), sourceContainer);
            } else {
                ((LauncherApps) getSystemService(LauncherApps.class)).startMainActivity(intent.getComponent(), userHandle, intent.getSourceBounds(), activityLaunchOptionsAsBundle);
                AppLaunchTracker.INSTANCE.m166x39265fe7(this).onStartApp(intent.getComponent(), userHandle, sourceContainer);
            }
            getUserEventDispatcher().logAppLaunch(v, intent, userHandle);
            return true;
        } catch (ActivityNotFoundException | NullPointerException | SecurityException e) {
            ToastViewUtils.makeText(this, R.string.activity_not_found, 3000L).show();
            Log.e(TAG, "Unable to launch. tag=" + item + " intent=" + intent, e);
            return false;
        }
    }

    private void startShortcutIntentSafely(Intent intent, Bundle optsBundle, ItemInfo info, String sourceContainer) {
        try {
            StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
            try {
                StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().detectAll().penaltyLog().build());
                if (info.itemType == 6) {
                    String deepShortcutId = ((WorkspaceItemInfo) info).getDeepShortcutId();
                    String str = intent.getPackage();
                    startShortcut(str, deepShortcutId, intent.getSourceBounds(), optsBundle, info.user);
                    AppLaunchTracker.INSTANCE.m166x39265fe7(this).onStartShortcut(str, deepShortcutId, info.user, sourceContainer);
                } else {
                    startActivity(intent, optsBundle);
                }
            } finally {
                StrictMode.setVmPolicy(vmPolicy);
            }
        } catch (SecurityException e) {
            if (!onErrorStartingShortcut(intent, info)) {
                throw e;
            }
        }
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        Runnable runnable = this.mOnStartCallback;
        if (runnable != null) {
            runnable.run();
            this.mOnStartCallback = null;
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        DefaultDisplay.INSTANCE.m166x39265fe7(this).removeChangeListener(this);
    }

    protected void onDeviceProfileInitiated() {
        if (this.mDeviceProfile.isVerticalBarLayout()) {
            this.mDeviceProfile.updateIsSeascape(this);
        }
    }

    @Override // com.android.launcher3.util.DefaultDisplay.DisplayInfoChangeListener
    public void onDisplayInfoChanged(DefaultDisplay.Info info, int flags) {
        if ((flags & 2) == 0 || !this.mDeviceProfile.updateIsSeascape(this)) {
            return;
        }
        reapplyUi();
    }

    public View.OnClickListener getItemOnClickListener() {
        return ItemClickHandler.INSTANCE;
    }

    protected WindowBounds getMultiWindowDisplaySize() {
        if (Utilities.ATLEAST_R) {
            WindowMetrics currentWindowMetrics = getWindowManager().getCurrentWindowMetrics();
            Insets insets = currentWindowMetrics.getWindowInsets().getInsets(WindowInsets.Type.systemBars());
            return new WindowBounds(currentWindowMetrics.getBounds(), new Rect(insets.left, insets.top, insets.right, insets.bottom));
        }
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return new WindowBounds(new Rect(0, 0, point.x, point.y), new Rect());
    }
}

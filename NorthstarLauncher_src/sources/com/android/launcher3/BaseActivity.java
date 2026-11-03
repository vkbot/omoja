package com.android.launcher3;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.UserHandle;
import android.util.Log;
import android.view.ContextThemeWrapper;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.userevent.LauncherLogProto;
import com.android.launcher3.util.SystemUiController;
import com.android.launcher3.util.ViewCache;
import com.android.launcher3.views.ActivityContext;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseActivity extends Activity implements ActivityContext {
    public static final int ACTIVITY_STATE_DEFERRED_RESUMED = 4;
    public static final int ACTIVITY_STATE_RESUMED = 2;
    public static final int ACTIVITY_STATE_STARTED = 1;
    public static final int ACTIVITY_STATE_TRANSITION_ACTIVE = 64;
    public static final int ACTIVITY_STATE_USER_ACTIVE = 16;
    public static final int ACTIVITY_STATE_USER_WILL_BE_ACTIVE = 32;
    public static final int ACTIVITY_STATE_WINDOW_FOCUSED = 8;
    public static final int INVISIBLE_ALL = 15;
    public static final int INVISIBLE_BY_APP_TRANSITIONS = 2;
    public static final int INVISIBLE_BY_PENDING_FLAGS = 4;
    public static final int INVISIBLE_BY_STATE_HANDLER = 1;
    private static final int INVISIBLE_FLAGS = 7;
    public static final int PENDING_INVISIBLE_BY_WALLPAPER_ANIMATION = 8;
    public static final int STATE_HANDLER_INVISIBILITY_FLAGS = 9;
    private static final String TAG = "BaseActivity";
    private int mActivityFlags;
    protected DeviceProfile mDeviceProfile;
    private int mForceInvisible;
    protected StatsLogManager mStatsLogManager;
    protected SystemUiController mSystemUiController;
    protected UserEventDispatcher mUserEventDispatcher;
    private final ArrayList<DeviceProfile.OnDeviceProfileChangeListener> mDPChangeListeners = new ArrayList<>();
    private final ArrayList<MultiWindowModeChangedListener> mMultiWindowModeChangedListeners = new ArrayList<>();
    private final ViewCache mViewCache = new ViewCache();

    @Retention(RetentionPolicy.SOURCE)
    public @interface ActivityFlags {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface InvisibilityFlags {
    }

    public interface MultiWindowModeChangedListener {
        void onMultiWindowModeChanged(boolean isInMultiWindowMode);
    }

    public void addForceInvisibleFlag(int flag) {
        this.mForceInvisible = flag | this.mForceInvisible;
    }

    public void clearForceInvisibleFlag(int flag) {
        this.mForceInvisible = (~flag) & this.mForceInvisible;
    }

    public int getActivityFlags() {
        return this.mActivityFlags;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public DeviceProfile getDeviceProfile() {
        return this.mDeviceProfile;
    }

    public ViewCache getViewCache() {
        return this.mViewCache;
    }

    public boolean hasBeenResumed() {
        return (this.mActivityFlags & 2) != 0;
    }

    public boolean hasSomeInvisibleFlag(int mask) {
        return (this.mForceInvisible & mask) != 0;
    }

    public boolean isStarted() {
        return (this.mActivityFlags & 1) != 0;
    }

    public boolean isUserActive() {
        return (this.mActivityFlags & 16) != 0;
    }

    public void modifyUserEvent(LauncherLogProto.LauncherEvent event) {
    }

    protected void onActivityFlagsChanged(int changeBits) {
    }

    public final StatsLogManager getStatsLogManager() {
        if (this.mStatsLogManager == null) {
            this.mStatsLogManager = StatsLogManager.newInstance(this);
        }
        return this.mStatsLogManager;
    }

    public final UserEventDispatcher getUserEventDispatcher() {
        if (this.mUserEventDispatcher == null) {
            this.mUserEventDispatcher = UserEventDispatcher.newInstance(this);
        }
        return this.mUserEventDispatcher;
    }

    public SystemUiController getSystemUiController() {
        if (this.mSystemUiController == null) {
            this.mSystemUiController = new SystemUiController(getWindow());
        }
        return this.mSystemUiController;
    }

    @Override // android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
    }

    @Override // android.app.Activity
    protected void onStart() {
        addActivityFlags(1);
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onResume() {
        addActivityFlags(18);
        removeActivityFlags(32);
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onUserLeaveHint() {
        removeActivityFlags(16);
        super.onUserLeaveHint();
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean isInMultiWindowMode, Configuration newConfig) {
        super.onMultiWindowModeChanged(isInMultiWindowMode, newConfig);
        for (int size = this.mMultiWindowModeChangedListeners.size() - 1; size >= 0; size--) {
            this.mMultiWindowModeChangedListeners.get(size).onMultiWindowModeChanged(isInMultiWindowMode);
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        removeActivityFlags(17);
        this.mForceInvisible = 0;
        super.onStop();
        getSystemUiController().updateUiState(3, 0);
    }

    @Override // android.app.Activity
    protected void onPause() {
        removeActivityFlags(6);
        super.onPause();
        getSystemUiController().updateUiState(3, 0);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus) {
            addActivityFlags(8);
        } else {
            removeActivityFlags(8);
        }
    }

    protected void addActivityFlags(int flags) {
        this.mActivityFlags |= flags;
        onActivityFlagsChanged(flags);
    }

    protected void removeActivityFlags(int flags) {
        this.mActivityFlags &= ~flags;
        onActivityFlagsChanged(flags);
    }

    public void addOnDeviceProfileChangeListener(DeviceProfile.OnDeviceProfileChangeListener listener) {
        this.mDPChangeListeners.add(listener);
    }

    public void removeOnDeviceProfileChangeListener(DeviceProfile.OnDeviceProfileChangeListener listener) {
        this.mDPChangeListeners.remove(listener);
    }

    protected void dispatchDeviceProfileChanged() {
        for (int size = this.mDPChangeListeners.size() - 1; size >= 0; size--) {
            this.mDPChangeListeners.get(size).onDeviceProfileChanged(this.mDeviceProfile);
        }
    }

    public void addMultiWindowModeChangedListener(MultiWindowModeChangedListener listener) {
        this.mMultiWindowModeChangedListeners.add(listener);
    }

    public void removeMultiWindowModeChangedListener(MultiWindowModeChangedListener listener) {
        this.mMultiWindowModeChangedListeners.remove(listener);
    }

    public boolean isForceInvisible() {
        return hasSomeInvisibleFlag(7);
    }

    protected void dumpMisc(String prefix, PrintWriter writer) {
        writer.println(prefix + "deviceProfile isTransposed=" + getDeviceProfile().isVerticalBarLayout());
        writer.println(prefix + "orientation=" + getResources().getConfiguration().orientation);
        writer.println(prefix + "mSystemUiController: " + this.mSystemUiController);
        writer.println(prefix + "mActivityFlags: " + this.mActivityFlags);
        writer.println(prefix + "mForceInvisible: " + this.mForceInvisible);
    }

    public void startShortcut(String packageName, String id, Rect sourceBounds, Bundle startActivityOptions, UserHandle user) {
        try {
            ((LauncherApps) getSystemService(LauncherApps.class)).startShortcut(packageName, id, sourceBounds, startActivityOptions, user);
        } catch (IllegalStateException | SecurityException e) {
            Log.e(TAG, "Failed to start shortcut", e);
        }
    }

    public static <T extends BaseActivity> T fromContext(Context context) {
        if (context instanceof BaseActivity) {
            return (T) context;
        }
        if (context instanceof ContextThemeWrapper) {
            return (T) fromContext(((ContextWrapper) context).getBaseContext());
        }
        throw new IllegalArgumentException("Cannot find BaseActivity in parent tree");
    }
}

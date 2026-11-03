package com.mega.nexus.app;

import android.app.ActivityManager;
import android.os.RemoteException;
import android.util.ArraySet;
import android.util.Log;
import android.view.SurfaceControl;
import com.mega.nexus.MegaNexusManager;
import com.mega.nexus.util.ReflectionHelpers;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MegaActivityManager extends MegaNexusManager {
    public static final String ACTIVITY_MANAGER_SERVICE_CLASS_NAME = "android.app.IActivityManager";
    private FlyingScreenStateListener mFlyingScreenStateListener;
    private ArraySet<FlyingScreenListener> mListeners;
    private IRunningTaskChangeListener mTaskChangeListener;
    private TaskChangeListener mTaskChangeListenerForUser;
    private TopStackExchangeListener mTopStackExchangeListener;
    private ArrayList<TopStackListener> mTopStackListeners;

    private static final class Holder {
        private static final MegaActivityManager INSTANCE = new MegaActivityManager();

        private Holder() {
        }
    }

    public static MegaActivityManager getInstance() {
        return Holder.INSTANCE;
    }

    private MegaActivityManager() {
        this.mListeners = new ArraySet<>();
        this.mTopStackListeners = new ArrayList<>();
        setMethodName(ActivityManager.class, "getService");
    }

    public void forceStopPackage(String str, int i) {
        try {
            if (getNexusService() == null) {
                ReflectionHelpers.callInstanceMethod(ACTIVITY_MANAGER_SERVICE_CLASS_NAME, getReflectService(), "forceStopPackage", (ReflectionHelpers.ClassParameter<?>[]) new ReflectionHelpers.ClassParameter[]{ReflectionHelpers.ClassParameter.from(String.class, str), ReflectionHelpers.ClassParameter.from(Integer.TYPE, Integer.valueOf(i))});
            } else {
                getNexusService().forceStopPackage(str, i);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void backgroundWhitelistUid(int i) {
        try {
            if (getNexusService() == null) {
                ReflectionHelpers.callInstanceMethodWithException(ACTIVITY_MANAGER_SERVICE_CLASS_NAME, getReflectService(), "backgroundWhitelistUid", ReflectionHelpers.ClassParameter.from(Integer.TYPE, Integer.valueOf(i)));
            } else {
                getNexusService().backgroundWhitelistUid(i);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public String getDisplayTopResumedActivity(int i) {
        try {
            return getNexusService().getDisplayTopResumedActivity(i);
        } catch (RemoteException | NullPointerException e) {
            Log.e(MegaNexusManager.TAG, "Failed to invoke getDisplayTopResumedActivity", e);
            return null;
        }
    }

    public List<String> getDisplayAllTopResumedActivities(int i) {
        try {
            return getNexusService().getDisplayAllTopResumedActivities(i);
        } catch (RemoteException | NullPointerException e) {
            Log.e(MegaNexusManager.TAG, "Failed to invoke getDisplayAllTopResumedActivities", e);
            return null;
        }
    }

    public boolean setFlyingScreenMode(int i) {
        try {
            return getNexusService().setFlyingScreenMode(i);
        } catch (RemoteException e) {
            Log.e(MegaNexusManager.TAG, "Failed to invoke setFlyingScreenMode " + i, e);
            return false;
        }
    }

    public void registFlyingScreenStateListener(FlyingScreenListener flyingScreenListener) {
        Log.d(MegaNexusManager.TAG, "registFlyingScreenStateListener");
        this.mListeners.add(flyingScreenListener);
        try {
            if (this.mFlyingScreenStateListener == null) {
                this.mFlyingScreenStateListener = new FlyingScreenStateListener();
                getNexusService().registerFlyingStateListener(this.mFlyingScreenStateListener);
            }
        } catch (RemoteException e) {
            Log.e(MegaNexusManager.TAG, "Failed to invoke registFlyingScreenStateListener ", e);
        }
    }

    public void unRegistFlyingScreenStateListener(FlyingScreenListener flyingScreenListener) {
        Log.d(MegaNexusManager.TAG, "unRegistFlyingScreenStateListener");
        this.mListeners.remove(flyingScreenListener);
        try {
            if (this.mListeners.size() == 0) {
                getNexusService().unRegisterFlyingStateListener(this.mFlyingScreenStateListener);
                this.mFlyingScreenStateListener = null;
            }
        } catch (RemoteException e) {
            Log.e(MegaNexusManager.TAG, "Failed to invoke unRegistFlyingScreenStateListener ", e);
        }
    }

    public class FlyingScreenStateListener extends IFlyingScreenStateListener.Stub {
        public FlyingScreenStateListener() {
        }

        @Override // com.mega.nexus.app.IFlyingScreenStateListener
        public void onStartFlyingScreen(int i, int i2, String str, int i3) throws RemoteException {
            for (FlyingScreenListener flyingScreenListener : MegaActivityManager.this.mListeners) {
                Log.d(MegaNexusManager.TAG, "onStartFlyingScreen,fromDisplayId:" + i + " toDisplayId:" + i2 + " packageName:" + str + " userId:" + i3);
                flyingScreenListener.onStartFlyingScreen(i, i2, str, i3);
            }
        }

        @Override // com.mega.nexus.app.IFlyingScreenStateListener
        public void onEndFlyingScreen(int i, int i2, String str, int i3) throws RemoteException {
            for (FlyingScreenListener flyingScreenListener : MegaActivityManager.this.mListeners) {
                Log.d(MegaNexusManager.TAG, "onEndFlyingScreen,fromDisplayId:" + i + " toDisplayId:" + i2 + " packageName:" + str + " userId:" + i3);
                flyingScreenListener.onEndFlyingScreen(i, i2, str, i3);
            }
        }

        @Override // com.mega.nexus.app.IFlyingScreenStateListener
        public void onFlyingFromPrimaryScreenForbidden(int i, int i2) throws RemoteException {
            for (FlyingScreenListener flyingScreenListener : MegaActivityManager.this.mListeners) {
                Log.d(MegaNexusManager.TAG, "onFlyingFromPrimaryScreenForbidden,fromDisplayId:" + i + " toDisplayId:" + i2);
                flyingScreenListener.onFlyingFromPrimaryScreenForbidden(i, i2);
            }
        }

        @Override // com.mega.nexus.app.IFlyingScreenStateListener
        public void onFlyingFromExternalScreenForbidden(int i, int i2) throws RemoteException {
            for (FlyingScreenListener flyingScreenListener : MegaActivityManager.this.mListeners) {
                Log.d(MegaNexusManager.TAG, "onFlyingFromExternalScreenForbidden,fromDisplayId:" + i + " toDisplayId:" + i2);
                flyingScreenListener.onFlyingFromExternalScreenForbidden(i, i2);
            }
        }

        @Override // com.mega.nexus.app.IFlyingScreenStateListener
        public void onFlyingFunctionForbidden(int i, int i2) throws RemoteException {
            for (FlyingScreenListener flyingScreenListener : MegaActivityManager.this.mListeners) {
                Log.d(MegaNexusManager.TAG, "onFlyingFunctionForbidden,fromDisplayId:" + i + " toDisplayId:" + i2);
                flyingScreenListener.onFlyingFunctionForbidden(i, i2);
            }
        }

        @Override // com.mega.nexus.app.IFlyingScreenStateListener
        public void onFlyingAppNotAllow(int i, int i2, String str) throws RemoteException {
            for (FlyingScreenListener flyingScreenListener : MegaActivityManager.this.mListeners) {
                Log.d(MegaNexusManager.TAG, "onFlyingAppNotAllow,fromDisplayId:" + i + " toDisplayId:" + i2 + " package:" + str);
                flyingScreenListener.onFlyingAppNotAllow(i, i2, str);
            }
        }
    }

    public boolean exchangeDisplayTopStack(int i, int i2) {
        try {
            return getNexusService().exchangeDisplayTopStack(i, i2);
        } catch (RemoteException e) {
            Log.e(MegaNexusManager.TAG, "Failed to invoke exchangeDisplayTopStack ", e);
            return false;
        }
    }

    public boolean moveTopStackToDisplay(int i, int i2) {
        try {
            return getNexusService().moveTopStackToDisplay(i, i2);
        } catch (RemoteException e) {
            Log.e(MegaNexusManager.TAG, "Failed to invoke moveTopStackToDisplay ", e);
            return false;
        }
    }

    public void registerTopStackListener(TopStackListener topStackListener) {
        Log.d(MegaNexusManager.TAG, "registerTopStackListener");
        this.mTopStackListeners.add(topStackListener);
        try {
            if (this.mTopStackExchangeListener == null) {
                this.mTopStackExchangeListener = new TopStackExchangeListener();
                getNexusService().registerTopStackExchangeListener(this.mTopStackExchangeListener);
            }
        } catch (RemoteException e) {
            Log.e(MegaNexusManager.TAG, "Failed to invoke registerTopStackExchangeListener ", e);
        }
    }

    public void unRegisterTopStackListener(TopStackListener topStackListener) {
        Log.d(MegaNexusManager.TAG, "unRegisterTopStackListener");
        this.mTopStackListeners.remove(topStackListener);
        try {
            if (this.mTopStackListeners.size() == 0) {
                getNexusService().unRegisterTopStackExchangeListener(this.mTopStackExchangeListener);
                this.mTopStackExchangeListener = null;
            }
        } catch (RemoteException e) {
            Log.e(MegaNexusManager.TAG, "Failed to invoke unRegisterTopStackExchangeListener ", e);
        }
    }

    private class TopStackExchangeListener extends ITopStackExchangeListener.Stub {
        private TopStackExchangeListener() {
        }

        @Override // com.mega.nexus.app.ITopStackExchangeListener
        public void onTopStackExchanged(String str, int i, String str2, int i2) throws RemoteException {
            for (TopStackListener topStackListener : MegaActivityManager.this.mTopStackListeners) {
                Log.d(MegaNexusManager.TAG, "onTopStackExchanged,  packageName1:" + str + ", displayId1:" + i + " packageName2:" + str2 + ", displayId2:" + i2);
                topStackListener.onTopStackExchanged(str, i, str2, i2);
            }
        }
    }

    public void registerTaskChangeListener(final TaskChangeListener taskChangeListener) {
        if (taskChangeListener == null) {
            return;
        }
        if (this.mTaskChangeListenerForUser != null) {
            throw new IllegalStateException("An application should only register one for this listener!");
        }
        IRunningTaskChangeListener.Stub stub = new IRunningTaskChangeListener.Stub() { // from class: com.mega.nexus.app.MegaActivityManager.1
            @Override // com.mega.nexus.app.IRunningTaskChangeListener
            public void onTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) {
                taskChangeListener.onTaskAppeared(runningTaskInfo, surfaceControl);
            }

            @Override // com.mega.nexus.app.IRunningTaskChangeListener
            public void onTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) {
                taskChangeListener.onTaskVanished(runningTaskInfo);
            }

            @Override // com.mega.nexus.app.IRunningTaskChangeListener
            public void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo) {
                taskChangeListener.onTaskInfoChanged(runningTaskInfo);
            }
        };
        try {
            getNexusService().registerTaskChangeListener(stub);
            this.mTaskChangeListener = stub;
            this.mTaskChangeListenerForUser = taskChangeListener;
        } catch (RemoteException e) {
            Log.e(MegaNexusManager.TAG, "registerTaskChangeListener fail! Its stackTrace is:" + Arrays.toString(e.getStackTrace()));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void unRegisterTaskChangeListener(TaskChangeListener taskChangeListener) {
        if (taskChangeListener != null && taskChangeListener == this.mTaskChangeListenerForUser) {
            try {
                try {
                    getNexusService().unRegisterTaskChangeListener(this.mTaskChangeListener);
                } catch (RemoteException e) {
                    Log.e(MegaNexusManager.TAG, "unRegisterTaskChangeListener fail! Its stackTrace is:" + Arrays.toString(e.getStackTrace()));
                }
            } finally {
                this.mTaskChangeListener = null;
                this.mTaskChangeListenerForUser = null;
            }
        }
    }

    public SurfaceControl getSurfaceControlByTaskId(int i) {
        try {
            return getNexusService().getSurfaceControlByTaskId(i);
        } catch (RemoteException e) {
            Log.e(MegaNexusManager.TAG, "getSurfaceControlByTaskId fail! Its taskId=" + i + ",its stackTrace is:" + Arrays.toString(e.getStackTrace()));
            return null;
        }
    }
}

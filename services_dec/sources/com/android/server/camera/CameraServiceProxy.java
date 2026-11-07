package com.android.server.camera;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.ICameraService;
import android.hardware.ICameraServiceProxy;
import android.media.AudioManager;
import android.metrics.LogMaker;
import android.nfc.IAppCallback;
import android.nfc.INfcAdapter;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserManager;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.LocalServices;
import com.android.server.ServiceThread;
import com.android.server.SystemService;
import com.android.server.wm.WindowManagerInternal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class CameraServiceProxy extends SystemService implements Handler.Callback, IBinder.DeathRecipient {
    private static final String CAMERA_SERVICE_BINDER_NAME = "media.camera";
    public static final String CAMERA_SERVICE_PROXY_BINDER_NAME = "media.camera.proxy";
    private static final boolean DEBUG = false;
    public static final int DISABLE_POLLING_FLAGS = 4096;
    public static final int ENABLE_POLLING_FLAGS = 0;
    private static final int MAX_USAGE_HISTORY = 100;
    private static final int MSG_SWITCH_USER = 1;
    private static final String NFC_NOTIFICATION_PROP = "ro.camera.notify_nfc";
    private static final String NFC_SERVICE_BINDER_NAME = "nfc";
    private static final int RETRY_DELAY_TIME = 20;
    private static final int RETRY_TIMES = 60;
    private static final String TAG = "CameraService_proxy";
    private static final IBinder nfcInterfaceToken = new Binder();
    private final ArrayMap<String, CameraUsageEvent> mActiveCameraUsage;
    private final ICameraServiceProxy.Stub mCameraServiceProxy;
    private ICameraService mCameraServiceRaw;
    private final List<CameraUsageEvent> mCameraUsageHistory;
    private final Context mContext;
    private Set<Integer> mEnabledCameraUsers;
    private final Handler mHandler;
    private final ServiceThread mHandlerThread;
    private final BroadcastReceiver mIntentReceiver;
    private int mLastUser;
    private final Object mLock;
    private ScheduledThreadPoolExecutor mLogWriterService;
    private final MetricsLogger mLogger;
    private final boolean mNotifyNfc;
    private UserManager mUserManager;

    private static class CameraUsageEvent {
        public final int mAPILevel;
        public final int mCameraFacing;
        public final String mClientName;
        private long mDurationOrStartTimeMs = SystemClock.elapsedRealtime();
        private boolean mCompleted = false;

        public CameraUsageEvent(int facing, String clientName, int apiLevel) {
            this.mCameraFacing = facing;
            this.mClientName = clientName;
            this.mAPILevel = apiLevel;
        }

        public void markCompleted() {
            if (this.mCompleted) {
                return;
            }
            this.mCompleted = true;
            this.mDurationOrStartTimeMs = SystemClock.elapsedRealtime() - this.mDurationOrStartTimeMs;
        }

        public long getDuration() {
            if (this.mCompleted) {
                return this.mDurationOrStartTimeMs;
            }
            return 0L;
        }
    }

    public CameraServiceProxy(Context context) {
        super(context);
        this.mLock = new Object();
        this.mActiveCameraUsage = new ArrayMap<>();
        this.mCameraUsageHistory = new ArrayList();
        this.mLogger = new MetricsLogger();
        this.mLogWriterService = new ScheduledThreadPoolExecutor(1);
        this.mIntentReceiver = new BroadcastReceiver() { // from class: com.android.server.camera.CameraServiceProxy.1
            /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (action == null) {
                    return;
                }
                byte b = -1;
                switch (action.hashCode()) {
                    case -2061058799:
                        if (action.equals("android.intent.action.USER_REMOVED")) {
                            b = 1;
                        }
                        break;
                    case -385593787:
                        if (action.equals("android.intent.action.MANAGED_PROFILE_ADDED")) {
                            b = 3;
                        }
                        break;
                    case -201513518:
                        if (action.equals("android.intent.action.USER_INFO_CHANGED")) {
                            b = 2;
                        }
                        break;
                    case 1051477093:
                        if (action.equals("android.intent.action.MANAGED_PROFILE_REMOVED")) {
                            b = 4;
                        }
                        break;
                    case 1121780209:
                        if (action.equals("android.intent.action.USER_ADDED")) {
                            b = 0;
                        }
                        break;
                }
                if (b == 0 || b == 1 || b == 2 || b == 3 || b == 4) {
                    synchronized (CameraServiceProxy.this.mLock) {
                        if (CameraServiceProxy.this.mEnabledCameraUsers == null) {
                            return;
                        }
                        CameraServiceProxy.this.switchUserLocked(CameraServiceProxy.this.mLastUser);
                    }
                }
            }
        };
        this.mCameraServiceProxy = new ICameraServiceProxy.Stub() { // from class: com.android.server.camera.CameraServiceProxy.2
            public void pingForUserUpdate() {
                if (Binder.getCallingUid() == 1047) {
                    CameraServiceProxy.this.notifySwitchWithRetries(60);
                    return;
                }
                Slog.e(CameraServiceProxy.TAG, "Calling UID: " + Binder.getCallingUid() + " doesn't match expected  camera service UID!");
            }

            public void notifyCameraState(String cameraId, int newCameraState, int facing, String clientName, int apiLevel) {
                if (Binder.getCallingUid() == 1047) {
                    CameraServiceProxy.cameraStateToString(newCameraState);
                    CameraServiceProxy.cameraFacingToString(facing);
                    CameraServiceProxy.this.updateActivityCount(cameraId, newCameraState, facing, clientName, apiLevel);
                } else {
                    Slog.e(CameraServiceProxy.TAG, "Calling UID: " + Binder.getCallingUid() + " doesn't match expected  camera service UID!");
                }
            }
        };
        this.mContext = context;
        ServiceThread serviceThread = new ServiceThread(TAG, -4, false);
        this.mHandlerThread = serviceThread;
        serviceThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper(), this);
        this.mNotifyNfc = SystemProperties.getInt(NFC_NOTIFICATION_PROP, 0) > 0;
        this.mLogWriterService.setKeepAliveTime(1L, TimeUnit.SECONDS);
        this.mLogWriterService.allowCoreThreadTimeOut(true);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message msg) {
        if (msg.what == 1) {
            notifySwitchWithRetries(msg.arg1);
        } else {
            Slog.e(TAG, "CameraServiceProxy error, invalid message: " + msg.what);
        }
        return true;
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        UserManager userManager = UserManager.get(this.mContext);
        this.mUserManager = userManager;
        if (userManager == null) {
            throw new IllegalStateException("UserManagerService must start before CameraServiceProxy!");
        }
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.USER_ADDED");
        filter.addAction("android.intent.action.USER_REMOVED");
        filter.addAction("android.intent.action.USER_INFO_CHANGED");
        filter.addAction("android.intent.action.MANAGED_PROFILE_ADDED");
        filter.addAction("android.intent.action.MANAGED_PROFILE_REMOVED");
        this.mContext.registerReceiver(this.mIntentReceiver, filter);
        publishBinderService(CAMERA_SERVICE_PROXY_BINDER_NAME, this.mCameraServiceProxy);
        publishLocalService(CameraServiceProxy.class, this);
        CameraStatsJobService.schedule(this.mContext);
    }

    @Override // com.android.server.SystemService
    public void onStartUser(int userHandle) {
        synchronized (this.mLock) {
            if (this.mEnabledCameraUsers == null) {
                switchUserLocked(userHandle);
            }
        }
    }

    @Override // com.android.server.SystemService
    public void onSwitchUser(int userHandle) {
        synchronized (this.mLock) {
            switchUserLocked(userHandle);
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        synchronized (this.mLock) {
            this.mCameraServiceRaw = null;
            boolean wasEmpty = this.mActiveCameraUsage.isEmpty();
            this.mActiveCameraUsage.clear();
            if (this.mNotifyNfc && !wasEmpty) {
                notifyNfcService(true);
            }
        }
    }

    private class EventWriterTask implements Runnable {
        private static final long WRITER_SLEEP_MS = 100;
        private ArrayList<CameraUsageEvent> mEventList;

        public EventWriterTask(ArrayList<CameraUsageEvent> eventList) {
            this.mEventList = eventList;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList<CameraUsageEvent> arrayList = this.mEventList;
            if (arrayList != null) {
                for (CameraUsageEvent event : arrayList) {
                    logCameraUsageEvent(event);
                    try {
                        Thread.sleep(WRITER_SLEEP_MS);
                    } catch (InterruptedException e) {
                    }
                }
                this.mEventList.clear();
            }
        }

        private void logCameraUsageEvent(CameraUsageEvent e) {
            int facing = 0;
            int i = e.mCameraFacing;
            if (i == 0) {
                facing = 1;
            } else if (i == 1) {
                facing = 2;
            } else if (i == 2) {
                facing = 3;
            } else {
                Slog.w(CameraServiceProxy.TAG, "Unknown camera facing: " + e.mCameraFacing);
            }
            FrameworkStatsLog.write(227, e.getDuration(), e.mAPILevel, e.mClientName, facing);
        }
    }

    void dumpUsageEvents() {
        int subtype;
        synchronized (this.mLock) {
            Collections.shuffle(this.mCameraUsageHistory);
            for (CameraUsageEvent e : this.mCameraUsageHistory) {
                int i = e.mCameraFacing;
                if (i == 0) {
                    subtype = 0;
                } else if (i == 1) {
                    subtype = 1;
                } else if (i == 2) {
                    subtype = 2;
                }
                LogMaker l = new LogMaker(1032).setType(4).setSubtype(subtype).setLatency(e.getDuration()).addTaggedData(1322, Integer.valueOf(e.mAPILevel)).setPackageName(e.mClientName);
                this.mLogger.write(l);
            }
            this.mLogWriterService.execute(new EventWriterTask(new ArrayList(this.mCameraUsageHistory)));
            this.mCameraUsageHistory.clear();
        }
        long ident = Binder.clearCallingIdentity();
        try {
            CameraStatsJobService.schedule(this.mContext);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchUserLocked(int userHandle) {
        Set<Integer> currentUserHandles = getEnabledUserHandles(userHandle);
        this.mLastUser = userHandle;
        Set<Integer> set = this.mEnabledCameraUsers;
        if (set == null || !set.equals(currentUserHandles)) {
            this.mEnabledCameraUsers = currentUserHandles;
            notifySwitchWithRetriesLocked(60);
        }
    }

    private Set<Integer> getEnabledUserHandles(int currentUserHandle) {
        int[] userProfiles = this.mUserManager.getEnabledProfileIds(currentUserHandle);
        Set<Integer> handles = new ArraySet<>(userProfiles.length);
        for (int id : userProfiles) {
            handles.add(Integer.valueOf(id));
        }
        return handles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifySwitchWithRetries(int retries) {
        synchronized (this.mLock) {
            notifySwitchWithRetriesLocked(retries);
        }
    }

    private void notifySwitchWithRetriesLocked(int retries) {
        Set<Integer> set = this.mEnabledCameraUsers;
        if (set == null) {
            return;
        }
        if (notifyCameraserverLocked(1, set)) {
            retries = 0;
        }
        if (retries <= 0) {
            return;
        }
        Slog.i(TAG, "Could not notify camera service of user switch, retrying...");
        Handler handler = this.mHandler;
        handler.sendMessageDelayed(handler.obtainMessage(1, retries - 1, 0, null), 20L);
    }

    private boolean notifyCameraserverLocked(int eventType, Set<Integer> updatedUserHandles) {
        if (this.mCameraServiceRaw == null) {
            IBinder cameraServiceBinder = getBinderService(CAMERA_SERVICE_BINDER_NAME);
            if (cameraServiceBinder == null) {
                Slog.w(TAG, "Could not notify cameraserver, camera service not available.");
                return false;
            }
            try {
                cameraServiceBinder.linkToDeath(this, 0);
                this.mCameraServiceRaw = ICameraService.Stub.asInterface(cameraServiceBinder);
            } catch (RemoteException e) {
                Slog.w(TAG, "Could not link to death of native camera service");
                return false;
            }
        }
        try {
            this.mCameraServiceRaw.notifySystemEvent(eventType, toArray(updatedUserHandles));
            return true;
        } catch (RemoteException e2) {
            Slog.w(TAG, "Could not notify cameraserver, remote exception: " + e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActivityCount(String cameraId, int newCameraState, int facing, String clientName, int apiLevel) {
        CameraUsageEvent doneEvent;
        synchronized (this.mLock) {
            boolean wasEmpty = this.mActiveCameraUsage.isEmpty();
            if (newCameraState == 0) {
                AudioManager audioManager = (AudioManager) getContext().getSystemService(AudioManager.class);
                if (audioManager != null) {
                    String facingStr = facing == 0 ? "back" : "front";
                    String facingParameter = "cameraFacing=" + facingStr;
                    audioManager.setParameters(facingParameter);
                }
            } else if (newCameraState == 1) {
                boolean alreadyActivePackage = false;
                for (int i = 0; i < this.mActiveCameraUsage.size(); i++) {
                    if (this.mActiveCameraUsage.valueAt(i).mClientName.equals(clientName)) {
                        alreadyActivePackage = true;
                        break;
                    }
                }
                if (!alreadyActivePackage) {
                    WindowManagerInternal wmi = (WindowManagerInternal) LocalServices.getService(WindowManagerInternal.class);
                    wmi.addNonHighRefreshRatePackage(clientName);
                }
                CameraUsageEvent newEvent = new CameraUsageEvent(facing, clientName, apiLevel);
                CameraUsageEvent oldEvent = this.mActiveCameraUsage.put(cameraId, newEvent);
                if (oldEvent != null) {
                    Slog.w(TAG, "Camera " + cameraId + " was already marked as active");
                    oldEvent.markCompleted();
                    this.mCameraUsageHistory.add(oldEvent);
                }
            } else if ((newCameraState == 2 || newCameraState == 3) && (doneEvent = this.mActiveCameraUsage.remove(cameraId)) != null) {
                doneEvent.markCompleted();
                this.mCameraUsageHistory.add(doneEvent);
                if (this.mCameraUsageHistory.size() > 100) {
                    dumpUsageEvents();
                }
                boolean stillActivePackage = false;
                for (int i2 = 0; i2 < this.mActiveCameraUsage.size(); i2++) {
                    if (this.mActiveCameraUsage.valueAt(i2).mClientName.equals(clientName)) {
                        stillActivePackage = true;
                        break;
                    }
                }
                if (!stillActivePackage) {
                    WindowManagerInternal wmi2 = (WindowManagerInternal) LocalServices.getService(WindowManagerInternal.class);
                    wmi2.removeNonHighRefreshRatePackage(clientName);
                }
            }
            boolean isEmpty = this.mActiveCameraUsage.isEmpty();
            if (this.mNotifyNfc && wasEmpty != isEmpty) {
                notifyNfcService(isEmpty);
            }
        }
    }

    private void notifyNfcService(boolean enablePolling) {
        IBinder nfcServiceBinder = getBinderService(NFC_SERVICE_BINDER_NAME);
        if (nfcServiceBinder == null) {
            Slog.w(TAG, "Could not connect to NFC service to notify it of camera state");
            return;
        }
        INfcAdapter nfcAdapterRaw = INfcAdapter.Stub.asInterface(nfcServiceBinder);
        int flags = enablePolling ? 0 : 4096;
        try {
            nfcAdapterRaw.setReaderMode(nfcInterfaceToken, (IAppCallback) null, flags, (Bundle) null);
        } catch (RemoteException e) {
            Slog.w(TAG, "Could not notify NFC service, remote exception: " + e);
        }
    }

    private static int[] toArray(Collection<Integer> c) {
        int len = c.size();
        int[] ret = new int[len];
        int idx = 0;
        for (Integer i : c) {
            ret[idx] = i.intValue();
            idx++;
        }
        return ret;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String cameraStateToString(int newCameraState) {
        if (newCameraState == 0) {
            return "CAMERA_STATE_OPEN";
        }
        if (newCameraState == 1) {
            return "CAMERA_STATE_ACTIVE";
        }
        if (newCameraState == 2) {
            return "CAMERA_STATE_IDLE";
        }
        if (newCameraState == 3) {
            return "CAMERA_STATE_CLOSED";
        }
        return "CAMERA_STATE_UNKNOWN";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String cameraFacingToString(int cameraFacing) {
        if (cameraFacing == 0) {
            return "CAMERA_FACING_BACK";
        }
        if (cameraFacing == 1) {
            return "CAMERA_FACING_FRONT";
        }
        if (cameraFacing == 2) {
            return "CAMERA_FACING_EXTERNAL";
        }
        return "CAMERA_FACING_UNKNOWN";
    }
}

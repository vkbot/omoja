package com.android.server.media;

import android.app.ActivityManager;
import android.content.Context;
import android.media.IMediaRouter2;
import android.media.IMediaRouter2Manager;
import android.media.MediaRoute2Info;
import android.media.MediaRoute2ProviderInfo;
import android.media.MediaRouter2Utils;
import android.media.RouteDiscoveryPreference;
import android.media.RoutingSessionInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.util.function.HeptConsumer;
import com.android.internal.util.function.HexConsumer;
import com.android.internal.util.function.QuadConsumer;
import com.android.internal.util.function.QuintConsumer;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
class MediaRouter2ServiceImpl {
    private static final long DUMMY_REQUEST_ID = -1;
    private static final int PACKAGE_IMPORTANCE_FOR_DISCOVERY = 100;
    final ActivityManager mActivityManager;
    private final Context mContext;
    private static final String TAG = "MR2ServiceImpl";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private final Object mLock = new Object();
    final AtomicInteger mNextRouterOrManagerId = new AtomicInteger(1);
    private final SparseArray<UserRecord> mUserRecords = new SparseArray<>();
    private final ArrayMap<IBinder, RouterRecord> mAllRouterRecords = new ArrayMap<>();
    private final ArrayMap<IBinder, ManagerRecord> mAllManagerRecords = new ArrayMap<>();
    private int mCurrentUserId = -1;
    private final ActivityManager.OnUidImportanceListener mOnUidImportanceListener = new ActivityManager.OnUidImportanceListener() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$2kie0xmGP55cMymT2mcFbLGPvoM
        public final void onUidImportance(int i, int i2) {
            this.f$0.lambda$new$0$MediaRouter2ServiceImpl(i, i2);
        }
    };

    public /* synthetic */ void lambda$new$0$MediaRouter2ServiceImpl(int uid, int importance) {
        synchronized (this.mLock) {
            int count = this.mUserRecords.size();
            for (int i = 0; i < count; i++) {
                this.mUserRecords.valueAt(i).mHandler.maybeUpdateDiscoveryPreferenceForUid(uid);
            }
        }
    }

    MediaRouter2ServiceImpl(Context context) {
        this.mContext = context;
        ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityManager.class);
        this.mActivityManager = activityManager;
        activityManager.addOnUidImportanceListener(this.mOnUidImportanceListener, 100);
    }

    public List<MediaRoute2Info> getSystemRoutes() {
        Collection<MediaRoute2Info> systemRoutes;
        int uid = Binder.getCallingUid();
        int userId = UserHandle.getUserHandleForUid(uid).getIdentifier();
        boolean hasModifyAudioRoutingPermission = this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_AUDIO_ROUTING") == 0;
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                UserRecord userRecord = getOrCreateUserRecordLocked(userId);
                if (!hasModifyAudioRoutingPermission) {
                    systemRoutes = new ArrayList<>();
                    systemRoutes.add(userRecord.mHandler.mSystemProvider.getDefaultRoute());
                } else {
                    MediaRoute2ProviderInfo providerInfo = userRecord.mHandler.mSystemProvider.getProviderInfo();
                    if (providerInfo != null) {
                        systemRoutes = providerInfo.getRoutes();
                    } else {
                        systemRoutes = Collections.emptyList();
                    }
                }
            }
            ArrayList arrayList = new ArrayList(systemRoutes);
            Binder.restoreCallingIdentity(token);
            return arrayList;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public RoutingSessionInfo getSystemSessionInfo() {
        int uid = Binder.getCallingUid();
        int userId = UserHandle.getUserHandleForUid(uid).getIdentifier();
        boolean hasModifyAudioRoutingPermission = this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_AUDIO_ROUTING") == 0;
        long token = Binder.clearCallingIdentity();
        RoutingSessionInfo systemSessionInfo = null;
        try {
            synchronized (this.mLock) {
                UserRecord userRecord = getOrCreateUserRecordLocked(userId);
                if (hasModifyAudioRoutingPermission) {
                    List<RoutingSessionInfo> sessionInfos = userRecord.mHandler.mSystemProvider.getSessionInfos();
                    if (sessionInfos != null && !sessionInfos.isEmpty()) {
                        systemSessionInfo = sessionInfos.get(0);
                    } else {
                        Slog.w(TAG, "System provider does not have any session info.");
                    }
                } else {
                    RoutingSessionInfo systemSessionInfo2 = userRecord.mHandler.mSystemProvider.getDefaultSessionInfo();
                    systemSessionInfo = systemSessionInfo2;
                }
            }
            Binder.restoreCallingIdentity(token);
            return systemSessionInfo;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void registerRouter2(IMediaRouter2 router, String packageName) {
        Objects.requireNonNull(router, "router must not be null");
        if (TextUtils.isEmpty(packageName)) {
            throw new IllegalArgumentException("packageName must not be empty");
        }
        int uid = Binder.getCallingUid();
        int pid = Binder.getCallingPid();
        int userId = UserHandle.getUserHandleForUid(uid).getIdentifier();
        boolean hasConfigureWifiDisplayPermission = this.mContext.checkCallingOrSelfPermission("android.permission.CONFIGURE_WIFI_DISPLAY") == 0;
        boolean hasModifyAudioRoutingPermission = this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_AUDIO_ROUTING") == 0;
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                registerRouter2Locked(router, uid, pid, packageName, userId, hasConfigureWifiDisplayPermission, hasModifyAudioRoutingPermission);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void unregisterRouter2(IMediaRouter2 router) {
        Objects.requireNonNull(router, "router must not be null");
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                unregisterRouter2Locked(router, false);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void setDiscoveryRequestWithRouter2(IMediaRouter2 router, RouteDiscoveryPreference preference) {
        Objects.requireNonNull(router, "router must not be null");
        Objects.requireNonNull(preference, "preference must not be null");
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                RouterRecord routerRecord = this.mAllRouterRecords.get(router.asBinder());
                if (routerRecord == null) {
                    Slog.w(TAG, "Ignoring updating discoveryRequest of null routerRecord.");
                    Binder.restoreCallingIdentity(token);
                } else {
                    setDiscoveryRequestWithRouter2Locked(routerRecord, preference);
                    Binder.restoreCallingIdentity(token);
                }
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void setRouteVolumeWithRouter2(IMediaRouter2 router, MediaRoute2Info route, int volume) {
        Objects.requireNonNull(router, "router must not be null");
        Objects.requireNonNull(route, "route must not be null");
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                setRouteVolumeWithRouter2Locked(router, route, volume);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void requestCreateSessionWithRouter2(IMediaRouter2 router, int requestId, long managerRequestId, RoutingSessionInfo oldSession, MediaRoute2Info route, Bundle sessionHints) {
        Objects.requireNonNull(router, "router must not be null");
        Objects.requireNonNull(oldSession, "oldSession must not be null");
        Objects.requireNonNull(route, "route must not be null");
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                requestCreateSessionWithRouter2Locked(requestId, managerRequestId, router, oldSession, route, sessionHints);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void selectRouteWithRouter2(IMediaRouter2 router, String uniqueSessionId, MediaRoute2Info route) {
        Objects.requireNonNull(router, "router must not be null");
        Objects.requireNonNull(route, "route must not be null");
        if (TextUtils.isEmpty(uniqueSessionId)) {
            throw new IllegalArgumentException("uniqueSessionId must not be empty");
        }
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                selectRouteWithRouter2Locked(router, uniqueSessionId, route);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void deselectRouteWithRouter2(IMediaRouter2 router, String uniqueSessionId, MediaRoute2Info route) {
        Objects.requireNonNull(router, "router must not be null");
        Objects.requireNonNull(route, "route must not be null");
        if (TextUtils.isEmpty(uniqueSessionId)) {
            throw new IllegalArgumentException("uniqueSessionId must not be empty");
        }
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                deselectRouteWithRouter2Locked(router, uniqueSessionId, route);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void transferToRouteWithRouter2(IMediaRouter2 router, String uniqueSessionId, MediaRoute2Info route) {
        Objects.requireNonNull(router, "router must not be null");
        Objects.requireNonNull(route, "route must not be null");
        if (TextUtils.isEmpty(uniqueSessionId)) {
            throw new IllegalArgumentException("uniqueSessionId must not be empty");
        }
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                transferToRouteWithRouter2Locked(router, uniqueSessionId, route);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void setSessionVolumeWithRouter2(IMediaRouter2 router, String uniqueSessionId, int volume) {
        Objects.requireNonNull(router, "router must not be null");
        Objects.requireNonNull(uniqueSessionId, "uniqueSessionId must not be null");
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                setSessionVolumeWithRouter2Locked(router, uniqueSessionId, volume);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void releaseSessionWithRouter2(IMediaRouter2 router, String uniqueSessionId) {
        Objects.requireNonNull(router, "router must not be null");
        if (TextUtils.isEmpty(uniqueSessionId)) {
            throw new IllegalArgumentException("uniqueSessionId must not be empty");
        }
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                releaseSessionWithRouter2Locked(router, uniqueSessionId);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public List<RoutingSessionInfo> getActiveSessions(IMediaRouter2Manager manager) {
        List<RoutingSessionInfo> activeSessionsLocked;
        Objects.requireNonNull(manager, "manager must not be null");
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                activeSessionsLocked = getActiveSessionsLocked(manager);
            }
            Binder.restoreCallingIdentity(token);
            return activeSessionsLocked;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void registerManager(IMediaRouter2Manager manager, String packageName) {
        Objects.requireNonNull(manager, "manager must not be null");
        if (TextUtils.isEmpty(packageName)) {
            throw new IllegalArgumentException("packageName must not be empty");
        }
        int uid = Binder.getCallingUid();
        int pid = Binder.getCallingPid();
        int userId = UserHandle.getUserHandleForUid(uid).getIdentifier();
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                registerManagerLocked(manager, uid, pid, packageName, userId);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void unregisterManager(IMediaRouter2Manager manager) {
        Objects.requireNonNull(manager, "manager must not be null");
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                unregisterManagerLocked(manager, false);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void startScan(IMediaRouter2Manager manager) {
        Objects.requireNonNull(manager, "manager must not be null");
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                startScanLocked(manager);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void stopScan(IMediaRouter2Manager manager) {
        Objects.requireNonNull(manager, "manager must not be null");
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                stopScanLocked(manager);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void setRouteVolumeWithManager(IMediaRouter2Manager manager, int requestId, MediaRoute2Info route, int volume) {
        Objects.requireNonNull(manager, "manager must not be null");
        Objects.requireNonNull(route, "route must not be null");
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                setRouteVolumeWithManagerLocked(requestId, manager, route, volume);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void requestCreateSessionWithManager(IMediaRouter2Manager manager, int requestId, RoutingSessionInfo oldSession, MediaRoute2Info route) {
        Objects.requireNonNull(manager, "manager must not be null");
        Objects.requireNonNull(oldSession, "oldSession must not be null");
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                requestCreateSessionWithManagerLocked(requestId, manager, oldSession, route);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void selectRouteWithManager(IMediaRouter2Manager manager, int requestId, String uniqueSessionId, MediaRoute2Info route) {
        Objects.requireNonNull(manager, "manager must not be null");
        if (TextUtils.isEmpty(uniqueSessionId)) {
            throw new IllegalArgumentException("uniqueSessionId must not be empty");
        }
        Objects.requireNonNull(route, "route must not be null");
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                selectRouteWithManagerLocked(requestId, manager, uniqueSessionId, route);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void deselectRouteWithManager(IMediaRouter2Manager manager, int requestId, String uniqueSessionId, MediaRoute2Info route) {
        Objects.requireNonNull(manager, "manager must not be null");
        if (TextUtils.isEmpty(uniqueSessionId)) {
            throw new IllegalArgumentException("uniqueSessionId must not be empty");
        }
        Objects.requireNonNull(route, "route must not be null");
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                deselectRouteWithManagerLocked(requestId, manager, uniqueSessionId, route);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void transferToRouteWithManager(IMediaRouter2Manager manager, int requestId, String uniqueSessionId, MediaRoute2Info route) {
        Objects.requireNonNull(manager, "manager must not be null");
        if (TextUtils.isEmpty(uniqueSessionId)) {
            throw new IllegalArgumentException("uniqueSessionId must not be empty");
        }
        Objects.requireNonNull(route, "route must not be null");
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                transferToRouteWithManagerLocked(requestId, manager, uniqueSessionId, route);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void setSessionVolumeWithManager(IMediaRouter2Manager manager, int requestId, String uniqueSessionId, int volume) {
        Objects.requireNonNull(manager, "manager must not be null");
        if (TextUtils.isEmpty(uniqueSessionId)) {
            throw new IllegalArgumentException("uniqueSessionId must not be empty");
        }
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                setSessionVolumeWithManagerLocked(requestId, manager, uniqueSessionId, volume);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void releaseSessionWithManager(IMediaRouter2Manager manager, int requestId, String uniqueSessionId) {
        Objects.requireNonNull(manager, "manager must not be null");
        if (TextUtils.isEmpty(uniqueSessionId)) {
            throw new IllegalArgumentException("uniqueSessionId must not be empty");
        }
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                releaseSessionWithManagerLocked(requestId, manager, uniqueSessionId);
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    void switchUser() {
        synchronized (this.mLock) {
            int userId = ActivityManager.getCurrentUser();
            if (this.mCurrentUserId != userId) {
                int oldUserId = this.mCurrentUserId;
                this.mCurrentUserId = userId;
                UserRecord oldUser = this.mUserRecords.get(oldUserId);
                if (oldUser != null) {
                    oldUser.mHandler.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$xwrgJ0QIcy6O_xCDFBt_XQNI5DY
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            ((MediaRouter2ServiceImpl.UserHandler) obj).stop();
                        }
                    }, oldUser.mHandler));
                    disposeUserIfNeededLocked(oldUser);
                }
                UserRecord newUser = this.mUserRecords.get(userId);
                if (newUser != null) {
                    newUser.mHandler.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$t1osZllysU2dapLeGzI3a86SDgw
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            ((MediaRouter2ServiceImpl.UserHandler) obj).start();
                        }
                    }, newUser.mHandler));
                }
            }
        }
    }

    void routerDied(RouterRecord routerRecord) {
        synchronized (this.mLock) {
            unregisterRouter2Locked(routerRecord.mRouter, true);
        }
    }

    void managerDied(ManagerRecord managerRecord) {
        synchronized (this.mLock) {
            unregisterManagerLocked(managerRecord.mManager, true);
        }
    }

    private void registerRouter2Locked(IMediaRouter2 router, int uid, int pid, String packageName, int userId, boolean hasConfigureWifiDisplayPermission, boolean hasModifyAudioRoutingPermission) {
        IBinder binder = router.asBinder();
        if (this.mAllRouterRecords.get(binder) != null) {
            Slog.w(TAG, "registerRouter2Locked: Same router already exists. packageName=" + packageName);
            return;
        }
        UserRecord userRecord = getOrCreateUserRecordLocked(userId);
        RouterRecord routerRecord = new RouterRecord(userRecord, router, uid, pid, packageName, hasConfigureWifiDisplayPermission, hasModifyAudioRoutingPermission);
        try {
            binder.linkToDeath(routerRecord, 0);
            userRecord.mRouterRecords.add(routerRecord);
            this.mAllRouterRecords.put(binder, routerRecord);
            userRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$SKZjUJZQL43_Dw0-R0U3vQyLF88
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ((MediaRouter2ServiceImpl.UserHandler) obj).notifyRouterRegistered((MediaRouter2ServiceImpl.RouterRecord) obj2);
                }
            }, userRecord.mHandler, routerRecord));
        } catch (RemoteException ex) {
            throw new RuntimeException("MediaRouter2 died prematurely.", ex);
        }
    }

    private void unregisterRouter2Locked(IMediaRouter2 router, boolean died) {
        RouterRecord routerRecord = this.mAllRouterRecords.remove(router.asBinder());
        if (routerRecord == null) {
            Slog.w(TAG, "Ignoring unregistering unknown router2");
            return;
        }
        UserRecord userRecord = routerRecord.mUserRecord;
        userRecord.mRouterRecords.remove(routerRecord);
        routerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$H1j42r79rR93AIjAy3gwjCo9j7M
            public final void accept(Object obj, Object obj2, Object obj3) {
                ((MediaRouter2ServiceImpl.UserHandler) obj).notifyPreferredFeaturesChangedToManagers((String) obj2, (List) obj3);
            }
        }, routerRecord.mUserRecord.mHandler, routerRecord.mPackageName, (Object) null));
        userRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$m1mmtdZjHMplWeqdjm9YgWKvAk0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((MediaRouter2ServiceImpl.UserHandler) obj).updateDiscoveryPreferenceOnHandler();
            }
        }, userRecord.mHandler));
        routerRecord.dispose();
        disposeUserIfNeededLocked(userRecord);
    }

    private void setDiscoveryRequestWithRouter2Locked(RouterRecord routerRecord, RouteDiscoveryPreference discoveryRequest) {
        if (routerRecord.mDiscoveryPreference.equals(discoveryRequest)) {
            return;
        }
        routerRecord.mDiscoveryPreference = discoveryRequest;
        routerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$9cfbKv8vpjoirVe3t-zkpPX9FT8
            public final void accept(Object obj, Object obj2, Object obj3) {
                ((MediaRouter2ServiceImpl.UserHandler) obj).notifyPreferredFeaturesChangedToManagers((String) obj2, (List) obj3);
            }
        }, routerRecord.mUserRecord.mHandler, routerRecord.mPackageName, routerRecord.mDiscoveryPreference.getPreferredFeatures()));
        routerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$CKrcfZGzcJhQwSXi7Hc3ND-8TSY
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((MediaRouter2ServiceImpl.UserHandler) obj).updateDiscoveryPreferenceOnHandler();
            }
        }, routerRecord.mUserRecord.mHandler));
    }

    private void setRouteVolumeWithRouter2Locked(IMediaRouter2 router, MediaRoute2Info route, int volume) {
        IBinder binder = router.asBinder();
        RouterRecord routerRecord = this.mAllRouterRecords.get(binder);
        if (routerRecord != null) {
            routerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new QuadConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$_yufjUUujtpqsCtj0ADr3dloRKc
                public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                    ((MediaRouter2ServiceImpl.UserHandler) obj).setRouteVolumeOnHandler(((Long) obj2).longValue(), (MediaRoute2Info) obj3, ((Integer) obj4).intValue());
                }
            }, routerRecord.mUserRecord.mHandler, -1L, route, Integer.valueOf(volume)));
        }
    }

    private void requestCreateSessionWithRouter2Locked(int requestId, long managerRequestId, IMediaRouter2 router, RoutingSessionInfo oldSession, MediaRoute2Info route, Bundle sessionHints) {
        MediaRoute2Info route2;
        MediaRoute2Info route3;
        IBinder binder = router.asBinder();
        RouterRecord routerRecord = this.mAllRouterRecords.get(binder);
        if (routerRecord != null) {
            if (managerRequestId != 0) {
                ManagerRecord manager = routerRecord.mUserRecord.mHandler.findManagerWithId(toRequesterId(managerRequestId));
                if (manager == null || manager.mLastSessionCreationRequest == null) {
                    Slog.w(TAG, "requestCreateSessionWithRouter2Locked: Ignoring unknown request.");
                    routerRecord.mUserRecord.mHandler.notifySessionCreationFailedToRouter(routerRecord, requestId);
                    return;
                }
                if (!TextUtils.equals(manager.mLastSessionCreationRequest.mOldSession.getId(), oldSession.getId())) {
                    Slog.w(TAG, "requestCreateSessionWithRouter2Locked: Ignoring unmatched routing session.");
                    routerRecord.mUserRecord.mHandler.notifySessionCreationFailedToRouter(routerRecord, requestId);
                    return;
                }
                if (TextUtils.equals(manager.mLastSessionCreationRequest.mRoute.getId(), route.getId())) {
                    route3 = route;
                } else if (!routerRecord.mHasModifyAudioRoutingPermission && manager.mLastSessionCreationRequest.mRoute.isSystemRoute() && route.isSystemRoute()) {
                    route3 = manager.mLastSessionCreationRequest.mRoute;
                } else {
                    Slog.w(TAG, "requestCreateSessionWithRouter2Locked: Ignoring unmatched route.");
                    routerRecord.mUserRecord.mHandler.notifySessionCreationFailedToRouter(routerRecord, requestId);
                    return;
                }
                manager.mLastSessionCreationRequest = null;
                route2 = route3;
            } else {
                if (route.isSystemRoute() && !routerRecord.mHasModifyAudioRoutingPermission && !TextUtils.equals(route.getId(), routerRecord.mUserRecord.mHandler.mSystemProvider.getDefaultRoute().getId())) {
                    Slog.w(TAG, "MODIFY_AUDIO_ROUTING permission is required to transfer to" + route);
                    routerRecord.mUserRecord.mHandler.notifySessionCreationFailedToRouter(routerRecord, requestId);
                    return;
                }
                route2 = route;
            }
            long uniqueRequestId = toUniqueRequestId(routerRecord.mRouterId, requestId);
            routerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new HeptConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$PX2PZ3WG673cqVv2Dyy7nv0x6cI
                public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7) {
                    ((MediaRouter2ServiceImpl.UserHandler) obj).requestCreateSessionWithRouter2OnHandler(((Long) obj2).longValue(), ((Long) obj3).longValue(), (MediaRouter2ServiceImpl.RouterRecord) obj4, (RoutingSessionInfo) obj5, (MediaRoute2Info) obj6, (Bundle) obj7);
                }
            }, routerRecord.mUserRecord.mHandler, Long.valueOf(uniqueRequestId), Long.valueOf(managerRequestId), routerRecord, oldSession, route2, sessionHints));
        }
    }

    private void selectRouteWithRouter2Locked(IMediaRouter2 router, String uniqueSessionId, MediaRoute2Info route) {
        IBinder binder = router.asBinder();
        RouterRecord routerRecord = this.mAllRouterRecords.get(binder);
        if (routerRecord == null) {
            return;
        }
        routerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new QuintConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$AdBBp903jkYCQgd3yMo8GhPlNZs
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                ((MediaRouter2ServiceImpl.UserHandler) obj).selectRouteOnHandler(((Long) obj2).longValue(), (MediaRouter2ServiceImpl.RouterRecord) obj3, (String) obj4, (MediaRoute2Info) obj5);
            }
        }, routerRecord.mUserRecord.mHandler, -1L, routerRecord, uniqueSessionId, route));
    }

    private void deselectRouteWithRouter2Locked(IMediaRouter2 router, String uniqueSessionId, MediaRoute2Info route) {
        IBinder binder = router.asBinder();
        RouterRecord routerRecord = this.mAllRouterRecords.get(binder);
        if (routerRecord == null) {
            return;
        }
        routerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new QuintConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$8VGr3XtIN1RQDWlFurMn7sf6OvE
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                ((MediaRouter2ServiceImpl.UserHandler) obj).deselectRouteOnHandler(((Long) obj2).longValue(), (MediaRouter2ServiceImpl.RouterRecord) obj3, (String) obj4, (MediaRoute2Info) obj5);
            }
        }, routerRecord.mUserRecord.mHandler, -1L, routerRecord, uniqueSessionId, route));
    }

    private void transferToRouteWithRouter2Locked(IMediaRouter2 router, String uniqueSessionId, MediaRoute2Info route) {
        IBinder binder = router.asBinder();
        RouterRecord routerRecord = this.mAllRouterRecords.get(binder);
        if (routerRecord == null) {
            return;
        }
        String defaultRouteId = routerRecord.mUserRecord.mHandler.mSystemProvider.getDefaultRoute().getId();
        if (route.isSystemRoute() && !routerRecord.mHasModifyAudioRoutingPermission && !TextUtils.equals(route.getId(), defaultRouteId)) {
            routerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$-QnDb0Tdfmvea_Fz_tWd7gum58E
                public final void accept(Object obj, Object obj2, Object obj3) {
                    ((MediaRouter2ServiceImpl.UserHandler) obj).notifySessionCreationFailedToRouter((MediaRouter2ServiceImpl.RouterRecord) obj2, ((Integer) obj3).intValue());
                }
            }, routerRecord.mUserRecord.mHandler, routerRecord, Integer.valueOf(toOriginalRequestId(-1L))));
        } else {
            routerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new QuintConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$9vONphqMWfQnVfdKGjiQI4FKwrM
                public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                    ((MediaRouter2ServiceImpl.UserHandler) obj).transferToRouteOnHandler(((Long) obj2).longValue(), (MediaRouter2ServiceImpl.RouterRecord) obj3, (String) obj4, (MediaRoute2Info) obj5);
                }
            }, routerRecord.mUserRecord.mHandler, -1L, routerRecord, uniqueSessionId, route));
        }
    }

    private void setSessionVolumeWithRouter2Locked(IMediaRouter2 router, String uniqueSessionId, int volume) {
        IBinder binder = router.asBinder();
        RouterRecord routerRecord = this.mAllRouterRecords.get(binder);
        if (routerRecord == null) {
            return;
        }
        routerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new QuadConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$tip7RNu2esGD5CIzKb5BDK3LYtI
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                ((MediaRouter2ServiceImpl.UserHandler) obj).setSessionVolumeOnHandler(((Long) obj2).longValue(), (String) obj3, ((Integer) obj4).intValue());
            }
        }, routerRecord.mUserRecord.mHandler, -1L, uniqueSessionId, Integer.valueOf(volume)));
    }

    private void releaseSessionWithRouter2Locked(IMediaRouter2 router, String uniqueSessionId) {
        IBinder binder = router.asBinder();
        RouterRecord routerRecord = this.mAllRouterRecords.get(binder);
        if (routerRecord == null) {
            return;
        }
        routerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new QuadConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$nn_lCan4cdGwHXBpp-P4Mk1TJSs
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                ((MediaRouter2ServiceImpl.UserHandler) obj).releaseSessionOnHandler(((Long) obj2).longValue(), (MediaRouter2ServiceImpl.RouterRecord) obj3, (String) obj4);
            }
        }, routerRecord.mUserRecord.mHandler, -1L, routerRecord, uniqueSessionId));
    }

    private List<RoutingSessionInfo> getActiveSessionsLocked(IMediaRouter2Manager manager) {
        IBinder binder = manager.asBinder();
        ManagerRecord managerRecord = this.mAllManagerRecords.get(binder);
        if (managerRecord == null) {
            Slog.w(TAG, "getActiveSessionLocked: Ignoring unknown manager");
            return Collections.emptyList();
        }
        List<RoutingSessionInfo> sessionInfos = new ArrayList<>();
        for (MediaRoute2Provider provider : managerRecord.mUserRecord.mHandler.mRouteProviders) {
            sessionInfos.addAll(provider.getSessionInfos());
        }
        return sessionInfos;
    }

    private void registerManagerLocked(IMediaRouter2Manager manager, int uid, int pid, String packageName, int userId) {
        IBinder binder = manager.asBinder();
        if (this.mAllManagerRecords.get(binder) != null) {
            Slog.w(TAG, "registerManagerLocked: Same manager already exists. packageName=" + packageName);
            return;
        }
        UserRecord userRecord = getOrCreateUserRecordLocked(userId);
        ManagerRecord managerRecord = new ManagerRecord(userRecord, manager, uid, pid, packageName);
        try {
            binder.linkToDeath(managerRecord, 0);
            userRecord.mManagerRecords.add(managerRecord);
            this.mAllManagerRecords.put(binder, managerRecord);
            userRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$2rPTbHq-lI7_bww0XmEDuob-Qxw
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ((MediaRouter2ServiceImpl.UserHandler) obj).notifyRoutesToManager((IMediaRouter2Manager) obj2);
                }
            }, userRecord.mHandler, manager));
            for (RouterRecord routerRecord : userRecord.mRouterRecords) {
                routerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$a6BIgm-JMBzliVZcVbbiTH3JcgM
                    public final void accept(Object obj, Object obj2, Object obj3) {
                        ((MediaRouter2ServiceImpl.UserHandler) obj).notifyPreferredFeaturesChangedToManager((MediaRouter2ServiceImpl.RouterRecord) obj2, (IMediaRouter2Manager) obj3);
                    }
                }, routerRecord.mUserRecord.mHandler, routerRecord, manager));
            }
        } catch (RemoteException ex) {
            throw new RuntimeException("Media router manager died prematurely.", ex);
        }
    }

    private void unregisterManagerLocked(IMediaRouter2Manager manager, boolean died) {
        ManagerRecord managerRecord = this.mAllManagerRecords.remove(manager.asBinder());
        if (managerRecord == null) {
            return;
        }
        UserRecord userRecord = managerRecord.mUserRecord;
        userRecord.mManagerRecords.remove(managerRecord);
        managerRecord.dispose();
        disposeUserIfNeededLocked(userRecord);
    }

    private void startScanLocked(IMediaRouter2Manager manager) {
        IBinder binder = manager.asBinder();
        ManagerRecord managerRecord = this.mAllManagerRecords.get(binder);
        if (managerRecord == null) {
            return;
        }
        managerRecord.startScan();
    }

    private void stopScanLocked(IMediaRouter2Manager manager) {
        IBinder binder = manager.asBinder();
        ManagerRecord managerRecord = this.mAllManagerRecords.get(binder);
        if (managerRecord == null) {
            return;
        }
        managerRecord.stopScan();
    }

    private void setRouteVolumeWithManagerLocked(int requestId, IMediaRouter2Manager manager, MediaRoute2Info route, int volume) {
        IBinder binder = manager.asBinder();
        ManagerRecord managerRecord = this.mAllManagerRecords.get(binder);
        if (managerRecord == null) {
            return;
        }
        long uniqueRequestId = toUniqueRequestId(managerRecord.mManagerId, requestId);
        managerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new QuadConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$lxdDZP5BYJ-4NbANv2p63-tYj18
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                ((MediaRouter2ServiceImpl.UserHandler) obj).setRouteVolumeOnHandler(((Long) obj2).longValue(), (MediaRoute2Info) obj3, ((Integer) obj4).intValue());
            }
        }, managerRecord.mUserRecord.mHandler, Long.valueOf(uniqueRequestId), route, Integer.valueOf(volume)));
    }

    private void requestCreateSessionWithManagerLocked(int requestId, IMediaRouter2Manager manager, RoutingSessionInfo oldSession, MediaRoute2Info route) {
        ManagerRecord managerRecord = this.mAllManagerRecords.get(manager.asBinder());
        if (managerRecord == null) {
            return;
        }
        String packageName = oldSession.getClientPackageName();
        RouterRecord routerRecord = managerRecord.mUserRecord.findRouterRecordLocked(packageName);
        if (routerRecord != null) {
            long uniqueRequestId = toUniqueRequestId(managerRecord.mManagerId, requestId);
            if (managerRecord.mLastSessionCreationRequest != null) {
                managerRecord.mUserRecord.mHandler.notifyRequestFailedToManager(managerRecord.mManager, toOriginalRequestId(managerRecord.mLastSessionCreationRequest.mManagerRequestId), 0);
                managerRecord.mLastSessionCreationRequest = null;
            }
            managerRecord.mLastSessionCreationRequest = new SessionCreationRequest(routerRecord, 0L, uniqueRequestId, oldSession, route);
            routerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new HexConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$QJFuyW8Nld-95ePJ0uVQPRXcUUw
                public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
                    ((MediaRouter2ServiceImpl.UserHandler) obj).requestRouterCreateSessionOnHandler(((Long) obj2).longValue(), (MediaRouter2ServiceImpl.RouterRecord) obj3, (MediaRouter2ServiceImpl.ManagerRecord) obj4, (RoutingSessionInfo) obj5, (MediaRoute2Info) obj6);
                }
            }, routerRecord.mUserRecord.mHandler, Long.valueOf(uniqueRequestId), routerRecord, managerRecord, oldSession, route));
            return;
        }
        Slog.w(TAG, "requestCreateSessionWithManagerLocked: Ignoring session creation for unknown router.");
        try {
            managerRecord.mManager.notifyRequestFailed(requestId, 0);
        } catch (RemoteException e) {
            Slog.w(TAG, "requestCreateSessionWithManagerLocked: Failed to notify failure. Manager probably died.");
        }
    }

    private void selectRouteWithManagerLocked(int requestId, IMediaRouter2Manager manager, String uniqueSessionId, MediaRoute2Info route) {
        IBinder binder = manager.asBinder();
        ManagerRecord managerRecord = this.mAllManagerRecords.get(binder);
        if (managerRecord == null) {
            return;
        }
        RouterRecord routerRecord = managerRecord.mUserRecord.mHandler.findRouterWithSessionLocked(uniqueSessionId);
        long uniqueRequestId = toUniqueRequestId(managerRecord.mManagerId, requestId);
        managerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new QuintConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$drmsJS6jWmSBirWOR2DBgQpQtpM
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                ((MediaRouter2ServiceImpl.UserHandler) obj).selectRouteOnHandler(((Long) obj2).longValue(), (MediaRouter2ServiceImpl.RouterRecord) obj3, (String) obj4, (MediaRoute2Info) obj5);
            }
        }, managerRecord.mUserRecord.mHandler, Long.valueOf(uniqueRequestId), routerRecord, uniqueSessionId, route));
    }

    private void deselectRouteWithManagerLocked(int requestId, IMediaRouter2Manager manager, String uniqueSessionId, MediaRoute2Info route) {
        IBinder binder = manager.asBinder();
        ManagerRecord managerRecord = this.mAllManagerRecords.get(binder);
        if (managerRecord == null) {
            return;
        }
        RouterRecord routerRecord = managerRecord.mUserRecord.mHandler.findRouterWithSessionLocked(uniqueSessionId);
        long uniqueRequestId = toUniqueRequestId(managerRecord.mManagerId, requestId);
        managerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new QuintConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$DcKbRdUnq7h-CVdzwPuCpPEt2NA
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                ((MediaRouter2ServiceImpl.UserHandler) obj).deselectRouteOnHandler(((Long) obj2).longValue(), (MediaRouter2ServiceImpl.RouterRecord) obj3, (String) obj4, (MediaRoute2Info) obj5);
            }
        }, managerRecord.mUserRecord.mHandler, Long.valueOf(uniqueRequestId), routerRecord, uniqueSessionId, route));
    }

    private void transferToRouteWithManagerLocked(int requestId, IMediaRouter2Manager manager, String uniqueSessionId, MediaRoute2Info route) {
        IBinder binder = manager.asBinder();
        ManagerRecord managerRecord = this.mAllManagerRecords.get(binder);
        if (managerRecord == null) {
            return;
        }
        RouterRecord routerRecord = managerRecord.mUserRecord.mHandler.findRouterWithSessionLocked(uniqueSessionId);
        long uniqueRequestId = toUniqueRequestId(managerRecord.mManagerId, requestId);
        managerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new QuintConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$ZjRLnXgEM4NegVbuXdKmwv88LAo
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                ((MediaRouter2ServiceImpl.UserHandler) obj).transferToRouteOnHandler(((Long) obj2).longValue(), (MediaRouter2ServiceImpl.RouterRecord) obj3, (String) obj4, (MediaRoute2Info) obj5);
            }
        }, managerRecord.mUserRecord.mHandler, Long.valueOf(uniqueRequestId), routerRecord, uniqueSessionId, route));
    }

    private void setSessionVolumeWithManagerLocked(int requestId, IMediaRouter2Manager manager, String uniqueSessionId, int volume) {
        IBinder binder = manager.asBinder();
        ManagerRecord managerRecord = this.mAllManagerRecords.get(binder);
        if (managerRecord == null) {
            return;
        }
        long uniqueRequestId = toUniqueRequestId(managerRecord.mManagerId, requestId);
        managerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new QuadConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$COQ40oST34o4_biU37WALJBMVIg
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                ((MediaRouter2ServiceImpl.UserHandler) obj).setSessionVolumeOnHandler(((Long) obj2).longValue(), (String) obj3, ((Integer) obj4).intValue());
            }
        }, managerRecord.mUserRecord.mHandler, Long.valueOf(uniqueRequestId), uniqueSessionId, Integer.valueOf(volume)));
    }

    private void releaseSessionWithManagerLocked(int requestId, IMediaRouter2Manager manager, String uniqueSessionId) {
        IBinder binder = manager.asBinder();
        ManagerRecord managerRecord = this.mAllManagerRecords.get(binder);
        if (managerRecord == null) {
            return;
        }
        RouterRecord routerRecord = managerRecord.mUserRecord.mHandler.findRouterWithSessionLocked(uniqueSessionId);
        long uniqueRequestId = toUniqueRequestId(managerRecord.mManagerId, requestId);
        managerRecord.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new QuadConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$eTWCiDteVUNCz1pbLbaD649p_LU
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                ((MediaRouter2ServiceImpl.UserHandler) obj).releaseSessionOnHandler(((Long) obj2).longValue(), (MediaRouter2ServiceImpl.RouterRecord) obj3, (String) obj4);
            }
        }, managerRecord.mUserRecord.mHandler, Long.valueOf(uniqueRequestId), routerRecord, uniqueSessionId));
    }

    private UserRecord getOrCreateUserRecordLocked(int userId) {
        UserRecord userRecord = this.mUserRecords.get(userId);
        if (userRecord == null) {
            userRecord = new UserRecord(userId);
            this.mUserRecords.put(userId, userRecord);
            userRecord.init();
            if (userId == this.mCurrentUserId) {
                userRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$ESHb00Ae9F2DnROOuuna8EK7HFU
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((MediaRouter2ServiceImpl.UserHandler) obj).start();
                    }
                }, userRecord.mHandler));
            }
        }
        return userRecord;
    }

    private void disposeUserIfNeededLocked(UserRecord userRecord) {
        if (userRecord.mUserId != this.mCurrentUserId && userRecord.mRouterRecords.isEmpty() && userRecord.mManagerRecords.isEmpty()) {
            if (DEBUG) {
                Slog.d(TAG, userRecord + ": Disposed");
            }
            this.mUserRecords.remove(userRecord.mUserId);
        }
    }

    static long toUniqueRequestId(int requesterId, int originalRequestId) {
        return (((long) requesterId) << 32) | ((long) originalRequestId);
    }

    static int toRequesterId(long uniqueRequestId) {
        return (int) (uniqueRequestId >> 32);
    }

    static int toOriginalRequestId(long uniqueRequestId) {
        return (int) uniqueRequestId;
    }

    final class UserRecord {
        final UserHandler mHandler;
        public final int mUserId;
        final ArrayList<RouterRecord> mRouterRecords = new ArrayList<>();
        final ArrayList<ManagerRecord> mManagerRecords = new ArrayList<>();
        RouteDiscoveryPreference mCompositeDiscoveryPreference = RouteDiscoveryPreference.EMPTY;

        UserRecord(int userId) {
            this.mUserId = userId;
            this.mHandler = new UserHandler(MediaRouter2ServiceImpl.this, this);
        }

        void init() {
            this.mHandler.init();
        }

        RouterRecord findRouterRecordLocked(String packageName) {
            for (RouterRecord routerRecord : this.mRouterRecords) {
                if (TextUtils.equals(routerRecord.mPackageName, packageName)) {
                    return routerRecord;
                }
            }
            return null;
        }
    }

    final class RouterRecord implements IBinder.DeathRecipient {
        public final boolean mHasConfigureWifiDisplayPermission;
        public final boolean mHasModifyAudioRoutingPermission;
        public final String mPackageName;
        public final int mPid;
        public final IMediaRouter2 mRouter;
        public final int mRouterId;
        public MediaRoute2Info mSelectedRoute;
        public final int mUid;
        public final UserRecord mUserRecord;
        public final List<Integer> mSelectRouteSequenceNumbers = new ArrayList();
        public RouteDiscoveryPreference mDiscoveryPreference = RouteDiscoveryPreference.EMPTY;

        RouterRecord(UserRecord userRecord, IMediaRouter2 router, int uid, int pid, String packageName, boolean hasConfigureWifiDisplayPermission, boolean hasModifyAudioRoutingPermission) {
            this.mUserRecord = userRecord;
            this.mPackageName = packageName;
            this.mRouter = router;
            this.mUid = uid;
            this.mPid = pid;
            this.mHasConfigureWifiDisplayPermission = hasConfigureWifiDisplayPermission;
            this.mHasModifyAudioRoutingPermission = hasModifyAudioRoutingPermission;
            this.mRouterId = MediaRouter2ServiceImpl.this.mNextRouterOrManagerId.getAndIncrement();
        }

        public void dispose() {
            this.mRouter.asBinder().unlinkToDeath(this, 0);
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaRouter2ServiceImpl.this.routerDied(this);
        }
    }

    final class ManagerRecord implements IBinder.DeathRecipient {
        public boolean mIsScanning;
        public SessionCreationRequest mLastSessionCreationRequest;
        public final IMediaRouter2Manager mManager;
        public final int mManagerId;
        public final String mPackageName;
        public final int mPid;
        public final int mUid;
        public final UserRecord mUserRecord;

        ManagerRecord(UserRecord userRecord, IMediaRouter2Manager manager, int uid, int pid, String packageName) {
            this.mUserRecord = userRecord;
            this.mManager = manager;
            this.mUid = uid;
            this.mPid = pid;
            this.mPackageName = packageName;
            this.mManagerId = MediaRouter2ServiceImpl.this.mNextRouterOrManagerId.getAndIncrement();
        }

        public void dispose() {
            this.mManager.asBinder().unlinkToDeath(this, 0);
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaRouter2ServiceImpl.this.managerDied(this);
        }

        public void dump(PrintWriter pw, String prefix) {
            pw.println(prefix + this);
        }

        public void startScan() {
            if (this.mIsScanning) {
                return;
            }
            this.mIsScanning = true;
            this.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$ManagerRecord$TmWkG1dEDf8Trh8gR0PqbYxA-Ys
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((MediaRouter2ServiceImpl.UserHandler) obj).updateDiscoveryPreferenceOnHandler();
                }
            }, this.mUserRecord.mHandler));
        }

        public void stopScan() {
            if (!this.mIsScanning) {
                return;
            }
            this.mIsScanning = false;
            this.mUserRecord.mHandler.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$ManagerRecord$jrEV-0sK6RYwvA3gatGgEsczieo
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((MediaRouter2ServiceImpl.UserHandler) obj).updateDiscoveryPreferenceOnHandler();
                }
            }, this.mUserRecord.mHandler));
        }

        public String toString() {
            return "Manager " + this.mPackageName + " (pid " + this.mPid + ")";
        }
    }

    static final class UserHandler extends Handler implements MediaRoute2ProviderWatcher.Callback, MediaRoute2Provider.Callback {
        private final List<MediaRoute2ProviderInfo> mLastProviderInfos;
        private final ArrayList<MediaRoute2Provider> mRouteProviders;
        private boolean mRunning;
        private final WeakReference<MediaRouter2ServiceImpl> mServiceRef;
        private final CopyOnWriteArrayList<SessionCreationRequest> mSessionCreationRequests;
        private final Map<String, RouterRecord> mSessionToRouterMap;
        private final SystemMediaRoute2Provider mSystemProvider;
        private final UserRecord mUserRecord;
        private final MediaRoute2ProviderWatcher mWatcher;

        UserHandler(MediaRouter2ServiceImpl service, UserRecord userRecord) {
            super(Looper.getMainLooper(), null, true);
            this.mRouteProviders = new ArrayList<>();
            this.mLastProviderInfos = new ArrayList();
            this.mSessionCreationRequests = new CopyOnWriteArrayList<>();
            this.mSessionToRouterMap = new ArrayMap();
            this.mServiceRef = new WeakReference<>(service);
            this.mUserRecord = userRecord;
            SystemMediaRoute2Provider systemMediaRoute2Provider = new SystemMediaRoute2Provider(service.mContext, UserHandle.of(userRecord.mUserId));
            this.mSystemProvider = systemMediaRoute2Provider;
            this.mRouteProviders.add(systemMediaRoute2Provider);
            this.mWatcher = new MediaRoute2ProviderWatcher(service.mContext, this, this, this.mUserRecord.mUserId);
        }

        void init() {
            this.mSystemProvider.setCallback(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void start() {
            if (!this.mRunning) {
                this.mRunning = true;
                this.mWatcher.start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void stop() {
            if (this.mRunning) {
                this.mRunning = false;
                this.mWatcher.stop();
            }
        }

        @Override // com.android.server.media.MediaRoute2ProviderWatcher.Callback
        public void onAddProviderService(MediaRoute2ProviderServiceProxy proxy) {
            proxy.setCallback(this);
            this.mRouteProviders.add(proxy);
            proxy.updateDiscoveryPreference(this.mUserRecord.mCompositeDiscoveryPreference);
        }

        @Override // com.android.server.media.MediaRoute2ProviderWatcher.Callback
        public void onRemoveProviderService(MediaRoute2ProviderServiceProxy proxy) {
            this.mRouteProviders.remove(proxy);
        }

        @Override // com.android.server.media.MediaRoute2Provider.Callback
        public void onProviderStateChanged(MediaRoute2Provider provider) {
            sendMessage(PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$UserHandler$pb5SX6gBlgZXLZp0t4uVjgjp3EE
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ((MediaRouter2ServiceImpl.UserHandler) obj).onProviderStateChangedOnHandler((MediaRoute2Provider) obj2);
                }
            }, this, provider));
        }

        @Override // com.android.server.media.MediaRoute2Provider.Callback
        public void onSessionCreated(MediaRoute2Provider provider, long uniqueRequestId, RoutingSessionInfo sessionInfo) {
            sendMessage(PooledLambda.obtainMessage(new QuadConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$UserHandler$11csKqp8tuwz43YmexCNG_6stD4
                public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                    ((MediaRouter2ServiceImpl.UserHandler) obj).onSessionCreatedOnHandler((MediaRoute2Provider) obj2, ((Long) obj3).longValue(), (RoutingSessionInfo) obj4);
                }
            }, this, provider, Long.valueOf(uniqueRequestId), sessionInfo));
        }

        @Override // com.android.server.media.MediaRoute2Provider.Callback
        public void onSessionUpdated(MediaRoute2Provider provider, RoutingSessionInfo sessionInfo) {
            sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$UserHandler$9sVKwFHJaVOpWt-fwbOrQeBJC6Y
                public final void accept(Object obj, Object obj2, Object obj3) {
                    ((MediaRouter2ServiceImpl.UserHandler) obj).onSessionInfoChangedOnHandler((MediaRoute2Provider) obj2, (RoutingSessionInfo) obj3);
                }
            }, this, provider, sessionInfo));
        }

        @Override // com.android.server.media.MediaRoute2Provider.Callback
        public void onSessionReleased(MediaRoute2Provider provider, RoutingSessionInfo sessionInfo) {
            sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$UserHandler$W3Rmm5OwbtGhVGMXqEKmL8Wo39k
                public final void accept(Object obj, Object obj2, Object obj3) {
                    ((MediaRouter2ServiceImpl.UserHandler) obj).onSessionReleasedOnHandler((MediaRoute2Provider) obj2, (RoutingSessionInfo) obj3);
                }
            }, this, provider, sessionInfo));
        }

        @Override // com.android.server.media.MediaRoute2Provider.Callback
        public void onRequestFailed(MediaRoute2Provider provider, long uniqueRequestId, int reason) {
            sendMessage(PooledLambda.obtainMessage(new QuadConsumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$UserHandler$txvDtxZFlT0LcCTHtzUh7e7hY2w
                public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                    ((MediaRouter2ServiceImpl.UserHandler) obj).onRequestFailedOnHandler((MediaRoute2Provider) obj2, ((Long) obj3).longValue(), ((Integer) obj4).intValue());
                }
            }, this, provider, Long.valueOf(uniqueRequestId), Integer.valueOf(reason)));
        }

        public RouterRecord findRouterWithSessionLocked(String uniqueSessionId) {
            return this.mSessionToRouterMap.get(uniqueSessionId);
        }

        public ManagerRecord findManagerWithId(int managerId) {
            for (ManagerRecord manager : getManagerRecords()) {
                if (manager.mManagerId == managerId) {
                    return manager;
                }
            }
            return null;
        }

        public void maybeUpdateDiscoveryPreferenceForUid(final int uid) {
            boolean isUidRelevant;
            MediaRouter2ServiceImpl service = this.mServiceRef.get();
            if (service != null) {
                synchronized (service.mLock) {
                    isUidRelevant = this.mUserRecord.mRouterRecords.stream().anyMatch(new Predicate() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$UserHandler$HOT8HSDqnvF4B-6O-9hog5U7roM
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return MediaRouter2ServiceImpl.UserHandler.lambda$maybeUpdateDiscoveryPreferenceForUid$0(uid, (MediaRouter2ServiceImpl.RouterRecord) obj);
                        }
                    }) | this.mUserRecord.mManagerRecords.stream().anyMatch(new Predicate() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$UserHandler$OITvx7VbnzNLC0Ln1vhJSARXgMQ
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return MediaRouter2ServiceImpl.UserHandler.lambda$maybeUpdateDiscoveryPreferenceForUid$1(uid, (MediaRouter2ServiceImpl.ManagerRecord) obj);
                        }
                    });
                }
                if (isUidRelevant) {
                    sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$UserHandler$hL0tWTskdGExEVDcO0EK1ekc3hY
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            ((MediaRouter2ServiceImpl.UserHandler) obj).updateDiscoveryPreferenceOnHandler();
                        }
                    }, this));
                }
            }
        }

        static /* synthetic */ boolean lambda$maybeUpdateDiscoveryPreferenceForUid$0(int uid, RouterRecord router) {
            return router.mUid == uid;
        }

        static /* synthetic */ boolean lambda$maybeUpdateDiscoveryPreferenceForUid$1(int uid, ManagerRecord manager) {
            return manager.mUid == uid;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onProviderStateChangedOnHandler(MediaRoute2Provider provider) {
            int providerInfoIndex = getLastProviderInfoIndex(provider.getUniqueId());
            MediaRoute2ProviderInfo currentInfo = provider.getProviderInfo();
            MediaRoute2ProviderInfo prevInfo = providerInfoIndex < 0 ? null : this.mLastProviderInfos.get(providerInfoIndex);
            if (Objects.equals(prevInfo, currentInfo)) {
                return;
            }
            List<MediaRoute2Info> addedRoutes = new ArrayList<>();
            List<MediaRoute2Info> removedRoutes = new ArrayList<>();
            List<MediaRoute2Info> changedRoutes = new ArrayList<>();
            if (prevInfo == null) {
                this.mLastProviderInfos.add(currentInfo);
                addedRoutes.addAll(currentInfo.getRoutes());
            } else if (currentInfo == null) {
                this.mLastProviderInfos.remove(prevInfo);
                removedRoutes.addAll(prevInfo.getRoutes());
            } else {
                this.mLastProviderInfos.set(providerInfoIndex, currentInfo);
                prevInfo.getRoutes();
                Collection<MediaRoute2Info> currentRoutes = currentInfo.getRoutes();
                for (MediaRoute2Info route : currentRoutes) {
                    if (route.isValid()) {
                        MediaRoute2Info prevRoute = prevInfo.getRoute(route.getOriginalId());
                        if (prevRoute == null) {
                            addedRoutes.add(route);
                        } else if (!Objects.equals(prevRoute, route)) {
                            changedRoutes.add(route);
                        }
                    } else {
                        Slog.w(MediaRouter2ServiceImpl.TAG, "onProviderStateChangedOnHandler: Ignoring invalid route : " + route);
                    }
                }
                for (MediaRoute2Info prevRoute2 : prevInfo.getRoutes()) {
                    if (currentInfo.getRoute(prevRoute2.getOriginalId()) == null) {
                        removedRoutes.add(prevRoute2);
                    }
                }
            }
            List<IMediaRouter2> routersWithModifyAudioRoutingPermission = getRouters(true);
            List<IMediaRouter2> routersWithoutModifyAudioRoutingPermission = getRouters(false);
            List<IMediaRouter2Manager> managers = getManagers();
            List<MediaRoute2Info> defaultRoute = new ArrayList<>();
            defaultRoute.add(this.mSystemProvider.getDefaultRoute());
            if (addedRoutes.size() > 0) {
                notifyRoutesAddedToRouters(routersWithModifyAudioRoutingPermission, addedRoutes);
                if (!provider.mIsSystemRouteProvider) {
                    notifyRoutesAddedToRouters(routersWithoutModifyAudioRoutingPermission, addedRoutes);
                } else if (prevInfo == null) {
                    notifyRoutesAddedToRouters(routersWithoutModifyAudioRoutingPermission, defaultRoute);
                }
                notifyRoutesAddedToManagers(managers, addedRoutes);
            }
            if (removedRoutes.size() > 0) {
                notifyRoutesRemovedToRouters(routersWithModifyAudioRoutingPermission, removedRoutes);
                if (!provider.mIsSystemRouteProvider) {
                    notifyRoutesRemovedToRouters(routersWithoutModifyAudioRoutingPermission, removedRoutes);
                }
                notifyRoutesRemovedToManagers(managers, removedRoutes);
            }
            if (changedRoutes.size() > 0) {
                notifyRoutesChangedToRouters(routersWithModifyAudioRoutingPermission, changedRoutes);
                if (!provider.mIsSystemRouteProvider) {
                    notifyRoutesChangedToRouters(routersWithoutModifyAudioRoutingPermission, changedRoutes);
                } else if (prevInfo != null) {
                    notifyRoutesChangedToRouters(routersWithoutModifyAudioRoutingPermission, defaultRoute);
                }
                notifyRoutesChangedToManagers(managers, changedRoutes);
            }
        }

        private int getLastProviderInfoIndex(String providerId) {
            for (int i = 0; i < this.mLastProviderInfos.size(); i++) {
                MediaRoute2ProviderInfo providerInfo = this.mLastProviderInfos.get(i);
                if (TextUtils.equals(providerInfo.getUniqueId(), providerId)) {
                    return i;
                }
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void requestRouterCreateSessionOnHandler(long uniqueRequestId, RouterRecord routerRecord, ManagerRecord managerRecord, RoutingSessionInfo oldSession, MediaRoute2Info route) {
            try {
                if (route.isSystemRoute() && !routerRecord.mHasModifyAudioRoutingPermission) {
                    routerRecord.mRouter.requestCreateSessionByManager(uniqueRequestId, oldSession, this.mSystemProvider.getDefaultRoute());
                } else {
                    routerRecord.mRouter.requestCreateSessionByManager(uniqueRequestId, oldSession, route);
                }
            } catch (RemoteException ex) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "getSessionHintsForCreatingSessionOnHandler: Failed to request. Router probably died.", ex);
                notifyRequestFailedToManager(managerRecord.mManager, MediaRouter2ServiceImpl.toOriginalRequestId(uniqueRequestId), 0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void requestCreateSessionWithRouter2OnHandler(long uniqueRequestId, long managerRequestId, RouterRecord routerRecord, RoutingSessionInfo oldSession, MediaRoute2Info route, Bundle sessionHints) {
            MediaRoute2Provider provider = findProvider(route.getProviderId());
            if (provider == null) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "requestCreateSessionWithRouter2OnHandler: Ignoring session creation request since no provider found for given route=" + route);
                notifySessionCreationFailedToRouter(routerRecord, MediaRouter2ServiceImpl.toOriginalRequestId(uniqueRequestId));
                return;
            }
            SessionCreationRequest request = new SessionCreationRequest(routerRecord, uniqueRequestId, managerRequestId, oldSession, route);
            this.mSessionCreationRequests.add(request);
            provider.requestCreateSession(uniqueRequestId, routerRecord.mPackageName, route.getOriginalId(), sessionHints);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void selectRouteOnHandler(long uniqueRequestId, RouterRecord routerRecord, String uniqueSessionId, MediaRoute2Info route) {
            if (!checkArgumentsForSessionControl(routerRecord, uniqueSessionId, route, "selecting")) {
                return;
            }
            String providerId = route.getProviderId();
            MediaRoute2Provider provider = findProvider(providerId);
            if (provider == null) {
                return;
            }
            provider.selectRoute(uniqueRequestId, MediaRouter2Utils.getOriginalId(uniqueSessionId), route.getOriginalId());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void deselectRouteOnHandler(long uniqueRequestId, RouterRecord routerRecord, String uniqueSessionId, MediaRoute2Info route) {
            if (!checkArgumentsForSessionControl(routerRecord, uniqueSessionId, route, "deselecting")) {
                return;
            }
            String providerId = route.getProviderId();
            MediaRoute2Provider provider = findProvider(providerId);
            if (provider == null) {
                return;
            }
            provider.deselectRoute(uniqueRequestId, MediaRouter2Utils.getOriginalId(uniqueSessionId), route.getOriginalId());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void transferToRouteOnHandler(long uniqueRequestId, RouterRecord routerRecord, String uniqueSessionId, MediaRoute2Info route) {
            if (!checkArgumentsForSessionControl(routerRecord, uniqueSessionId, route, "transferring to")) {
                return;
            }
            String providerId = route.getProviderId();
            MediaRoute2Provider provider = findProvider(providerId);
            if (provider == null) {
                return;
            }
            provider.transferToRoute(uniqueRequestId, MediaRouter2Utils.getOriginalId(uniqueSessionId), route.getOriginalId());
        }

        private boolean checkArgumentsForSessionControl(RouterRecord routerRecord, String uniqueSessionId, MediaRoute2Info route, String description) {
            String providerId = route.getProviderId();
            MediaRoute2Provider provider = findProvider(providerId);
            if (provider == null) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "Ignoring " + description + " route since no provider found for given route=" + route);
                return false;
            }
            if (TextUtils.equals(MediaRouter2Utils.getProviderId(uniqueSessionId), this.mSystemProvider.getUniqueId())) {
                return true;
            }
            RouterRecord matchingRecord = this.mSessionToRouterMap.get(uniqueSessionId);
            if (matchingRecord != routerRecord) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "Ignoring " + description + " route from non-matching router. packageName=" + routerRecord.mPackageName + " route=" + route);
                return false;
            }
            String sessionId = MediaRouter2Utils.getOriginalId(uniqueSessionId);
            if (sessionId != null) {
                return true;
            }
            Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to get original session id from unique session id. uniqueSessionId=" + uniqueSessionId);
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRouteVolumeOnHandler(long uniqueRequestId, MediaRoute2Info route, int volume) {
            MediaRoute2Provider provider = findProvider(route.getProviderId());
            if (provider == null) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "setRouteVolumeOnHandler: Couldn't find provider for route=" + route);
                return;
            }
            provider.setRouteVolume(uniqueRequestId, route.getOriginalId(), volume);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSessionVolumeOnHandler(long uniqueRequestId, String uniqueSessionId, int volume) {
            MediaRoute2Provider provider = findProvider(MediaRouter2Utils.getProviderId(uniqueSessionId));
            if (provider == null) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "setSessionVolumeOnHandler: Couldn't find provider for session id=" + uniqueSessionId);
                return;
            }
            provider.setSessionVolume(uniqueRequestId, MediaRouter2Utils.getOriginalId(uniqueSessionId), volume);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void releaseSessionOnHandler(long uniqueRequestId, RouterRecord routerRecord, String uniqueSessionId) {
            RouterRecord matchingRecord = this.mSessionToRouterMap.get(uniqueSessionId);
            if (matchingRecord != routerRecord) {
                StringBuilder sb = new StringBuilder();
                sb.append("Ignoring releasing session from non-matching router. packageName=");
                sb.append(routerRecord == null ? null : routerRecord.mPackageName);
                sb.append(" uniqueSessionId=");
                sb.append(uniqueSessionId);
                Slog.w(MediaRouter2ServiceImpl.TAG, sb.toString());
                return;
            }
            String providerId = MediaRouter2Utils.getProviderId(uniqueSessionId);
            if (providerId == null) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "Ignoring releasing session with invalid unique session ID. uniqueSessionId=" + uniqueSessionId);
                return;
            }
            String sessionId = MediaRouter2Utils.getOriginalId(uniqueSessionId);
            if (sessionId == null) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "Ignoring releasing session with invalid unique session ID. uniqueSessionId=" + uniqueSessionId + " providerId=" + providerId);
                return;
            }
            MediaRoute2Provider provider = findProvider(providerId);
            if (provider == null) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "Ignoring releasing session since no provider found for given providerId=" + providerId);
                return;
            }
            provider.releaseSession(uniqueRequestId, sessionId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onSessionCreatedOnHandler(MediaRoute2Provider provider, long uniqueRequestId, RoutingSessionInfo sessionInfo) {
            long managerRequestId;
            SessionCreationRequest matchingRequest = null;
            for (SessionCreationRequest request : this.mSessionCreationRequests) {
                if (request.mUniqueRequestId == uniqueRequestId && TextUtils.equals(request.mRoute.getProviderId(), provider.getUniqueId())) {
                    matchingRequest = request;
                    break;
                }
            }
            if (matchingRequest == null) {
                managerRequestId = 0;
            } else {
                managerRequestId = matchingRequest.mManagerRequestId;
            }
            notifySessionCreatedToManagers(managerRequestId, sessionInfo);
            if (matchingRequest == null) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "Ignoring session creation result for unknown request. uniqueRequestId=" + uniqueRequestId + ", sessionInfo=" + sessionInfo);
                return;
            }
            this.mSessionCreationRequests.remove(matchingRequest);
            MediaRoute2Provider oldProvider = findProvider(matchingRequest.mOldSession.getProviderId());
            if (oldProvider == null) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "onSessionCreatedOnHandler: Can't find provider for an old session. session=" + matchingRequest.mOldSession);
            } else {
                oldProvider.prepareReleaseSession(matchingRequest.mOldSession.getId());
            }
            if (sessionInfo.isSystemSession() && !matchingRequest.mRouterRecord.mHasModifyAudioRoutingPermission) {
                notifySessionCreatedToRouter(matchingRequest.mRouterRecord, MediaRouter2ServiceImpl.toOriginalRequestId(uniqueRequestId), this.mSystemProvider.getDefaultSessionInfo());
            } else {
                notifySessionCreatedToRouter(matchingRequest.mRouterRecord, MediaRouter2ServiceImpl.toOriginalRequestId(uniqueRequestId), sessionInfo);
            }
            this.mSessionToRouterMap.put(sessionInfo.getId(), matchingRequest.mRouterRecord);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onSessionInfoChangedOnHandler(MediaRoute2Provider provider, RoutingSessionInfo sessionInfo) {
            List<IMediaRouter2Manager> managers = getManagers();
            notifySessionUpdatedToManagers(managers, sessionInfo);
            if (provider == this.mSystemProvider) {
                MediaRouter2ServiceImpl service = this.mServiceRef.get();
                if (service == null) {
                    return;
                }
                notifySessionInfoChangedToRouters(getRouters(true), sessionInfo);
                notifySessionInfoChangedToRouters(getRouters(false), this.mSystemProvider.getDefaultSessionInfo());
                return;
            }
            RouterRecord routerRecord = this.mSessionToRouterMap.get(sessionInfo.getId());
            if (routerRecord == null) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "onSessionInfoChangedOnHandler: No matching router found for session=" + sessionInfo);
                return;
            }
            notifySessionInfoChangedToRouter(routerRecord, sessionInfo);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onSessionReleasedOnHandler(MediaRoute2Provider provider, RoutingSessionInfo sessionInfo) {
            List<IMediaRouter2Manager> managers = getManagers();
            notifySessionReleasedToManagers(managers, sessionInfo);
            RouterRecord routerRecord = this.mSessionToRouterMap.get(sessionInfo.getId());
            if (routerRecord == null) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "onSessionReleasedOnHandler: No matching router found for session=" + sessionInfo);
                return;
            }
            notifySessionReleasedToRouter(routerRecord, sessionInfo);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onRequestFailedOnHandler(MediaRoute2Provider provider, long uniqueRequestId, int reason) {
            if (handleSessionCreationRequestFailed(provider, uniqueRequestId, reason)) {
                return;
            }
            int requesterId = MediaRouter2ServiceImpl.toRequesterId(uniqueRequestId);
            ManagerRecord manager = findManagerWithId(requesterId);
            if (manager != null) {
                notifyRequestFailedToManager(manager.mManager, MediaRouter2ServiceImpl.toOriginalRequestId(uniqueRequestId), reason);
            }
        }

        private boolean handleSessionCreationRequestFailed(MediaRoute2Provider provider, long uniqueRequestId, int reason) {
            SessionCreationRequest matchingRequest = null;
            for (SessionCreationRequest request : this.mSessionCreationRequests) {
                if (request.mUniqueRequestId == uniqueRequestId && TextUtils.equals(request.mRoute.getProviderId(), provider.getUniqueId())) {
                    matchingRequest = request;
                    break;
                }
            }
            if (matchingRequest == null) {
                return false;
            }
            this.mSessionCreationRequests.remove(matchingRequest);
            if (matchingRequest.mManagerRequestId == 0) {
                notifySessionCreationFailedToRouter(matchingRequest.mRouterRecord, MediaRouter2ServiceImpl.toOriginalRequestId(uniqueRequestId));
                return true;
            }
            int requesterId = MediaRouter2ServiceImpl.toRequesterId(matchingRequest.mManagerRequestId);
            ManagerRecord manager = findManagerWithId(requesterId);
            if (manager != null) {
                notifyRequestFailedToManager(manager.mManager, MediaRouter2ServiceImpl.toOriginalRequestId(matchingRequest.mManagerRequestId), reason);
                return true;
            }
            return true;
        }

        private void notifySessionCreatedToRouter(RouterRecord routerRecord, int requestId, RoutingSessionInfo sessionInfo) {
            try {
                routerRecord.mRouter.notifySessionCreated(requestId, sessionInfo);
            } catch (RemoteException ex) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to notify router of the session creation. Router probably died.", ex);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifySessionCreationFailedToRouter(RouterRecord routerRecord, int requestId) {
            try {
                routerRecord.mRouter.notifySessionCreated(requestId, (RoutingSessionInfo) null);
            } catch (RemoteException ex) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to notify router of the session creation failure. Router probably died.", ex);
            }
        }

        private void notifySessionInfoChangedToRouter(RouterRecord routerRecord, RoutingSessionInfo sessionInfo) {
            try {
                routerRecord.mRouter.notifySessionInfoChanged(sessionInfo);
            } catch (RemoteException ex) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to notify router of the session info change. Router probably died.", ex);
            }
        }

        private void notifySessionReleasedToRouter(RouterRecord routerRecord, RoutingSessionInfo sessionInfo) {
            try {
                routerRecord.mRouter.notifySessionReleased(sessionInfo);
            } catch (RemoteException ex) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to notify router of the session release. Router probably died.", ex);
            }
        }

        private List<IMediaRouter2> getAllRouters() {
            List<IMediaRouter2> routers = new ArrayList<>();
            MediaRouter2ServiceImpl service = this.mServiceRef.get();
            if (service != null) {
                synchronized (service.mLock) {
                    for (RouterRecord routerRecord : this.mUserRecord.mRouterRecords) {
                        routers.add(routerRecord.mRouter);
                    }
                }
                return routers;
            }
            return routers;
        }

        private List<IMediaRouter2> getRouters(boolean hasModifyAudioRoutingPermission) {
            List<IMediaRouter2> routers = new ArrayList<>();
            MediaRouter2ServiceImpl service = this.mServiceRef.get();
            if (service != null) {
                synchronized (service.mLock) {
                    for (RouterRecord routerRecord : this.mUserRecord.mRouterRecords) {
                        if (hasModifyAudioRoutingPermission == routerRecord.mHasModifyAudioRoutingPermission) {
                            routers.add(routerRecord.mRouter);
                        }
                    }
                }
                return routers;
            }
            return routers;
        }

        private List<IMediaRouter2Manager> getManagers() {
            List<IMediaRouter2Manager> managers = new ArrayList<>();
            MediaRouter2ServiceImpl service = this.mServiceRef.get();
            if (service != null) {
                synchronized (service.mLock) {
                    for (ManagerRecord managerRecord : this.mUserRecord.mManagerRecords) {
                        managers.add(managerRecord.mManager);
                    }
                }
                return managers;
            }
            return managers;
        }

        private List<RouterRecord> getRouterRecords() {
            ArrayList arrayList;
            MediaRouter2ServiceImpl service = this.mServiceRef.get();
            if (service != null) {
                synchronized (service.mLock) {
                    arrayList = new ArrayList(this.mUserRecord.mRouterRecords);
                }
                return arrayList;
            }
            return Collections.emptyList();
        }

        private List<ManagerRecord> getManagerRecords() {
            ArrayList arrayList;
            MediaRouter2ServiceImpl service = this.mServiceRef.get();
            if (service != null) {
                synchronized (service.mLock) {
                    arrayList = new ArrayList(this.mUserRecord.mManagerRecords);
                }
                return arrayList;
            }
            return Collections.emptyList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyRouterRegistered(RouterRecord routerRecord) {
            RoutingSessionInfo currentSystemSessionInfo;
            List<MediaRoute2Info> currentRoutes = new ArrayList<>();
            MediaRoute2ProviderInfo systemProviderInfo = null;
            for (MediaRoute2ProviderInfo providerInfo : this.mLastProviderInfos) {
                if (TextUtils.equals(providerInfo.getUniqueId(), this.mSystemProvider.getUniqueId())) {
                    systemProviderInfo = providerInfo;
                } else {
                    currentRoutes.addAll(providerInfo.getRoutes());
                }
            }
            if (routerRecord.mHasModifyAudioRoutingPermission) {
                if (systemProviderInfo != null) {
                    currentRoutes.addAll(systemProviderInfo.getRoutes());
                } else {
                    Slog.wtf(MediaRouter2ServiceImpl.TAG, "System route provider not found.");
                }
                currentSystemSessionInfo = this.mSystemProvider.getSessionInfos().get(0);
            } else {
                currentRoutes.add(this.mSystemProvider.getDefaultRoute());
                currentSystemSessionInfo = this.mSystemProvider.getDefaultSessionInfo();
            }
            if (currentRoutes.size() == 0) {
                return;
            }
            try {
                routerRecord.mRouter.notifyRouterRegistered(currentRoutes, currentSystemSessionInfo);
            } catch (RemoteException ex) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to notify router registered. Router probably died.", ex);
            }
        }

        private void notifyRoutesAddedToRouters(List<IMediaRouter2> routers, List<MediaRoute2Info> routes) {
            for (IMediaRouter2 router : routers) {
                try {
                    router.notifyRoutesAdded(routes);
                } catch (RemoteException ex) {
                    Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to notify routes added. Router probably died.", ex);
                }
            }
        }

        private void notifyRoutesRemovedToRouters(List<IMediaRouter2> routers, List<MediaRoute2Info> routes) {
            for (IMediaRouter2 router : routers) {
                try {
                    router.notifyRoutesRemoved(routes);
                } catch (RemoteException ex) {
                    Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to notify routes removed. Router probably died.", ex);
                }
            }
        }

        private void notifyRoutesChangedToRouters(List<IMediaRouter2> routers, List<MediaRoute2Info> routes) {
            for (IMediaRouter2 router : routers) {
                try {
                    router.notifyRoutesChanged(routes);
                } catch (RemoteException ex) {
                    Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to notify routes changed. Router probably died.", ex);
                }
            }
        }

        private void notifySessionInfoChangedToRouters(List<IMediaRouter2> routers, RoutingSessionInfo sessionInfo) {
            for (IMediaRouter2 router : routers) {
                try {
                    router.notifySessionInfoChanged(sessionInfo);
                } catch (RemoteException ex) {
                    Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to notify session info changed. Router probably died.", ex);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyRoutesToManager(IMediaRouter2Manager manager) {
            List<MediaRoute2Info> routes = new ArrayList<>();
            for (MediaRoute2ProviderInfo providerInfo : this.mLastProviderInfos) {
                routes.addAll(providerInfo.getRoutes());
            }
            if (routes.size() == 0) {
                return;
            }
            try {
                manager.notifyRoutesAdded(routes);
            } catch (RemoteException ex) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to notify all routes. Manager probably died.", ex);
            }
        }

        private void notifyRoutesAddedToManagers(List<IMediaRouter2Manager> managers, List<MediaRoute2Info> routes) {
            for (IMediaRouter2Manager manager : managers) {
                try {
                    manager.notifyRoutesAdded(routes);
                } catch (RemoteException ex) {
                    Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to notify routes added. Manager probably died.", ex);
                }
            }
        }

        private void notifyRoutesRemovedToManagers(List<IMediaRouter2Manager> managers, List<MediaRoute2Info> routes) {
            for (IMediaRouter2Manager manager : managers) {
                try {
                    manager.notifyRoutesRemoved(routes);
                } catch (RemoteException ex) {
                    Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to notify routes removed. Manager probably died.", ex);
                }
            }
        }

        private void notifyRoutesChangedToManagers(List<IMediaRouter2Manager> managers, List<MediaRoute2Info> routes) {
            for (IMediaRouter2Manager manager : managers) {
                try {
                    manager.notifyRoutesChanged(routes);
                } catch (RemoteException ex) {
                    Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to notify routes changed. Manager probably died.", ex);
                }
            }
        }

        private void notifySessionCreatedToManagers(long managerRequestId, RoutingSessionInfo session) {
            int requesterId = MediaRouter2ServiceImpl.toRequesterId(managerRequestId);
            int originalRequestId = MediaRouter2ServiceImpl.toOriginalRequestId(managerRequestId);
            for (ManagerRecord manager : getManagerRecords()) {
                try {
                    manager.mManager.notifySessionCreated(manager.mManagerId == requesterId ? originalRequestId : 0, session);
                } catch (RemoteException ex) {
                    Slog.w(MediaRouter2ServiceImpl.TAG, "notifySessionCreatedToManagers: Failed to notify. Manager probably died.", ex);
                }
            }
        }

        private void notifySessionUpdatedToManagers(List<IMediaRouter2Manager> managers, RoutingSessionInfo sessionInfo) {
            for (IMediaRouter2Manager manager : managers) {
                try {
                    manager.notifySessionUpdated(sessionInfo);
                } catch (RemoteException ex) {
                    Slog.w(MediaRouter2ServiceImpl.TAG, "notifySessionUpdatedToManagers: Failed to notify. Manager probably died.", ex);
                }
            }
        }

        private void notifySessionReleasedToManagers(List<IMediaRouter2Manager> managers, RoutingSessionInfo sessionInfo) {
            for (IMediaRouter2Manager manager : managers) {
                try {
                    manager.notifySessionReleased(sessionInfo);
                } catch (RemoteException ex) {
                    Slog.w(MediaRouter2ServiceImpl.TAG, "notifySessionReleasedToManagers: Failed to notify. Manager probably died.", ex);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyPreferredFeaturesChangedToManager(RouterRecord routerRecord, IMediaRouter2Manager manager) {
            try {
                manager.notifyPreferredFeaturesChanged(routerRecord.mPackageName, routerRecord.mDiscoveryPreference.getPreferredFeatures());
            } catch (RemoteException ex) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to notify preferred features changed. Manager probably died.", ex);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyPreferredFeaturesChangedToManagers(String routerPackageName, List<String> preferredFeatures) {
            MediaRouter2ServiceImpl service = this.mServiceRef.get();
            if (service == null) {
                return;
            }
            List<IMediaRouter2Manager> managers = new ArrayList<>();
            synchronized (service.mLock) {
                for (ManagerRecord managerRecord : this.mUserRecord.mManagerRecords) {
                    managers.add(managerRecord.mManager);
                }
            }
            for (IMediaRouter2Manager manager : managers) {
                try {
                    manager.notifyPreferredFeaturesChanged(routerPackageName, preferredFeatures);
                } catch (RemoteException ex) {
                    Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to notify preferred features changed. Manager probably died.", ex);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyRequestFailedToManager(IMediaRouter2Manager manager, int requestId, int reason) {
            try {
                manager.notifyRequestFailed(requestId, reason);
            } catch (RemoteException ex) {
                Slog.w(MediaRouter2ServiceImpl.TAG, "Failed to notify manager of the request failure. Manager probably died.", ex);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateDiscoveryPreferenceOnHandler() {
            final MediaRouter2ServiceImpl service = this.mServiceRef.get();
            if (service == null) {
                return;
            }
            List<RouteDiscoveryPreference> discoveryPreferences = new ArrayList<>();
            List<RouterRecord> routerRecords = getRouterRecords();
            List<ManagerRecord> managerRecords = getManagerRecords();
            boolean isAnyManagerScanning = managerRecords.stream().anyMatch(new Predicate() { // from class: com.android.server.media.-$$Lambda$MediaRouter2ServiceImpl$UserHandler$EMSZaklfb6V6b3WW1ce0YFILOII
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return MediaRouter2ServiceImpl.UserHandler.lambda$updateDiscoveryPreferenceOnHandler$2(service, (MediaRouter2ServiceImpl.ManagerRecord) obj);
                }
            });
            for (RouterRecord routerRecord : routerRecords) {
                if (isAnyManagerScanning || service.mActivityManager.getPackageImportance(routerRecord.mPackageName) <= 100) {
                    discoveryPreferences.add(routerRecord.mDiscoveryPreference);
                }
            }
            synchronized (service.mLock) {
                RouteDiscoveryPreference newPreference = new RouteDiscoveryPreference.Builder(discoveryPreferences).build();
                if (newPreference.equals(this.mUserRecord.mCompositeDiscoveryPreference)) {
                    return;
                }
                this.mUserRecord.mCompositeDiscoveryPreference = newPreference;
                for (MediaRoute2Provider provider : this.mRouteProviders) {
                    provider.updateDiscoveryPreference(this.mUserRecord.mCompositeDiscoveryPreference);
                }
            }
        }

        static /* synthetic */ boolean lambda$updateDiscoveryPreferenceOnHandler$2(MediaRouter2ServiceImpl service, ManagerRecord manager) {
            return manager.mIsScanning && service.mActivityManager.getPackageImportance(manager.mPackageName) <= 100;
        }

        private MediaRoute2Provider findProvider(String providerId) {
            for (MediaRoute2Provider provider : this.mRouteProviders) {
                if (TextUtils.equals(provider.getUniqueId(), providerId)) {
                    return provider;
                }
            }
            return null;
        }
    }

    static final class SessionCreationRequest {
        public final long mManagerRequestId;
        public final RoutingSessionInfo mOldSession;
        public final MediaRoute2Info mRoute;
        public final RouterRecord mRouterRecord;
        public final long mUniqueRequestId;

        SessionCreationRequest(RouterRecord routerRecord, long uniqueRequestId, long managerRequestId, RoutingSessionInfo oldSession, MediaRoute2Info route) {
            this.mRouterRecord = routerRecord;
            this.mUniqueRequestId = uniqueRequestId;
            this.mManagerRequestId = managerRequestId;
            this.mOldSession = oldSession;
            this.mRoute = route;
        }
    }
}

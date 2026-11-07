package com.android.server.contentcapture;

import android.R;
import android.app.ActivityManagerInternal;
import android.app.ActivityThread;
import android.content.ComponentName;
import android.content.ContentCaptureOptions;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ActivityPresentationInfo;
import android.content.pm.PackageManager;
import android.content.pm.UserInfo;
import android.database.ContentObserver;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.UserHandle;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.service.contentcapture.ContentCaptureService;
import android.service.contentcapture.IDataShareCallback;
import android.service.contentcapture.IDataShareReadAdapter;
import android.util.ArraySet;
import android.util.LocalLog;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.contentcapture.ContentCaptureCondition;
import android.view.contentcapture.ContentCaptureHelper;
import android.view.contentcapture.DataRemovalRequest;
import android.view.contentcapture.DataShareRequest;
import android.view.contentcapture.IContentCaptureManager;
import android.view.contentcapture.IDataShareWriteAdapter;
import com.android.internal.infra.GlobalWhitelistState;
import com.android.internal.os.IResultReceiver;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.Preconditions;
import com.android.internal.util.SyncResultReceiver;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.infra.AbstractMasterSystemService;
import com.android.server.infra.FrameworkResourcesServiceNameResolver;
import com.android.server.wm.ActivityTaskManagerService;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class ContentCaptureManagerService extends AbstractMasterSystemService<ContentCaptureManagerService, ContentCapturePerUserService> {
    private static final int DATA_SHARE_BYTE_BUFFER_LENGTH = 1024;
    private static final int EVENT__DATA_SHARE_ERROR_CONCURRENT_REQUEST = 14;
    private static final int EVENT__DATA_SHARE_ERROR_TIMEOUT_INTERRUPTED = 15;
    private static final int EVENT__DATA_SHARE_WRITE_FINISHED = 9;
    private static final int MAX_CONCURRENT_FILE_SHARING_REQUESTS = 10;
    private static final int MAX_DATA_SHARE_FILE_DESCRIPTORS_TTL_MS = 300000;
    private static final int MAX_TEMP_SERVICE_DURATION_MS = 120000;
    static final String RECEIVER_BUNDLE_EXTRA_SESSIONS = "sessions";
    private static final String TAG = ContentCaptureManagerService.class.getSimpleName();
    private ActivityManagerInternal mAm;
    private final Executor mDataShareExecutor;
    int mDevCfgIdleFlushingFrequencyMs;
    int mDevCfgIdleUnbindTimeoutMs;
    int mDevCfgLogHistorySize;
    int mDevCfgLoggingLevel;
    int mDevCfgMaxBufferSize;
    int mDevCfgTextChangeFlushingFrequencyMs;
    private boolean mDisabledByDeviceConfig;
    private SparseBooleanArray mDisabledBySettings;
    final GlobalContentCaptureOptions mGlobalContentCaptureOptions;
    private final Handler mHandler;
    private final LocalService mLocalService;
    private final Set<String> mPackagesWithShareRequests;
    final LocalLog mRequestsHistory;

    public ContentCaptureManagerService(Context context) {
        super(context, new FrameworkResourcesServiceNameResolver(context, R.string.config_deviceSpecificDeviceStatePolicyProvider), "no_content_capture", 1);
        this.mLocalService = new LocalService();
        this.mDataShareExecutor = Executors.newCachedThreadPool();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mPackagesWithShareRequests = new HashSet();
        this.mGlobalContentCaptureOptions = new GlobalContentCaptureOptions();
        DeviceConfig.addOnPropertiesChangedListener("content_capture", ActivityThread.currentApplication().getMainExecutor(), new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.contentcapture.-$$Lambda$ContentCaptureManagerService$4nadnpI0ImgQseJYN0WTE4IJ4s4
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                this.f$0.lambda$new$0$ContentCaptureManagerService(properties);
            }
        });
        setDeviceConfigProperties();
        if (this.mDevCfgLogHistorySize > 0) {
            if (this.debug) {
                Slog.d(TAG, "log history size: " + this.mDevCfgLogHistorySize);
            }
            this.mRequestsHistory = new LocalLog(this.mDevCfgLogHistorySize);
        } else {
            if (this.debug) {
                Slog.d(TAG, "disabled log history because size is " + this.mDevCfgLogHistorySize);
            }
            this.mRequestsHistory = null;
        }
        List<UserInfo> users = getSupportedUsers();
        for (int i = 0; i < users.size(); i++) {
            int userId = users.get(i).id;
            boolean disabled = !isEnabledBySettings(userId);
            if (disabled) {
                Slog.i(TAG, "user " + userId + " disabled by settings");
                if (this.mDisabledBySettings == null) {
                    this.mDisabledBySettings = new SparseBooleanArray(1);
                }
                this.mDisabledBySettings.put(userId, true);
            }
            this.mGlobalContentCaptureOptions.setServiceInfo(userId, this.mServiceNameResolver.getServiceName(userId), this.mServiceNameResolver.isTemporary(userId));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.server.infra.AbstractMasterSystemService
    public ContentCapturePerUserService newServiceLocked(int resolvedUserId, boolean disabled) {
        return new ContentCapturePerUserService(this, this.mLock, disabled, resolvedUserId);
    }

    @Override // com.android.server.SystemService
    public boolean isUserSupported(SystemService.TargetUser user) {
        return user.getUserInfo().isFull() || user.getUserInfo().isManagedProfile();
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("content_capture", new ContentCaptureManagerServiceStub());
        publishLocalService(ContentCaptureManagerInternal.class, this.mLocalService);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.server.infra.AbstractMasterSystemService
    public void onServiceRemoved(ContentCapturePerUserService service, int userId) {
        service.destroyLocked();
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    protected void onServicePackageUpdatingLocked(int userId) {
        ContentCapturePerUserService service = getServiceForUserLocked(userId);
        if (service != null) {
            service.onPackageUpdatingLocked();
        }
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    protected void onServicePackageUpdatedLocked(int userId) {
        ContentCapturePerUserService service = getServiceForUserLocked(userId);
        if (service != null) {
            service.onPackageUpdatedLocked();
        }
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    /* JADX INFO: renamed from: onServiceNameChanged */
    protected void lambda$new$0$AbstractMasterSystemService(int userId, String serviceName, boolean isTemporary) {
        this.mGlobalContentCaptureOptions.setServiceInfo(userId, serviceName, isTemporary);
        super.lambda$new$0$AbstractMasterSystemService(userId, serviceName, isTemporary);
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    protected void enforceCallingPermissionForManagement() {
        getContext().enforceCallingPermission("android.permission.MANAGE_CONTENT_CAPTURE", TAG);
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    protected int getMaximumTemporaryServiceDurationMs() {
        return MAX_TEMP_SERVICE_DURATION_MS;
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    protected void registerForExtraSettingsChanges(ContentResolver resolver, ContentObserver observer) {
        resolver.registerContentObserver(Settings.Secure.getUriFor("content_capture_enabled"), false, observer, -1);
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    protected void onSettingsChanged(int userId, String property) {
        if (((property.hashCode() == -322385022 && property.equals("content_capture_enabled")) ? (byte) 0 : (byte) -1) == 0) {
            setContentCaptureFeatureEnabledBySettingsForUser(userId, isEnabledBySettings(userId));
            return;
        }
        Slog.w(TAG, "Unexpected property (" + property + "); updating cache instead");
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    protected boolean isDisabledLocked(int userId) {
        return this.mDisabledByDeviceConfig || isDisabledBySettingsLocked(userId) || super.isDisabledLocked(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDisabledBySettingsLocked(int userId) {
        SparseBooleanArray sparseBooleanArray = this.mDisabledBySettings;
        return sparseBooleanArray != null && sparseBooleanArray.get(userId);
    }

    private boolean isEnabledBySettings(int userId) {
        boolean enabled = Settings.Secure.getIntForUser(getContext().getContentResolver(), "content_capture_enabled", 1, userId) == 1;
        return enabled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onDeviceConfigChange, reason: merged with bridge method [inline-methods] */
    public void lambda$new$0$ContentCaptureManagerService(DeviceConfig.Properties properties) {
        for (String key : properties.getKeyset()) {
            switch (key) {
                case "service_explicitly_enabled":
                    setDisabledByDeviceConfig(properties.getString(key, (String) null));
                    return;
                case "logging_level":
                    setLoggingLevelFromDeviceConfig();
                    return;
                case "max_buffer_size":
                case "idle_flush_frequency":
                case "log_history_size":
                case "text_change_flush_frequency":
                case "idle_unbind_timeout":
                    setFineTuneParamsFromDeviceConfig();
                    return;
                default:
                    Slog.i(TAG, "Ignoring change on " + key);
                    break;
            }
        }
    }

    private void setFineTuneParamsFromDeviceConfig() {
        synchronized (this.mLock) {
            this.mDevCfgMaxBufferSize = DeviceConfig.getInt("content_capture", "max_buffer_size", 500);
            this.mDevCfgIdleFlushingFrequencyMs = DeviceConfig.getInt("content_capture", "idle_flush_frequency", ActivityTaskManagerService.KEY_DISPATCHING_TIMEOUT_MS);
            this.mDevCfgTextChangeFlushingFrequencyMs = DeviceConfig.getInt("content_capture", "text_change_flush_frequency", 1000);
            this.mDevCfgLogHistorySize = DeviceConfig.getInt("content_capture", "log_history_size", 20);
            this.mDevCfgIdleUnbindTimeoutMs = DeviceConfig.getInt("content_capture", "idle_unbind_timeout", 0);
            if (this.verbose) {
                Slog.v(TAG, "setFineTuneParamsFromDeviceConfig(): bufferSize=" + this.mDevCfgMaxBufferSize + ", idleFlush=" + this.mDevCfgIdleFlushingFrequencyMs + ", textFluxh=" + this.mDevCfgTextChangeFlushingFrequencyMs + ", logHistory=" + this.mDevCfgLogHistorySize + ", idleUnbindTimeoutMs=" + this.mDevCfgIdleUnbindTimeoutMs);
            }
        }
    }

    private void setLoggingLevelFromDeviceConfig() {
        int i = DeviceConfig.getInt("content_capture", "logging_level", ContentCaptureHelper.getDefaultLoggingLevel());
        this.mDevCfgLoggingLevel = i;
        ContentCaptureHelper.setLoggingLevel(i);
        this.verbose = ContentCaptureHelper.sVerbose;
        this.debug = ContentCaptureHelper.sDebug;
        if (this.verbose) {
            Slog.v(TAG, "setLoggingLevelFromDeviceConfig(): level=" + this.mDevCfgLoggingLevel + ", debug=" + this.debug + ", verbose=" + this.verbose);
        }
    }

    private void setDeviceConfigProperties() {
        setLoggingLevelFromDeviceConfig();
        setFineTuneParamsFromDeviceConfig();
        String enabled = DeviceConfig.getProperty("content_capture", "service_explicitly_enabled");
        setDisabledByDeviceConfig(enabled);
    }

    private void setDisabledByDeviceConfig(String explicitlyEnabled) {
        boolean newDisabledValue;
        if (this.verbose) {
            Slog.v(TAG, "setDisabledByDeviceConfig(): explicitlyEnabled=" + explicitlyEnabled);
        }
        List<UserInfo> users = getSupportedUsers();
        if (explicitlyEnabled != null && explicitlyEnabled.equalsIgnoreCase("false")) {
            newDisabledValue = true;
        } else {
            newDisabledValue = false;
        }
        synchronized (this.mLock) {
            if (this.mDisabledByDeviceConfig == newDisabledValue) {
                if (this.verbose) {
                    Slog.v(TAG, "setDisabledByDeviceConfig(): already " + newDisabledValue);
                }
                return;
            }
            this.mDisabledByDeviceConfig = newDisabledValue;
            Slog.i(TAG, "setDisabledByDeviceConfig(): set to " + this.mDisabledByDeviceConfig);
            for (int i = 0; i < users.size(); i++) {
                int userId = users.get(i).id;
                boolean disabled = this.mDisabledByDeviceConfig || isDisabledBySettingsLocked(userId);
                String str = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("setDisabledByDeviceConfig(): updating service for user ");
                sb.append(userId);
                sb.append(" to ");
                sb.append(disabled ? "'disabled'" : "'enabled'");
                Slog.i(str, sb.toString());
                updateCachedServiceLocked(userId, disabled);
            }
        }
    }

    private void setContentCaptureFeatureEnabledBySettingsForUser(int userId, boolean enabled) {
        synchronized (this.mLock) {
            if (this.mDisabledBySettings == null) {
                this.mDisabledBySettings = new SparseBooleanArray();
            }
            boolean disabled = true;
            boolean alreadyEnabled = !this.mDisabledBySettings.get(userId);
            if (!(enabled ^ alreadyEnabled)) {
                if (this.debug) {
                    Slog.d(TAG, "setContentCaptureFeatureEnabledForUser(): already " + enabled);
                }
                return;
            }
            if (enabled) {
                Slog.i(TAG, "setContentCaptureFeatureEnabled(): enabling service for user " + userId);
                this.mDisabledBySettings.delete(userId);
            } else {
                Slog.i(TAG, "setContentCaptureFeatureEnabled(): disabling service for user " + userId);
                this.mDisabledBySettings.put(userId, true);
            }
            if (enabled && !this.mDisabledByDeviceConfig) {
                disabled = false;
            }
            updateCachedServiceLocked(userId, disabled);
        }
    }

    void destroySessions(int userId, IResultReceiver receiver) {
        Slog.i(TAG, "destroySessions() for userId " + userId);
        enforceCallingPermissionForManagement();
        synchronized (this.mLock) {
            try {
                if (userId != -1) {
                    ContentCapturePerUserService service = peekServiceForUserLocked(userId);
                    if (service != null) {
                        service.destroySessionsLocked();
                    }
                } else {
                    visitServicesLocked(new AbstractMasterSystemService.Visitor() { // from class: com.android.server.contentcapture.-$$Lambda$ContentCaptureManagerService$jCIcV2sgwD7QUkN-c6yfPd58T_U
                        @Override // com.android.server.infra.AbstractMasterSystemService.Visitor
                        public final void visit(Object obj) {
                            ((ContentCapturePerUserService) obj).destroySessionsLocked();
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        try {
            receiver.send(0, new Bundle());
        } catch (RemoteException e) {
        }
    }

    void listSessions(int userId, IResultReceiver receiver) {
        Slog.i(TAG, "listSessions() for userId " + userId);
        enforceCallingPermissionForManagement();
        Bundle resultData = new Bundle();
        final ArrayList<String> sessions = new ArrayList<>();
        synchronized (this.mLock) {
            try {
                if (userId != -1) {
                    ContentCapturePerUserService service = peekServiceForUserLocked(userId);
                    if (service != null) {
                        service.listSessionsLocked(sessions);
                    }
                } else {
                    visitServicesLocked(new AbstractMasterSystemService.Visitor() { // from class: com.android.server.contentcapture.-$$Lambda$ContentCaptureManagerService$17qcaUpUsTMt5exVwDnmTmyrpJw
                        @Override // com.android.server.infra.AbstractMasterSystemService.Visitor
                        public final void visit(Object obj) {
                            ((ContentCapturePerUserService) obj).listSessionsLocked(sessions);
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        resultData.putStringArrayList(RECEIVER_BUNDLE_EXTRA_SESSIONS, sessions);
        try {
            receiver.send(0, resultData);
        } catch (RemoteException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ActivityManagerInternal getAmInternal() {
        synchronized (this.mLock) {
            if (this.mAm == null) {
                this.mAm = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
            }
        }
        return this.mAm;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void assertCalledByServiceLocked(String methodName) {
        if (!isCalledByServiceLocked(methodName)) {
            throw new SecurityException("caller is not user's ContentCapture service");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCalledByServiceLocked(String methodName) {
        int userId = UserHandle.getCallingUserId();
        int callingUid = Binder.getCallingUid();
        String serviceName = this.mServiceNameResolver.getServiceName(userId);
        if (serviceName == null) {
            Slog.e(TAG, methodName + ": called by UID " + callingUid + ", but there's no service set for user " + userId);
            return false;
        }
        ComponentName serviceComponent = ComponentName.unflattenFromString(serviceName);
        if (serviceComponent == null) {
            Slog.w(TAG, methodName + ": invalid service name: " + serviceName);
            return false;
        }
        String servicePackageName = serviceComponent.getPackageName();
        PackageManager pm = getContext().getPackageManager();
        try {
            int serviceUid = pm.getPackageUidAsUser(servicePackageName, UserHandle.getCallingUserId());
            if (callingUid != serviceUid) {
                Slog.e(TAG, methodName + ": called by UID " + callingUid + ", but service UID is " + serviceUid);
                return false;
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            Slog.w(TAG, methodName + ": could not verify UID for " + serviceName);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean throwsSecurityException(IResultReceiver result, Runnable runable) {
        try {
            runable.run();
            return false;
        } catch (SecurityException e) {
            try {
                result.send(-1, SyncResultReceiver.bundleFor(e.getMessage()));
                return true;
            } catch (RemoteException e2) {
                Slog.w(TAG, "Unable to send security exception (" + e + "): ", e2);
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDefaultServiceLocked(int userId) {
        String defaultServiceName = this.mServiceNameResolver.getDefaultServiceName(userId);
        if (defaultServiceName == null) {
            return false;
        }
        String currentServiceName = this.mServiceNameResolver.getServiceName(userId);
        return defaultServiceName.equals(currentServiceName);
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    protected void dumpLocked(String prefix, PrintWriter pw) {
        super.dumpLocked(prefix, pw);
        String prefix2 = prefix + "  ";
        pw.print(prefix);
        pw.print("Users disabled by Settings: ");
        pw.println(this.mDisabledBySettings);
        pw.print(prefix);
        pw.println("DeviceConfig Settings: ");
        pw.print(prefix2);
        pw.print("disabled: ");
        pw.println(this.mDisabledByDeviceConfig);
        pw.print(prefix2);
        pw.print("loggingLevel: ");
        pw.println(this.mDevCfgLoggingLevel);
        pw.print(prefix2);
        pw.print("maxBufferSize: ");
        pw.println(this.mDevCfgMaxBufferSize);
        pw.print(prefix2);
        pw.print("idleFlushingFrequencyMs: ");
        pw.println(this.mDevCfgIdleFlushingFrequencyMs);
        pw.print(prefix2);
        pw.print("textChangeFlushingFrequencyMs: ");
        pw.println(this.mDevCfgTextChangeFlushingFrequencyMs);
        pw.print(prefix2);
        pw.print("logHistorySize: ");
        pw.println(this.mDevCfgLogHistorySize);
        pw.print(prefix2);
        pw.print("idleUnbindTimeoutMs: ");
        pw.println(this.mDevCfgIdleUnbindTimeoutMs);
        pw.print(prefix);
        pw.println("Global Options:");
        this.mGlobalContentCaptureOptions.dump(prefix2, pw);
    }

    final class ContentCaptureManagerServiceStub extends IContentCaptureManager.Stub {
        ContentCaptureManagerServiceStub() {
        }

        public void startSession(IBinder activityToken, ComponentName componentName, int sessionId, int flags, IResultReceiver result) {
            Preconditions.checkNotNull(activityToken);
            Preconditions.checkNotNull(Integer.valueOf(sessionId));
            int userId = UserHandle.getCallingUserId();
            ActivityPresentationInfo activityPresentationInfo = ContentCaptureManagerService.this.getAmInternal().getActivityPresentationInfo(activityToken);
            synchronized (ContentCaptureManagerService.this.mLock) {
                ContentCapturePerUserService service = (ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(userId);
                if (!ContentCaptureManagerService.this.isDefaultServiceLocked(userId) && !ContentCaptureManagerService.this.isCalledByServiceLocked("startSession()")) {
                    ContentCaptureService.setClientState(result, 4, (IBinder) null);
                } else {
                    service.startSessionLocked(activityToken, activityPresentationInfo, sessionId, Binder.getCallingUid(), flags, result);
                }
            }
        }

        public void finishSession(int sessionId) {
            Preconditions.checkNotNull(Integer.valueOf(sessionId));
            int userId = UserHandle.getCallingUserId();
            synchronized (ContentCaptureManagerService.this.mLock) {
                ContentCapturePerUserService service = (ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(userId);
                service.finishSessionLocked(sessionId);
            }
        }

        public void getServiceComponentName(IResultReceiver result) {
            ComponentName connectedServiceComponentName;
            int userId = UserHandle.getCallingUserId();
            synchronized (ContentCaptureManagerService.this.mLock) {
                ContentCapturePerUserService service = (ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(userId);
                connectedServiceComponentName = service.getServiceComponentName();
            }
            try {
                result.send(0, SyncResultReceiver.bundleFor(connectedServiceComponentName));
            } catch (RemoteException e) {
                Slog.w(ContentCaptureManagerService.TAG, "Unable to send service component name: " + e);
            }
        }

        public void removeData(DataRemovalRequest request) {
            Preconditions.checkNotNull(request);
            ContentCaptureManagerService.this.assertCalledByPackageOwner(request.getPackageName());
            int userId = UserHandle.getCallingUserId();
            synchronized (ContentCaptureManagerService.this.mLock) {
                ContentCapturePerUserService service = (ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(userId);
                service.removeDataLocked(request);
            }
        }

        public void shareData(DataShareRequest request, IDataShareWriteAdapter clientAdapter) {
            Preconditions.checkNotNull(request);
            Preconditions.checkNotNull(clientAdapter);
            ContentCaptureManagerService.this.assertCalledByPackageOwner(request.getPackageName());
            int userId = UserHandle.getCallingUserId();
            synchronized (ContentCaptureManagerService.this.mLock) {
                ContentCapturePerUserService service = (ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(userId);
                if (ContentCaptureManagerService.this.mPackagesWithShareRequests.size() < 10 && !ContentCaptureManagerService.this.mPackagesWithShareRequests.contains(request.getPackageName())) {
                    service.onDataSharedLocked(request, new DataShareCallbackDelegate(request, clientAdapter, ContentCaptureManagerService.this));
                    return;
                }
                try {
                    String serviceName = ContentCaptureManagerService.this.mServiceNameResolver.getServiceName(userId);
                    ContentCaptureMetricsLogger.writeServiceEvent(14, serviceName, request.getPackageName());
                    clientAdapter.error(2);
                } catch (RemoteException e) {
                    Slog.e(ContentCaptureManagerService.TAG, "Failed to send error message to client");
                }
            }
        }

        public void isContentCaptureFeatureEnabled(IResultReceiver result) {
            synchronized (ContentCaptureManagerService.this.mLock) {
                if (ContentCaptureManagerService.this.throwsSecurityException(result, new Runnable() { // from class: com.android.server.contentcapture.-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$vyDTyUUAt356my5WVtp7QPYv5gY
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$isContentCaptureFeatureEnabled$0$ContentCaptureManagerService$ContentCaptureManagerServiceStub();
                    }
                })) {
                    return;
                }
                int userId = UserHandle.getCallingUserId();
                int userId2 = (ContentCaptureManagerService.this.mDisabledByDeviceConfig || ContentCaptureManagerService.this.isDisabledBySettingsLocked(userId)) ? 0 : 1;
                try {
                    result.send(userId2 == 0 ? 2 : 1, (Bundle) null);
                } catch (RemoteException e) {
                    Slog.w(ContentCaptureManagerService.TAG, "Unable to send isContentCaptureFeatureEnabled(): " + e);
                }
            }
        }

        public /* synthetic */ void lambda$isContentCaptureFeatureEnabled$0$ContentCaptureManagerService$ContentCaptureManagerServiceStub() {
            ContentCaptureManagerService.this.assertCalledByServiceLocked("isContentCaptureFeatureEnabled()");
        }

        public void getServiceSettingsActivity(IResultReceiver result) {
            if (ContentCaptureManagerService.this.throwsSecurityException(result, new Runnable() { // from class: com.android.server.contentcapture.-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$6vI15KqJwo_ruaAABrGMvkwVRt4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$getServiceSettingsActivity$1$ContentCaptureManagerService$ContentCaptureManagerServiceStub();
                }
            })) {
                return;
            }
            int userId = UserHandle.getCallingUserId();
            synchronized (ContentCaptureManagerService.this.mLock) {
                ContentCapturePerUserService service = (ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(userId);
                if (service == null) {
                    return;
                }
                ComponentName componentName = service.getServiceSettingsActivityLocked();
                try {
                    result.send(0, SyncResultReceiver.bundleFor(componentName));
                } catch (RemoteException e) {
                    Slog.w(ContentCaptureManagerService.TAG, "Unable to send getServiceSettingsIntent(): " + e);
                }
            }
        }

        public /* synthetic */ void lambda$getServiceSettingsActivity$1$ContentCaptureManagerService$ContentCaptureManagerServiceStub() {
            ContentCaptureManagerService.this.enforceCallingPermissionForManagement();
        }

        public void getContentCaptureConditions(final String packageName, IResultReceiver result) {
            ArrayList<ContentCaptureCondition> conditions;
            if (ContentCaptureManagerService.this.throwsSecurityException(result, new Runnable() { // from class: com.android.server.contentcapture.-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$Qe-DhsP4OR9GyoofNgVlcOk-1so
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$getContentCaptureConditions$2$ContentCaptureManagerService$ContentCaptureManagerServiceStub(packageName);
                }
            })) {
                return;
            }
            int userId = UserHandle.getCallingUserId();
            synchronized (ContentCaptureManagerService.this.mLock) {
                ContentCapturePerUserService service = (ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(userId);
                conditions = service == null ? null : ContentCaptureHelper.toList(service.getContentCaptureConditionsLocked(packageName));
            }
            try {
                result.send(0, SyncResultReceiver.bundleFor(conditions));
            } catch (RemoteException e) {
                Slog.w(ContentCaptureManagerService.TAG, "Unable to send getServiceComponentName(): " + e);
            }
        }

        public /* synthetic */ void lambda$getContentCaptureConditions$2$ContentCaptureManagerService$ContentCaptureManagerServiceStub(String packageName) {
            ContentCaptureManagerService.this.assertCalledByPackageOwner(packageName);
        }

        public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            if (DumpUtils.checkDumpPermission(ContentCaptureManagerService.this.getContext(), ContentCaptureManagerService.TAG, pw)) {
                boolean showHistory = true;
                if (args != null) {
                    for (String arg : args) {
                        byte b = -1;
                        int iHashCode = arg.hashCode();
                        if (iHashCode != 1098711592) {
                            if (iHashCode == 1333069025 && arg.equals("--help")) {
                                b = 1;
                            }
                        } else if (arg.equals("--no-history")) {
                            b = 0;
                        }
                        if (b == 0) {
                            showHistory = false;
                        } else if (b != 1) {
                            Slog.w(ContentCaptureManagerService.TAG, "Ignoring invalid dump arg: " + arg);
                        } else {
                            pw.println("Usage: dumpsys content_capture [--no-history]");
                            return;
                        }
                    }
                }
                synchronized (ContentCaptureManagerService.this.mLock) {
                    ContentCaptureManagerService.this.dumpLocked("", pw);
                }
                pw.print("Requests history: ");
                if (ContentCaptureManagerService.this.mRequestsHistory == null) {
                    pw.println("disabled by device config");
                } else {
                    if (showHistory) {
                        pw.println();
                        ContentCaptureManagerService.this.mRequestsHistory.reverseDump(fd, pw, args);
                        pw.println();
                        return;
                    }
                    pw.println();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) throws RemoteException {
            new ContentCaptureManagerServiceShellCommand(ContentCaptureManagerService.this).exec(this, in, out, err, args, callback, resultReceiver);
        }
    }

    private final class LocalService extends ContentCaptureManagerInternal {
        private LocalService() {
        }

        @Override // com.android.server.contentcapture.ContentCaptureManagerInternal
        public boolean isContentCaptureServiceForUser(int uid, int userId) {
            synchronized (ContentCaptureManagerService.this.mLock) {
                ContentCapturePerUserService service = (ContentCapturePerUserService) ContentCaptureManagerService.this.peekServiceForUserLocked(userId);
                if (service != null) {
                    return service.isContentCaptureServiceForUserLocked(uid);
                }
                return false;
            }
        }

        @Override // com.android.server.contentcapture.ContentCaptureManagerInternal
        public boolean sendActivityAssistData(int userId, IBinder activityToken, Bundle data) {
            synchronized (ContentCaptureManagerService.this.mLock) {
                ContentCapturePerUserService service = (ContentCapturePerUserService) ContentCaptureManagerService.this.peekServiceForUserLocked(userId);
                if (service != null) {
                    return service.sendActivityAssistDataLocked(activityToken, data);
                }
                return false;
            }
        }

        @Override // com.android.server.contentcapture.ContentCaptureManagerInternal
        public ContentCaptureOptions getOptionsForPackage(int userId, String packageName) {
            return ContentCaptureManagerService.this.mGlobalContentCaptureOptions.getOptions(userId, packageName);
        }

        @Override // com.android.server.contentcapture.ContentCaptureManagerInternal
        public void notifyActivityEvent(int userId, ComponentName activityComponent, int eventType) {
            synchronized (ContentCaptureManagerService.this.mLock) {
                ContentCapturePerUserService service = (ContentCapturePerUserService) ContentCaptureManagerService.this.peekServiceForUserLocked(userId);
                if (service != null) {
                    service.onActivityEventLocked(activityComponent, eventType);
                }
            }
        }
    }

    final class GlobalContentCaptureOptions extends GlobalWhitelistState {
        private final SparseArray<String> mServicePackages = new SparseArray<>();
        private final SparseBooleanArray mTemporaryServices = new SparseBooleanArray();

        GlobalContentCaptureOptions() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setServiceInfo(int userId, String serviceName, boolean isTemporary) {
            synchronized (this.mGlobalWhitelistStateLock) {
                try {
                    if (isTemporary) {
                        this.mTemporaryServices.put(userId, true);
                    } else {
                        this.mTemporaryServices.delete(userId);
                    }
                    if (serviceName != null) {
                        ComponentName componentName = ComponentName.unflattenFromString(serviceName);
                        if (componentName == null) {
                            Slog.w(ContentCaptureManagerService.TAG, "setServiceInfo(): invalid name: " + serviceName);
                            this.mServicePackages.remove(userId);
                        } else {
                            this.mServicePackages.put(userId, componentName.getPackageName());
                        }
                    } else {
                        this.mServicePackages.remove(userId);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public ContentCaptureOptions getOptions(int userId, String packageName) {
            ArraySet<ComponentName> whitelistedComponents = null;
            synchronized (this.mGlobalWhitelistStateLock) {
                boolean packageWhitelisted = isWhitelisted(userId, packageName);
                if (!packageWhitelisted && (whitelistedComponents = getWhitelistedComponents(userId, packageName)) == null && packageName.equals(this.mServicePackages.get(userId))) {
                    if (ContentCaptureManagerService.this.verbose) {
                        Slog.v(ContentCaptureManagerService.TAG, "getOptionsForPackage() lite for " + packageName);
                    }
                    return new ContentCaptureOptions(ContentCaptureManagerService.this.mDevCfgLoggingLevel);
                }
                if (Build.IS_USER && ContentCaptureManagerService.this.mServiceNameResolver.isTemporary(userId) && !packageName.equals(this.mServicePackages.get(userId))) {
                    Slog.w(ContentCaptureManagerService.TAG, "Ignoring package " + packageName + " while using temporary service " + this.mServicePackages.get(userId));
                    return null;
                }
                if (!packageWhitelisted && whitelistedComponents == null) {
                    if (ContentCaptureManagerService.this.verbose) {
                        Slog.v(ContentCaptureManagerService.TAG, "getOptionsForPackage(" + packageName + "): not whitelisted");
                    }
                    return null;
                }
                ContentCaptureOptions options = new ContentCaptureOptions(ContentCaptureManagerService.this.mDevCfgLoggingLevel, ContentCaptureManagerService.this.mDevCfgMaxBufferSize, ContentCaptureManagerService.this.mDevCfgIdleFlushingFrequencyMs, ContentCaptureManagerService.this.mDevCfgTextChangeFlushingFrequencyMs, ContentCaptureManagerService.this.mDevCfgLogHistorySize, whitelistedComponents);
                if (ContentCaptureManagerService.this.verbose) {
                    Slog.v(ContentCaptureManagerService.TAG, "getOptionsForPackage(" + packageName + "): " + options);
                }
                return options;
            }
        }

        public void dump(String prefix, PrintWriter pw) {
            super.dump(prefix, pw);
            synchronized (this.mGlobalWhitelistStateLock) {
                if (this.mServicePackages.size() > 0) {
                    pw.print(prefix);
                    pw.print("Service packages: ");
                    pw.println(this.mServicePackages);
                }
                if (this.mTemporaryServices.size() > 0) {
                    pw.print(prefix);
                    pw.print("Temp services: ");
                    pw.println(this.mTemporaryServices);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class DataShareCallbackDelegate extends IDataShareCallback.Stub {
        private final IDataShareWriteAdapter mClientAdapter;
        private final DataShareRequest mDataShareRequest;
        private final AtomicBoolean mLoggedWriteFinish = new AtomicBoolean(false);
        private final ContentCaptureManagerService mParentService;

        DataShareCallbackDelegate(DataShareRequest dataShareRequest, IDataShareWriteAdapter clientAdapter, ContentCaptureManagerService parentService) {
            this.mDataShareRequest = dataShareRequest;
            this.mClientAdapter = clientAdapter;
            this.mParentService = parentService;
        }

        public void accept(final IDataShareReadAdapter serviceAdapter) {
            Slog.i(ContentCaptureManagerService.TAG, "Data share request accepted by Content Capture service");
            logServiceEvent(7);
            Pair<ParcelFileDescriptor, ParcelFileDescriptor> clientPipe = createPipe();
            if (clientPipe == null) {
                logServiceEvent(12);
                sendErrorSignal(this.mClientAdapter, serviceAdapter, 1);
                return;
            }
            final ParcelFileDescriptor sourceIn = (ParcelFileDescriptor) clientPipe.second;
            final ParcelFileDescriptor sinkIn = (ParcelFileDescriptor) clientPipe.first;
            Pair<ParcelFileDescriptor, ParcelFileDescriptor> servicePipe = createPipe();
            if (servicePipe == null) {
                logServiceEvent(13);
                bestEffortCloseFileDescriptors(sourceIn, sinkIn);
                sendErrorSignal(this.mClientAdapter, serviceAdapter, 1);
                return;
            }
            final ParcelFileDescriptor sourceOut = (ParcelFileDescriptor) servicePipe.second;
            final ParcelFileDescriptor sinkOut = (ParcelFileDescriptor) servicePipe.first;
            this.mParentService.mPackagesWithShareRequests.add(this.mDataShareRequest.getPackageName());
            try {
                this.mClientAdapter.write(sourceIn);
                try {
                    serviceAdapter.start(sinkOut);
                    bestEffortCloseFileDescriptors(sourceIn, sinkOut);
                    this.mParentService.mDataShareExecutor.execute(new Runnable() { // from class: com.android.server.contentcapture.-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$RfORIok5BEnBfxE_2EzvPUqnoY8
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$accept$0$ContentCaptureManagerService$DataShareCallbackDelegate(sinkIn, sourceOut, serviceAdapter);
                        }
                    });
                    this.mParentService.mHandler.postDelayed(new Runnable() { // from class: com.android.server.contentcapture.-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$x2Qz6JROlFUZJrFhBfDpz3lEo0Q
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$accept$1$ContentCaptureManagerService$DataShareCallbackDelegate(sourceIn, sinkIn, sourceOut, sinkOut, serviceAdapter);
                        }
                    }, BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS);
                } catch (RemoteException e) {
                    Slog.e(ContentCaptureManagerService.TAG, "Failed to call start() the service operation", e);
                    sendErrorSignal(this.mClientAdapter, serviceAdapter, 1);
                    logServiceEvent(13);
                }
            } catch (RemoteException e2) {
                Slog.e(ContentCaptureManagerService.TAG, "Failed to call write() the client operation", e2);
                sendErrorSignal(this.mClientAdapter, serviceAdapter, 1);
                logServiceEvent(12);
            }
        }

        public /* synthetic */ void lambda$accept$0$ContentCaptureManagerService$DataShareCallbackDelegate(ParcelFileDescriptor sinkIn, ParcelFileDescriptor sourceOut, IDataShareReadAdapter serviceAdapter) {
            boolean receivedData = false;
            try {
                try {
                    try {
                        InputStream fis = new ParcelFileDescriptor.AutoCloseInputStream(sinkIn);
                        try {
                            OutputStream fos = new ParcelFileDescriptor.AutoCloseOutputStream(sourceOut);
                            try {
                                byte[] byteBuffer = new byte[1024];
                                while (true) {
                                    int readBytes = fis.read(byteBuffer);
                                    if (readBytes == -1) {
                                        break;
                                    }
                                    fos.write(byteBuffer, 0, readBytes);
                                    receivedData = true;
                                    try {
                                        fis.close();
                                    } catch (Throwable th) {
                                        th.addSuppressed(th);
                                    }
                                    throw th;
                                }
                                fos.close();
                                fis.close();
                                synchronized (this.mParentService.mLock) {
                                    this.mParentService.mPackagesWithShareRequests.remove(this.mDataShareRequest.getPackageName());
                                }
                                if (receivedData) {
                                    if (!this.mLoggedWriteFinish.get()) {
                                        logServiceEvent(9);
                                        this.mLoggedWriteFinish.set(true);
                                    }
                                    try {
                                        this.mClientAdapter.finish();
                                    } catch (RemoteException e) {
                                        Slog.e(ContentCaptureManagerService.TAG, "Failed to call finish() the client operation", e);
                                    }
                                    serviceAdapter.finish();
                                    return;
                                }
                                logServiceEvent(11);
                                sendErrorSignal(this.mClientAdapter, serviceAdapter, 1);
                            } catch (Throwable th2) {
                                try {
                                    fos.close();
                                } catch (Throwable th3) {
                                    th2.addSuppressed(th3);
                                }
                                throw th2;
                            }
                        } catch (Throwable th4) {
                            fis.close();
                            throw th4;
                        }
                    } catch (RemoteException e2) {
                        Slog.e(ContentCaptureManagerService.TAG, "Failed to call finish() the service operation", e2);
                    }
                } catch (IOException e3) {
                    Slog.e(ContentCaptureManagerService.TAG, "Failed to pipe client and service streams", e3);
                    logServiceEvent(10);
                    sendErrorSignal(this.mClientAdapter, serviceAdapter, 1);
                    synchronized (this.mParentService.mLock) {
                        this.mParentService.mPackagesWithShareRequests.remove(this.mDataShareRequest.getPackageName());
                        if (0 != 0) {
                            if (!this.mLoggedWriteFinish.get()) {
                                logServiceEvent(9);
                                this.mLoggedWriteFinish.set(true);
                            }
                            try {
                                this.mClientAdapter.finish();
                            } catch (RemoteException e4) {
                                Slog.e(ContentCaptureManagerService.TAG, "Failed to call finish() the client operation", e4);
                            }
                            serviceAdapter.finish();
                        }
                    }
                }
            } catch (Throwable th5) {
                synchronized (this.mParentService.mLock) {
                    this.mParentService.mPackagesWithShareRequests.remove(this.mDataShareRequest.getPackageName());
                    if (0 != 0) {
                        if (!this.mLoggedWriteFinish.get()) {
                            logServiceEvent(9);
                            this.mLoggedWriteFinish.set(true);
                        }
                        try {
                            this.mClientAdapter.finish();
                        } catch (RemoteException e5) {
                            Slog.e(ContentCaptureManagerService.TAG, "Failed to call finish() the client operation", e5);
                        }
                        try {
                            serviceAdapter.finish();
                        } catch (RemoteException e6) {
                            Slog.e(ContentCaptureManagerService.TAG, "Failed to call finish() the service operation", e6);
                        }
                    } else {
                        logServiceEvent(11);
                        sendErrorSignal(this.mClientAdapter, serviceAdapter, 1);
                    }
                    throw th5;
                }
            }
        }

        public void reject() {
            Slog.i(ContentCaptureManagerService.TAG, "Data share request rejected by Content Capture service");
            logServiceEvent(8);
            try {
                this.mClientAdapter.rejected();
            } catch (RemoteException e) {
                Slog.w(ContentCaptureManagerService.TAG, "Failed to call rejected() the client operation", e);
                try {
                    this.mClientAdapter.error(1);
                } catch (RemoteException e2) {
                    Slog.w(ContentCaptureManagerService.TAG, "Failed to call error() the client operation", e2);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: enforceDataSharingTtl, reason: merged with bridge method [inline-methods] */
        public void lambda$accept$1$ContentCaptureManagerService$DataShareCallbackDelegate(ParcelFileDescriptor sourceIn, ParcelFileDescriptor sinkIn, ParcelFileDescriptor sourceOut, ParcelFileDescriptor sinkOut, IDataShareReadAdapter serviceAdapter) {
            synchronized (this.mParentService.mLock) {
                this.mParentService.mPackagesWithShareRequests.remove(this.mDataShareRequest.getPackageName());
                boolean finishedSuccessfully = (sinkIn.getFileDescriptor().valid() || sourceOut.getFileDescriptor().valid()) ? false : true;
                if (finishedSuccessfully) {
                    if (!this.mLoggedWriteFinish.get()) {
                        logServiceEvent(9);
                        this.mLoggedWriteFinish.set(true);
                    }
                    Slog.i(ContentCaptureManagerService.TAG, "Content capture data sharing session terminated successfully for package '" + this.mDataShareRequest.getPackageName() + "'");
                } else {
                    logServiceEvent(15);
                    Slog.i(ContentCaptureManagerService.TAG, "Reached the timeout of Content Capture data sharing session for package '" + this.mDataShareRequest.getPackageName() + "', terminating the pipe.");
                }
                bestEffortCloseFileDescriptors(sourceIn, sinkIn, sourceOut, sinkOut);
                if (!finishedSuccessfully) {
                    sendErrorSignal(this.mClientAdapter, serviceAdapter, 3);
                }
            }
        }

        private Pair<ParcelFileDescriptor, ParcelFileDescriptor> createPipe() {
            try {
                ParcelFileDescriptor[] fileDescriptors = ParcelFileDescriptor.createPipe();
                if (fileDescriptors.length != 2) {
                    Slog.e(ContentCaptureManagerService.TAG, "Failed to create a content capture data-sharing pipe, unexpected number of file descriptors");
                    return null;
                }
                if (!fileDescriptors[0].getFileDescriptor().valid() || !fileDescriptors[1].getFileDescriptor().valid()) {
                    Slog.e(ContentCaptureManagerService.TAG, "Failed to create a content capture data-sharing pipe, didn't receive a pair of valid file descriptors.");
                    return null;
                }
                return Pair.create(fileDescriptors[0], fileDescriptors[1]);
            } catch (IOException e) {
                Slog.e(ContentCaptureManagerService.TAG, "Failed to create a content capture data-sharing pipe", e);
                return null;
            }
        }

        private void bestEffortCloseFileDescriptor(ParcelFileDescriptor fd) {
            try {
                fd.close();
            } catch (IOException e) {
                Slog.e(ContentCaptureManagerService.TAG, "Failed to close a file descriptor", e);
            }
        }

        private void bestEffortCloseFileDescriptors(ParcelFileDescriptor... fds) {
            for (ParcelFileDescriptor fd : fds) {
                bestEffortCloseFileDescriptor(fd);
            }
        }

        private static void sendErrorSignal(IDataShareWriteAdapter clientAdapter, IDataShareReadAdapter serviceAdapter, int errorCode) {
            try {
                clientAdapter.error(errorCode);
            } catch (RemoteException e) {
                Slog.e(ContentCaptureManagerService.TAG, "Failed to call error() the client operation", e);
            }
            try {
                serviceAdapter.error(errorCode);
            } catch (RemoteException e2) {
                Slog.e(ContentCaptureManagerService.TAG, "Failed to call error() the service operation", e2);
            }
        }

        private void logServiceEvent(int eventType) {
            int userId = UserHandle.getCallingUserId();
            String serviceName = this.mParentService.mServiceNameResolver.getServiceName(userId);
            ContentCaptureMetricsLogger.writeServiceEvent(eventType, serviceName, this.mDataShareRequest.getPackageName());
        }
    }
}

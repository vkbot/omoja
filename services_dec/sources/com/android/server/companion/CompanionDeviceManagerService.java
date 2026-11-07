package com.android.server.companion;

import android.app.PendingIntent;
import android.companion.Association;
import android.companion.AssociationRequest;
import android.companion.ICompanionDeviceDiscoveryService;
import android.companion.ICompanionDeviceManager;
import android.companion.IFindDeviceCallback;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.FeatureInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.NetworkPolicyManager;
import android.os.Binder;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.IDeviceIdleController;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.UserHandle;
import android.os.UserManagerInternal;
import android.provider.Settings;
import android.provider.SettingsStringUtil;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.ExceptionUtils;
import android.util.Log;
import android.util.Slog;
import android.util.Xml;
import com.android.internal.app.IAppOpsService;
import com.android.internal.content.PackageMonitor;
import com.android.internal.infra.AndroidFuture;
import com.android.internal.infra.PerUser;
import com.android.internal.infra.ServiceConnector;
import com.android.internal.notification.NotificationAccessConfirmationActivityContract;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.CollectionUtils;
import com.android.internal.util.FunctionalUtils;
import com.android.internal.util.Preconditions;
import com.android.internal.util.function.TriFunction;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.FgThread;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.wm.ActivityTaskManagerInternal;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class CompanionDeviceManagerService extends SystemService implements IBinder.DeathRecipient {
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "CompanionDeviceManagerService";
    private static final String PREF_FILE_NAME = "companion_device_preferences.xml";
    private static final String PREF_KEY_AUTO_REVOKE_GRANTS_DONE = "auto_revoke_grants_done";
    private static final ComponentName SERVICE_TO_BIND_TO = ComponentName.createRelative("com.android.companiondevicemanager", ".DeviceDiscoveryService");
    private static final String XML_ATTR_DEVICE = "device";
    private static final String XML_ATTR_PACKAGE = "package";
    private static final String XML_FILE_NAME = "companion_device_manager_associations.xml";
    private static final String XML_TAG_ASSOCIATION = "association";
    private static final String XML_TAG_ASSOCIATIONS = "associations";
    private IAppOpsService mAppOpsManager;
    private String mCallingPackage;
    private IFindDeviceCallback mFindDeviceCallback;
    private IDeviceIdleController mIdleController;
    private final CompanionDeviceManagerImpl mImpl;
    private final Object mLock;
    private AndroidFuture<Association> mOngoingDeviceDiscovery;
    private AssociationRequest mRequest;
    private PerUser<ServiceConnector<ICompanionDeviceDiscoveryService>> mServiceConnectors;
    private final ConcurrentMap<Integer, AtomicFile> mUidToStorage;

    public CompanionDeviceManagerService(Context context) {
        super(context);
        this.mUidToStorage = new ConcurrentHashMap();
        this.mLock = new Object();
        this.mImpl = new CompanionDeviceManagerImpl();
        this.mIdleController = IDeviceIdleController.Stub.asInterface(ServiceManager.getService("deviceidle"));
        this.mAppOpsManager = IAppOpsService.Stub.asInterface(ServiceManager.getService("appops"));
        final Intent serviceIntent = new Intent().setComponent(SERVICE_TO_BIND_TO);
        this.mServiceConnectors = new PerUser<ServiceConnector<ICompanionDeviceDiscoveryService>>() { // from class: com.android.server.companion.CompanionDeviceManagerService.1
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX INFO: renamed from: create, reason: merged with bridge method [inline-methods] */
            public ServiceConnector<ICompanionDeviceDiscoveryService> m29create(int userId) {
                return new ServiceConnector.Impl(CompanionDeviceManagerService.this.getContext(), serviceIntent, 0, userId, new Function() { // from class: com.android.server.companion.-$$Lambda$dmgYbfK3c1MAswkxujxbcRtjs9A
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ICompanionDeviceDiscoveryService.Stub.asInterface((IBinder) obj);
                    }
                });
            }
        };
        registerPackageMonitor();
    }

    /* JADX INFO: renamed from: com.android.server.companion.CompanionDeviceManagerService$2, reason: invalid class name */
    class AnonymousClass2 extends PackageMonitor {
        AnonymousClass2() {
        }

        public void onPackageRemoved(final String packageName, int uid) {
            CompanionDeviceManagerService.this.updateAssociations(new Function() { // from class: com.android.server.companion.-$$Lambda$CompanionDeviceManagerService$2$dm_CTD4HzQO9qRu6lX0jCG6NMCM
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CollectionUtils.filter((Set) obj, new Predicate() { // from class: com.android.server.companion.-$$Lambda$CompanionDeviceManagerService$2$-LNsQ_6iDwt_SHib_WgAf70VWCI
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj2) {
                            return CompanionDeviceManagerService.AnonymousClass2.lambda$onPackageRemoved$0(str, (Association) obj2);
                        }
                    });
                }
            }, getChangingUserId());
        }

        static /* synthetic */ boolean lambda$onPackageRemoved$0(String packageName, Association a) {
            return !Objects.equals(a.companionAppPackage, packageName);
        }

        public void onPackageModified(String packageName) {
            int userId = getChangingUserId();
            if (!ArrayUtils.isEmpty(CompanionDeviceManagerService.this.readAllAssociations(userId, packageName))) {
                CompanionDeviceManagerService.this.updateSpecialAccessPermissionForAssociatedPackage(packageName, userId);
            }
        }
    }

    private void registerPackageMonitor() {
        new AnonymousClass2().register(getContext(), FgThread.get().getLooper(), UserHandle.ALL, true);
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("companiondevice", this.mImpl);
    }

    @Override // com.android.server.SystemService
    public void onUnlockUser(int userHandle) {
        Set<Association> associations = readAllAssociations(userHandle);
        if (associations == null || associations.isEmpty()) {
            return;
        }
        Set<String> companionAppPackages = new HashSet<>();
        for (Association association : associations) {
            companionAppPackages.add(association.companionAppPackage);
        }
        ActivityTaskManagerInternal atmInternal = (ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class);
        if (atmInternal != null) {
            atmInternal.setCompanionAppPackages(userHandle, companionAppPackages);
        }
        BackgroundThread.getHandler().sendMessageDelayed(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.companion.-$$Lambda$WrLlS9vQWduMboBfcO05xQ9xJtA
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((CompanionDeviceManagerService) obj).maybeGrantAutoRevokeExemptions();
            }
        }, this), TimeUnit.MINUTES.toMillis(10L));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v2 */
    void maybeGrantAutoRevokeExemptions() {
        PackageManager pm = getContext().getPackageManager();
        int[] userIds = ((UserManagerInternal) LocalServices.getService(UserManagerInternal.class)).getUserIds();
        int length = userIds.length;
        ?? r5 = 0;
        int i = 0;
        while (i < length) {
            int userId = userIds[i];
            SharedPreferences sharedPreferences = getContext().getSharedPreferences(new File(Environment.getUserSystemDirectory(userId), PREF_FILE_NAME), (int) r5);
            if (!sharedPreferences.getBoolean(PREF_KEY_AUTO_REVOKE_GRANTS_DONE, r5)) {
                try {
                    Set<Association> associations = readAllAssociations(userId);
                    if (associations == null) {
                        sharedPreferences.edit().putBoolean(PREF_KEY_AUTO_REVOKE_GRANTS_DONE, true).apply();
                    } else {
                        for (Association a : associations) {
                            try {
                                int uid = pm.getPackageUidAsUser(a.companionAppPackage, userId);
                                exemptFromAutoRevoke(a.companionAppPackage, uid);
                            } catch (PackageManager.NameNotFoundException e) {
                                Log.w(LOG_TAG, "Unknown companion package: " + a.companionAppPackage, e);
                            }
                        }
                        sharedPreferences.edit().putBoolean(PREF_KEY_AUTO_REVOKE_GRANTS_DONE, true).apply();
                    }
                } catch (Throwable th) {
                    sharedPreferences.edit().putBoolean(PREF_KEY_AUTO_REVOKE_GRANTS_DONE, true).apply();
                    throw th;
                }
            }
            i++;
            r5 = 0;
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        Handler.getMain().post(new Runnable() { // from class: com.android.server.companion.-$$Lambda$CompanionDeviceManagerService$pG_kG2extKjHVEAFcCd4MLP2mkk
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.cleanup();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanup() {
        synchronized (this.mLock) {
            AndroidFuture<Association> ongoingDeviceDiscovery = this.mOngoingDeviceDiscovery;
            if (ongoingDeviceDiscovery != null && !ongoingDeviceDiscovery.isDone()) {
                ongoingDeviceDiscovery.cancel(true);
            }
            this.mFindDeviceCallback = unlinkToDeath(this.mFindDeviceCallback, this, 0);
            this.mRequest = null;
            this.mCallingPackage = null;
        }
    }

    private static <T extends IInterface> T unlinkToDeath(T iinterface, IBinder.DeathRecipient deathRecipient, int flags) {
        if (iinterface != null) {
            iinterface.asBinder().unlinkToDeath(deathRecipient, flags);
            return null;
        }
        return null;
    }

    class CompanionDeviceManagerImpl extends ICompanionDeviceManager.Stub {
        CompanionDeviceManagerImpl() {
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            try {
                return super.onTransact(code, data, reply, flags);
            } catch (Throwable e) {
                Slog.e(CompanionDeviceManagerService.LOG_TAG, "Error during IPC", e);
                throw ExceptionUtils.propagate(e, RemoteException.class);
            }
        }

        public void associate(final AssociationRequest request, final IFindDeviceCallback callback, final String callingPackage) throws RemoteException {
            Preconditions.checkNotNull(request, "Request cannot be null");
            Preconditions.checkNotNull(callback, "Callback cannot be null");
            checkCallerIsSystemOr(callingPackage);
            int userId = CompanionDeviceManagerService.getCallingUserId();
            checkUsesFeature(callingPackage, userId);
            CompanionDeviceManagerService.this.mFindDeviceCallback = callback;
            CompanionDeviceManagerService.this.mRequest = request;
            CompanionDeviceManagerService.this.mCallingPackage = callingPackage;
            request.setCallingPackage(callingPackage);
            callback.asBinder().linkToDeath(CompanionDeviceManagerService.this, 0);
            long callingIdentity = Binder.clearCallingIdentity();
            try {
                CompanionDeviceManagerService.this.mOngoingDeviceDiscovery = ((ServiceConnector) CompanionDeviceManagerService.this.mServiceConnectors.forUser(userId)).postAsync(new ServiceConnector.Job() { // from class: com.android.server.companion.-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$m9NLTVY7N8yX_cTeQGMddCEpCU0
                    public final Object run(Object obj) {
                        return CompanionDeviceManagerService.CompanionDeviceManagerImpl.lambda$associate$0(request, callingPackage, callback, (ICompanionDeviceDiscoveryService) obj);
                    }
                }).cancelTimeout().whenComplete(FunctionalUtils.uncheckExceptions(new FunctionalUtils.ThrowingBiConsumer() { // from class: com.android.server.companion.-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$oYSpdTmzLHvD4Kqu1cDfzfZuvwo
                    public final void acceptOrThrow(Object obj, Object obj2) throws Exception {
                        this.f$0.lambda$associate$1$CompanionDeviceManagerService$CompanionDeviceManagerImpl(callback, (Association) obj, (Throwable) obj2);
                    }
                }));
            } finally {
                Binder.restoreCallingIdentity(callingIdentity);
            }
        }

        static /* synthetic */ CompletableFuture lambda$associate$0(AssociationRequest request, String callingPackage, IFindDeviceCallback callback, ICompanionDeviceDiscoveryService service) throws Exception {
            AndroidFuture<Association> future = new AndroidFuture<>();
            service.startDiscovery(request, callingPackage, callback, future);
            return future;
        }

        public /* synthetic */ void lambda$associate$1$CompanionDeviceManagerService$CompanionDeviceManagerImpl(IFindDeviceCallback callback, Association association, Throwable err) throws Exception {
            if (err == null) {
                CompanionDeviceManagerService.this.addAssociation(association);
            } else {
                Log.e(CompanionDeviceManagerService.LOG_TAG, "Failed to discover device(s)", err);
                callback.onFailure("No devices found: " + err.getMessage());
            }
            CompanionDeviceManagerService.this.cleanup();
        }

        public void stopScan(AssociationRequest request, IFindDeviceCallback callback, String callingPackage) {
            if (Objects.equals(request, CompanionDeviceManagerService.this.mRequest) && Objects.equals(callback, CompanionDeviceManagerService.this.mFindDeviceCallback) && Objects.equals(callingPackage, CompanionDeviceManagerService.this.mCallingPackage)) {
                CompanionDeviceManagerService.this.cleanup();
            }
        }

        public List<String> getAssociations(String callingPackage, int userId) throws RemoteException {
            if (!callerCanManageCompanionDevices()) {
                checkCallerIsSystemOr(callingPackage, userId);
                checkUsesFeature(callingPackage, CompanionDeviceManagerService.getCallingUserId());
            }
            return new ArrayList(CollectionUtils.map(CompanionDeviceManagerService.this.readAllAssociations(userId, callingPackage), new Function() { // from class: com.android.server.companion.-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$yIqg4YLiQouxnVJakZERWIZnPYU
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((Association) obj).deviceAddress;
                }
            }));
        }

        public void disassociate(String deviceMacAddress, String callingPackage) throws RemoteException {
            Preconditions.checkNotNull(deviceMacAddress);
            checkCallerIsSystemOr(callingPackage);
            checkUsesFeature(callingPackage, CompanionDeviceManagerService.getCallingUserId());
            CompanionDeviceManagerService.this.removeAssociation(CompanionDeviceManagerService.getCallingUserId(), callingPackage, deviceMacAddress);
        }

        private boolean callerCanManageCompanionDevices() {
            return CompanionDeviceManagerService.this.getContext().checkCallingOrSelfPermission("android.permission.MANAGE_COMPANION_DEVICES") == 0;
        }

        private void checkCallerIsSystemOr(String pkg) throws RemoteException {
            checkCallerIsSystemOr(pkg, CompanionDeviceManagerService.getCallingUserId());
        }

        private void checkCallerIsSystemOr(String pkg, int userId) throws RemoteException {
            if (!CompanionDeviceManagerService.isCallerSystem()) {
                Preconditions.checkArgument(CompanionDeviceManagerService.getCallingUserId() == userId, "Must be called by either same user or system");
                int callingUid = Binder.getCallingUid();
                if (CompanionDeviceManagerService.this.mAppOpsManager.checkPackage(callingUid, pkg) != 0) {
                    throw new SecurityException(pkg + " doesn't belong to uid " + callingUid);
                }
            }
        }

        public PendingIntent requestNotificationAccess(ComponentName component) throws RemoteException {
            String callingPackage = component.getPackageName();
            checkCanCallNotificationApi(callingPackage);
            int userId = CompanionDeviceManagerService.getCallingUserId();
            long identity = Binder.clearCallingIdentity();
            try {
                return PendingIntent.getActivity(CompanionDeviceManagerService.this.getContext(), 0, NotificationAccessConfirmationActivityContract.launcherIntent(CompanionDeviceManagerService.this.getContext(), userId, component), 1409286144);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public boolean hasNotificationAccess(ComponentName component) throws RemoteException {
            checkCanCallNotificationApi(component.getPackageName());
            String setting = Settings.Secure.getString(CompanionDeviceManagerService.this.getContext().getContentResolver(), "enabled_notification_listeners");
            return new SettingsStringUtil.ComponentNameSet(setting).contains(component);
        }

        public boolean isDeviceAssociatedForWifiConnection(String packageName, final String macAddress, int userId) {
            CompanionDeviceManagerService.this.getContext().enforceCallingOrSelfPermission("android.permission.MANAGE_COMPANION_DEVICES", "isDeviceAssociated");
            boolean bypassMacPermission = CompanionDeviceManagerService.this.getContext().getPackageManager().checkPermission("android.permission.COMPANION_APPROVE_WIFI_CONNECTIONS", packageName) == 0;
            if (bypassMacPermission) {
                return true;
            }
            return CollectionUtils.any(CompanionDeviceManagerService.this.readAllAssociations(userId, packageName), new Predicate() { // from class: com.android.server.companion.-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$cINw8CcxUv2OUJ3WjIWqgJ72MPI
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return Objects.equals(((Association) obj).deviceAddress, macAddress);
                }
            });
        }

        private void checkCanCallNotificationApi(String callingPackage) throws RemoteException {
            checkCallerIsSystemOr(callingPackage);
            int userId = CompanionDeviceManagerService.getCallingUserId();
            Preconditions.checkState(!ArrayUtils.isEmpty(CompanionDeviceManagerService.this.readAllAssociations(userId, callingPackage)), "App must have an association before calling this API");
            checkUsesFeature(callingPackage, userId);
        }

        private void checkUsesFeature(String pkg, int userId) {
            if (!CompanionDeviceManagerService.isCallerSystem()) {
                FeatureInfo[] reqFeatures = CompanionDeviceManagerService.this.getPackageInfo(pkg, userId).reqFeatures;
                int numFeatures = ArrayUtils.size(reqFeatures);
                for (int i = 0; i < numFeatures; i++) {
                    if ("android.software.companion_device_setup".equals(reqFeatures[i].name)) {
                        return;
                    }
                }
                throw new IllegalStateException("Must declare uses-feature android.software.companion_device_setup in manifest to use this API");
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) throws RemoteException {
            CompanionDeviceManagerService.this.new ShellCmd().exec(this, in, out, err, args, callback, resultReceiver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getCallingUserId() {
        return UserHandle.getUserId(Binder.getCallingUid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isCallerSystem() {
        return Binder.getCallingUid() == 1000;
    }

    void addAssociation(int userId, String packageName, String deviceAddress) {
        addAssociation(new Association(userId, deviceAddress, packageName));
    }

    void addAssociation(Association association) {
        updateSpecialAccessPermissionForAssociatedPackage(association.companionAppPackage, association.userId);
        recordAssociation(association);
    }

    void removeAssociation(final int userId, final String pkg, final String deviceMacAddress) {
        updateAssociations(new Function() { // from class: com.android.server.companion.-$$Lambda$CompanionDeviceManagerService$IkTCYCPSwHv3PPP8etpa0xLh9Is
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return CollectionUtils.remove((Set) obj, new Association(userId, deviceMacAddress, pkg));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSpecialAccessPermissionForAssociatedPackage(String packageName, int userId) {
        PackageInfo packageInfo = getPackageInfo(packageName, userId);
        if (packageInfo == null) {
            return;
        }
        Binder.withCleanCallingIdentity(PooledLambda.obtainRunnable(new BiConsumer() { // from class: com.android.server.companion.-$$Lambda$CompanionDeviceManagerService$wnUkAY8uXyjMGM59-bNpzLLMJ1I
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((CompanionDeviceManagerService) obj).updateSpecialAccessPermissionAsSystem((PackageInfo) obj2);
            }
        }, this, packageInfo).recycleOnUse());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSpecialAccessPermissionAsSystem(PackageInfo packageInfo) {
        try {
            if (containsEither(packageInfo.requestedPermissions, "android.permission.RUN_IN_BACKGROUND", "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND")) {
                this.mIdleController.addPowerSaveWhitelistApp(packageInfo.packageName);
            } else {
                this.mIdleController.removePowerSaveWhitelistApp(packageInfo.packageName);
            }
        } catch (RemoteException e) {
        }
        NetworkPolicyManager networkPolicyManager = NetworkPolicyManager.from(getContext());
        if (containsEither(packageInfo.requestedPermissions, "android.permission.USE_DATA_IN_BACKGROUND", "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND")) {
            networkPolicyManager.addUidPolicy(packageInfo.applicationInfo.uid, 4);
        } else {
            networkPolicyManager.removeUidPolicy(packageInfo.applicationInfo.uid, 4);
        }
        exemptFromAutoRevoke(packageInfo.packageName, packageInfo.applicationInfo.uid);
    }

    private void exemptFromAutoRevoke(String packageName, int uid) {
        try {
            this.mAppOpsManager.setMode(97, uid, packageName, 1);
        } catch (RemoteException e) {
            Log.w(LOG_TAG, "Error while granting auto revoke exemption for " + packageName, e);
        }
    }

    private static <T> boolean containsEither(T[] array, T a, T b) {
        return ArrayUtils.contains(array, a) || ArrayUtils.contains(array, b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PackageInfo getPackageInfo(String packageName, int userId) {
        return (PackageInfo) Binder.withCleanCallingIdentity(PooledLambda.obtainSupplier(new TriFunction() { // from class: com.android.server.companion.-$$Lambda$CompanionDeviceManagerService$0VKz9ecFqvfFXzRrfaz-Pf5wW2s
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return CompanionDeviceManagerService.lambda$getPackageInfo$1((Context) obj, (String) obj2, (Integer) obj3);
            }
        }, getContext(), packageName, Integer.valueOf(userId)).recycleOnUse());
    }

    static /* synthetic */ PackageInfo lambda$getPackageInfo$1(Context context, String pkg, Integer id) {
        try {
            return context.getPackageManager().getPackageInfoAsUser(pkg, 20480, id.intValue());
        } catch (PackageManager.NameNotFoundException e) {
            Slog.e(LOG_TAG, "Failed to get PackageInfo for package " + pkg, e);
            return null;
        }
    }

    private void recordAssociation(final Association association) {
        updateAssociations(new Function() { // from class: com.android.server.companion.-$$Lambda$CompanionDeviceManagerService$wG7upTzVFwCMCLI1zfTZW4dftak
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return CollectionUtils.add((Set) obj, association);
            }
        }, association.userId);
    }

    private void recordAssociation(String privilegedPackage, String deviceAddress) {
        recordAssociation(new Association(getCallingUserId(), deviceAddress, privilegedPackage));
    }

    private void updateAssociations(Function<Set<Association>, Set<Association>> update) {
        updateAssociations(update, getCallingUserId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAssociations(Function<Set<Association>, Set<Association>> update, int userId) {
        AtomicFile file = getStorageFileForUser(userId);
        synchronized (file) {
            Set<Association> associations = readAllAssociations(userId);
            Set<Association> old = CollectionUtils.copyOf(associations);
            final Set<Association> associations2 = update.apply(associations);
            if (CollectionUtils.size(old) == CollectionUtils.size(associations2)) {
                return;
            }
            Set<String> companionAppPackages = new HashSet<>();
            for (Association association : associations2) {
                companionAppPackages.add(association.companionAppPackage);
            }
            file.write(new Consumer() { // from class: com.android.server.companion.-$$Lambda$CompanionDeviceManagerService$_wqnNKMj0AXNyFu-i6lXk6tA3xs
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CompanionDeviceManagerService.lambda$updateAssociations$4(associations2, (FileOutputStream) obj);
                }
            });
            ActivityTaskManagerInternal atmInternal = (ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class);
            atmInternal.setCompanionAppPackages(userId, companionAppPackages);
        }
    }

    static /* synthetic */ void lambda$updateAssociations$4(Set finalAssociations, FileOutputStream out) {
        final XmlSerializer xml = Xml.newSerializer();
        try {
            xml.setOutput(out, StandardCharsets.UTF_8.name());
            xml.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
            xml.startDocument(null, true);
            xml.startTag(null, XML_TAG_ASSOCIATIONS);
            CollectionUtils.forEach(finalAssociations, new FunctionalUtils.ThrowingConsumer() { // from class: com.android.server.companion.-$$Lambda$CompanionDeviceManagerService$d_RLJQyt7Hah5vpYlYLeoWXxACU
                public final void acceptOrThrow(Object obj) throws IOException {
                    Association association = (Association) obj;
                    xml.startTag(null, CompanionDeviceManagerService.XML_TAG_ASSOCIATION).attribute(null, "package", association.companionAppPackage).attribute(null, CompanionDeviceManagerService.XML_ATTR_DEVICE, association.deviceAddress).endTag(null, CompanionDeviceManagerService.XML_TAG_ASSOCIATION);
                }
            });
            xml.endTag(null, XML_TAG_ASSOCIATIONS);
            xml.endDocument();
        } catch (Exception e) {
            Slog.e(LOG_TAG, "Error while writing associations file", e);
            throw ExceptionUtils.propagate(e);
        }
    }

    private AtomicFile getStorageFileForUser(int uid) {
        return this.mUidToStorage.computeIfAbsent(Integer.valueOf(uid), new Function() { // from class: com.android.server.companion.-$$Lambda$CompanionDeviceManagerService$bh5xRJq9-CRJoXvmerYRNjK1xEQ
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return CompanionDeviceManagerService.lambda$getStorageFileForUser$5((Integer) obj);
            }
        });
    }

    static /* synthetic */ AtomicFile lambda$getStorageFileForUser$5(Integer u) {
        return new AtomicFile(new File(Environment.getUserSystemDirectory(u.intValue()), XML_FILE_NAME));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Set<Association> readAllAssociations(int userId) {
        return readAllAssociations(userId, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Set<Association> readAllAssociations(int userId, String packageFilter) {
        AtomicFile file = getStorageFileForUser(userId);
        if (!file.getBaseFile().exists()) {
            return null;
        }
        ArraySet<Association> result = null;
        XmlPullParser parser = Xml.newPullParser();
        synchronized (file) {
            try {
                FileInputStream in = file.openRead();
                try {
                    parser.setInput(in, StandardCharsets.UTF_8.name());
                    while (true) {
                        int type = parser.next();
                        if (type == 1) {
                            break;
                        }
                        if (type == 2 || XML_TAG_ASSOCIATIONS.equals(parser.getName())) {
                            String appPackage = parser.getAttributeValue(null, "package");
                            String deviceAddress = parser.getAttributeValue(null, XML_ATTR_DEVICE);
                            if (appPackage != null && deviceAddress != null && (packageFilter == null || packageFilter.equals(appPackage))) {
                                result = ArrayUtils.add(result, new Association(userId, deviceAddress, appPackage));
                            }
                        }
                    }
                    if (in != null) {
                        in.close();
                    }
                } catch (Throwable th) {
                    if (in != null) {
                        try {
                            in.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (IOException | XmlPullParserException e) {
                Slog.e(LOG_TAG, "Error while reading associations file", e);
                return null;
            }
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ShellCmd extends ShellCommand {
        public static final String USAGE = "help\nlist USER_ID\nassociate USER_ID PACKAGE MAC_ADDRESS\ndisassociate USER_ID PACKAGE MAC_ADDRESS";

        ShellCmd() {
            CompanionDeviceManagerService.this.getContext().enforceCallingOrSelfPermission("android.permission.MANAGE_COMPANION_DEVICES", "ShellCmd");
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0036  */
        public int onCommand(String cmd) {
            byte b;
            int iHashCode = cmd.hashCode();
            if (iHashCode != 3322014) {
                if (iHashCode != 784321104) {
                    if (iHashCode == 1586499358 && cmd.equals("associate")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                } else if (cmd.equals("disassociate")) {
                    b = 2;
                } else {
                    b = -1;
                }
            } else if (cmd.equals("list")) {
                b = 0;
            } else {
                b = -1;
            }
            if (b == 0) {
                CollectionUtils.forEach(CompanionDeviceManagerService.this.readAllAssociations(getNextArgInt()), new FunctionalUtils.ThrowingConsumer() { // from class: com.android.server.companion.-$$Lambda$CompanionDeviceManagerService$ShellCmd$wIyZd8yGeA-XCYbKjSRjNBh_VTk
                    public final void acceptOrThrow(Object obj) throws Exception {
                        this.f$0.lambda$onCommand$0$CompanionDeviceManagerService$ShellCmd((Association) obj);
                    }
                });
            } else if (b == 1) {
                CompanionDeviceManagerService.this.addAssociation(getNextArgInt(), getNextArgRequired(), getNextArgRequired());
            } else if (b == 2) {
                CompanionDeviceManagerService.this.removeAssociation(getNextArgInt(), getNextArgRequired(), getNextArgRequired());
            } else {
                return handleDefaultCommands(cmd);
            }
            return 0;
        }

        public /* synthetic */ void lambda$onCommand$0$CompanionDeviceManagerService$ShellCmd(Association a) throws Exception {
            getOutPrintWriter().println(a.companionAppPackage + " " + a.deviceAddress);
        }

        private int getNextArgInt() {
            return Integer.parseInt(getNextArgRequired());
        }

        public void onHelp() {
            getOutPrintWriter().println(USAGE);
        }
    }
}

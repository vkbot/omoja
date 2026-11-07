package com.android.server.role;

import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.role.IOnRoleHoldersChangedListener;
import android.app.role.IRoleManager;
import android.app.role.RoleControllerManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.Signature;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteCallback;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.UserHandle;
import android.os.UserManagerInternal;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.PackageUtils;
import android.util.Slog;
import android.util.SparseArray;
import android.util.proto.ProtoOutputStream;
import com.android.internal.infra.AndroidFuture;
import com.android.internal.infra.ThrottledRunnable;
import com.android.internal.telephony.SmsApplication;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.BitUtils;
import com.android.internal.util.CollectionUtils;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FunctionalUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.Preconditions;
import com.android.internal.util.dump.DualDumpOutputStream;
import com.android.internal.util.function.QuintConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.FgThread;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.pm.Settings;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.pm.permission.PermissionManagerServiceInternal;
import com.android.server.utils.PriorityDump;
import java.io.ByteArrayOutputStream;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class RoleManagerService extends SystemService implements RoleUserState.Callback {
    private static final boolean DEBUG = false;
    private static final long GRANT_DEFAULT_ROLES_INTERVAL_MILLIS = 1000;
    private static final String LOG_TAG = RoleManagerService.class.getSimpleName();
    private final AppOpsManager mAppOpsManager;
    private final SparseArray<RoleControllerManager> mControllers;
    private final SparseArray<ThrottledRunnable> mGrantDefaultRolesThrottledRunnables;
    private final RoleHoldersResolver mLegacyRoleResolver;
    private final Handler mListenerHandler;
    private final SparseArray<RemoteCallbackList<IOnRoleHoldersChangedListener>> mListeners;
    private final Object mLock;
    private final UserManagerInternal mUserManagerInternal;
    private final SparseArray<RoleUserState> mUserStates;

    public interface RoleHoldersResolver {
        List<String> getRoleHolders(String str, int i);
    }

    public RoleManagerService(Context context, RoleHoldersResolver legacyRoleResolver) {
        super(context);
        this.mLock = new Object();
        this.mUserStates = new SparseArray<>();
        this.mControllers = new SparseArray<>();
        this.mListeners = new SparseArray<>();
        this.mListenerHandler = FgThread.getHandler();
        this.mGrantDefaultRolesThrottledRunnables = new SparseArray<>();
        this.mLegacyRoleResolver = legacyRoleResolver;
        RoleControllerManager.initializeRemoteServiceComponentName(context);
        this.mUserManagerInternal = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
        this.mAppOpsManager = (AppOpsManager) context.getSystemService(AppOpsManager.class);
        LocalServices.addService(RoleManagerInternal.class, new Internal());
        PermissionManagerServiceInternal permissionManagerInternal = (PermissionManagerServiceInternal) LocalServices.getService(PermissionManagerServiceInternal.class);
        permissionManagerInternal.setDefaultBrowserProvider(new DefaultBrowserProvider());
        permissionManagerInternal.setDefaultDialerProvider(new DefaultDialerProvider());
        permissionManagerInternal.setDefaultHomeProvider(new DefaultHomeProvider());
        registerUserRemovedReceiver();
    }

    private void registerUserRemovedReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_REMOVED");
        getContext().registerReceiverAsUser(new BroadcastReceiver() { // from class: com.android.server.role.RoleManagerService.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (TextUtils.equals(intent.getAction(), "android.intent.action.USER_REMOVED")) {
                    int userId = intent.getIntExtra("android.intent.extra.user_handle", 0);
                    RoleManagerService.this.onRemoveUser(userId);
                }
            }
        }, UserHandle.ALL, intentFilter, null, null);
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("role", new Stub());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme(Settings.ATTR_PACKAGE);
        intentFilter.setPriority(1000);
        getContext().registerReceiverAsUser(new BroadcastReceiver() { // from class: com.android.server.role.RoleManagerService.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                int userId = UserHandle.getUserId(intent.getIntExtra("android.intent.extra.UID", -1));
                if (!"android.intent.action.PACKAGE_REMOVED".equals(intent.getAction()) || !intent.getBooleanExtra("android.intent.extra.REPLACING", false)) {
                    RoleManagerService.this.maybeGrantDefaultRolesAsync(userId);
                }
            }
        }, UserHandle.ALL, intentFilter, null, null);
    }

    @Override // com.android.server.SystemService
    public void onStartUser(int userId) {
        maybeGrantDefaultRolesSync(userId);
    }

    private void maybeGrantDefaultRolesSync(int userId) {
        AndroidFuture<Void> future = lambda$maybeGrantDefaultRolesAsync$0$RoleManagerService(userId);
        try {
            future.get(30L, TimeUnit.SECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            Slog.e(LOG_TAG, "Failed to grant default roles for user " + userId, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeGrantDefaultRolesAsync(final int userId) {
        ThrottledRunnable runnable;
        synchronized (this.mLock) {
            runnable = this.mGrantDefaultRolesThrottledRunnables.get(userId);
            if (runnable == null) {
                runnable = new ThrottledRunnable(FgThread.getHandler(), 1000L, new Runnable() { // from class: com.android.server.role.-$$Lambda$RoleManagerService$p0uu3WH3gz96-kAWnyu6IUHMtCg
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$maybeGrantDefaultRolesAsync$0$RoleManagerService(userId);
                    }
                });
                this.mGrantDefaultRolesThrottledRunnables.put(userId, runnable);
            }
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: maybeGrantDefaultRolesInternal, reason: merged with bridge method [inline-methods] */
    public AndroidFuture<Void> lambda$maybeGrantDefaultRolesAsync$0$RoleManagerService(int userId) {
        final RoleUserState userState = getOrCreateUserState(userId);
        String oldPackagesHash = userState.getPackagesHash();
        final String newPackagesHash = computeComponentStateHash(userId);
        if (Objects.equals(oldPackagesHash, newPackagesHash)) {
            return AndroidFuture.completedFuture((Object) null);
        }
        maybeMigrateRole("android.app.role.ASSISTANT", userId);
        maybeMigrateRole("android.app.role.BROWSER", userId);
        maybeMigrateRole("android.app.role.DIALER", userId);
        maybeMigrateRole("android.app.role.SMS", userId);
        maybeMigrateRole("android.app.role.EMERGENCY", userId);
        maybeMigrateRole("android.app.role.HOME", userId);
        Slog.i(LOG_TAG, "Granting default roles...");
        final AndroidFuture<Void> future = new AndroidFuture<>();
        getOrCreateController(userId).grantDefaultRoles(FgThread.getExecutor(), new Consumer() { // from class: com.android.server.role.-$$Lambda$RoleManagerService$4FcQsmMH6Dhstzx5gl80tO2TkTw
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RoleManagerService.lambda$maybeGrantDefaultRolesInternal$1(userState, newPackagesHash, future, (Boolean) obj);
            }
        });
        return future;
    }

    static /* synthetic */ void lambda$maybeGrantDefaultRolesInternal$1(RoleUserState userState, String newPackagesHash, AndroidFuture future, Boolean successful) {
        if (successful.booleanValue()) {
            userState.setPackagesHash(newPackagesHash);
            future.complete((Object) null);
        } else {
            future.completeExceptionally(new RuntimeException());
        }
    }

    private void maybeMigrateRole(String role, int userId) {
        RoleUserState userState = getOrCreateUserState(userId);
        if (!userState.isRoleAvailable(role)) {
            List<String> roleHolders = this.mLegacyRoleResolver.getRoleHolders(role, userId);
            if (roleHolders.isEmpty()) {
                return;
            }
            Slog.i(LOG_TAG, "Migrating " + role + ", legacy holders: " + roleHolders);
            userState.addRoleName(role);
            int size = roleHolders.size();
            for (int i = 0; i < size; i++) {
                userState.addRoleHolder(role, roleHolders.get(i));
            }
        }
    }

    private static String computeComponentStateHash(final int userId) {
        final PackageManagerInternal pm = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        final ByteArrayOutputStream out = new ByteArrayOutputStream();
        pm.forEachInstalledPackage(FunctionalUtils.uncheckExceptions(new FunctionalUtils.ThrowingConsumer() { // from class: com.android.server.role.-$$Lambda$RoleManagerService$D-kb5EPaMwRx7H5Az2cV4ORPgIY
            public final void acceptOrThrow(Object obj) throws Exception {
                RoleManagerService.lambda$computeComponentStateHash$2(out, pm, userId, (AndroidPackage) obj);
            }
        }), userId);
        return PackageUtils.computeSha256Digest(out.toByteArray());
    }

    static /* synthetic */ void lambda$computeComponentStateHash$2(ByteArrayOutputStream out, PackageManagerInternal pm, int userId, AndroidPackage pkg) throws Exception {
        out.write(pkg.getPackageName().getBytes());
        out.write(BitUtils.toBytes(pkg.getLongVersionCode()));
        out.write(pm.getApplicationEnabledState(pkg.getPackageName(), userId));
        ArraySet<String> enabledComponents = pm.getEnabledComponents(pkg.getPackageName(), userId);
        int numComponents = CollectionUtils.size(enabledComponents);
        out.write(numComponents);
        for (int i = 0; i < numComponents; i++) {
            out.write(enabledComponents.valueAt(i).getBytes());
        }
        ArraySet<String> disabledComponents = pm.getDisabledComponents(pkg.getPackageName(), userId);
        int numComponents2 = CollectionUtils.size(disabledComponents);
        for (int i2 = 0; i2 < numComponents2; i2++) {
            out.write(disabledComponents.valueAt(i2).getBytes());
        }
        for (Signature signature : pkg.getSigningDetails().signatures) {
            out.write(signature.toByteArray());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RoleUserState getOrCreateUserState(int userId) {
        RoleUserState userState;
        synchronized (this.mLock) {
            userState = this.mUserStates.get(userId);
            if (userState == null) {
                userState = new RoleUserState(userId, this);
                this.mUserStates.put(userId, userState);
            }
        }
        return userState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RoleControllerManager getOrCreateController(int userId) {
        RoleControllerManager controller;
        synchronized (this.mLock) {
            controller = this.mControllers.get(userId);
            if (controller == null) {
                Context systemContext = getContext();
                try {
                    Context context = systemContext.createPackageContextAsUser(systemContext.getPackageName(), 0, UserHandle.of(userId));
                    controller = RoleControllerManager.createWithInitializedRemoteServiceComponentName(FgThread.getHandler(), context);
                    this.mControllers.put(userId, controller);
                } catch (PackageManager.NameNotFoundException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return controller;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RemoteCallbackList<IOnRoleHoldersChangedListener> getListeners(int userId) {
        RemoteCallbackList<IOnRoleHoldersChangedListener> remoteCallbackList;
        synchronized (this.mLock) {
            remoteCallbackList = this.mListeners.get(userId);
        }
        return remoteCallbackList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RemoteCallbackList<IOnRoleHoldersChangedListener> getOrCreateListeners(int userId) {
        RemoteCallbackList<IOnRoleHoldersChangedListener> listeners;
        synchronized (this.mLock) {
            listeners = this.mListeners.get(userId);
            if (listeners == null) {
                listeners = new RemoteCallbackList<>();
                this.mListeners.put(userId, listeners);
            }
        }
        return listeners;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRemoveUser(int userId) {
        RemoteCallbackList<IOnRoleHoldersChangedListener> listeners;
        RoleUserState userState;
        synchronized (this.mLock) {
            this.mGrantDefaultRolesThrottledRunnables.remove(userId);
            listeners = (RemoteCallbackList) this.mListeners.removeReturnOld(userId);
            this.mControllers.remove(userId);
            userState = (RoleUserState) this.mUserStates.removeReturnOld(userId);
        }
        if (listeners != null) {
            listeners.kill();
        }
        if (userState != null) {
            userState.destroy();
        }
    }

    @Override // com.android.server.role.RoleUserState.Callback
    public void onRoleHoldersChanged(String roleName, int userId, String removedHolder, String addedHolder) {
        this.mListenerHandler.sendMessage(PooledLambda.obtainMessage(new QuintConsumer() { // from class: com.android.server.role.-$$Lambda$RoleManagerService$TCTA4I2bhEypguZihxs4ezif6t0
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                ((RoleManagerService) obj).notifyRoleHoldersChanged((String) obj2, ((Integer) obj3).intValue(), (String) obj4, (String) obj5);
            }
        }, this, roleName, Integer.valueOf(userId), removedHolder, addedHolder));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRoleHoldersChanged(String roleName, int userId, String removedHolder, String addedHolder) {
        RemoteCallbackList<IOnRoleHoldersChangedListener> listeners = getListeners(userId);
        if (listeners != null) {
            notifyRoleHoldersChangedForListeners(listeners, roleName, userId);
        }
        RemoteCallbackList<IOnRoleHoldersChangedListener> allUsersListeners = getListeners(-1);
        if (allUsersListeners != null) {
            notifyRoleHoldersChangedForListeners(allUsersListeners, roleName, userId);
        }
        if ("android.app.role.SMS".equals(roleName)) {
            SmsApplication.broadcastSmsAppChange(getContext(), UserHandle.of(userId), removedHolder, addedHolder);
        }
    }

    private void notifyRoleHoldersChangedForListeners(RemoteCallbackList<IOnRoleHoldersChangedListener> listeners, String roleName, int userId) {
        int broadcastCount = listeners.beginBroadcast();
        for (int i = 0; i < broadcastCount; i++) {
            try {
                IOnRoleHoldersChangedListener listener = listeners.getBroadcastItem(i);
                try {
                    listener.onRoleHoldersChanged(roleName, userId);
                } catch (RemoteException e) {
                    Slog.e(LOG_TAG, "Error calling OnRoleHoldersChangedListener", e);
                }
            } catch (Throwable th) {
                listeners.finishBroadcast();
                throw th;
            }
        }
        listeners.finishBroadcast();
    }

    private class Stub extends IRoleManager.Stub {
        private Stub() {
        }

        public boolean isRoleAvailable(String roleName) {
            Preconditions.checkStringNotEmpty(roleName, "roleName cannot be null or empty");
            int userId = UserHandle.getUserId(getCallingUid());
            return RoleManagerService.this.getOrCreateUserState(userId).isRoleAvailable(roleName);
        }

        public boolean isRoleHeld(String roleName, String packageName) {
            int callingUid = getCallingUid();
            RoleManagerService.this.mAppOpsManager.checkPackage(callingUid, packageName);
            Preconditions.checkStringNotEmpty(roleName, "roleName cannot be null or empty");
            Preconditions.checkStringNotEmpty(packageName, "packageName cannot be null or empty");
            int userId = UserHandle.getUserId(callingUid);
            ArraySet<String> roleHolders = RoleManagerService.this.getOrCreateUserState(userId).getRoleHolders(roleName);
            if (roleHolders == null) {
                return false;
            }
            return roleHolders.contains(packageName);
        }

        public List<String> getRoleHoldersAsUser(String roleName, int userId) {
            if (!RoleManagerService.this.mUserManagerInternal.exists(userId)) {
                Slog.e(RoleManagerService.LOG_TAG, "user " + userId + " does not exist");
                return Collections.emptyList();
            }
            int userId2 = handleIncomingUser(userId, false, "getRoleHoldersAsUser");
            RoleManagerService.this.getContext().enforceCallingOrSelfPermission("android.permission.MANAGE_ROLE_HOLDERS", "getRoleHoldersAsUser");
            Preconditions.checkStringNotEmpty(roleName, "roleName cannot be null or empty");
            ArraySet<String> roleHolders = RoleManagerService.this.getOrCreateUserState(userId2).getRoleHolders(roleName);
            if (roleHolders == null) {
                return Collections.emptyList();
            }
            return new ArrayList(roleHolders);
        }

        public void addRoleHolderAsUser(String roleName, String packageName, int flags, int userId, RemoteCallback callback) {
            if (!RoleManagerService.this.mUserManagerInternal.exists(userId)) {
                Slog.e(RoleManagerService.LOG_TAG, "user " + userId + " does not exist");
                return;
            }
            int userId2 = handleIncomingUser(userId, false, "addRoleHolderAsUser");
            RoleManagerService.this.getContext().enforceCallingOrSelfPermission("android.permission.MANAGE_ROLE_HOLDERS", "addRoleHolderAsUser");
            Preconditions.checkStringNotEmpty(roleName, "roleName cannot be null or empty");
            Preconditions.checkStringNotEmpty(packageName, "packageName cannot be null or empty");
            Objects.requireNonNull(callback, "callback cannot be null");
            RoleManagerService.this.getOrCreateController(userId2).onAddRoleHolder(roleName, packageName, flags, callback);
        }

        public void removeRoleHolderAsUser(String roleName, String packageName, int flags, int userId, RemoteCallback callback) {
            if (!RoleManagerService.this.mUserManagerInternal.exists(userId)) {
                Slog.e(RoleManagerService.LOG_TAG, "user " + userId + " does not exist");
                return;
            }
            int userId2 = handleIncomingUser(userId, false, "removeRoleHolderAsUser");
            RoleManagerService.this.getContext().enforceCallingOrSelfPermission("android.permission.MANAGE_ROLE_HOLDERS", "removeRoleHolderAsUser");
            Preconditions.checkStringNotEmpty(roleName, "roleName cannot be null or empty");
            Preconditions.checkStringNotEmpty(packageName, "packageName cannot be null or empty");
            Objects.requireNonNull(callback, "callback cannot be null");
            RoleManagerService.this.getOrCreateController(userId2).onRemoveRoleHolder(roleName, packageName, flags, callback);
        }

        public void clearRoleHoldersAsUser(String roleName, int flags, int userId, RemoteCallback callback) {
            if (!RoleManagerService.this.mUserManagerInternal.exists(userId)) {
                Slog.e(RoleManagerService.LOG_TAG, "user " + userId + " does not exist");
                return;
            }
            int userId2 = handleIncomingUser(userId, false, "clearRoleHoldersAsUser");
            RoleManagerService.this.getContext().enforceCallingOrSelfPermission("android.permission.MANAGE_ROLE_HOLDERS", "clearRoleHoldersAsUser");
            Preconditions.checkStringNotEmpty(roleName, "roleName cannot be null or empty");
            Objects.requireNonNull(callback, "callback cannot be null");
            RoleManagerService.this.getOrCreateController(userId2).onClearRoleHolders(roleName, flags, callback);
        }

        public void addOnRoleHoldersChangedListenerAsUser(IOnRoleHoldersChangedListener listener, int userId) {
            if (userId != -1 && !RoleManagerService.this.mUserManagerInternal.exists(userId)) {
                Slog.e(RoleManagerService.LOG_TAG, "user " + userId + " does not exist");
                return;
            }
            int userId2 = handleIncomingUser(userId, true, "addOnRoleHoldersChangedListenerAsUser");
            RoleManagerService.this.getContext().enforceCallingOrSelfPermission("android.permission.OBSERVE_ROLE_HOLDERS", "addOnRoleHoldersChangedListenerAsUser");
            Objects.requireNonNull(listener, "listener cannot be null");
            RemoteCallbackList<IOnRoleHoldersChangedListener> listeners = RoleManagerService.this.getOrCreateListeners(userId2);
            listeners.register(listener);
        }

        public void removeOnRoleHoldersChangedListenerAsUser(IOnRoleHoldersChangedListener listener, int userId) {
            if (userId != -1 && !RoleManagerService.this.mUserManagerInternal.exists(userId)) {
                Slog.e(RoleManagerService.LOG_TAG, "user " + userId + " does not exist");
                return;
            }
            int userId2 = handleIncomingUser(userId, true, "removeOnRoleHoldersChangedListenerAsUser");
            RoleManagerService.this.getContext().enforceCallingOrSelfPermission("android.permission.OBSERVE_ROLE_HOLDERS", "removeOnRoleHoldersChangedListenerAsUser");
            Objects.requireNonNull(listener, "listener cannot be null");
            RemoteCallbackList<IOnRoleHoldersChangedListener> listeners = RoleManagerService.this.getListeners(userId2);
            if (listener == null) {
                return;
            }
            listeners.unregister(listener);
        }

        public void setRoleNamesFromController(List<String> roleNames) {
            RoleManagerService.this.getContext().enforceCallingOrSelfPermission("com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER", "setRoleNamesFromController");
            Objects.requireNonNull(roleNames, "roleNames cannot be null");
            int userId = UserHandle.getCallingUserId();
            RoleManagerService.this.getOrCreateUserState(userId).setRoleNames(roleNames);
        }

        public boolean addRoleHolderFromController(String roleName, String packageName) {
            RoleManagerService.this.getContext().enforceCallingOrSelfPermission("com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER", "addRoleHolderFromController");
            Preconditions.checkStringNotEmpty(roleName, "roleName cannot be null or empty");
            Preconditions.checkStringNotEmpty(packageName, "packageName cannot be null or empty");
            int userId = UserHandle.getCallingUserId();
            return RoleManagerService.this.getOrCreateUserState(userId).addRoleHolder(roleName, packageName);
        }

        public boolean removeRoleHolderFromController(String roleName, String packageName) {
            RoleManagerService.this.getContext().enforceCallingOrSelfPermission("com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER", "removeRoleHolderFromController");
            Preconditions.checkStringNotEmpty(roleName, "roleName cannot be null or empty");
            Preconditions.checkStringNotEmpty(packageName, "packageName cannot be null or empty");
            int userId = UserHandle.getCallingUserId();
            return RoleManagerService.this.getOrCreateUserState(userId).removeRoleHolder(roleName, packageName);
        }

        public List<String> getHeldRolesFromController(String packageName) {
            RoleManagerService.this.getContext().enforceCallingOrSelfPermission("com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER", "getRolesHeldFromController");
            Preconditions.checkStringNotEmpty(packageName, "packageName cannot be null or empty");
            int userId = UserHandle.getCallingUserId();
            return RoleManagerService.this.getOrCreateUserState(userId).getHeldRoles(packageName);
        }

        private int handleIncomingUser(int userId, boolean allowAll, String name) {
            return ActivityManager.handleIncomingUser(getCallingPid(), getCallingUid(), userId, allowAll, true, name, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
            new RoleManagerShellCommand(this).exec(this, in, out, err, args, callback, resultReceiver);
        }

        public String getDefaultSmsPackage(int userId) {
            int userId2 = handleIncomingUser(userId, false, "getDefaultSmsPackage");
            if (!RoleManagerService.this.mUserManagerInternal.exists(userId2)) {
                Slog.e(RoleManagerService.LOG_TAG, "user " + userId2 + " does not exist");
                return null;
            }
            long identity = Binder.clearCallingIdentity();
            try {
                return (String) CollectionUtils.firstOrNull(getRoleHoldersAsUser("android.app.role.SMS", userId2));
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        protected void dump(FileDescriptor fd, PrintWriter fout, String[] args) {
            DualDumpOutputStream dumpOutputStream;
            if (!DumpUtils.checkDumpPermission(RoleManagerService.this.getContext(), RoleManagerService.LOG_TAG, fout)) {
                return;
            }
            boolean dumpAsProto = args != null && ArrayUtils.contains(args, PriorityDump.PROTO_ARG);
            if (dumpAsProto) {
                dumpOutputStream = new DualDumpOutputStream(new ProtoOutputStream(fd));
            } else {
                fout.println("ROLE MANAGER STATE (dumpsys role):");
                dumpOutputStream = new DualDumpOutputStream(new IndentingPrintWriter(fout, "  "));
            }
            int[] userIds = RoleManagerService.this.mUserManagerInternal.getUserIds();
            for (int userId : userIds) {
                RoleUserState userState = RoleManagerService.this.getOrCreateUserState(userId);
                userState.dump(dumpOutputStream, "user_states", 2246267895809L);
            }
            dumpOutputStream.flush();
        }

        private int getUidForPackage(String packageName) {
            long ident = Binder.clearCallingIdentity();
            try {
                return RoleManagerService.this.getContext().getPackageManager().getApplicationInfo(packageName, 4194304).uid;
            } catch (PackageManager.NameNotFoundException e) {
                return -1;
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }
    }

    private class Internal extends RoleManagerInternal {
        private Internal() {
        }

        @Override // com.android.server.role.RoleManagerInternal
        public ArrayMap<String, ArraySet<String>> getRolesAndHolders(int userId) {
            return RoleManagerService.this.getOrCreateUserState(userId).getRolesAndHolders();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class DefaultBrowserProvider implements PermissionManagerServiceInternal.DefaultBrowserProvider {
        private DefaultBrowserProvider() {
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.DefaultBrowserProvider
        public String getDefaultBrowser(int userId) {
            return (String) CollectionUtils.firstOrNull(RoleManagerService.this.getOrCreateUserState(userId).getRoleHolders("android.app.role.BROWSER"));
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.DefaultBrowserProvider
        public boolean setDefaultBrowser(String packageName, int userId) {
            final AndroidFuture<Void> future = new AndroidFuture<>();
            RemoteCallback callback = new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.role.-$$Lambda$RoleManagerService$DefaultBrowserProvider$X3gMGYlhUgmYMuqj0K5NlCALn5E
                public final void onResult(Bundle bundle) {
                    RoleManagerService.DefaultBrowserProvider.lambda$setDefaultBrowser$0(future, bundle);
                }
            });
            if (packageName != null) {
                RoleManagerService.this.getOrCreateController(userId).onAddRoleHolder("android.app.role.BROWSER", packageName, 0, callback);
            } else {
                RoleManagerService.this.getOrCreateController(userId).onClearRoleHolders("android.app.role.BROWSER", 0, callback);
            }
            try {
                future.get(5L, TimeUnit.SECONDS);
                return true;
            } catch (InterruptedException | ExecutionException | TimeoutException e) {
                Slog.e(RoleManagerService.LOG_TAG, "Exception while setting default browser: " + packageName, e);
                return false;
            }
        }

        static /* synthetic */ void lambda$setDefaultBrowser$0(AndroidFuture future, Bundle result) {
            boolean successful = result != null;
            if (successful) {
                future.complete((Object) null);
            } else {
                future.completeExceptionally(new RuntimeException());
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.DefaultBrowserProvider
        public void setDefaultBrowserAsync(final String packageName, int userId) {
            RemoteCallback callback = new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.role.-$$Lambda$RoleManagerService$DefaultBrowserProvider$cU2Hhx52nmVnJXJvHuAnRTzxST0
                public final void onResult(Bundle bundle) {
                    RoleManagerService.DefaultBrowserProvider.lambda$setDefaultBrowserAsync$1(packageName, bundle);
                }
            });
            if (packageName != null) {
                RoleManagerService.this.getOrCreateController(userId).onAddRoleHolder("android.app.role.BROWSER", packageName, 0, callback);
            } else {
                RoleManagerService.this.getOrCreateController(userId).onClearRoleHolders("android.app.role.BROWSER", 0, callback);
            }
        }

        static /* synthetic */ void lambda$setDefaultBrowserAsync$1(String packageName, Bundle result) {
            boolean successful = result != null;
            if (!successful) {
                Slog.e(RoleManagerService.LOG_TAG, "Failed to set default browser: " + packageName);
            }
        }
    }

    private class DefaultDialerProvider implements PermissionManagerServiceInternal.DefaultDialerProvider {
        private DefaultDialerProvider() {
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.DefaultDialerProvider
        public String getDefaultDialer(int userId) {
            return (String) CollectionUtils.firstOrNull(RoleManagerService.this.getOrCreateUserState(userId).getRoleHolders("android.app.role.DIALER"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class DefaultHomeProvider implements PermissionManagerServiceInternal.DefaultHomeProvider {
        private DefaultHomeProvider() {
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.DefaultHomeProvider
        public String getDefaultHome(int userId) {
            return (String) CollectionUtils.firstOrNull(RoleManagerService.this.getOrCreateUserState(userId).getRoleHolders("android.app.role.HOME"));
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.DefaultHomeProvider
        public void setDefaultHomeAsync(final String packageName, int userId, final Consumer<Boolean> callback) {
            RemoteCallback remoteCallback = new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.role.-$$Lambda$RoleManagerService$DefaultHomeProvider$9eeqZaqhD2FohE8PZOcBaWBSZu4
                public final void onResult(Bundle bundle) {
                    RoleManagerService.DefaultHomeProvider.lambda$setDefaultHomeAsync$0(packageName, callback, bundle);
                }
            });
            if (packageName != null) {
                RoleManagerService.this.getOrCreateController(userId).onAddRoleHolder("android.app.role.HOME", packageName, 0, remoteCallback);
            } else {
                RoleManagerService.this.getOrCreateController(userId).onClearRoleHolders("android.app.role.HOME", 0, remoteCallback);
            }
        }

        static /* synthetic */ void lambda$setDefaultHomeAsync$0(String packageName, Consumer callback, Bundle result) {
            boolean successful = result != null;
            if (!successful) {
                Slog.e(RoleManagerService.LOG_TAG, "Failed to set default home: " + packageName);
            }
            callback.accept(Boolean.valueOf(successful));
        }
    }
}

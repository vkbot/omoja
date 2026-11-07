package com.android.server.infra;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.UserInfo;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.os.UserManagerInternal;
import android.provider.Settings;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.android.internal.content.PackageMonitor;
import com.android.internal.os.BackgroundThread;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.infra.AbstractMasterSystemService;
import com.android.server.infra.AbstractPerUserSystemService;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractMasterSystemService<M extends AbstractMasterSystemService<M, S>, S extends AbstractPerUserSystemService<S, M>> extends SystemService {
    public static final int PACKAGE_RESTART_POLICY_NO_REFRESH = 16;
    public static final int PACKAGE_RESTART_POLICY_REFRESH_EAGER = 64;
    public static final int PACKAGE_RESTART_POLICY_REFRESH_LAZY = 32;
    public static final int PACKAGE_UPDATE_POLICY_NO_REFRESH = 1;
    public static final int PACKAGE_UPDATE_POLICY_REFRESH_EAGER = 4;
    public static final int PACKAGE_UPDATE_POLICY_REFRESH_LAZY = 2;
    public boolean debug;
    protected boolean mAllowInstantService;
    private final SparseBooleanArray mDisabledByUserRestriction;
    protected final Object mLock;
    protected final ServiceNameResolver mServiceNameResolver;
    private final int mServicePackagePolicyFlags;
    private final SparseArray<S> mServicesCache;
    protected final String mTag;
    private UserManagerInternal mUm;
    private SparseArray<String> mUpdatingPackageNames;
    public boolean verbose;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ServicePackagePolicyFlags {
    }

    public interface Visitor<S> {
        void visit(S s);
    }

    protected abstract S newServiceLocked(int i, boolean z);

    protected AbstractMasterSystemService(Context context, ServiceNameResolver serviceNameResolver, String disallowProperty) {
        this(context, serviceNameResolver, disallowProperty, 34);
    }

    protected AbstractMasterSystemService(Context context, ServiceNameResolver serviceNameResolver, final String disallowProperty, int servicePackagePolicyFlags) {
        super(context);
        this.mTag = getClass().getSimpleName();
        this.mLock = new Object();
        this.verbose = false;
        this.debug = false;
        this.mServicesCache = new SparseArray<>();
        servicePackagePolicyFlags = (servicePackagePolicyFlags & 7) == 0 ? servicePackagePolicyFlags | 2 : servicePackagePolicyFlags;
        this.mServicePackagePolicyFlags = (servicePackagePolicyFlags & 112) == 0 ? servicePackagePolicyFlags | 32 : servicePackagePolicyFlags;
        this.mServiceNameResolver = serviceNameResolver;
        if (serviceNameResolver != null) {
            serviceNameResolver.setOnTemporaryServiceNameChangedCallback(new ServiceNameResolver.NameResolverListener() { // from class: com.android.server.infra.-$$Lambda$AbstractMasterSystemService$su3lJpEVIbL-C7doP4eboTpqjxU
                @Override // com.android.server.infra.ServiceNameResolver.NameResolverListener
                public final void onNameResolved(int i, String str, boolean z) {
                    this.f$0.lambda$new$0$AbstractMasterSystemService(i, str, z);
                }
            });
        }
        if (disallowProperty == null) {
            this.mDisabledByUserRestriction = null;
        } else {
            this.mDisabledByUserRestriction = new SparseBooleanArray();
            UserManagerInternal umi = getUserManagerInternal();
            List<UserInfo> users = getSupportedUsers();
            for (int i = 0; i < users.size(); i++) {
                int userId = users.get(i).id;
                boolean disabled = umi.getUserRestriction(userId, disallowProperty);
                if (disabled) {
                    Slog.i(this.mTag, "Disabling by restrictions user " + userId);
                    this.mDisabledByUserRestriction.put(userId, disabled);
                }
            }
            umi.addUserRestrictionsListener(new UserManagerInternal.UserRestrictionsListener() { // from class: com.android.server.infra.-$$Lambda$AbstractMasterSystemService$_fKw-VUP0pSfcMMlgRqoT4OPhxw
                @Override // android.os.UserManagerInternal.UserRestrictionsListener
                public final void onUserRestrictionsChanged(int i2, Bundle bundle, Bundle bundle2) {
                    this.f$0.lambda$new$1$AbstractMasterSystemService(disallowProperty, i2, bundle, bundle2);
                }
            });
        }
        startTrackingPackageChanges();
    }

    public /* synthetic */ void lambda$new$1$AbstractMasterSystemService(String disallowProperty, int userId, Bundle newRestrictions, Bundle prevRestrictions) {
        boolean disabledNow = newRestrictions.getBoolean(disallowProperty, false);
        synchronized (this.mLock) {
            boolean disabledBefore = this.mDisabledByUserRestriction.get(userId);
            if (disabledBefore == disabledNow && this.debug) {
                Slog.d(this.mTag, "Restriction did not change for user " + userId);
                return;
            }
            Slog.i(this.mTag, "Updating for user " + userId + ": disabled=" + disabledNow);
            this.mDisabledByUserRestriction.put(userId, disabledNow);
            updateCachedServiceLocked(userId, disabledNow);
        }
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 600) {
            new SettingsObserver(BackgroundThread.getHandler());
        }
    }

    @Override // com.android.server.SystemService
    public void onUnlockUser(int userId) {
        synchronized (this.mLock) {
            updateCachedServiceLocked(userId);
        }
    }

    @Override // com.android.server.SystemService
    public void onCleanupUser(int userId) {
        synchronized (this.mLock) {
            removeCachedServiceLocked(userId);
        }
    }

    public final boolean getAllowInstantService() {
        boolean z;
        enforceCallingPermissionForManagement();
        synchronized (this.mLock) {
            z = this.mAllowInstantService;
        }
        return z;
    }

    public final boolean isBindInstantServiceAllowed() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mAllowInstantService;
        }
        return z;
    }

    public final void setAllowInstantService(boolean mode) {
        Slog.i(this.mTag, "setAllowInstantService(): " + mode);
        enforceCallingPermissionForManagement();
        synchronized (this.mLock) {
            this.mAllowInstantService = mode;
        }
    }

    public final void setTemporaryService(int userId, String componentName, int durationMs) {
        Slog.i(this.mTag, "setTemporaryService(" + userId + ") to " + componentName + " for " + durationMs + "ms");
        enforceCallingPermissionForManagement();
        Objects.requireNonNull(componentName);
        int maxDurationMs = getMaximumTemporaryServiceDurationMs();
        if (durationMs > maxDurationMs) {
            throw new IllegalArgumentException("Max duration is " + maxDurationMs + " (called with " + durationMs + ")");
        }
        synchronized (this.mLock) {
            AbstractPerUserSystemService abstractPerUserSystemServicePeekServiceForUserLocked = peekServiceForUserLocked(userId);
            if (abstractPerUserSystemServicePeekServiceForUserLocked != null) {
                abstractPerUserSystemServicePeekServiceForUserLocked.removeSelfFromCacheLocked();
            }
            this.mServiceNameResolver.setTemporaryService(userId, componentName, durationMs);
        }
    }

    public final boolean setDefaultServiceEnabled(int userId, boolean enabled) {
        Slog.i(this.mTag, "setDefaultServiceEnabled() for userId " + userId + ": " + enabled);
        enforceCallingPermissionForManagement();
        synchronized (this.mLock) {
            boolean changed = this.mServiceNameResolver.setDefaultServiceEnabled(userId, enabled);
            if (!changed) {
                if (this.verbose) {
                    Slog.v(this.mTag, "setDefaultServiceEnabled(" + userId + "): already " + enabled);
                }
                return false;
            }
            AbstractPerUserSystemService abstractPerUserSystemServicePeekServiceForUserLocked = peekServiceForUserLocked(userId);
            if (abstractPerUserSystemServicePeekServiceForUserLocked != null) {
                abstractPerUserSystemServicePeekServiceForUserLocked.removeSelfFromCacheLocked();
            }
            updateCachedServiceLocked(userId);
            return true;
        }
    }

    public final boolean isDefaultServiceEnabled(int userId) {
        boolean zIsDefaultServiceEnabled;
        enforceCallingPermissionForManagement();
        synchronized (this.mLock) {
            zIsDefaultServiceEnabled = this.mServiceNameResolver.isDefaultServiceEnabled(userId);
        }
        return zIsDefaultServiceEnabled;
    }

    protected int getMaximumTemporaryServiceDurationMs() {
        throw new UnsupportedOperationException("Not implemented by " + getClass());
    }

    public final void resetTemporaryService(int userId) {
        Slog.i(this.mTag, "resetTemporaryService(): " + userId);
        enforceCallingPermissionForManagement();
        synchronized (this.mLock) {
            AbstractPerUserSystemService serviceForUserLocked = getServiceForUserLocked(userId);
            if (serviceForUserLocked != null) {
                serviceForUserLocked.resetTemporaryServiceLocked();
            }
        }
    }

    protected void enforceCallingPermissionForManagement() {
        throw new UnsupportedOperationException("Not implemented by " + getClass());
    }

    protected void registerForExtraSettingsChanges(ContentResolver resolver, ContentObserver observer) {
    }

    protected void onSettingsChanged(int userId, String property) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public S getServiceForUserLocked(int i) {
        int iHandleIncomingUser = ActivityManager.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), i, false, false, null, null);
        S s = this.mServicesCache.get(iHandleIncomingUser);
        if (s == null) {
            boolean zIsDisabledLocked = isDisabledLocked(i);
            s = (S) newServiceLocked(iHandleIncomingUser, zIsDisabledLocked);
            if (!zIsDisabledLocked) {
                onServiceEnabledLocked(s, iHandleIncomingUser);
            }
            this.mServicesCache.put(i, s);
        }
        return s;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public S peekServiceForUserLocked(int userId) {
        int resolvedUserId = ActivityManager.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, false, false, null, null);
        return this.mServicesCache.get(resolvedUserId);
    }

    protected void updateCachedServiceLocked(int userId) {
        updateCachedServiceLocked(userId, isDisabledLocked(userId));
    }

    protected boolean isDisabledLocked(int userId) {
        SparseBooleanArray sparseBooleanArray = this.mDisabledByUserRestriction;
        if (sparseBooleanArray == null) {
            return false;
        }
        return sparseBooleanArray.get(userId);
    }

    protected S updateCachedServiceLocked(int i, boolean z) {
        S s = (S) getServiceForUserLocked(i);
        if (s != null) {
            s.updateLocked(z);
            if (!s.isEnabledLocked()) {
                removeCachedServiceLocked(i);
            } else {
                onServiceEnabledLocked(s, i);
            }
        }
        return s;
    }

    protected String getServiceSettingsProperty() {
        return null;
    }

    protected void onServiceEnabledLocked(S service, int userId) {
    }

    protected final S removeCachedServiceLocked(int i) {
        S s = (S) peekServiceForUserLocked(i);
        if (s != null) {
            this.mServicesCache.delete(i);
            onServiceRemoved(s, i);
        }
        return s;
    }

    protected void onServicePackageUpdatingLocked(int userId) {
        if (this.verbose) {
            Slog.v(this.mTag, "onServicePackageUpdatingLocked(" + userId + ")");
        }
    }

    protected void onServicePackageUpdatedLocked(int userId) {
        if (this.verbose) {
            Slog.v(this.mTag, "onServicePackageUpdated(" + userId + ")");
        }
    }

    protected void onServicePackageDataClearedLocked(int userId) {
        if (this.verbose) {
            Slog.v(this.mTag, "onServicePackageDataCleared(" + userId + ")");
        }
    }

    protected void onServicePackageRestartedLocked(int userId) {
        if (this.verbose) {
            Slog.v(this.mTag, "onServicePackageRestarted(" + userId + ")");
        }
    }

    protected void onServiceRemoved(S service, int userId) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: onServiceNameChanged, reason: merged with bridge method [inline-methods] */
    public void lambda$new$0$AbstractMasterSystemService(int userId, String serviceName, boolean isTemporary) {
        synchronized (this.mLock) {
            updateCachedServiceLocked(userId);
        }
    }

    protected void visitServicesLocked(Visitor<S> visitor) {
        int size = this.mServicesCache.size();
        for (int i = 0; i < size; i++) {
            visitor.visit(this.mServicesCache.valueAt(i));
        }
    }

    protected void clearCacheLocked() {
        this.mServicesCache.clear();
    }

    protected UserManagerInternal getUserManagerInternal() {
        if (this.mUm == null) {
            if (this.verbose) {
                Slog.v(this.mTag, "lazy-loading UserManagerInternal");
            }
            this.mUm = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
        }
        return this.mUm;
    }

    protected List<UserInfo> getSupportedUsers() {
        UserInfo[] allUsers = getUserManagerInternal().getUserInfos();
        int size = allUsers.length;
        List<UserInfo> supportedUsers = new ArrayList<>(size);
        for (UserInfo userInfo : allUsers) {
            if (isUserSupported(new SystemService.TargetUser(userInfo))) {
                supportedUsers.add(userInfo);
            }
        }
        return supportedUsers;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void assertCalledByPackageOwner(String packageName) {
        Objects.requireNonNull(packageName);
        int uid = Binder.getCallingUid();
        String[] packages = getContext().getPackageManager().getPackagesForUid(uid);
        if (packages != null) {
            for (String candidate : packages) {
                if (packageName.equals(candidate)) {
                    return;
                }
            }
        }
        throw new SecurityException("UID " + uid + " does not own " + packageName);
    }

    protected void dumpLocked(String prefix, PrintWriter pw) {
        boolean realDebug = this.debug;
        boolean realVerbose = this.verbose;
        try {
            this.verbose = true;
            this.debug = true;
            int size = this.mServicesCache.size();
            pw.print(prefix);
            pw.print("Debug: ");
            pw.print(realDebug);
            pw.print(" Verbose: ");
            pw.println(realVerbose);
            pw.print("Package policy flags: ");
            pw.println(this.mServicePackagePolicyFlags);
            if (this.mUpdatingPackageNames != null) {
                pw.print("Packages being updated: ");
                pw.println(this.mUpdatingPackageNames);
            }
            dumpSupportedUsers(pw, prefix);
            if (this.mServiceNameResolver != null) {
                pw.print(prefix);
                pw.print("Name resolver: ");
                this.mServiceNameResolver.dumpShort(pw);
                pw.println();
                List<UserInfo> users = getSupportedUsers();
                for (int i = 0; i < users.size(); i++) {
                    int userId = users.get(i).id;
                    pw.print("    ");
                    pw.print(userId);
                    pw.print(": ");
                    this.mServiceNameResolver.dumpShort(pw, userId);
                    pw.println();
                }
            }
            pw.print(prefix);
            pw.print("Users disabled by restriction: ");
            pw.println(this.mDisabledByUserRestriction);
            pw.print(prefix);
            pw.print("Allow instant service: ");
            pw.println(this.mAllowInstantService);
            String settingsProperty = getServiceSettingsProperty();
            if (settingsProperty != null) {
                pw.print(prefix);
                pw.print("Settings property: ");
                pw.println(settingsProperty);
            }
            pw.print(prefix);
            pw.print("Cached services: ");
            if (size == 0) {
                pw.println("none");
            } else {
                pw.println(size);
                for (int i2 = 0; i2 < size; i2++) {
                    pw.print(prefix);
                    pw.print("Service at ");
                    pw.print(i2);
                    pw.println(": ");
                    S service = this.mServicesCache.valueAt(i2);
                    service.dumpLocked("    ", pw);
                    pw.println();
                }
            }
            this.debug = realDebug;
            this.verbose = realVerbose;
        } catch (Throwable th) {
            this.debug = realDebug;
            this.verbose = realVerbose;
            throw th;
        }
    }

    /* JADX INFO: renamed from: com.android.server.infra.AbstractMasterSystemService$1, reason: invalid class name */
    class AnonymousClass1 extends PackageMonitor {
        AnonymousClass1() {
        }

        public void onPackageUpdateStarted(String packageName, int uid) {
            if (AbstractMasterSystemService.this.verbose) {
                Slog.v(AbstractMasterSystemService.this.mTag, "onPackageUpdateStarted(): " + packageName);
            }
            String activePackageName = getActiveServicePackageNameLocked();
            if (packageName.equals(activePackageName)) {
                int userId = getChangingUserId();
                synchronized (AbstractMasterSystemService.this.mLock) {
                    if (AbstractMasterSystemService.this.mUpdatingPackageNames == null) {
                        AbstractMasterSystemService.this.mUpdatingPackageNames = new SparseArray(AbstractMasterSystemService.this.mServicesCache.size());
                    }
                    AbstractMasterSystemService.this.mUpdatingPackageNames.put(userId, packageName);
                    AbstractMasterSystemService.this.onServicePackageUpdatingLocked(userId);
                    if ((AbstractMasterSystemService.this.mServicePackagePolicyFlags & 1) != 0) {
                        if (AbstractMasterSystemService.this.debug) {
                            Slog.d(AbstractMasterSystemService.this.mTag, "Holding service for user " + userId + " while package " + activePackageName + " is being updated");
                        }
                    } else {
                        if (AbstractMasterSystemService.this.debug) {
                            Slog.d(AbstractMasterSystemService.this.mTag, "Removing service for user " + userId + " because package " + activePackageName + " is being updated");
                        }
                        AbstractMasterSystemService.this.removeCachedServiceLocked(userId);
                        if ((AbstractMasterSystemService.this.mServicePackagePolicyFlags & 4) != 0) {
                            if (AbstractMasterSystemService.this.debug) {
                                Slog.d(AbstractMasterSystemService.this.mTag, "Eagerly recreating service for user " + userId);
                            }
                            AbstractMasterSystemService.this.getServiceForUserLocked(userId);
                        }
                    }
                }
            }
        }

        public void onPackageUpdateFinished(String packageName, int uid) {
            if (AbstractMasterSystemService.this.verbose) {
                Slog.v(AbstractMasterSystemService.this.mTag, "onPackageUpdateFinished(): " + packageName);
            }
            int userId = getChangingUserId();
            synchronized (AbstractMasterSystemService.this.mLock) {
                String activePackageName = AbstractMasterSystemService.this.mUpdatingPackageNames == null ? null : (String) AbstractMasterSystemService.this.mUpdatingPackageNames.get(userId);
                if (packageName.equals(activePackageName)) {
                    if (AbstractMasterSystemService.this.mUpdatingPackageNames != null) {
                        AbstractMasterSystemService.this.mUpdatingPackageNames.remove(userId);
                        if (AbstractMasterSystemService.this.mUpdatingPackageNames.size() == 0) {
                            AbstractMasterSystemService.this.mUpdatingPackageNames = null;
                        }
                    }
                    AbstractMasterSystemService.this.onServicePackageUpdatedLocked(userId);
                } else {
                    handlePackageUpdateLocked(packageName);
                }
            }
        }

        public void onPackageRemoved(String packageName, int uid) {
            ComponentName componentName;
            synchronized (AbstractMasterSystemService.this.mLock) {
                int userId = getChangingUserId();
                AbstractPerUserSystemService abstractPerUserSystemServicePeekServiceForUserLocked = AbstractMasterSystemService.this.peekServiceForUserLocked(userId);
                if (abstractPerUserSystemServicePeekServiceForUserLocked != null && (componentName = abstractPerUserSystemServicePeekServiceForUserLocked.getServiceComponentName()) != null && packageName.equals(componentName.getPackageName())) {
                    handleActiveServiceRemoved(userId);
                }
            }
        }

        public boolean onHandleForceStop(Intent intent, String[] packages, int uid, boolean doit) {
            synchronized (AbstractMasterSystemService.this.mLock) {
                String activePackageName = getActiveServicePackageNameLocked();
                for (String pkg : packages) {
                    if (pkg.equals(activePackageName)) {
                        if (!doit) {
                            return true;
                        }
                        String action = intent.getAction();
                        int userId = getChangingUserId();
                        if ("android.intent.action.PACKAGE_RESTARTED".equals(action)) {
                            handleActiveServiceRestartedLocked(activePackageName, userId);
                        } else {
                            AbstractMasterSystemService.this.removeCachedServiceLocked(userId);
                        }
                    } else {
                        handlePackageUpdateLocked(pkg);
                    }
                }
                return false;
            }
        }

        public void onPackageDataCleared(String packageName, int uid) {
            ComponentName componentName;
            if (AbstractMasterSystemService.this.verbose) {
                Slog.v(AbstractMasterSystemService.this.mTag, "onPackageDataCleared(): " + packageName);
            }
            int userId = getChangingUserId();
            synchronized (AbstractMasterSystemService.this.mLock) {
                AbstractPerUserSystemService abstractPerUserSystemServicePeekServiceForUserLocked = AbstractMasterSystemService.this.peekServiceForUserLocked(userId);
                if (abstractPerUserSystemServicePeekServiceForUserLocked != null && (componentName = abstractPerUserSystemServicePeekServiceForUserLocked.getServiceComponentName()) != null && packageName.equals(componentName.getPackageName())) {
                    AbstractMasterSystemService.this.onServicePackageDataClearedLocked(userId);
                }
            }
        }

        private void handleActiveServiceRemoved(int userId) {
            synchronized (AbstractMasterSystemService.this.mLock) {
                AbstractMasterSystemService.this.removeCachedServiceLocked(userId);
            }
            String serviceSettingsProperty = AbstractMasterSystemService.this.getServiceSettingsProperty();
            if (serviceSettingsProperty != null) {
                Settings.Secure.putStringForUser(AbstractMasterSystemService.this.getContext().getContentResolver(), serviceSettingsProperty, null, userId);
            }
        }

        private void handleActiveServiceRestartedLocked(String activePackageName, int userId) {
            if ((AbstractMasterSystemService.this.mServicePackagePolicyFlags & 16) != 0) {
                if (AbstractMasterSystemService.this.debug) {
                    Slog.d(AbstractMasterSystemService.this.mTag, "Holding service for user " + userId + " while package " + activePackageName + " is being restarted");
                }
            } else {
                if (AbstractMasterSystemService.this.debug) {
                    Slog.d(AbstractMasterSystemService.this.mTag, "Removing service for user " + userId + " because package " + activePackageName + " is being restarted");
                }
                AbstractMasterSystemService.this.removeCachedServiceLocked(userId);
                if ((AbstractMasterSystemService.this.mServicePackagePolicyFlags & 64) != 0) {
                    if (AbstractMasterSystemService.this.debug) {
                        Slog.d(AbstractMasterSystemService.this.mTag, "Eagerly recreating service for user " + userId);
                    }
                    AbstractMasterSystemService.this.updateCachedServiceLocked(userId);
                }
            }
            AbstractMasterSystemService.this.onServicePackageRestartedLocked(userId);
        }

        public void onPackageModified(String packageName) {
            ComponentName serviceComponentName;
            AbstractPerUserSystemService abstractPerUserSystemServicePeekServiceForUserLocked;
            if (AbstractMasterSystemService.this.verbose) {
                Slog.v(AbstractMasterSystemService.this.mTag, "onPackageModified(): " + packageName);
            }
            int userId = getChangingUserId();
            String serviceName = AbstractMasterSystemService.this.mServiceNameResolver.getDefaultServiceName(userId);
            if (serviceName != null && (serviceComponentName = ComponentName.unflattenFromString(serviceName)) != null && serviceComponentName.getPackageName().equals(packageName) && (abstractPerUserSystemServicePeekServiceForUserLocked = AbstractMasterSystemService.this.peekServiceForUserLocked(userId)) != null) {
                ComponentName componentName = abstractPerUserSystemServicePeekServiceForUserLocked.getServiceComponentName();
                if (componentName == null) {
                    if (AbstractMasterSystemService.this.verbose) {
                        Slog.v(AbstractMasterSystemService.this.mTag, "update cached");
                    }
                    AbstractMasterSystemService.this.updateCachedServiceLocked(userId);
                }
            }
        }

        private String getActiveServicePackageNameLocked() {
            ComponentName serviceComponent;
            int userId = getChangingUserId();
            AbstractPerUserSystemService abstractPerUserSystemServicePeekServiceForUserLocked = AbstractMasterSystemService.this.peekServiceForUserLocked(userId);
            if (abstractPerUserSystemServicePeekServiceForUserLocked == null || (serviceComponent = abstractPerUserSystemServicePeekServiceForUserLocked.getServiceComponentName()) == null) {
                return null;
            }
            return serviceComponent.getPackageName();
        }

        private void handlePackageUpdateLocked(final String packageName) {
            AbstractMasterSystemService.this.visitServicesLocked(new Visitor() { // from class: com.android.server.infra.-$$Lambda$AbstractMasterSystemService$1$TLhe3_2yHs5UB69Y7lf2s7OxJCo
                @Override // com.android.server.infra.AbstractMasterSystemService.Visitor
                public final void visit(Object obj) {
                    ((AbstractPerUserSystemService) obj).handlePackageUpdateLocked(packageName);
                }
            });
        }
    }

    private void startTrackingPackageChanges() {
        PackageMonitor monitor = new AnonymousClass1();
        monitor.register(getContext(), (Looper) null, UserHandle.ALL, true);
    }

    private final class SettingsObserver extends ContentObserver {
        SettingsObserver(Handler handler) {
            super(handler);
            ContentResolver resolver = AbstractMasterSystemService.this.getContext().getContentResolver();
            String serviceProperty = AbstractMasterSystemService.this.getServiceSettingsProperty();
            if (serviceProperty != null) {
                resolver.registerContentObserver(Settings.Secure.getUriFor(serviceProperty), false, this, -1);
            }
            resolver.registerContentObserver(Settings.Secure.getUriFor("user_setup_complete"), false, this, -1);
            AbstractMasterSystemService.this.registerForExtraSettingsChanges(resolver, this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri, int userId) {
            if (AbstractMasterSystemService.this.verbose) {
                Slog.v(AbstractMasterSystemService.this.mTag, "onChange(): uri=" + uri + ", userId=" + userId);
            }
            String property = uri.getLastPathSegment();
            if (property.equals(AbstractMasterSystemService.this.getServiceSettingsProperty()) || property.equals("user_setup_complete")) {
                synchronized (AbstractMasterSystemService.this.mLock) {
                    AbstractMasterSystemService.this.updateCachedServiceLocked(userId);
                }
                return;
            }
            AbstractMasterSystemService.this.onSettingsChanged(userId, property);
        }
    }
}

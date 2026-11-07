package com.android.server.infra;

import android.app.AppGlobals;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Slog;
import com.android.server.infra.AbstractMasterSystemService;
import com.android.server.infra.AbstractPerUserSystemService;
import com.android.server.notification.SnoozeHelper;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractPerUserSystemService<S extends AbstractPerUserSystemService<S, M>, M extends AbstractMasterSystemService<M, S>> {
    private boolean mDisabled;
    protected final Object mLock;
    protected final M mMaster;
    private ServiceInfo mServiceInfo;
    private boolean mSetupComplete;
    protected final String mTag = getClass().getSimpleName();
    protected final int mUserId;

    protected AbstractPerUserSystemService(M master, Object lock, int userId) {
        this.mMaster = master;
        this.mLock = lock;
        this.mUserId = userId;
        updateIsSetupComplete(userId);
    }

    private void updateIsSetupComplete(int userId) {
        String setupComplete = Settings.Secure.getStringForUser(getContext().getContentResolver(), "user_setup_complete", userId);
        this.mSetupComplete = SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(setupComplete);
    }

    protected ServiceInfo newServiceInfoLocked(ComponentName serviceComponent) throws PackageManager.NameNotFoundException {
        throw new UnsupportedOperationException("not overridden");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handlePackageUpdateLocked(String packageName) {
    }

    protected boolean isEnabledLocked() {
        return (!this.mSetupComplete || this.mServiceInfo == null || this.mDisabled) ? false : true;
    }

    protected final boolean isDisabledByUserRestrictionsLocked() {
        return this.mDisabled;
    }

    protected boolean updateLocked(boolean disabled) {
        boolean wasEnabled = isEnabledLocked();
        if (this.mMaster.verbose) {
            Slog.v(this.mTag, "updateLocked(u=" + this.mUserId + "): wasEnabled=" + wasEnabled + ", mSetupComplete=" + this.mSetupComplete + ", disabled=" + disabled + ", mDisabled=" + this.mDisabled);
        }
        updateIsSetupComplete(this.mUserId);
        this.mDisabled = disabled;
        updateServiceInfoLocked();
        return wasEnabled != isEnabledLocked();
    }

    protected final ComponentName updateServiceInfoLocked() {
        ComponentName serviceComponent = null;
        if (this.mMaster.mServiceNameResolver != null) {
            ServiceInfo serviceInfo = null;
            String componentName = getComponentNameLocked();
            if (!TextUtils.isEmpty(componentName)) {
                try {
                    serviceComponent = ComponentName.unflattenFromString(componentName);
                    serviceInfo = AppGlobals.getPackageManager().getServiceInfo(serviceComponent, 0, this.mUserId);
                    if (serviceInfo == null) {
                        Slog.e(this.mTag, "Bad service name: " + componentName);
                    }
                } catch (RemoteException | RuntimeException e) {
                    Slog.e(this.mTag, "Error getting service info for '" + componentName + "': " + e);
                    serviceInfo = null;
                }
            }
            try {
                if (serviceInfo != null) {
                    this.mServiceInfo = newServiceInfoLocked(serviceComponent);
                    if (this.mMaster.debug) {
                        Slog.d(this.mTag, "Set component for user " + this.mUserId + " as " + serviceComponent + " and info as " + this.mServiceInfo);
                    }
                } else {
                    this.mServiceInfo = null;
                    if (this.mMaster.debug) {
                        Slog.d(this.mTag, "Reset component for user " + this.mUserId + ":" + componentName);
                    }
                }
            } catch (Exception e2) {
                Slog.e(this.mTag, "Bad ServiceInfo for '" + componentName + "': " + e2);
                this.mServiceInfo = null;
            }
        }
        return serviceComponent;
    }

    public final int getUserId() {
        return this.mUserId;
    }

    public final M getMaster() {
        return this.mMaster;
    }

    protected final int getServiceUidLocked() {
        ServiceInfo serviceInfo = this.mServiceInfo;
        if (serviceInfo == null) {
            if (this.mMaster.verbose) {
                Slog.v(this.mTag, "getServiceUidLocked(): no mServiceInfo");
                return -1;
            }
            return -1;
        }
        return serviceInfo.applicationInfo.uid;
    }

    protected final String getComponentNameLocked() {
        return this.mMaster.mServiceNameResolver.getServiceName(this.mUserId);
    }

    public final boolean isTemporaryServiceSetLocked() {
        return this.mMaster.mServiceNameResolver.isTemporary(this.mUserId);
    }

    protected final void resetTemporaryServiceLocked() {
        this.mMaster.mServiceNameResolver.resetTemporaryService(this.mUserId);
    }

    public final ServiceInfo getServiceInfo() {
        return this.mServiceInfo;
    }

    public final ComponentName getServiceComponentName() {
        ComponentName componentName;
        synchronized (this.mLock) {
            componentName = this.mServiceInfo == null ? null : this.mServiceInfo.getComponentName();
        }
        return componentName;
    }

    public final String getServicePackageName() {
        ComponentName serviceComponent = getServiceComponentName();
        if (serviceComponent == null) {
            return null;
        }
        return serviceComponent.getPackageName();
    }

    public final CharSequence getServiceLabelLocked() {
        ServiceInfo serviceInfo = this.mServiceInfo;
        if (serviceInfo == null) {
            return null;
        }
        return serviceInfo.loadSafeLabel(getContext().getPackageManager(), 0.0f, 5);
    }

    public final Drawable getServiceIconLocked() {
        ServiceInfo serviceInfo = this.mServiceInfo;
        if (serviceInfo == null) {
            return null;
        }
        return serviceInfo.loadIcon(getContext().getPackageManager());
    }

    protected final void removeSelfFromCacheLocked() {
        this.mMaster.removeCachedServiceLocked(this.mUserId);
    }

    public final boolean isDebug() {
        return this.mMaster.debug;
    }

    public final boolean isVerbose() {
        return this.mMaster.verbose;
    }

    public final int getTargedSdkLocked() {
        ServiceInfo serviceInfo = this.mServiceInfo;
        if (serviceInfo == null) {
            return 0;
        }
        return serviceInfo.applicationInfo.targetSdkVersion;
    }

    protected final boolean isSetupCompletedLocked() {
        return this.mSetupComplete;
    }

    protected final Context getContext() {
        return this.mMaster.getContext();
    }

    protected void dumpLocked(String prefix, PrintWriter pw) {
        pw.print(prefix);
        pw.print("User: ");
        pw.println(this.mUserId);
        if (this.mServiceInfo != null) {
            pw.print(prefix);
            pw.print("Service Label: ");
            pw.println(getServiceLabelLocked());
            pw.print(prefix);
            pw.print("Target SDK: ");
            pw.println(getTargedSdkLocked());
        }
        if (this.mMaster.mServiceNameResolver != null) {
            pw.print(prefix);
            pw.print("Name resolver: ");
            this.mMaster.mServiceNameResolver.dumpShort(pw, this.mUserId);
            pw.println();
        }
        pw.print(prefix);
        pw.print("Disabled by UserManager: ");
        pw.println(this.mDisabled);
        pw.print(prefix);
        pw.print("Setup complete: ");
        pw.println(this.mSetupComplete);
        if (this.mServiceInfo != null) {
            pw.print(prefix);
            pw.print("Service UID: ");
            pw.println(this.mServiceInfo.applicationInfo.uid);
        }
        pw.println();
    }
}

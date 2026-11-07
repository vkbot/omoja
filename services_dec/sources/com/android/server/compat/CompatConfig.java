package com.android.server.compat;

import android.app.compat.ChangeIdStateCache;
import android.compat.Compatibility;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Environment;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.LongArray;
import android.util.LongSparseArray;
import android.util.Slog;
import com.android.internal.compat.AndroidBuildClassifier;
import com.android.internal.compat.CompatibilityChangeConfig;
import com.android.internal.compat.CompatibilityChangeInfo;
import com.android.internal.compat.IOverrideValidator;
import com.android.internal.compat.OverrideAllowedState;
import com.android.server.compat.config.Change;
import com.android.server.compat.config.XmlParser;
import com.android.server.pm.ApexManager;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.xml.datatype.DatatypeConfigurationException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
final class CompatConfig {
    private static final String TAG = "CompatConfig";
    private final LongSparseArray<CompatChange> mChanges = new LongSparseArray<>();
    private IOverrideValidator mOverrideValidator;

    CompatConfig(AndroidBuildClassifier androidBuildClassifier, Context context) {
        this.mOverrideValidator = new OverrideValidatorImpl(androidBuildClassifier, context, this);
    }

    void addChange(CompatChange change) {
        synchronized (this.mChanges) {
            this.mChanges.put(change.getId(), change);
            invalidateCache();
        }
    }

    long[] getDisabledChanges(ApplicationInfo app) {
        LongArray disabled = new LongArray();
        synchronized (this.mChanges) {
            for (int i = 0; i < this.mChanges.size(); i++) {
                CompatChange c = this.mChanges.valueAt(i);
                if (!c.isEnabled(app)) {
                    disabled.add(c.getId());
                }
            }
        }
        return disabled.toArray();
    }

    long lookupChangeId(String name) {
        synchronized (this.mChanges) {
            for (int i = 0; i < this.mChanges.size(); i++) {
                if (TextUtils.equals(this.mChanges.valueAt(i).getName(), name)) {
                    return this.mChanges.keyAt(i);
                }
            }
            return -1L;
        }
    }

    boolean isChangeEnabled(long changeId, ApplicationInfo app) {
        synchronized (this.mChanges) {
            CompatChange c = this.mChanges.get(changeId);
            if (c == null) {
                return true;
            }
            return c.isEnabled(app);
        }
    }

    boolean addOverride(long changeId, String packageName, boolean enabled) throws RemoteException, SecurityException {
        boolean alreadyKnown = true;
        OverrideAllowedState allowedState = this.mOverrideValidator.getOverrideAllowedState(changeId, packageName);
        allowedState.enforce(changeId, packageName);
        synchronized (this.mChanges) {
            CompatChange c = this.mChanges.get(changeId);
            if (c == null) {
                alreadyKnown = false;
                c = new CompatChange(changeId);
                addChange(c);
            }
            c.addPackageOverride(packageName, enabled);
            invalidateCache();
        }
        return alreadyKnown;
    }

    boolean isKnownChangeId(long changeId) {
        boolean z;
        synchronized (this.mChanges) {
            CompatChange c = this.mChanges.get(changeId);
            z = c != null;
        }
        return z;
    }

    int minTargetSdkForChangeId(long changeId) {
        synchronized (this.mChanges) {
            CompatChange c = this.mChanges.get(changeId);
            if (c == null) {
                return 0;
            }
            return c.getEnableAfterTargetSdk();
        }
    }

    boolean isLoggingOnly(long changeId) {
        synchronized (this.mChanges) {
            CompatChange c = this.mChanges.get(changeId);
            if (c == null) {
                return false;
            }
            return c.getLoggingOnly();
        }
    }

    boolean isDisabled(long changeId) {
        synchronized (this.mChanges) {
            CompatChange c = this.mChanges.get(changeId);
            if (c == null) {
                return false;
            }
            return c.getDisabled();
        }
    }

    boolean removeOverride(long changeId, String packageName) throws RemoteException, SecurityException {
        boolean overrideExists = false;
        synchronized (this.mChanges) {
            CompatChange c = this.mChanges.get(changeId);
            if (c != null) {
                try {
                    overrideExists = c.hasOverride(packageName);
                    if (overrideExists) {
                        OverrideAllowedState allowedState = this.mOverrideValidator.getOverrideAllowedState(changeId, packageName);
                        allowedState.enforce(changeId, packageName);
                        c.removePackageOverride(packageName);
                    }
                } catch (RemoteException e) {
                    throw new RuntimeException("Unable to call override validator!", e);
                }
            }
            invalidateCache();
        }
        return overrideExists;
    }

    void addOverrides(CompatibilityChangeConfig overrides, String packageName) throws RemoteException, SecurityException {
        synchronized (this.mChanges) {
            for (Long changeId : overrides.enabledChanges()) {
                addOverride(changeId.longValue(), packageName, true);
            }
            for (Long changeId2 : overrides.disabledChanges()) {
                addOverride(changeId2.longValue(), packageName, false);
            }
            invalidateCache();
        }
    }

    void removePackageOverrides(String packageName) throws RemoteException, SecurityException {
        synchronized (this.mChanges) {
            for (int i = 0; i < this.mChanges.size(); i++) {
                try {
                    try {
                        CompatChange change = this.mChanges.valueAt(i);
                        if (change.hasOverride(packageName)) {
                            OverrideAllowedState allowedState = this.mOverrideValidator.getOverrideAllowedState(change.getId(), packageName);
                            allowedState.enforce(change.getId(), packageName);
                            if (change != null) {
                                this.mChanges.valueAt(i).removePackageOverride(packageName);
                            } else {
                                continue;
                            }
                        }
                    } catch (RemoteException e) {
                        throw new RuntimeException("Unable to call override validator!", e);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            invalidateCache();
        }
    }

    private long[] getAllowedChangesAfterTargetSdkForPackage(String packageName, int targetSdkVersion) throws RemoteException {
        LongArray allowed = new LongArray();
        synchronized (this.mChanges) {
            for (int i = 0; i < this.mChanges.size(); i++) {
                try {
                    try {
                        CompatChange change = this.mChanges.valueAt(i);
                        if (change.getEnableAfterTargetSdk() == targetSdkVersion) {
                            OverrideAllowedState allowedState = this.mOverrideValidator.getOverrideAllowedState(change.getId(), packageName);
                            if (allowedState.state == 0) {
                                allowed.add(change.getId());
                            } else {
                                continue;
                            }
                        }
                    } catch (RemoteException e) {
                        throw new RuntimeException("Unable to call override validator!", e);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return allowed.toArray();
    }

    int enableTargetSdkChangesForPackage(String packageName, int targetSdkVersion) throws RemoteException {
        long[] changes = getAllowedChangesAfterTargetSdkForPackage(packageName, targetSdkVersion);
        for (long changeId : changes) {
            addOverride(changeId, packageName, true);
        }
        return changes.length;
    }

    int disableTargetSdkChangesForPackage(String packageName, int targetSdkVersion) throws RemoteException {
        long[] changes = getAllowedChangesAfterTargetSdkForPackage(packageName, targetSdkVersion);
        for (long changeId : changes) {
            addOverride(changeId, packageName, false);
        }
        return changes.length;
    }

    boolean registerListener(long changeId, CompatChange.ChangeListener listener) {
        boolean alreadyKnown = true;
        synchronized (this.mChanges) {
            CompatChange c = this.mChanges.get(changeId);
            if (c == null) {
                alreadyKnown = false;
                c = new CompatChange(changeId);
                addChange(c);
            }
            c.registerListener(listener);
        }
        return alreadyKnown;
    }

    void clearChanges() {
        synchronized (this.mChanges) {
            this.mChanges.clear();
        }
    }

    void dumpConfig(PrintWriter pw) {
        synchronized (this.mChanges) {
            if (this.mChanges.size() == 0) {
                pw.println("No compat overrides.");
                return;
            }
            for (int i = 0; i < this.mChanges.size(); i++) {
                CompatChange c = this.mChanges.valueAt(i);
                pw.println(c.toString());
            }
        }
    }

    CompatibilityChangeConfig getAppConfig(ApplicationInfo applicationInfo) {
        Set<Long> enabled = new HashSet<>();
        Set<Long> disabled = new HashSet<>();
        synchronized (this.mChanges) {
            for (int i = 0; i < this.mChanges.size(); i++) {
                CompatChange c = this.mChanges.valueAt(i);
                if (c.isEnabled(applicationInfo)) {
                    enabled.add(Long.valueOf(c.getId()));
                } else {
                    disabled.add(Long.valueOf(c.getId()));
                }
            }
        }
        return new CompatibilityChangeConfig(new Compatibility.ChangeConfig(enabled, disabled));
    }

    CompatibilityChangeInfo[] dumpChanges() {
        CompatibilityChangeInfo[] changeInfos;
        synchronized (this.mChanges) {
            changeInfos = new CompatibilityChangeInfo[this.mChanges.size()];
            for (int i = 0; i < this.mChanges.size(); i++) {
                CompatChange change = this.mChanges.valueAt(i);
                changeInfos[i] = new CompatibilityChangeInfo(Long.valueOf(change.getId()), change.getName(), change.getEnableAfterTargetSdk(), change.getDisabled(), change.getLoggingOnly(), change.getDescription());
            }
        }
        return changeInfos;
    }

    static CompatConfig create(AndroidBuildClassifier androidBuildClassifier, Context context) {
        CompatConfig config = new CompatConfig(androidBuildClassifier, context);
        config.initConfigFromLib(Environment.buildPath(Environment.getRootDirectory(), new String[]{"etc", "compatconfig"}));
        config.initConfigFromLib(Environment.buildPath(Environment.getRootDirectory(), new String[]{"system_ext", "etc", "compatconfig"}));
        List<ApexManager.ActiveApexInfo> apexes = ApexManager.getInstance().getActiveApexInfos();
        for (ApexManager.ActiveApexInfo apex : apexes) {
            config.initConfigFromLib(Environment.buildPath(apex.apexDirectory, new String[]{"etc", "compatconfig"}));
        }
        config.invalidateCache();
        return config;
    }

    void initConfigFromLib(File libraryDir) {
        if (!libraryDir.exists() || !libraryDir.isDirectory()) {
            Slog.d(TAG, "No directory " + libraryDir + ", skipping");
            return;
        }
        for (File f : libraryDir.listFiles()) {
            Slog.d(TAG, "Found a config file: " + f.getPath());
            readConfig(f);
        }
    }

    private void readConfig(File configFile) {
        try {
            InputStream in = new BufferedInputStream(new FileInputStream(configFile));
            try {
                for (Change change : XmlParser.read(in).getCompatChange()) {
                    Slog.d(TAG, "Adding: " + change.toString());
                    addChange(new CompatChange(change));
                }
                in.close();
            } catch (Throwable th) {
                try {
                    in.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | DatatypeConfigurationException | XmlPullParserException e) {
            Slog.e(TAG, "Encountered an error while reading/parsing compat config file", e);
        }
    }

    IOverrideValidator getOverrideValidator() {
        return this.mOverrideValidator;
    }

    private void invalidateCache() {
        ChangeIdStateCache.invalidate();
    }
}

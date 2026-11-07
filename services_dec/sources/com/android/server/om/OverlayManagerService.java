package com.android.server.om;

import android.app.ActivityManager;
import android.app.AppGlobals;
import android.app.IActivityManager;
import android.app.IApplicationThread;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.om.IOverlayManager;
import android.content.om.OverlayInfo;
import android.content.om.OverlayableInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManagerInternal;
import android.content.pm.UserInfo;
import android.content.res.ApkAssets;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Environment;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.content.om.OverlayConfig;
import com.android.server.FgThread;
import com.android.server.IoThread;
import com.android.server.LocalServices;
import com.android.server.SystemConfig;
import com.android.server.SystemService;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.Settings;
import com.android.server.pm.UserManagerService;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import libcore.util.EmptyArray;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class OverlayManagerService extends SystemService {
    static final boolean DEBUG = false;
    private static final String DEFAULT_OVERLAYS_PROP = "ro.boot.vendor.overlay.theme";
    static final String TAG = "OverlayManager";
    private final OverlayActorEnforcer mActorEnforcer;
    private final OverlayManagerServiceImpl mImpl;
    private final Object mLock;
    private final PackageManagerHelperImpl mPackageManager;
    private final AtomicBoolean mPersistSettingsScheduled;
    private final IBinder mService;
    private final OverlayManagerSettings mSettings;
    private final AtomicFile mSettingsFile;
    private final UserManagerService mUserManager;

    public OverlayManagerService(Context context) throws Throwable {
        super(context);
        this.mLock = new Object();
        this.mPersistSettingsScheduled = new AtomicBoolean(false);
        this.mService = new IOverlayManager.Stub() { // from class: com.android.server.om.OverlayManagerService.1
            public Map<String, List<OverlayInfo>> getAllOverlays(int userIdArg) {
                Map<String, List<OverlayInfo>> overlaysForUser;
                try {
                    Trace.traceBegin(67108864L, "OMS#getAllOverlays " + userIdArg);
                    int realUserId = handleIncomingUser(userIdArg, "getAllOverlays");
                    synchronized (OverlayManagerService.this.mLock) {
                        overlaysForUser = OverlayManagerService.this.mImpl.getOverlaysForUser(realUserId);
                    }
                    Trace.traceEnd(67108864L);
                    return overlaysForUser;
                } catch (Throwable th) {
                    Trace.traceEnd(67108864L);
                    throw th;
                }
            }

            public List<OverlayInfo> getOverlayInfosForTarget(String targetPackageName, int userIdArg) {
                List<OverlayInfo> overlayInfosForTarget;
                if (targetPackageName == null) {
                    return Collections.emptyList();
                }
                try {
                    Trace.traceBegin(67108864L, "OMS#getOverlayInfosForTarget " + targetPackageName);
                    int realUserId = handleIncomingUser(userIdArg, "getOverlayInfosForTarget");
                    synchronized (OverlayManagerService.this.mLock) {
                        overlayInfosForTarget = OverlayManagerService.this.mImpl.getOverlayInfosForTarget(targetPackageName, realUserId);
                    }
                    Trace.traceEnd(67108864L);
                    return overlayInfosForTarget;
                } catch (Throwable th) {
                    Trace.traceEnd(67108864L);
                    throw th;
                }
            }

            public OverlayInfo getOverlayInfo(String packageName, int userIdArg) {
                OverlayInfo overlayInfo;
                if (packageName == null) {
                    return null;
                }
                try {
                    Trace.traceBegin(67108864L, "OMS#getOverlayInfo " + packageName);
                    int realUserId = handleIncomingUser(userIdArg, "getOverlayInfo");
                    synchronized (OverlayManagerService.this.mLock) {
                        overlayInfo = OverlayManagerService.this.mImpl.getOverlayInfo(packageName, realUserId);
                    }
                    Trace.traceEnd(67108864L);
                    return overlayInfo;
                } catch (Throwable th) {
                    Trace.traceEnd(67108864L);
                    throw th;
                }
            }

            public boolean setEnabled(String packageName, boolean enable, int userIdArg) {
                boolean enabled;
                if (packageName == null) {
                    return false;
                }
                try {
                    Trace.traceBegin(67108864L, "OMS#setEnabled " + packageName + " " + enable);
                    int realUserId = handleIncomingUser(userIdArg, "setEnabled");
                    enforceActor(packageName, "setEnabled", realUserId);
                    long ident = Binder.clearCallingIdentity();
                    try {
                        synchronized (OverlayManagerService.this.mLock) {
                            enabled = OverlayManagerService.this.mImpl.setEnabled(packageName, enable, realUserId);
                        }
                        Binder.restoreCallingIdentity(ident);
                        Trace.traceEnd(67108864L);
                        return enabled;
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(ident);
                        throw th;
                    }
                } catch (Throwable th2) {
                    Trace.traceEnd(67108864L);
                    throw th2;
                }
            }

            public boolean setEnabledExclusive(String packageName, boolean enable, int userIdArg) {
                boolean enabledExclusive;
                if (packageName == null || !enable) {
                    return false;
                }
                try {
                    Trace.traceBegin(67108864L, "OMS#setEnabledExclusive " + packageName + " " + enable);
                    int realUserId = handleIncomingUser(userIdArg, "setEnabledExclusive");
                    enforceActor(packageName, "setEnabledExclusive", realUserId);
                    long ident = Binder.clearCallingIdentity();
                    try {
                        synchronized (OverlayManagerService.this.mLock) {
                            enabledExclusive = OverlayManagerService.this.mImpl.setEnabledExclusive(packageName, false, realUserId);
                        }
                        Binder.restoreCallingIdentity(ident);
                        Trace.traceEnd(67108864L);
                        return enabledExclusive;
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(ident);
                        throw th;
                    }
                } catch (Throwable th2) {
                    Trace.traceEnd(67108864L);
                    throw th2;
                }
            }

            public boolean setEnabledExclusiveInCategory(String packageName, int userIdArg) {
                boolean enabledExclusive;
                if (packageName == null) {
                    return false;
                }
                try {
                    Trace.traceBegin(67108864L, "OMS#setEnabledExclusiveInCategory " + packageName);
                    int realUserId = handleIncomingUser(userIdArg, "setEnabledExclusiveInCategory");
                    enforceActor(packageName, "setEnabledExclusiveInCategory", realUserId);
                    long ident = Binder.clearCallingIdentity();
                    try {
                        synchronized (OverlayManagerService.this.mLock) {
                            enabledExclusive = OverlayManagerService.this.mImpl.setEnabledExclusive(packageName, true, realUserId);
                        }
                        Binder.restoreCallingIdentity(ident);
                        Trace.traceEnd(67108864L);
                        return enabledExclusive;
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(ident);
                        throw th;
                    }
                } catch (Throwable th2) {
                    Trace.traceEnd(67108864L);
                    throw th2;
                }
            }

            public boolean setPriority(String packageName, String parentPackageName, int userIdArg) {
                boolean priority;
                if (packageName == null || parentPackageName == null) {
                    return false;
                }
                try {
                    Trace.traceBegin(67108864L, "OMS#setPriority " + packageName + " " + parentPackageName);
                    int realUserId = handleIncomingUser(userIdArg, "setPriority");
                    enforceActor(packageName, "setPriority", realUserId);
                    long ident = Binder.clearCallingIdentity();
                    try {
                        synchronized (OverlayManagerService.this.mLock) {
                            priority = OverlayManagerService.this.mImpl.setPriority(packageName, parentPackageName, realUserId);
                        }
                        Binder.restoreCallingIdentity(ident);
                        Trace.traceEnd(67108864L);
                        return priority;
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(ident);
                        throw th;
                    }
                } catch (Throwable th2) {
                    Trace.traceEnd(67108864L);
                    throw th2;
                }
            }

            public boolean setHighestPriority(String packageName, int userIdArg) {
                boolean highestPriority;
                if (packageName == null) {
                    return false;
                }
                try {
                    Trace.traceBegin(67108864L, "OMS#setHighestPriority " + packageName);
                    int realUserId = handleIncomingUser(userIdArg, "setHighestPriority");
                    enforceActor(packageName, "setHighestPriority", realUserId);
                    long ident = Binder.clearCallingIdentity();
                    try {
                        synchronized (OverlayManagerService.this.mLock) {
                            highestPriority = OverlayManagerService.this.mImpl.setHighestPriority(packageName, realUserId);
                        }
                        Binder.restoreCallingIdentity(ident);
                        Trace.traceEnd(67108864L);
                        return highestPriority;
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(ident);
                        throw th;
                    }
                } catch (Throwable th2) {
                    Trace.traceEnd(67108864L);
                    throw th2;
                }
            }

            public boolean setLowestPriority(String packageName, int userIdArg) {
                boolean lowestPriority;
                if (packageName == null) {
                    return false;
                }
                try {
                    Trace.traceBegin(67108864L, "OMS#setLowestPriority " + packageName);
                    int realUserId = handleIncomingUser(userIdArg, "setLowestPriority");
                    enforceActor(packageName, "setLowestPriority", realUserId);
                    long ident = Binder.clearCallingIdentity();
                    try {
                        synchronized (OverlayManagerService.this.mLock) {
                            lowestPriority = OverlayManagerService.this.mImpl.setLowestPriority(packageName, realUserId);
                        }
                        Binder.restoreCallingIdentity(ident);
                        Trace.traceEnd(67108864L);
                        return lowestPriority;
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(ident);
                        throw th;
                    }
                } catch (Throwable th2) {
                    Trace.traceEnd(67108864L);
                    throw th2;
                }
            }

            public String[] getDefaultOverlayPackages() {
                String[] defaultOverlayPackages;
                try {
                    Trace.traceBegin(67108864L, "OMS#getDefaultOverlayPackages");
                    OverlayManagerService.this.getContext().enforceCallingOrSelfPermission("android.permission.MODIFY_THEME_OVERLAY", null);
                    long ident = Binder.clearCallingIdentity();
                    try {
                        synchronized (OverlayManagerService.this.mLock) {
                            defaultOverlayPackages = OverlayManagerService.this.mImpl.getDefaultOverlayPackages();
                        }
                        Binder.restoreCallingIdentity(ident);
                        Trace.traceEnd(67108864L);
                        return defaultOverlayPackages;
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(ident);
                        throw th;
                    }
                } catch (Throwable th2) {
                    Trace.traceEnd(67108864L);
                    throw th2;
                }
            }

            public void invalidateCachesForOverlay(String packageName, int userIdArg) {
                if (packageName == null) {
                    return;
                }
                int realUserId = handleIncomingUser(userIdArg, "invalidateCachesForOverlay");
                enforceActor(packageName, "invalidateCachesForOverlay", realUserId);
                long ident = Binder.clearCallingIdentity();
                try {
                    synchronized (OverlayManagerService.this.mLock) {
                        OverlayManagerService.this.mImpl.removeIdmapForOverlay(packageName, realUserId);
                    }
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
                new OverlayManagerShellCommand(OverlayManagerService.this.getContext(), this).exec(this, in, out, err, args, callback, resultReceiver);
            }

            protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
                String opt;
                DumpState dumpState = new DumpState();
                dumpState.setUserId(-1);
                int opti = 0;
                while (opti < args.length && (opt = args[opti]) != null && opt.length() > 0 && opt.charAt(0) == '-') {
                    opti++;
                    if ("-h".equals(opt)) {
                        pw.println("dump [-h] [--verbose] [--user USER_ID] [[FIELD] PACKAGE]");
                        pw.println("  Print debugging information about the overlay manager.");
                        pw.println("  With optional parameter PACKAGE, limit output to the specified");
                        pw.println("  package. With optional parameter FIELD, limit output to");
                        pw.println("  the value of that SettingsItem field. Field names are");
                        pw.println("  case insensitive and out.println the m prefix can be omitted,");
                        pw.println("  so the following are equivalent: mState, mstate, State, state.");
                        return;
                    }
                    if ("--user".equals(opt)) {
                        if (opti >= args.length) {
                            pw.println("Error: user missing argument");
                            return;
                        }
                        try {
                            dumpState.setUserId(Integer.parseInt(args[opti]));
                            opti++;
                        } catch (NumberFormatException e) {
                            pw.println("Error: user argument is not a number: " + args[opti]);
                            return;
                        }
                    } else if ("--verbose".equals(opt)) {
                        dumpState.setVerbose(true);
                    } else {
                        pw.println("Unknown argument: " + opt + "; use -h for help");
                    }
                }
                if (opti < args.length) {
                    String arg = args[opti];
                    opti++;
                    switch (arg) {
                        case "packagename":
                        case "userid":
                        case "targetpackagename":
                        case "targetoverlayablename":
                        case "basecodepath":
                        case "state":
                        case "isenabled":
                        case "ismutable":
                        case "priority":
                        case "category":
                            dumpState.setField(arg);
                            break;
                        default:
                            dumpState.setPackageName(arg);
                            break;
                    }
                }
                if (dumpState.getPackageName() == null && opti < args.length) {
                    dumpState.setPackageName(args[opti]);
                    int i = opti + 1;
                }
                enforceDumpPermission("dump");
                synchronized (OverlayManagerService.this.mLock) {
                    OverlayManagerService.this.mImpl.dump(pw, dumpState);
                    if (dumpState.getPackageName() == null) {
                        OverlayManagerService.this.mPackageManager.dump(pw, dumpState);
                    }
                }
            }

            private int handleIncomingUser(int userId, String message) {
                return ActivityManager.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, false, true, message, null);
            }

            private void enforceDumpPermission(String message) {
                OverlayManagerService.this.getContext().enforceCallingOrSelfPermission("android.permission.DUMP", message);
            }

            private void enforceActor(String packageName, String methodName, int realUserId) throws SecurityException {
                OverlayInfo overlayInfo = OverlayManagerService.this.mImpl.getOverlayInfo(packageName, realUserId);
                if (overlayInfo == null) {
                    throw new IllegalArgumentException("Unable to retrieve overlay information for " + packageName);
                }
                int callingUid = Binder.getCallingUid();
                OverlayManagerService.this.mActorEnforcer.enforceActor(overlayInfo, methodName, callingUid, realUserId);
            }
        };
        try {
            Trace.traceBegin(67108864L, "OMS#OverlayManagerService");
            this.mSettingsFile = new AtomicFile(new File(Environment.getDataSystemDirectory(), "overlays.xml"), "overlays");
            try {
                this.mPackageManager = new PackageManagerHelperImpl(context);
                this.mUserManager = UserManagerService.getInstance();
                IdmapManager im = new IdmapManager(IdmapDaemon.getInstance(), this.mPackageManager);
                OverlayManagerSettings overlayManagerSettings = new OverlayManagerSettings();
                this.mSettings = overlayManagerSettings;
                this.mImpl = new OverlayManagerServiceImpl(this.mPackageManager, im, overlayManagerSettings, OverlayConfig.getSystemInstance(), getDefaultOverlayPackages(), new OverlayChangeListener());
                this.mActorEnforcer = new OverlayActorEnforcer(this.mPackageManager);
                IntentFilter packageFilter = new IntentFilter();
                packageFilter.addAction("android.intent.action.PACKAGE_ADDED");
                packageFilter.addAction("android.intent.action.PACKAGE_CHANGED");
                packageFilter.addAction("android.intent.action.PACKAGE_REMOVED");
                packageFilter.addDataScheme(Settings.ATTR_PACKAGE);
                getContext().registerReceiverAsUser(new PackageReceiver(), UserHandle.ALL, packageFilter, null, null);
                IntentFilter userFilter = new IntentFilter();
                userFilter.addAction("android.intent.action.USER_ADDED");
                userFilter.addAction("android.intent.action.USER_REMOVED");
                getContext().registerReceiverAsUser(new UserReceiver(), UserHandle.ALL, userFilter, null, null);
                restoreSettings();
                initIfNeeded();
                onSwitchUser(0);
                publishBinderService("overlay", this.mService);
                publishLocalService(OverlayManagerService.class, this);
                Trace.traceEnd(67108864L);
            } catch (Throwable th) {
                th = th;
                Trace.traceEnd(67108864L);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.android.server.SystemService
    public void onStart() {
    }

    private void initIfNeeded() {
        UserManager um = (UserManager) getContext().getSystemService(UserManager.class);
        List<UserInfo> users = um.getUsers(true);
        synchronized (this.mLock) {
            int userCount = users.size();
            for (int i = 0; i < userCount; i++) {
                UserInfo userInfo = users.get(i);
                if (!userInfo.supportsSwitchTo() && userInfo.id != 0) {
                    List<String> targets = this.mImpl.updateOverlaysForUser(users.get(i).id);
                    updateOverlayPaths(users.get(i).id, targets);
                }
            }
        }
    }

    @Override // com.android.server.SystemService
    public void onSwitchUser(int newUserId) {
        try {
            Trace.traceBegin(67108864L, "OMS#onSwitchUser " + newUserId);
            synchronized (this.mLock) {
                List<String> targets = this.mImpl.updateOverlaysForUser(newUserId);
                updateAssets(newUserId, targets);
            }
            schedulePersistSettings();
            Trace.traceEnd(67108864L);
        } catch (Throwable th) {
            Trace.traceEnd(67108864L);
            throw th;
        }
    }

    private static String[] getDefaultOverlayPackages() {
        String str = SystemProperties.get(DEFAULT_OVERLAYS_PROP);
        if (TextUtils.isEmpty(str)) {
            return EmptyArray.STRING;
        }
        ArraySet<String> defaultPackages = new ArraySet<>();
        for (String packageName : str.split(";")) {
            if (!TextUtils.isEmpty(packageName)) {
                defaultPackages.add(packageName);
            }
        }
        return (String[]) defaultPackages.toArray(new String[defaultPackages.size()]);
    }

    private final class PackageReceiver extends BroadcastReceiver {
        private PackageReceiver() {
        }

        /* JADX WARN: Code duplicated, block: B:30:0x0076  */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int[] userIds;
            String action = intent.getAction();
            if (action == null) {
                Slog.e(OverlayManagerService.TAG, "Cannot handle package broadcast with null action");
                return;
            }
            Uri data = intent.getData();
            if (data == null) {
                Slog.e(OverlayManagerService.TAG, "Cannot handle package broadcast with null data");
                return;
            }
            String packageName = data.getSchemeSpecificPart();
            byte b = 0;
            boolean replacing = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
            int extraUid = intent.getIntExtra("android.intent.extra.UID", -10000);
            if (extraUid == -10000) {
                userIds = OverlayManagerService.this.mUserManager.getUserIds();
            } else {
                userIds = new int[]{UserHandle.getUserId(extraUid)};
            }
            int iHashCode = action.hashCode();
            if (iHashCode != 172491798) {
                if (iHashCode != 525384130) {
                    if (iHashCode != 1544582882 || !action.equals("android.intent.action.PACKAGE_ADDED")) {
                        b = -1;
                    }
                } else if (action.equals("android.intent.action.PACKAGE_REMOVED")) {
                    b = 2;
                } else {
                    b = -1;
                }
            } else if (action.equals("android.intent.action.PACKAGE_CHANGED")) {
                b = 1;
            } else {
                b = -1;
            }
            if (b != 0) {
                if (b == 1) {
                    if (!"android.intent.action.OVERLAY_CHANGED".equals(intent.getStringExtra("android.intent.extra.REASON"))) {
                        onPackageChanged(packageName, userIds);
                        return;
                    }
                    return;
                } else {
                    if (b == 2) {
                        if (replacing) {
                            onPackageReplacing(packageName, userIds);
                            return;
                        } else {
                            onPackageRemoved(packageName, userIds);
                            return;
                        }
                    }
                    return;
                }
            }
            if (replacing) {
                onPackageReplaced(packageName, userIds);
            } else {
                onPackageAdded(packageName, userIds);
            }
        }

        private void onPackageAdded(String packageName, int[] userIds) {
            try {
                Trace.traceBegin(67108864L, "OMS#onPackageAdded " + packageName);
                int length = userIds.length;
                for (int i = 0; i < length; i++) {
                    int userId = userIds[i];
                    synchronized (OverlayManagerService.this.mLock) {
                        PackageInfo pi = OverlayManagerService.this.mPackageManager.getPackageInfo(packageName, userId, false);
                        if (pi != null && !pi.applicationInfo.isInstantApp()) {
                            OverlayManagerService.this.mPackageManager.cachePackageInfo(packageName, userId, pi);
                            if (pi.isOverlayPackage()) {
                                OverlayManagerService.this.mImpl.onOverlayPackageAdded(packageName, userId);
                            } else {
                                OverlayManagerService.this.mImpl.onTargetPackageAdded(packageName, userId);
                            }
                        }
                    }
                }
                Trace.traceEnd(67108864L);
            } catch (Throwable th) {
                Trace.traceEnd(67108864L);
                throw th;
            }
        }

        private void onPackageChanged(String packageName, int[] userIds) {
            try {
                Trace.traceBegin(67108864L, "OMS#onPackageChanged " + packageName);
                int length = userIds.length;
                for (int i = 0; i < length; i++) {
                    int userId = userIds[i];
                    synchronized (OverlayManagerService.this.mLock) {
                        PackageInfo pi = OverlayManagerService.this.mPackageManager.getPackageInfo(packageName, userId, false);
                        if (pi != null && pi.applicationInfo.isInstantApp()) {
                            OverlayManagerService.this.mPackageManager.cachePackageInfo(packageName, userId, pi);
                            if (pi.isOverlayPackage()) {
                                OverlayManagerService.this.mImpl.onOverlayPackageChanged(packageName, userId);
                            } else {
                                OverlayManagerService.this.mImpl.onTargetPackageChanged(packageName, userId);
                            }
                        }
                    }
                }
                Trace.traceEnd(67108864L);
            } catch (Throwable th) {
                Trace.traceEnd(67108864L);
                throw th;
            }
        }

        private void onPackageReplacing(String packageName, int[] userIds) {
            try {
                Trace.traceBegin(67108864L, "OMS#onPackageReplacing " + packageName);
                for (int userId : userIds) {
                    synchronized (OverlayManagerService.this.mLock) {
                        OverlayManagerService.this.mPackageManager.forgetPackageInfo(packageName, userId);
                        OverlayInfo oi = OverlayManagerService.this.mImpl.getOverlayInfo(packageName, userId);
                        if (oi != null) {
                            OverlayManagerService.this.mImpl.onOverlayPackageReplacing(packageName, userId);
                        }
                    }
                }
                Trace.traceEnd(67108864L);
            } catch (Throwable th) {
                Trace.traceEnd(67108864L);
                throw th;
            }
        }

        private void onPackageReplaced(String packageName, int[] userIds) {
            try {
                Trace.traceBegin(67108864L, "OMS#onPackageReplaced " + packageName);
                int length = userIds.length;
                for (int i = 0; i < length; i++) {
                    int userId = userIds[i];
                    synchronized (OverlayManagerService.this.mLock) {
                        PackageInfo pi = OverlayManagerService.this.mPackageManager.getPackageInfo(packageName, userId, false);
                        if (pi != null && !pi.applicationInfo.isInstantApp()) {
                            OverlayManagerService.this.mPackageManager.cachePackageInfo(packageName, userId, pi);
                            if (pi.isOverlayPackage()) {
                                OverlayManagerService.this.mImpl.onOverlayPackageReplaced(packageName, userId);
                            } else {
                                OverlayManagerService.this.mImpl.onTargetPackageReplaced(packageName, userId);
                            }
                        }
                    }
                }
                Trace.traceEnd(67108864L);
            } catch (Throwable th) {
                Trace.traceEnd(67108864L);
                throw th;
            }
        }

        private void onPackageRemoved(String packageName, int[] userIds) {
            try {
                Trace.traceBegin(67108864L, "OMS#onPackageRemoved " + packageName);
                for (int userId : userIds) {
                    synchronized (OverlayManagerService.this.mLock) {
                        OverlayManagerService.this.mPackageManager.forgetPackageInfo(packageName, userId);
                        OverlayInfo oi = OverlayManagerService.this.mImpl.getOverlayInfo(packageName, userId);
                        if (oi != null) {
                            OverlayManagerService.this.mImpl.onOverlayPackageRemoved(packageName, userId);
                        } else {
                            OverlayManagerService.this.mImpl.onTargetPackageRemoved(packageName, userId);
                        }
                    }
                }
                Trace.traceEnd(67108864L);
            } catch (Throwable th) {
                Trace.traceEnd(67108864L);
                throw th;
            }
        }
    }

    private final class UserReceiver extends BroadcastReceiver {
        private UserReceiver() {
        }

        /* JADX WARN: Code duplicated, block: B:13:0x0030  */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            byte b;
            ArrayList<String> targets;
            int userId = intent.getIntExtra("android.intent.extra.user_handle", -10000);
            String action = intent.getAction();
            int iHashCode = action.hashCode();
            if (iHashCode != -2061058799) {
                if (iHashCode == 1121780209 && action.equals("android.intent.action.USER_ADDED")) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (action.equals("android.intent.action.USER_REMOVED")) {
                b = 1;
            } else {
                b = -1;
            }
            if (b == 0) {
                if (userId != -10000) {
                    try {
                        Trace.traceBegin(67108864L, "OMS ACTION_USER_ADDED");
                        synchronized (OverlayManagerService.this.mLock) {
                            targets = OverlayManagerService.this.mImpl.updateOverlaysForUser(userId);
                        }
                        OverlayManagerService.this.updateOverlayPaths(userId, targets);
                        Trace.traceEnd(67108864L);
                        return;
                    } catch (Throwable th) {
                        Trace.traceEnd(67108864L);
                        throw th;
                    }
                }
                return;
            }
            if (b == 1 && userId != -10000) {
                try {
                    Trace.traceBegin(67108864L, "OMS ACTION_USER_REMOVED");
                    synchronized (OverlayManagerService.this.mLock) {
                        OverlayManagerService.this.mImpl.onUserRemoved(userId);
                        OverlayManagerService.this.mPackageManager.forgetAllPackageInfos(userId);
                    }
                    Trace.traceEnd(67108864L);
                } catch (Throwable th2) {
                    Trace.traceEnd(67108864L);
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class OverlayChangeListener implements OverlayManagerServiceImpl.OverlayChangeListener {
        private OverlayChangeListener() {
        }

        @Override // com.android.server.om.OverlayManagerServiceImpl.OverlayChangeListener
        public void onOverlaysChanged(final String targetPackageName, final int userId) {
            OverlayManagerService.this.schedulePersistSettings();
            FgThread.getHandler().post(new Runnable() { // from class: com.android.server.om.-$$Lambda$OverlayManagerService$OverlayChangeListener$u9oeN2C0PDMo0pYiLqfMBkwuMNA
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.lambda$onOverlaysChanged$0$OverlayManagerService$OverlayChangeListener(userId, targetPackageName);
                }
            });
        }

        public /* synthetic */ void lambda$onOverlaysChanged$0$OverlayManagerService$OverlayChangeListener(int userId, String targetPackageName) throws Throwable {
            OverlayManagerService.this.updateAssets(userId, targetPackageName);
            Intent intent = new Intent("android.intent.action.OVERLAY_CHANGED", Uri.fromParts(Settings.ATTR_PACKAGE, targetPackageName, null));
            intent.setFlags(67108864);
            try {
                try {
                    ActivityManager.getService().broadcastIntentWithFeature((IApplicationThread) null, (String) null, intent, (String) null, (IIntentReceiver) null, 0, (String) null, (Bundle) null, (String[]) null, -1, (Bundle) null, false, false, userId);
                } catch (RemoteException e) {
                }
            } catch (RemoteException e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<String> updateOverlayPaths(int userId, List<String> targetPackageNames) throws Throwable {
        List<String> targetPackageNames2 = targetPackageNames;
        try {
            Trace.traceBegin(67108864L, "OMS#updateOverlayPaths " + targetPackageNames2);
            PackageManagerInternal pm = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
            boolean updateFrameworkRes = targetPackageNames2.contains(PackageManagerService.PLATFORM_PACKAGE_NAME);
            if (updateFrameworkRes) {
                targetPackageNames2 = pm.getTargetPackageNames(userId);
            }
            try {
                Map<String, List<String>> pendingChanges = new ArrayMap<>(targetPackageNames2.size());
                synchronized (this.mLock) {
                    List<String> frameworkOverlays = this.mImpl.getEnabledOverlayPackageNames(PackageManagerService.PLATFORM_PACKAGE_NAME, userId);
                    int n = targetPackageNames2.size();
                    for (int i = 0; i < n; i++) {
                        String targetPackageName = targetPackageNames2.get(i);
                        List<String> list = new ArrayList<>();
                        if (!PackageManagerService.PLATFORM_PACKAGE_NAME.equals(targetPackageName)) {
                            list.addAll(frameworkOverlays);
                        }
                        list.addAll(this.mImpl.getEnabledOverlayPackageNames(targetPackageName, userId));
                        pendingChanges.put(targetPackageName, list);
                    }
                }
                HashSet<String> updatedPackages = new HashSet<>();
                int n2 = targetPackageNames2.size();
                for (int i2 = 0; i2 < n2; i2++) {
                    String targetPackageName2 = targetPackageNames2.get(i2);
                    if (!pm.setEnabledOverlayPackages(userId, targetPackageName2, pendingChanges.get(targetPackageName2), updatedPackages)) {
                        Slog.e(TAG, String.format("Failed to change enabled overlays for %s user %d", targetPackageName2, Integer.valueOf(userId)));
                    }
                }
                ArrayList<String> arrayList = new ArrayList<>(updatedPackages);
                Trace.traceEnd(67108864L);
                return arrayList;
            } catch (Throwable th) {
                th = th;
                Trace.traceEnd(67108864L);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAssets(int userId, String targetPackageName) throws Throwable {
        updateAssets(userId, Collections.singletonList(targetPackageName));
    }

    private void updateAssets(int userId, List<String> targetPackageNames) throws Throwable {
        IActivityManager am = ActivityManager.getService();
        try {
            ArrayList<String> updatedPaths = updateOverlayPaths(userId, targetPackageNames);
            am.scheduleApplicationInfoChanged(updatedPaths, userId);
        } catch (RemoteException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void schedulePersistSettings() {
        if (this.mPersistSettingsScheduled.getAndSet(true)) {
            return;
        }
        IoThread.getHandler().post(new Runnable() { // from class: com.android.server.om.-$$Lambda$OverlayManagerService$_WGEV7N0qhntbqqDW3A1O-TVv5o
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$schedulePersistSettings$0$OverlayManagerService();
            }
        });
    }

    public /* synthetic */ void lambda$schedulePersistSettings$0$OverlayManagerService() {
        this.mPersistSettingsScheduled.set(false);
        synchronized (this.mLock) {
            FileOutputStream stream = null;
            try {
                stream = this.mSettingsFile.startWrite();
                this.mSettings.persist(stream);
                this.mSettingsFile.finishWrite(stream);
            } catch (IOException | XmlPullParserException e) {
                this.mSettingsFile.failWrite(stream);
                Slog.e(TAG, "failed to persist overlay state", e);
            }
        }
    }

    private void restoreSettings() {
        try {
            Trace.traceBegin(67108864L, "OMS#restoreSettings");
            synchronized (this.mLock) {
                if (this.mSettingsFile.getBaseFile().exists()) {
                    try {
                        FileInputStream stream = this.mSettingsFile.openRead();
                        try {
                            this.mSettings.restore(stream);
                            List<UserInfo> liveUsers = this.mUserManager.getUsers(true);
                            int[] liveUserIds = new int[liveUsers.size()];
                            for (int i = 0; i < liveUsers.size(); i++) {
                                liveUserIds[i] = liveUsers.get(i).getUserHandle().getIdentifier();
                            }
                            Arrays.sort(liveUserIds);
                            for (int userId : this.mSettings.getUsers()) {
                                if (Arrays.binarySearch(liveUserIds, userId) < 0) {
                                    this.mSettings.removeUser(userId);
                                }
                            }
                            if (stream != null) {
                                stream.close();
                            }
                        } catch (Throwable th) {
                            if (stream != null) {
                                try {
                                    stream.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                            throw th;
                        }
                    } catch (IOException | XmlPullParserException e) {
                        Slog.e(TAG, "failed to restore overlay state", e);
                    }
                    Trace.traceEnd(67108864L);
                    return;
                }
                Trace.traceEnd(67108864L);
            }
        } catch (Throwable th3) {
            Trace.traceEnd(67108864L);
            throw th3;
        }
    }

    private static final class PackageManagerHelperImpl implements PackageManagerHelper, OverlayableInfoCallback {
        private static final String TAB1 = "    ";
        private static final String TAB2 = "        ";
        private final Context mContext;
        private final SparseArray<HashMap<String, PackageInfo>> mCache = new SparseArray<>();
        private final IPackageManager mPackageManager = AppGlobals.getPackageManager();
        private final PackageManagerInternal mPackageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);

        PackageManagerHelperImpl(Context context) {
            this.mContext = context;
        }

        public PackageInfo getPackageInfo(String packageName, int userId, boolean useCache) {
            PackageInfo cachedPi;
            if (useCache && (cachedPi = getCachedPackageInfo(packageName, userId)) != null) {
                return cachedPi;
            }
            try {
                PackageInfo pi = this.mPackageManager.getPackageInfo(packageName, 0, userId);
                if (useCache && pi != null) {
                    cachePackageInfo(packageName, userId, pi);
                }
                return pi;
            } catch (RemoteException e) {
                return null;
            }
        }

        @Override // com.android.server.om.PackageManagerHelper, com.android.server.om.OverlayableInfoCallback
        public PackageInfo getPackageInfo(String packageName, int userId) {
            return getPackageInfo(packageName, userId, true);
        }

        @Override // com.android.server.om.OverlayableInfoCallback
        public Map<String, Map<String, String>> getNamedActors() {
            return SystemConfig.getInstance().getNamedActors();
        }

        @Override // com.android.server.om.PackageManagerHelper, com.android.server.om.OverlayableInfoCallback
        public boolean signaturesMatching(String packageName1, String packageName2, int userId) {
            try {
                return this.mPackageManager.checkSignatures(packageName1, packageName2) == 0;
            } catch (RemoteException e) {
                return false;
            }
        }

        @Override // com.android.server.om.PackageManagerHelper
        public List<PackageInfo> getOverlayPackages(int userId) {
            List<PackageInfo> overlays = this.mPackageManagerInternal.getOverlayPackages(userId);
            for (PackageInfo info : overlays) {
                cachePackageInfo(info.packageName, userId, info);
            }
            return overlays;
        }

        @Override // com.android.server.om.OverlayableInfoCallback
        public OverlayableInfo getOverlayableForTarget(String packageName, String targetOverlayableName, int userId) throws IOException {
            PackageInfo packageInfo = getPackageInfo(packageName, userId);
            if (packageInfo == null) {
                throw new IOException("Unable to get target package");
            }
            String baseCodePath = packageInfo.applicationInfo.getBaseCodePath();
            ApkAssets apkAssets = null;
            try {
                apkAssets = ApkAssets.loadFromPath(baseCodePath);
                return apkAssets.getOverlayableInfo(targetOverlayableName);
            } finally {
                if (apkAssets != null) {
                    try {
                        apkAssets.close();
                    } catch (Throwable th) {
                    }
                }
            }
        }

        @Override // com.android.server.om.OverlayableInfoCallback
        public boolean doesTargetDefineOverlayable(String targetPackageName, int userId) throws IOException {
            PackageInfo packageInfo = getPackageInfo(targetPackageName, userId);
            if (packageInfo == null) {
                throw new IOException("Unable to get target package");
            }
            String baseCodePath = packageInfo.applicationInfo.getBaseCodePath();
            ApkAssets apkAssets = null;
            try {
                apkAssets = ApkAssets.loadFromPath(baseCodePath);
                return apkAssets.definesOverlayable();
            } finally {
                if (apkAssets != null) {
                    try {
                        apkAssets.close();
                    } catch (Throwable th) {
                    }
                }
            }
        }

        @Override // com.android.server.om.OverlayableInfoCallback
        public void enforcePermission(String permission, String message) throws SecurityException {
            this.mContext.enforceCallingOrSelfPermission(permission, message);
        }

        public PackageInfo getCachedPackageInfo(String packageName, int userId) {
            HashMap<String, PackageInfo> map = this.mCache.get(userId);
            if (map == null) {
                return null;
            }
            return map.get(packageName);
        }

        public void cachePackageInfo(String packageName, int userId, PackageInfo pi) {
            HashMap<String, PackageInfo> map = this.mCache.get(userId);
            if (map == null) {
                map = new HashMap<>();
                this.mCache.put(userId, map);
            }
            map.put(packageName, pi);
        }

        public void forgetPackageInfo(String packageName, int userId) {
            HashMap<String, PackageInfo> map = this.mCache.get(userId);
            if (map == null) {
                return;
            }
            map.remove(packageName);
            if (map.isEmpty()) {
                this.mCache.delete(userId);
            }
        }

        public void forgetAllPackageInfos(int userId) {
            this.mCache.delete(userId);
        }

        @Override // com.android.server.om.OverlayableInfoCallback
        public String[] getPackagesForUid(int uid) {
            try {
                return this.mPackageManager.getPackagesForUid(uid);
            } catch (RemoteException e) {
                return null;
            }
        }

        public void dump(PrintWriter pw, DumpState dumpState) {
            pw.println("PackageInfo cache");
            if (!dumpState.isVerbose()) {
                int count = 0;
                int n = this.mCache.size();
                for (int i = 0; i < n; i++) {
                    count += this.mCache.get(this.mCache.keyAt(i)).size();
                }
                pw.println(TAB1 + count + " package(s)");
                return;
            }
            if (this.mCache.size() == 0) {
                pw.println("    <empty>");
                return;
            }
            int n2 = this.mCache.size();
            for (int i2 = 0; i2 < n2; i2++) {
                int userId = this.mCache.keyAt(i2);
                pw.println("    User " + userId);
                HashMap<String, PackageInfo> map = this.mCache.get(userId);
                for (Map.Entry<String, PackageInfo> entry : map.entrySet()) {
                    pw.println(TAB2 + entry.getKey() + ": " + entry.getValue());
                }
            }
        }
    }
}

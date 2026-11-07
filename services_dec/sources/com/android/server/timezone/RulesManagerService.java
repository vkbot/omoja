package com.android.server.timezone;

import android.app.timezone.DistroFormatVersion;
import android.app.timezone.DistroRulesVersion;
import android.app.timezone.ICallback;
import android.app.timezone.IRulesManager;
import android.app.timezone.RulesState;
import android.content.Context;
import android.icu.util.TimeZone;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Slog;
import com.android.server.EventLogTags;
import com.android.server.SystemService;
import com.android.server.hdmi.HdmiCecKeycode;
import com.android.timezone.distro.DistroException;
import com.android.timezone.distro.DistroVersion;
import com.android.timezone.distro.StagedDistroOperation;
import com.android.timezone.distro.TimeZoneDistro;
import com.android.timezone.distro.installer.TimeZoneDistroInstaller;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import libcore.timezone.TimeZoneDataFiles;
import libcore.timezone.TimeZoneFinder;
import libcore.timezone.TzDataSetVersion;
import libcore.timezone.ZoneInfoDb;

/* JADX INFO: loaded from: classes2.dex */
public final class RulesManagerService extends IRulesManager.Stub {
    static final DistroFormatVersion DISTRO_FORMAT_VERSION_SUPPORTED = new DistroFormatVersion(TzDataSetVersion.currentFormatMajorVersion(), TzDataSetVersion.currentFormatMinorVersion());
    static final String REQUIRED_QUERY_PERMISSION = "android.permission.QUERY_TIME_ZONE_RULES";
    static final String REQUIRED_UPDATER_PERMISSION = "android.permission.UPDATE_TIME_ZONE_RULES";
    private static final String TAG = "timezone.RulesManagerService";
    private final Executor mExecutor;
    private final TimeZoneDistroInstaller mInstaller;
    private final RulesManagerIntentHelper mIntentHelper;
    private final AtomicBoolean mOperationInProgress = new AtomicBoolean(false);
    private final PackageTracker mPackageTracker;
    private final PermissionHelper mPermissionHelper;

    public static class Lifecycle extends SystemService {
        public Lifecycle(Context context) {
            super(context);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [android.os.IBinder, com.android.server.timezone.RulesManagerService, java.lang.Object] */
        @Override // com.android.server.SystemService
        public void onStart() {
            ?? Create = RulesManagerService.create(getContext());
            Create.start();
            publishBinderService("timezone", Create);
            publishLocalService(RulesManagerService.class, Create);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RulesManagerService create(Context context) {
        RulesManagerServiceHelperImpl helper = new RulesManagerServiceHelperImpl(context);
        File baseVersionFile = new File(TimeZoneDataFiles.getTimeZoneModuleTzVersionFile());
        File tzDataDir = new File(TimeZoneDataFiles.getDataTimeZoneRootDir());
        return new RulesManagerService(helper, helper, helper, PackageTracker.create(context), new TimeZoneDistroInstaller(TAG, baseVersionFile, tzDataDir));
    }

    RulesManagerService(PermissionHelper permissionHelper, Executor executor, RulesManagerIntentHelper intentHelper, PackageTracker packageTracker, TimeZoneDistroInstaller timeZoneDistroInstaller) {
        this.mPermissionHelper = permissionHelper;
        this.mExecutor = executor;
        this.mIntentHelper = intentHelper;
        this.mPackageTracker = packageTracker;
        this.mInstaller = timeZoneDistroInstaller;
    }

    public void start() {
        this.mPackageTracker.start();
    }

    public RulesState getRulesState() {
        this.mPermissionHelper.enforceCallerHasPermission(REQUIRED_QUERY_PERMISSION);
        return getRulesStateInternal();
    }

    private RulesState getRulesStateInternal() {
        RulesState rulesState;
        synchronized (this) {
            try {
                try {
                    TzDataSetVersion baseVersion = this.mInstaller.readBaseVersion();
                    int distroStatus = 0;
                    DistroRulesVersion installedDistroRulesVersion = null;
                    try {
                        DistroVersion installedDistroVersion = this.mInstaller.getInstalledDistroVersion();
                        if (installedDistroVersion == null) {
                            distroStatus = 1;
                            installedDistroRulesVersion = null;
                        } else {
                            distroStatus = 2;
                            installedDistroRulesVersion = new DistroRulesVersion(installedDistroVersion.rulesVersion, installedDistroVersion.revision);
                        }
                    } catch (DistroException | IOException e) {
                        Slog.w(TAG, "Failed to read installed distro.", e);
                    }
                    boolean operationInProgress = this.mOperationInProgress.get();
                    DistroRulesVersion stagedDistroRulesVersion = null;
                    int stagedOperationStatus = 0;
                    if (!operationInProgress) {
                        try {
                            StagedDistroOperation stagedDistroOperation = this.mInstaller.getStagedDistroOperation();
                            if (stagedDistroOperation == null) {
                                stagedOperationStatus = 1;
                            } else if (stagedDistroOperation.isUninstall) {
                                stagedOperationStatus = 2;
                            } else {
                                stagedOperationStatus = 3;
                                DistroVersion stagedDistroVersion = stagedDistroOperation.distroVersion;
                                stagedDistroRulesVersion = new DistroRulesVersion(stagedDistroVersion.rulesVersion, stagedDistroVersion.revision);
                            }
                        } catch (DistroException | IOException e2) {
                            Slog.w(TAG, "Failed to read staged distro.", e2);
                        }
                    }
                    rulesState = new RulesState(baseVersion.getRulesVersion(), DISTRO_FORMAT_VERSION_SUPPORTED, operationInProgress, stagedOperationStatus, stagedDistroRulesVersion, distroStatus, installedDistroRulesVersion);
                } catch (IOException e3) {
                    Slog.w(TAG, "Failed to read base rules version", e3);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return rulesState;
    }

    public int requestInstall(ParcelFileDescriptor distroParcelFileDescriptor, byte[] checkTokenBytes, ICallback callback) {
        try {
            this.mPermissionHelper.enforceCallerHasPermission(REQUIRED_UPDATER_PERMISSION);
            CheckToken checkToken = null;
            if (checkTokenBytes != null) {
                checkToken = createCheckTokenOrThrow(checkTokenBytes);
            }
            EventLogTags.writeTimezoneRequestInstall(toStringOrNull(checkToken));
            synchronized (this) {
                try {
                    if (distroParcelFileDescriptor == null) {
                        throw new NullPointerException("distroParcelFileDescriptor == null");
                    }
                    if (callback == null) {
                        throw new NullPointerException("observer == null");
                    }
                    if (!this.mOperationInProgress.get()) {
                        this.mOperationInProgress.set(true);
                        this.mExecutor.execute(new InstallRunnable(distroParcelFileDescriptor, checkToken, callback));
                        if (distroParcelFileDescriptor != null && 0 != 0) {
                            try {
                                distroParcelFileDescriptor.close();
                            } catch (IOException e) {
                                Slog.w(TAG, "Failed to close distroParcelFileDescriptor", e);
                            }
                        }
                        return 0;
                    }
                    if (distroParcelFileDescriptor != null && 1 != 0) {
                        try {
                            distroParcelFileDescriptor.close();
                        } catch (IOException e2) {
                            Slog.w(TAG, "Failed to close distroParcelFileDescriptor", e2);
                        }
                    }
                    return 1;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            if (distroParcelFileDescriptor != null && 1 != 0) {
                try {
                    distroParcelFileDescriptor.close();
                } catch (IOException e3) {
                    Slog.w(TAG, "Failed to close distroParcelFileDescriptor", e3);
                }
            }
            throw th2;
        }
    }

    private class InstallRunnable implements Runnable {
        private final ICallback mCallback;
        private final CheckToken mCheckToken;
        private final ParcelFileDescriptor mDistroParcelFileDescriptor;

        InstallRunnable(ParcelFileDescriptor distroParcelFileDescriptor, CheckToken checkToken, ICallback callback) {
            this.mDistroParcelFileDescriptor = distroParcelFileDescriptor;
            this.mCheckToken = checkToken;
            this.mCallback = callback;
        }

        @Override // java.lang.Runnable
        public void run() {
            EventLogTags.writeTimezoneInstallStarted(RulesManagerService.toStringOrNull(this.mCheckToken));
            boolean success = false;
            try {
                try {
                    ParcelFileDescriptor pfd = this.mDistroParcelFileDescriptor;
                    try {
                        InputStream is = new FileInputStream(pfd.getFileDescriptor(), false);
                        TimeZoneDistro distro = new TimeZoneDistro(is);
                        int installerResult = RulesManagerService.this.mInstaller.stageInstallWithErrorCode(distro);
                        sendInstallNotificationIntentIfRequired(installerResult);
                        int resultCode = mapInstallerResultToApiCode(installerResult);
                        EventLogTags.writeTimezoneInstallComplete(RulesManagerService.toStringOrNull(this.mCheckToken), resultCode);
                        RulesManagerService.this.sendFinishedStatus(this.mCallback, resultCode);
                        success = true;
                        if (pfd != null) {
                            pfd.close();
                        }
                    } catch (Throwable th) {
                        if (pfd != null) {
                            try {
                                pfd.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    RulesManagerService.this.mPackageTracker.recordCheckResult(this.mCheckToken, false);
                    RulesManagerService.this.mOperationInProgress.set(false);
                    throw th3;
                }
            } catch (Exception e) {
                Slog.w(RulesManagerService.TAG, "Failed to install distro.", e);
                EventLogTags.writeTimezoneInstallComplete(RulesManagerService.toStringOrNull(this.mCheckToken), 1);
                RulesManagerService.this.sendFinishedStatus(this.mCallback, 1);
            }
            RulesManagerService.this.mPackageTracker.recordCheckResult(this.mCheckToken, success);
            RulesManagerService.this.mOperationInProgress.set(false);
        }

        private void sendInstallNotificationIntentIfRequired(int installerResult) {
            if (installerResult == 0) {
                RulesManagerService.this.mIntentHelper.sendTimeZoneOperationStaged();
            }
        }

        private int mapInstallerResultToApiCode(int installerResult) {
            if (installerResult == 0) {
                return 0;
            }
            if (installerResult == 1) {
                return 2;
            }
            if (installerResult == 2) {
                return 3;
            }
            if (installerResult != 3) {
                return installerResult != 4 ? 1 : 5;
            }
            return 4;
        }
    }

    public int requestUninstall(byte[] checkTokenBytes, ICallback callback) {
        this.mPermissionHelper.enforceCallerHasPermission(REQUIRED_UPDATER_PERMISSION);
        CheckToken checkToken = null;
        if (checkTokenBytes != null) {
            checkToken = createCheckTokenOrThrow(checkTokenBytes);
        }
        EventLogTags.writeTimezoneRequestUninstall(toStringOrNull(checkToken));
        synchronized (this) {
            try {
                if (callback == null) {
                    throw new NullPointerException("callback == null");
                }
                if (this.mOperationInProgress.get()) {
                    return 1;
                }
                this.mOperationInProgress.set(true);
                this.mExecutor.execute(new UninstallRunnable(checkToken, callback));
                return 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private class UninstallRunnable implements Runnable {
        private final ICallback mCallback;
        private final CheckToken mCheckToken;

        UninstallRunnable(CheckToken checkToken, ICallback callback) {
            this.mCheckToken = checkToken;
            this.mCallback = callback;
        }

        @Override // java.lang.Runnable
        public void run() {
            EventLogTags.writeTimezoneUninstallStarted(RulesManagerService.toStringOrNull(this.mCheckToken));
            boolean packageTrackerStatus = false;
            try {
                try {
                    int uninstallResult = RulesManagerService.this.mInstaller.stageUninstall();
                    sendUninstallNotificationIntentIfRequired(uninstallResult);
                    packageTrackerStatus = uninstallResult == 0 || uninstallResult == 1;
                    int callbackResultCode = packageTrackerStatus ? 0 : 1;
                    EventLogTags.writeTimezoneUninstallComplete(RulesManagerService.toStringOrNull(this.mCheckToken), callbackResultCode);
                    RulesManagerService.this.sendFinishedStatus(this.mCallback, callbackResultCode);
                } catch (Exception e) {
                    EventLogTags.writeTimezoneUninstallComplete(RulesManagerService.toStringOrNull(this.mCheckToken), 1);
                    Slog.w(RulesManagerService.TAG, "Failed to uninstall distro.", e);
                    RulesManagerService.this.sendFinishedStatus(this.mCallback, 1);
                }
            } finally {
                RulesManagerService.this.mPackageTracker.recordCheckResult(this.mCheckToken, packageTrackerStatus);
                RulesManagerService.this.mOperationInProgress.set(false);
            }
        }

        private void sendUninstallNotificationIntentIfRequired(int uninstallResult) {
            if (uninstallResult == 0) {
                RulesManagerService.this.mIntentHelper.sendTimeZoneOperationStaged();
            } else if (uninstallResult == 1) {
                RulesManagerService.this.mIntentHelper.sendTimeZoneOperationUnstaged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendFinishedStatus(ICallback callback, int resultCode) {
        try {
            callback.onFinished(resultCode);
        } catch (RemoteException e) {
            Slog.e(TAG, "Unable to notify observer of result", e);
        }
    }

    public void requestNothing(byte[] checkTokenBytes, boolean success) {
        this.mPermissionHelper.enforceCallerHasPermission(REQUIRED_UPDATER_PERMISSION);
        CheckToken checkToken = null;
        if (checkTokenBytes != null) {
            checkToken = createCheckTokenOrThrow(checkTokenBytes);
        }
        EventLogTags.writeTimezoneRequestNothing(toStringOrNull(checkToken));
        this.mPackageTracker.recordCheckResult(checkToken, success);
        EventLogTags.writeTimezoneNothingComplete(toStringOrNull(checkToken));
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (!this.mPermissionHelper.checkDumpPermission(TAG, pw)) {
            return;
        }
        RulesState rulesState = getRulesStateInternal();
        if (args != null && args.length == 2) {
            if ("-format_state".equals(args[0]) && args[1] != null) {
                for (char c : args[1].toCharArray()) {
                    if (c != 'i') {
                        if (c != 't') {
                            if (c != 'o') {
                                if (c == 'p') {
                                    String value = "Unknown";
                                    if (rulesState != null) {
                                        value = Boolean.toString(rulesState.isOperationInProgress());
                                    }
                                    pw.println("Operation in progress: " + value);
                                } else {
                                    switch (c) {
                                        case HdmiCecKeycode.CEC_KEYCODE_PAUSE_PLAY_FUNCTION /* 97 */:
                                            pw.println("Active rules version (ICU, ZoneInfoDb, TimeZoneFinder): " + TimeZone.getTZDataVersion() + "," + ZoneInfoDb.getInstance().getVersion() + "," + TimeZoneFinder.getInstance().getIanaVersion());
                                            break;
                                        case HdmiCecKeycode.CEC_KEYCODE_RECORD_FUNCTION /* 98 */:
                                            String value2 = "Unknown";
                                            if (rulesState != null) {
                                                value2 = rulesState.getBaseRulesVersion();
                                            }
                                            pw.println("Base rules version: " + value2);
                                            break;
                                        case 'c':
                                            String value3 = "Unknown";
                                            if (rulesState != null) {
                                                value3 = distroStatusToString(rulesState.getDistroStatus());
                                            }
                                            pw.println("Current install state: " + value3);
                                            break;
                                        default:
                                            pw.println("Unknown option: " + c);
                                            break;
                                    }
                                }
                            } else {
                                String value4 = "Unknown";
                                if (rulesState != null) {
                                    int stagedOperationType = rulesState.getStagedOperationType();
                                    value4 = stagedOperationToString(stagedOperationType);
                                }
                                pw.println("Staged operation: " + value4);
                            }
                        } else {
                            String value5 = "Unknown";
                            if (rulesState != null) {
                                DistroRulesVersion stagedDistroRulesVersion = rulesState.getStagedDistroRulesVersion();
                                if (stagedDistroRulesVersion == null) {
                                    value5 = "<None>";
                                } else {
                                    value5 = stagedDistroRulesVersion.toDumpString();
                                }
                            }
                            pw.println("Staged rules version: " + value5);
                        }
                    } else {
                        String value6 = "Unknown";
                        if (rulesState != null) {
                            DistroRulesVersion installedRulesVersion = rulesState.getInstalledDistroRulesVersion();
                            if (installedRulesVersion == null) {
                                value6 = "<None>";
                            } else {
                                value6 = installedRulesVersion.toDumpString();
                            }
                        }
                        pw.println("Installed rules version: " + value6);
                    }
                }
                return;
            }
        }
        pw.println("RulesManagerService state: " + toString());
        pw.println("Active rules version (ICU, ZoneInfoDB, TimeZoneFinder): " + TimeZone.getTZDataVersion() + "," + ZoneInfoDb.getInstance().getVersion() + "," + TimeZoneFinder.getInstance().getIanaVersion());
        StringBuilder sb = new StringBuilder();
        sb.append("Distro state: ");
        sb.append(rulesState.toString());
        pw.println(sb.toString());
        this.mPackageTracker.dump(pw);
    }

    void notifyIdle() {
        this.mPackageTracker.triggerUpdateIfNeeded(false);
    }

    public String toString() {
        return "RulesManagerService{mOperationInProgress=" + this.mOperationInProgress + '}';
    }

    private static CheckToken createCheckTokenOrThrow(byte[] checkTokenBytes) {
        try {
            CheckToken checkToken = CheckToken.fromByteArray(checkTokenBytes);
            return checkToken;
        } catch (IOException e) {
            throw new IllegalArgumentException("Unable to read token bytes " + Arrays.toString(checkTokenBytes), e);
        }
    }

    private static String distroStatusToString(int distroStatus) {
        if (distroStatus == 1) {
            return "None";
        }
        if (distroStatus == 2) {
            return "Installed";
        }
        return "Unknown";
    }

    private static String stagedOperationToString(int stagedOperationType) {
        if (stagedOperationType == 1) {
            return "None";
        }
        if (stagedOperationType == 2) {
            return "Uninstall";
        }
        if (stagedOperationType == 3) {
            return "Install";
        }
        return "Unknown";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String toStringOrNull(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }
}

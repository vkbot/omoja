package com.android.server.pm;

import android.accounts.IAccountManager;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.role.IRoleManager;
import android.content.ComponentName;
import android.content.IIntentReceiver;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ApplicationInfo;
import android.content.pm.FeatureInfo;
import android.content.pm.IPackageDataObserver;
import android.content.pm.IPackageInstaller;
import android.content.pm.IPackageManager;
import android.content.pm.InstrumentationInfo;
import android.content.pm.ModuleInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.PackageParser;
import android.content.pm.ParceledListSlice;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.SuspendDialogInfo;
import android.content.pm.UserInfo;
import android.content.pm.VersionedPackage;
import android.content.pm.dex.DexMetadataHelper;
import android.content.pm.dex.ISnapshotRuntimeProfileCallback;
import android.content.pm.parsing.ApkLiteParseUtils;
import android.content.pm.parsing.result.ParseResult;
import android.content.pm.parsing.result.ParseTypeImpl;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.rollback.IRollbackManager;
import android.content.rollback.PackageRollbackInfo;
import android.content.rollback.RollbackInfo;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.net.Uri;
import android.net.util.NetworkConstants;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IUserManager;
import android.os.ParcelFileDescriptor;
import android.os.PersistableBundle;
import android.os.Process;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.ServiceSpecificException;
import android.os.ShellCommand;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.incremental.V4Signature;
import android.permission.IPermissionManager;
import android.system.ErrnoException;
import android.system.Os;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.PrintWriterPrinter;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.content.PackageHelper;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.BatteryService;
import com.android.server.LocalServices;
import com.android.server.SystemConfig;
import com.android.server.UiModeManagerService;
import com.android.server.hdmi.HdmiCecKeycode;
import com.android.server.notification.SnoozeHelper;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.usb.descriptors.UsbACInterface;
import com.android.server.usb.descriptors.UsbDescriptor;
import com.android.server.wm.ActivityTaskManagerService;
import com.android.server.wm.WindowManagerService;
import dalvik.system.DexFile;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.function.BiConsumer;
import libcore.io.IoUtils;
import libcore.io.Streams;

/* JADX INFO: loaded from: classes.dex */
class PackageManagerShellCommand extends ShellCommand {
    private static final String ART_PROFILE_SNAPSHOT_DEBUG_LOCATION = "/data/misc/profman/";
    private static final int DEFAULT_WAIT_MS = 60000;
    private static final String STDIN_PATH = "-";
    private static final String TAG = "PackageManagerShellCommand";
    boolean mBrief;
    boolean mComponents;
    final IPackageManager mInterface;
    final IPermissionManager mPermissionManager;
    int mQueryFlags;
    private final WeakHashMap<String, Resources> mResourceCache = new WeakHashMap<>();
    int mTargetUser;

    PackageManagerShellCommand(PackageManagerService service, IPermissionManager permissionManager) {
        this.mInterface = service;
        this.mPermissionManager = permissionManager;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public int onCommand(String cmd) {
        byte b;
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        PrintWriter pw = getOutPrintWriter();
        try {
            switch (cmd.hashCode()) {
                case -2102802879:
                    b = !cmd.equals("set-harmful-app-warning") ? (byte) -1 : (byte) 59;
                    break;
                case -1967190973:
                    if (cmd.equals("install-abandon")) {
                        b = 11;
                    }
                    break;
                case -1937348290:
                    if (cmd.equals("get-install-location")) {
                        b = 19;
                    }
                    break;
                case -1852006340:
                    if (cmd.equals("suspend")) {
                        b = 38;
                    }
                    break;
                case -1846646502:
                    if (cmd.equals("get-max-running-users")) {
                        b = 54;
                    }
                    break;
                case -1741208611:
                    if (cmd.equals("set-installer")) {
                        b = 56;
                    }
                    break;
                case -1421272810:
                    if (cmd.equals("validate")) {
                        b = 1;
                    }
                    break;
                case -1347307837:
                    if (cmd.equals("has-feature")) {
                        b = 58;
                    }
                    break;
                case -1298848381:
                    if (cmd.equals("enable")) {
                        b = 31;
                    }
                    break;
                case -1267782244:
                    if (cmd.equals("get-instantapp-resolver")) {
                        b = 57;
                    }
                    break;
                case -1231004208:
                    if (cmd.equals("resolve-activity")) {
                        b = 4;
                    }
                    break;
                case -1102348235:
                    if (cmd.equals("get-privapp-deny-permissions")) {
                        b = 45;
                    }
                    break;
                case -1091400553:
                    if (cmd.equals("get-oem-permissions")) {
                        b = 46;
                    }
                    break;
                case -1070704814:
                    if (cmd.equals("get-privapp-permissions")) {
                        b = 44;
                    }
                    break;
                case -1032029296:
                    if (cmd.equals("disable-user")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_HID;
                    }
                    break;
                case -934343034:
                    if (cmd.equals("revoke")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_HUB;
                    }
                    break;
                case -919935069:
                    if (cmd.equals("dump-profiles")) {
                        b = 27;
                    }
                    break;
                case -840566949:
                    if (cmd.equals("unhide")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_CLASSSPECIFIC_ENDPOINT;
                    }
                    break;
                case -740352344:
                    if (cmd.equals("install-incremental")) {
                        b = 10;
                    }
                    break;
                case -703497631:
                    if (cmd.equals("bypass-staged-installer-check")) {
                        b = 66;
                    }
                    break;
                case -625596190:
                    if (cmd.equals("uninstall")) {
                        b = 29;
                    }
                    break;
                case -623224643:
                    if (cmd.equals("get-app-link")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_ENDPOINT_COMPANION;
                    }
                    break;
                case -539710980:
                    if (cmd.equals("create-user")) {
                        b = 50;
                    }
                    break;
                case -458695741:
                    if (cmd.equals("query-services")) {
                        b = 6;
                    }
                    break;
                case -444750796:
                    if (cmd.equals("bg-dexopt-job")) {
                        b = 26;
                    }
                    break;
                case -440994401:
                    if (cmd.equals("query-receivers")) {
                        b = 7;
                    }
                    break;
                case -416698598:
                    if (cmd.equals("get-stagedsessions")) {
                        b = 61;
                    }
                    break;
                case -339687564:
                    if (cmd.equals("remove-user")) {
                        b = 51;
                    }
                    break;
                case -220055275:
                    if (cmd.equals("set-permission-enforced")) {
                        b = 43;
                    }
                    break;
                case -140205181:
                    if (cmd.equals("unsuspend")) {
                        b = 39;
                    }
                    break;
                case -132384343:
                    if (cmd.equals("install-commit")) {
                        b = UsbACInterface.ACI_SAMPLE_RATE_CONVERTER;
                    }
                    break;
                case -129863314:
                    if (cmd.equals("install-create")) {
                        b = 14;
                    }
                    break;
                case -115000827:
                    if (cmd.equals("default-state")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_PHYSICAL;
                    }
                    break;
                case -87258188:
                    if (cmd.equals("move-primary-storage")) {
                        b = 22;
                    }
                    break;
                case 3095028:
                    if (cmd.equals("dump")) {
                        b = 2;
                    }
                    break;
                case 3202370:
                    if (cmd.equals("hide")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_CLASSSPECIFIC_INTERFACE;
                    }
                    break;
                case 3322014:
                    if (cmd.equals("list")) {
                        b = 3;
                    }
                    break;
                case 3433509:
                    if (cmd.equals("path")) {
                        b = 0;
                    }
                    break;
                case 18936394:
                    if (cmd.equals("move-package")) {
                        b = 21;
                    }
                    break;
                case 86600360:
                    if (cmd.equals("get-max-users")) {
                        b = 53;
                    }
                    break;
                case 93657776:
                    if (cmd.equals("install-streaming")) {
                        b = 9;
                    }
                    break;
                case 94746189:
                    if (cmd.equals("clear")) {
                        b = 30;
                    }
                    break;
                case 98615580:
                    if (cmd.equals("grant")) {
                        b = 40;
                    }
                    break;
                case 107262333:
                    if (cmd.equals("install-existing")) {
                        b = 17;
                    }
                    break;
                case 139892533:
                    if (cmd.equals("get-harmful-app-warning")) {
                        b = 60;
                    }
                    break;
                case 237392952:
                    if (cmd.equals("install-add-session")) {
                        b = 20;
                    }
                    break;
                case 287820022:
                    if (cmd.equals("install-remove")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_BOS;
                    }
                    break;
                case 359572742:
                    if (cmd.equals("reset-permissions")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_SUPERSPEED_HUB;
                    }
                    break;
                case 377019320:
                    if (cmd.equals("rollback-app")) {
                        b = 63;
                    }
                    break;
                case 467549856:
                    if (cmd.equals("snapshot-profile")) {
                        b = 28;
                    }
                    break;
                case 798023112:
                    if (cmd.equals("install-destroy")) {
                        b = 12;
                    }
                    break;
                case 826473335:
                    if (cmd.equals("uninstall-system-updates")) {
                        b = 62;
                    }
                    break;
                case 925176533:
                    if (cmd.equals("set-user-restriction")) {
                        b = 52;
                    }
                    break;
                case 925767985:
                    if (cmd.equals("set-app-link")) {
                        b = 47;
                    }
                    break;
                case 950491699:
                    if (cmd.equals("compile")) {
                        b = 23;
                    }
                    break;
                case 1053409810:
                    if (cmd.equals("query-activities")) {
                        b = 5;
                    }
                    break;
                case 1124603675:
                    if (cmd.equals("force-dex-opt")) {
                        b = 25;
                    }
                    break;
                case 1177857340:
                    if (cmd.equals("trim-caches")) {
                        b = 49;
                    }
                    break;
                case 1429366290:
                    if (cmd.equals("set-home-activity")) {
                        b = 55;
                    }
                    break;
                case 1538306349:
                    if (cmd.equals("install-write")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_CAPABILITY;
                    }
                    break;
                case 1671308008:
                    if (cmd.equals("disable")) {
                        b = 32;
                    }
                    break;
                case 1697997009:
                    if (cmd.equals("disable-until-used")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_REPORT;
                    }
                    break;
                case 1746695602:
                    if (cmd.equals("set-install-location")) {
                        b = 18;
                    }
                    break;
                case 1783979817:
                    if (cmd.equals("reconcile-secondary-dex-files")) {
                        b = 24;
                    }
                    break;
                case 1824799035:
                    if (cmd.equals("log-visibility")) {
                        b = 65;
                    }
                    break;
                case 1858863089:
                    if (cmd.equals("get-moduleinfo")) {
                        b = 64;
                    }
                    break;
                case 1957569947:
                    if (cmd.equals("install")) {
                        b = 8;
                    }
                    break;
                default:
                    break;
            }
            switch (b) {
                case 0:
                    return runPath();
                case 1:
                    return runValidate();
                case 2:
                    return runDump();
                case 3:
                    return runList();
                case 4:
                    return runResolveActivity();
                case 5:
                    return runQueryIntentActivities();
                case 6:
                    return runQueryIntentServices();
                case 7:
                    return runQueryIntentReceivers();
                case 8:
                    return runInstall();
                case 9:
                    return runStreamingInstall();
                case 10:
                    return runIncrementalInstall();
                case 11:
                case 12:
                    return runInstallAbandon();
                case 13:
                    return runInstallCommit();
                case 14:
                    return runInstallCreate();
                case 15:
                    return runInstallRemove();
                case 16:
                    return runInstallWrite();
                case 17:
                    return runInstallExisting();
                case 18:
                    return runSetInstallLocation();
                case 19:
                    return runGetInstallLocation();
                case 20:
                    return runInstallAddSession();
                case 21:
                    return runMovePackage();
                case 22:
                    return runMovePrimaryStorage();
                case WindowManagerService.H.BOOT_TIMEOUT /* 23 */:
                    return runCompile();
                case WindowManagerService.H.WAITING_FOR_DRAWN_TIMEOUT /* 24 */:
                    return runreconcileSecondaryDexFiles();
                case WindowManagerService.H.SHOW_STRICT_MODE_VIOLATION /* 25 */:
                    return runForceDexOpt();
                case CecMessageType.GIVE_DECK_STATUS /* 26 */:
                    return runDexoptJob();
                case CecMessageType.DECK_STATUS /* 27 */:
                    return runDumpProfiles();
                case 28:
                    return runSnapshotProfile();
                case HdmiCecKeycode.CEC_KEYCODE_NUMBER_ENTRY_MODE /* 29 */:
                    return runUninstall();
                case 30:
                    return runClear();
                case HdmiCecKeycode.CEC_KEYCODE_NUMBER_12 /* 31 */:
                    return runSetEnabledSetting(1);
                case 32:
                    return runSetEnabledSetting(2);
                case 33:
                    return runSetEnabledSetting(3);
                case 34:
                    return runSetEnabledSetting(4);
                case 35:
                    return runSetEnabledSetting(0);
                case 36:
                    return runSetHiddenSetting(true);
                case 37:
                    return runSetHiddenSetting(false);
                case 38:
                    return runSuspend(true);
                case 39:
                    return runSuspend(false);
                case 40:
                    return runGrantRevokePermission(true);
                case 41:
                    return runGrantRevokePermission(false);
                case HdmiCecKeycode.CEC_KEYCODE_DOT /* 42 */:
                    return runResetPermissions();
                case HdmiCecKeycode.CEC_KEYCODE_ENTER /* 43 */:
                    return runSetPermissionEnforced();
                case HdmiCecKeycode.CEC_KEYCODE_CLEAR /* 44 */:
                    return runGetPrivappPermissions();
                case 45:
                    return runGetPrivappDenyPermissions();
                case WindowManagerService.H.WINDOW_REPLACEMENT_TIMEOUT /* 46 */:
                    return runGetOemPermissions();
                case HdmiCecKeycode.CEC_KEYCODE_NEXT_FAVORITE /* 47 */:
                    return runSetAppLink();
                case 48:
                    return runGetAppLink();
                case HdmiCecKeycode.CEC_KEYCODE_CHANNEL_DOWN /* 49 */:
                    return runTrimCaches();
                case 50:
                    return runCreateUser();
                case 51:
                    return runRemoveUser();
                case 52:
                    return runSetUserRestriction();
                case 53:
                    return runGetMaxUsers();
                case 54:
                    return runGetMaxRunningUsers();
                case 55:
                    return runSetHomeActivity();
                case 56:
                    return runSetInstaller();
                case 57:
                    return runGetInstantAppResolver();
                case WindowManagerService.H.SET_HAS_OVERLAY_UI /* 58 */:
                    return runHasFeature();
                case 59:
                    return runSetHarmfulAppWarning();
                case WindowManagerService.H.ANIMATION_FAILSAFE /* 60 */:
                    return runGetHarmfulAppWarning();
                case WindowManagerService.H.RECOMPUTE_FOCUS /* 61 */:
                    return runListStagedSessions();
                case WindowManagerService.H.ON_POINTER_DOWN_OUTSIDE_FOCUS /* 62 */:
                    String packageName = getNextArg();
                    return uninstallSystemUpdates(packageName);
                case 63:
                    return runRollbackApp();
                case 64:
                    return runGetModuleInfo();
                case 65:
                    return runLogVisibility();
                case 66:
                    return runBypassStagedInstallerCheck();
                default:
                    String nextArg = getNextArg();
                    if (nextArg == null) {
                        if (cmd.equalsIgnoreCase("-l")) {
                            return runListPackages(false);
                        }
                        if (cmd.equalsIgnoreCase("-lf")) {
                            return runListPackages(true);
                        }
                    } else if (getNextArg() == null && cmd.equalsIgnoreCase("-p")) {
                        return displayPackageFilePath(nextArg, 0);
                    }
                    return handleDefaultCommands(cmd);
            }
        } catch (RemoteException e) {
            pw.println("Remote exception: " + e);
            return -1;
        }
    }

    private int runValidate() {
        PrintWriter pw = getOutPrintWriter();
        String identifier = getNextArgRequired();
        if ("169414761".equals(identifier)) {
            pw.println("applied");
            return 0;
        }
        pw.println("missing");
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0031  */
    private int runGetModuleInfo() {
        byte b;
        PrintWriter pw = getOutPrintWriter();
        int flags = 0;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                int iHashCode = opt.hashCode();
                if (iHashCode != 42995713) {
                    if (iHashCode == 517440986 && opt.equals("--installed")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                } else if (opt.equals("--all")) {
                    b = 0;
                } else {
                    b = -1;
                }
                if (b == 0) {
                    flags |= 131072;
                } else if (b != 1) {
                    pw.println("Error: Unknown option: " + opt);
                    return -1;
                }
            } else {
                String moduleName = getNextArg();
                try {
                    if (moduleName != null) {
                        ModuleInfo m = this.mInterface.getModuleInfo(moduleName, flags);
                        pw.println(m.toString() + " packageName: " + m.getPackageName());
                    } else {
                        List<ModuleInfo> modules = this.mInterface.getInstalledModules(flags);
                        for (ModuleInfo m2 : modules) {
                            pw.println(m2.toString() + " packageName: " + m2.getPackageName());
                        }
                    }
                    return 1;
                } catch (RemoteException e) {
                    pw.println("Failure [" + e.getClass().getName() + " - " + e.getMessage() + "]");
                    return -1;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0031  */
    private int runLogVisibility() {
        byte b;
        PrintWriter pw = getOutPrintWriter();
        boolean enable = true;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                int iHashCode = opt.hashCode();
                if (iHashCode != -1237677752) {
                    if (iHashCode == 1101165347 && opt.equals("--enable")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                } else if (opt.equals("--disable")) {
                    b = 0;
                } else {
                    b = -1;
                }
                if (b == 0) {
                    enable = false;
                } else if (b == 1) {
                    enable = true;
                } else {
                    pw.println("Error: Unknown option: " + opt);
                    return -1;
                }
            } else {
                String packageName = getNextArg();
                if (packageName != null) {
                    ((PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class)).setVisibilityLogging(packageName, enable);
                    return 1;
                }
                getErrPrintWriter().println("Error: no package specified");
                return -1;
            }
        }
    }

    private int runBypassStagedInstallerCheck() {
        PrintWriter pw = getOutPrintWriter();
        try {
            this.mInterface.getPackageInstaller().bypassNextStagedInstallerCheck(Boolean.parseBoolean(getNextArg()));
            return 0;
        } catch (RemoteException e) {
            pw.println("Failure [" + e.getClass().getName() + " - " + e.getMessage() + "]");
            return -1;
        }
    }

    private int uninstallSystemUpdates(String packageName) {
        List<ApplicationInfo> list;
        PrintWriter pw = getOutPrintWriter();
        boolean failedUninstalls = false;
        try {
            IPackageInstaller installer = this.mInterface.getPackageInstaller();
            if (packageName == null) {
                ParceledListSlice<ApplicationInfo> packages = this.mInterface.getInstalledApplications(1048576, 0);
                list = packages.getList();
            } else {
                List<ApplicationInfo> list2 = new ArrayList<>(1);
                list2.add(this.mInterface.getApplicationInfo(packageName, 1048576, 0));
                list = list2;
            }
            for (ApplicationInfo info : list) {
                if (info.isUpdatedSystemApp()) {
                    pw.println("Uninstalling updates to " + info.packageName + "...");
                    LocalIntentReceiver receiver = new LocalIntentReceiver();
                    installer.uninstall(new VersionedPackage(info.packageName, info.versionCode), (String) null, 0, receiver.getIntentSender(), 0);
                    Intent result = receiver.getResult();
                    int status = result.getIntExtra("android.content.pm.extra.STATUS", 1);
                    if (status != 0) {
                        failedUninstalls = true;
                        pw.println("Couldn't uninstall package: " + info.packageName);
                    }
                }
            }
            if (failedUninstalls) {
                return 0;
            }
            pw.println("Success");
            return 1;
        } catch (RemoteException e) {
            pw.println("Failure [" + e.getClass().getName() + " - " + e.getMessage() + "]");
            return 0;
        }
    }

    private int runRollbackApp() {
        PrintWriter pw = getOutPrintWriter();
        String packageName = getNextArgRequired();
        if (packageName == null) {
            pw.println("Error: package name not specified");
            return 1;
        }
        LocalIntentReceiver receiver = new LocalIntentReceiver();
        try {
            IRollbackManager rm = IRollbackManager.Stub.asInterface(ServiceManager.getService("rollback"));
            RollbackInfo rollback = null;
            for (RollbackInfo r : rm.getAvailableRollbacks().getList()) {
                for (PackageRollbackInfo info : r.getPackages()) {
                    if (packageName.equals(info.getPackageName())) {
                        rollback = r;
                        break;
                    }
                }
            }
            if (rollback == null) {
                pw.println("No available rollbacks for: " + packageName);
                return 1;
            }
            rm.commitRollback(rollback.getRollbackId(), ParceledListSlice.emptyList(), "com.android.shell", receiver.getIntentSender());
            Intent result = receiver.getResult();
            int status = result.getIntExtra("android.content.rollback.extra.STATUS", 1);
            if (status == 0) {
                pw.println("Success");
                return 0;
            }
            pw.println("Failure [" + result.getStringExtra("android.content.rollback.extra.STATUS_MESSAGE") + "]");
            return 1;
        } catch (RemoteException e) {
        }
    }

    private void setParamsSize(InstallParams params, List<String> inPaths) {
        if (params.sessionParams.sizeBytes == -1 && !STDIN_PATH.equals(inPaths.get(0))) {
            long sessionSize = 0;
            ParseTypeImpl input = ParseTypeImpl.forDefaultParsing();
            for (String inPath : inPaths) {
                ParcelFileDescriptor fd = openFileForSystem(inPath, ActivityTaskManagerService.DUMP_RECENTS_SHORT_CMD);
                if (fd == null) {
                    getErrPrintWriter().println("Error: Can't open file: " + inPath);
                    throw new IllegalArgumentException("Error: Can't open file: " + inPath);
                }
                try {
                    try {
                        ParseResult<PackageParser.ApkLite> apkLiteResult = ApkLiteParseUtils.parseApkLite(input.reset(), fd.getFileDescriptor(), inPath, 0);
                        if (apkLiteResult.isError()) {
                            throw new IllegalArgumentException("Error: Failed to parse APK file: " + inPath + ": " + apkLiteResult.getErrorMessage(), apkLiteResult.getException());
                        }
                        PackageParser.PackageLite pkgLite = new PackageParser.PackageLite((String) null, (PackageParser.ApkLite) apkLiteResult.getResult(), (String[]) null, (boolean[]) null, (String[]) null, (String[]) null, (String[]) null, (int[]) null);
                        sessionSize += PackageHelper.calculateInstalledSize(pkgLite, params.sessionParams.abiOverride, fd.getFileDescriptor());
                        try {
                            fd.close();
                        } catch (IOException e) {
                        }
                    } catch (Throwable th) {
                        try {
                            fd.close();
                            throw th;
                        } catch (IOException e2) {
                            throw th;
                        }
                    }
                } catch (IOException e3) {
                    getErrPrintWriter().println("Error: Failed to parse APK file: " + inPath);
                    throw new IllegalArgumentException("Error: Failed to parse APK file: " + inPath, e3);
                }
            }
            params.sessionParams.setSize(sessionSize);
        }
    }

    private int displayPackageFilePath(String pckg, int userId) throws RemoteException {
        PackageInfo info = this.mInterface.getPackageInfo(pckg, 1073741824, userId);
        if (info != null && info.applicationInfo != null) {
            PrintWriter pw = getOutPrintWriter();
            pw.print("package:");
            pw.println(info.applicationInfo.sourceDir);
            if (!ArrayUtils.isEmpty(info.applicationInfo.splitSourceDirs)) {
                for (String splitSourceDir : info.applicationInfo.splitSourceDirs) {
                    pw.print("package:");
                    pw.println(splitSourceDir);
                }
            }
            return 0;
        }
        return 1;
    }

    private int runPath() throws RemoteException {
        int userId = 0;
        String option = getNextOption();
        if (option != null && option.equals("--user")) {
            userId = UserHandle.parseUserArg(getNextArgRequired());
        }
        String pkg = getNextArgRequired();
        if (pkg == null) {
            getErrPrintWriter().println("Error: no package specified");
            return 1;
        }
        int translatedUserId = translateUserId(userId, -10000, "runPath");
        return displayPackageFilePath(pkg, translatedUserId);
    }

    private int runList() throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        String type = getNextArg();
        if (type != null) {
            switch (type) {
                case "features":
                    return runListFeatures();
                case "instrumentation":
                    return runListInstrumentation();
                case "libraries":
                    return runListLibraries();
                case "package":
                case "packages":
                    return runListPackages(false);
                case "permission-groups":
                    return runListPermissionGroups();
                case "permissions":
                    return runListPermissions();
                case "staged-sessions":
                    return runListStagedSessions();
                case "users":
                    ServiceManager.getService("user").shellCommand(getInFileDescriptor(), getOutFileDescriptor(), getErrFileDescriptor(), new String[]{"list"}, getShellCallback(), adoptResultReceiver());
                    return 0;
                default:
                    pw.println("Error: unknown list type '" + type + "'");
                    return -1;
            }
        }
        pw.println("Error: didn't specify type of data to list");
        return -1;
    }

    private int runListFeatures() throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        List<FeatureInfo> list = this.mInterface.getSystemAvailableFeatures().getList();
        Collections.sort(list, new Comparator<FeatureInfo>() { // from class: com.android.server.pm.PackageManagerShellCommand.1
            @Override // java.util.Comparator
            public int compare(FeatureInfo o1, FeatureInfo o2) {
                if (o1.name == o2.name) {
                    return 0;
                }
                if (o1.name == null) {
                    return -1;
                }
                if (o2.name == null) {
                    return 1;
                }
                return o1.name.compareTo(o2.name);
            }
        });
        int count = list != null ? list.size() : 0;
        for (int p = 0; p < count; p++) {
            FeatureInfo fi = list.get(p);
            pw.print("feature:");
            if (fi.name != null) {
                pw.print(fi.name);
                if (fi.version > 0) {
                    pw.print("=");
                    pw.print(fi.version);
                }
                pw.println();
            } else {
                pw.println("reqGlEsVersion=0x" + Integer.toHexString(fi.reqGlEsVersion));
            }
        }
        return 0;
    }

    private int runListInstrumentation() throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        boolean showSourceDir = false;
        String targetPackage = null;
        while (true) {
            try {
                String opt = getNextArg();
                if (opt != null) {
                    if (((opt.hashCode() == 1497 && opt.equals("-f")) ? (byte) 0 : (byte) -1) == 0) {
                        showSourceDir = true;
                    } else {
                        if (opt.charAt(0) == '-') {
                            pw.println("Error: Unknown option: " + opt);
                            return -1;
                        }
                        targetPackage = opt;
                    }
                } else {
                    List<InstrumentationInfo> list = this.mInterface.queryInstrumentation(targetPackage, 0).getList();
                    Collections.sort(list, new Comparator<InstrumentationInfo>() { // from class: com.android.server.pm.PackageManagerShellCommand.2
                        @Override // java.util.Comparator
                        public int compare(InstrumentationInfo o1, InstrumentationInfo o2) {
                            return o1.targetPackage.compareTo(o2.targetPackage);
                        }
                    });
                    int count = list != null ? list.size() : 0;
                    for (int p = 0; p < count; p++) {
                        InstrumentationInfo ii = list.get(p);
                        pw.print("instrumentation:");
                        if (showSourceDir) {
                            pw.print(ii.sourceDir);
                            pw.print("=");
                        }
                        ComponentName cn = new ComponentName(ii.packageName, ii.name);
                        pw.print(cn.flattenToShortString());
                        pw.print(" (target=");
                        pw.print(ii.targetPackage);
                        pw.println(")");
                    }
                    return 0;
                }
            } catch (RuntimeException ex) {
                pw.println("Error: " + ex.toString());
                return -1;
            }
        }
    }

    private int runListLibraries() throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        List<String> list = new ArrayList<>();
        String[] rawList = this.mInterface.getSystemSharedLibraryNames();
        for (String str : rawList) {
            list.add(str);
        }
        Collections.sort(list, new Comparator<String>() { // from class: com.android.server.pm.PackageManagerShellCommand.3
            @Override // java.util.Comparator
            public int compare(String o1, String o2) {
                if (o1 == o2) {
                    return 0;
                }
                if (o1 == null) {
                    return -1;
                }
                if (o2 == null) {
                    return 1;
                }
                return o1.compareTo(o2);
            }
        });
        int count = list.size();
        for (int p = 0; p < count; p++) {
            String lib = list.get(p);
            pw.print("library:");
            pw.println(lib);
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:126:0x020e  */
    /* JADX WARN: Code duplicated, block: B:129:0x0221  */
    /* JADX WARN: Code duplicated, block: B:131:0x022a  */
    /* JADX WARN: Code duplicated, block: B:132:0x0236  */
    /* JADX WARN: Code duplicated, block: B:133:0x0242  */
    /* JADX WARN: Code duplicated, block: B:135:0x0248  */
    /* JADX WARN: Code duplicated, block: B:137:0x025a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:54:0x00f7 A[PHI: r0
  0x00f7: PHI (r0v58 'opt' java.lang.String) = 
  (r0v30 'opt' java.lang.String)
  (r0v31 'opt' java.lang.String)
  (r0v32 'opt' java.lang.String)
  (r0v33 'opt' java.lang.String)
  (r0v34 'opt' java.lang.String)
  (r0v51 'opt' java.lang.String)
  (r0v59 'opt' java.lang.String)
 binds: [B:50:0x00e9, B:47:0x00dc, B:44:0x00cf, B:41:0x00c2, B:38:0x00b5, B:36:0x00ab, B:8:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    private int runListPackages(boolean showSourceDir) throws RemoteException {
        int count;
        ParceledListSlice<PackageInfo> slice;
        String filter;
        String opt;
        String opt2;
        PrintWriter pw = getOutPrintWriter();
        int uid = -1;
        int userId = 0;
        int uid2 = 0;
        boolean listApexOnly = false;
        boolean showVersionCode = false;
        boolean showUid = false;
        boolean listInstaller = false;
        boolean showUid2 = false;
        boolean listSystem = false;
        boolean listThirdParty = false;
        boolean listDisabled = showSourceDir;
        int getFlags = 0;
        while (true) {
            try {
                String opt3 = getNextOption();
                byte b = 1;
                if (opt3 != null) {
                    try {
                        switch (opt3.hashCode()) {
                            case -493830763:
                                opt = opt3;
                                if (!opt.equals("--show-versioncode")) {
                                    b = -1;
                                } else {
                                    b = 10;
                                }
                                break;
                            case 1446:
                                opt = opt3;
                                if (!opt.equals("-3")) {
                                    b = -1;
                                } else {
                                    b = 9;
                                }
                                break;
                            case 1480:
                                opt = opt3;
                                if (!opt.equals("-U")) {
                                    b = -1;
                                } else {
                                    b = 7;
                                }
                                break;
                            case 1492:
                                opt = opt3;
                                if (!opt.equals("-a")) {
                                    b = -1;
                                } else {
                                    b = 2;
                                }
                                break;
                            case 1495:
                                opt = opt3;
                                if (!opt.equals("-d")) {
                                    b = -1;
                                } else {
                                    b = 0;
                                }
                                break;
                            case 1496:
                                opt2 = opt3;
                                if (!opt2.equals("-e")) {
                                    opt = opt2;
                                    b = -1;
                                } else {
                                    opt = opt2;
                                }
                                break;
                            case 1497:
                                opt2 = opt3;
                                if (opt2.equals("-f")) {
                                    b = 3;
                                    opt = opt2;
                                }
                                opt = opt2;
                                b = -1;
                                break;
                            case NetworkConstants.ETHER_MTU /* 1500 */:
                                opt2 = opt3;
                                if (opt2.equals("-i")) {
                                    b = 4;
                                    opt = opt2;
                                }
                                opt = opt2;
                                b = -1;
                                break;
                            case 1503:
                                opt2 = opt3;
                                if (opt2.equals("-l")) {
                                    b = 5;
                                    opt = opt2;
                                }
                                opt = opt2;
                                b = -1;
                                break;
                            case 1510:
                                opt2 = opt3;
                                if (opt2.equals("-s")) {
                                    b = 6;
                                    opt = opt2;
                                }
                                opt = opt2;
                                b = -1;
                                break;
                            case 1512:
                                opt2 = opt3;
                                if (opt2.equals("-u")) {
                                    b = 8;
                                    opt = opt2;
                                }
                                opt = opt2;
                                b = -1;
                                break;
                            case 43014832:
                                opt2 = opt3;
                                if (opt2.equals("--uid")) {
                                    b = UsbACInterface.ACI_SAMPLE_RATE_CONVERTER;
                                    opt = opt2;
                                }
                                opt = opt2;
                                b = -1;
                                break;
                            case 1333469547:
                                opt2 = opt3;
                                if (opt2.equals("--user")) {
                                    b = 12;
                                    opt = opt2;
                                }
                                opt = opt2;
                                b = -1;
                                break;
                            case 1809263575:
                                opt2 = opt3;
                                if (opt2.equals("--apex-only")) {
                                    b = 11;
                                    opt = opt2;
                                }
                                opt = opt2;
                                b = -1;
                                break;
                            default:
                                opt = opt3;
                                b = -1;
                                break;
                        }
                        switch (b) {
                            case 0:
                                listSystem = true;
                                break;
                            case 1:
                                listThirdParty = true;
                                break;
                            case 2:
                                getFlags = getFlags | 4202496 | AudioFormat.APTX;
                                break;
                            case 3:
                                listDisabled = true;
                                break;
                            case 4:
                                showVersionCode = true;
                                break;
                            case 5:
                                break;
                            case 6:
                                listInstaller = true;
                                break;
                            case 7:
                                showUid = true;
                                break;
                            case 8:
                                getFlags |= 8192;
                                break;
                            case 9:
                                showUid2 = true;
                                break;
                            case 10:
                                uid2 = 1;
                                break;
                            case 11:
                                getFlags |= 1073741824;
                                listApexOnly = true;
                                break;
                            case 12:
                                userId = UserHandle.parseUserArg(getNextArgRequired());
                                break;
                            case 13:
                                showUid = true;
                                try {
                                    uid = Integer.parseInt(getNextArgRequired());
                                } catch (RuntimeException e) {
                                    ex = e;
                                    pw.println("Error: " + ex.toString());
                                    return -1;
                                }
                                break;
                            default:
                                StringBuilder sb = new StringBuilder();
                                try {
                                    sb.append("Error: Unknown option: ");
                                    sb.append(opt);
                                    pw.println(sb.toString());
                                    return -1;
                                } catch (RuntimeException e2) {
                                    ex = e2;
                                    pw.println("Error: " + ex.toString());
                                    return -1;
                                }
                        }
                    } catch (RuntimeException e3) {
                        ex = e3;
                    }
                } else {
                    boolean showUid3 = showUid;
                    String filter2 = getNextArg();
                    if (userId == -1) {
                        getFlags |= 4202496;
                    }
                    int translatedUserId = translateUserId(userId, 0, "runListPackages");
                    ParceledListSlice<PackageInfo> slice2 = this.mInterface.getInstalledPackages(getFlags, translatedUserId);
                    List<PackageInfo> packages = slice2.getList();
                    int count2 = packages.size();
                    int userId2 = 0;
                    while (userId2 < count2) {
                        List<PackageInfo> packages2 = packages;
                        PackageInfo info = packages.get(userId2);
                        if (filter2 != null) {
                            count = count2;
                            if (!info.packageName.contains(filter2)) {
                                filter = filter2;
                                listSystem = listSystem;
                                listThirdParty = listThirdParty;
                                slice = slice2;
                            }
                            userId2++;
                            count2 = count;
                            packages = packages2;
                            slice2 = slice;
                            filter2 = filter;
                            listSystem = listSystem;
                            listThirdParty = listThirdParty;
                        } else {
                            count = count2;
                        }
                        boolean isApex = info.isApex;
                        slice = slice2;
                        if (uid != -1 && !isApex && info.applicationInfo.uid != uid) {
                            filter = filter2;
                            listSystem = listSystem;
                            listThirdParty = listThirdParty;
                        } else {
                            boolean isSystem = (isApex || (info.applicationInfo.flags & 1) == 0) ? false : true;
                            if (isApex) {
                                filter = filter2;
                            } else {
                                filter = filter2;
                                boolean isEnabled = info.applicationInfo.enabled;
                                if ((listSystem || !isEnabled) && ((!listThirdParty || isEnabled) && ((!listInstaller || isSystem) && (!(showUid2 && isSystem) && (!listApexOnly || isApex))))) {
                                    pw.print("package:");
                                    if (listDisabled) {
                                        pw.print(info.applicationInfo.sourceDir);
                                        pw.print("=");
                                    }
                                    pw.print(info.packageName);
                                    if (uid2 != 0) {
                                        pw.print(" versionCode:");
                                        if (info.applicationInfo != null) {
                                            pw.print(info.applicationInfo.longVersionCode);
                                        } else {
                                            pw.print(info.getLongVersionCode());
                                        }
                                    }
                                    if (showVersionCode) {
                                        pw.print("  installer=");
                                        pw.print(this.mInterface.getInstallerPackageName(info.packageName));
                                    }
                                    if (showUid3 && !isApex) {
                                        pw.print(" uid:");
                                        pw.print(info.applicationInfo.uid);
                                    }
                                    pw.println();
                                } else {
                                    listSystem = listSystem;
                                    listThirdParty = listThirdParty;
                                }
                            }
                            if (listSystem) {
                                pw.print("package:");
                                if (listDisabled) {
                                    pw.print(info.applicationInfo.sourceDir);
                                    pw.print("=");
                                }
                                pw.print(info.packageName);
                                if (uid2 != 0) {
                                    pw.print(" versionCode:");
                                    if (info.applicationInfo != null) {
                                        pw.print(info.applicationInfo.longVersionCode);
                                    } else {
                                        pw.print(info.getLongVersionCode());
                                    }
                                }
                                if (showVersionCode) {
                                    pw.print("  installer=");
                                    pw.print(this.mInterface.getInstallerPackageName(info.packageName));
                                }
                                if (showUid3) {
                                    pw.print(" uid:");
                                    pw.print(info.applicationInfo.uid);
                                }
                                pw.println();
                            } else {
                                pw.print("package:");
                                if (listDisabled) {
                                    pw.print(info.applicationInfo.sourceDir);
                                    pw.print("=");
                                }
                                pw.print(info.packageName);
                                if (uid2 != 0) {
                                    pw.print(" versionCode:");
                                    if (info.applicationInfo != null) {
                                        pw.print(info.applicationInfo.longVersionCode);
                                    } else {
                                        pw.print(info.getLongVersionCode());
                                    }
                                }
                                if (showVersionCode) {
                                    pw.print("  installer=");
                                    pw.print(this.mInterface.getInstallerPackageName(info.packageName));
                                }
                                if (showUid3) {
                                    pw.print(" uid:");
                                    pw.print(info.applicationInfo.uid);
                                }
                                pw.println();
                            }
                        }
                        userId2++;
                        count2 = count;
                        packages = packages2;
                        slice2 = slice;
                        filter2 = filter;
                        listSystem = listSystem;
                        listThirdParty = listThirdParty;
                    }
                    return 0;
                }
            } catch (RuntimeException e4) {
                ex = e4;
            }
        }
    }

    private int runListPermissionGroups() throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        List<PermissionGroupInfo> pgs = this.mPermissionManager.getAllPermissionGroups(0).getList();
        int count = pgs.size();
        for (int p = 0; p < count; p++) {
            PermissionGroupInfo pgi = pgs.get(p);
            pw.print("permission group:");
            pw.println(pgi.name);
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0060  */
    private int runListPermissions() throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        boolean labels = false;
        boolean groups = false;
        boolean userOnly = false;
        boolean summary = false;
        boolean dangerousOnly = false;
        while (true) {
            String opt = getNextOption();
            byte b = 0;
            if (opt == null) {
                ArrayList<String> groupList = new ArrayList<>();
                if (groups) {
                    List<PermissionGroupInfo> infos = this.mPermissionManager.getAllPermissionGroups(0).getList();
                    int count = infos.size();
                    for (int i = 0; i < count; i++) {
                        groupList.add(infos.get(i).name);
                    }
                    groupList.add(null);
                } else {
                    String grp = getNextArg();
                    groupList.add(grp);
                }
                if (dangerousOnly) {
                    pw.println("Dangerous Permissions:");
                    pw.println("");
                    doListPermissions(groupList, groups, labels, summary, 1, 1);
                    if (userOnly) {
                        pw.println("Normal Permissions:");
                        pw.println("");
                        doListPermissions(groupList, groups, labels, summary, 0, 0);
                        return 0;
                    }
                    return 0;
                }
                if (userOnly) {
                    pw.println("Dangerous and Normal Permissions:");
                    pw.println("");
                    doListPermissions(groupList, groups, labels, summary, 0, 1);
                    return 0;
                }
                pw.println("All Permissions:");
                pw.println("");
                doListPermissions(groupList, groups, labels, summary, -10000, 10000);
                return 0;
            }
            int iHashCode = opt.hashCode();
            if (iHashCode != 1495) {
                if (iHashCode != 1510) {
                    if (iHashCode != 1512) {
                        if (iHashCode != 1497) {
                            if (iHashCode == 1498 && opt.equals("-g")) {
                                b = 2;
                            } else {
                                b = -1;
                            }
                        } else if (opt.equals("-f")) {
                            b = 1;
                        } else {
                            b = -1;
                        }
                    } else if (opt.equals("-u")) {
                        b = 4;
                    } else {
                        b = -1;
                    }
                } else if (opt.equals("-s")) {
                    b = 3;
                } else {
                    b = -1;
                }
            } else if (!opt.equals("-d")) {
                b = -1;
            }
            if (b == 0) {
                dangerousOnly = true;
            } else if (b == 1) {
                labels = true;
            } else if (b == 2) {
                groups = true;
            } else if (b == 3) {
                groups = true;
                labels = true;
                summary = true;
            } else {
                if (b != 4) {
                    pw.println("Error: Unknown option: " + opt);
                    return 1;
                }
                userOnly = true;
            }
        }
    }

    private static class SessionDump {
        boolean onlyParent;
        boolean onlyReady;
        boolean onlySessionId;

        private SessionDump() {
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0035  */
    private boolean setSessionFlag(String flag, SessionDump sessionDump) {
        byte b;
        int iHashCode = flag.hashCode();
        if (iHashCode != -2056597429) {
            if (iHashCode != -1847964944) {
                if (iHashCode == 1321081314 && flag.equals("--only-ready")) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (flag.equals("--only-sessionid")) {
                b = 2;
            } else {
                b = -1;
            }
        } else if (flag.equals("--only-parent")) {
            b = 0;
        } else {
            b = -1;
        }
        if (b == 0) {
            sessionDump.onlyParent = true;
        } else if (b == 1) {
            sessionDump.onlyReady = true;
        } else {
            if (b != 2) {
                return false;
            }
            sessionDump.onlySessionId = true;
        }
        return true;
    }

    private int runListStagedSessions() {
        String opt;
        IndentingPrintWriter pw = new IndentingPrintWriter(getOutPrintWriter(), "  ", 120);
        try {
            SessionDump sessionDump = new SessionDump();
            do {
                opt = getNextOption();
                if (opt == null) {
                    try {
                        List<PackageInstaller.SessionInfo> stagedSessions = this.mInterface.getPackageInstaller().getStagedSessions().getList();
                        printSessionList(pw, stagedSessions, sessionDump);
                        pw.close();
                        return 1;
                    } catch (RemoteException e) {
                        pw.println("Failure [" + e.getClass().getName() + " - " + e.getMessage() + "]");
                        pw.close();
                        return -1;
                    }
                }
            } while (setSessionFlag(opt, sessionDump));
            pw.println("Error: Unknown option: " + opt);
            pw.close();
            return -1;
        } catch (Throwable th) {
            try {
                pw.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private void printSessionList(IndentingPrintWriter pw, List<PackageInstaller.SessionInfo> stagedSessions, SessionDump sessionDump) {
        SparseArray<PackageInstaller.SessionInfo> sessionById = new SparseArray<>(stagedSessions.size());
        for (PackageInstaller.SessionInfo session : stagedSessions) {
            sessionById.put(session.getSessionId(), session);
        }
        for (PackageInstaller.SessionInfo session2 : stagedSessions) {
            if (!sessionDump.onlyReady || session2.isStagedSessionReady()) {
                if (session2.getParentSessionId() == -1) {
                    printSession(pw, session2, sessionDump);
                    if (session2.isMultiPackage() && !sessionDump.onlyParent) {
                        pw.increaseIndent();
                        int[] childIds = session2.getChildSessionIds();
                        for (int i = 0; i < childIds.length; i++) {
                            PackageInstaller.SessionInfo childSession = sessionById.get(childIds[i]);
                            if (childSession == null) {
                                if (sessionDump.onlySessionId) {
                                    pw.println(childIds[i]);
                                } else {
                                    pw.println("sessionId = " + childIds[i] + "; not found");
                                }
                            } else {
                                printSession(pw, childSession, sessionDump);
                            }
                        }
                        pw.decreaseIndent();
                    }
                }
            }
        }
    }

    private static void printSession(PrintWriter pw, PackageInstaller.SessionInfo session, SessionDump sessionDump) {
        if (sessionDump.onlySessionId) {
            pw.println(session.getSessionId());
            return;
        }
        pw.println("sessionId = " + session.getSessionId() + "; appPackageName = " + session.getAppPackageName() + "; isStaged = " + session.isStaged() + "; isReady = " + session.isStagedSessionReady() + "; isApplied = " + session.isStagedSessionApplied() + "; isFailed = " + session.isStagedSessionFailed() + ";");
    }

    private Intent parseIntentAndUser() throws URISyntaxException {
        this.mTargetUser = -2;
        this.mBrief = false;
        this.mComponents = false;
        Intent intent = Intent.parseCommandArgs(this, new Intent.CommandOptionHandler() { // from class: com.android.server.pm.PackageManagerShellCommand.4
            public boolean handleOption(String opt, ShellCommand cmd) {
                if ("--user".equals(opt)) {
                    PackageManagerShellCommand.this.mTargetUser = UserHandle.parseUserArg(cmd.getNextArgRequired());
                    return true;
                }
                if ("--brief".equals(opt)) {
                    PackageManagerShellCommand.this.mBrief = true;
                    return true;
                }
                if ("--components".equals(opt)) {
                    PackageManagerShellCommand.this.mComponents = true;
                    return true;
                }
                if ("--query-flags".equals(opt)) {
                    PackageManagerShellCommand.this.mQueryFlags = Integer.decode(cmd.getNextArgRequired()).intValue();
                    return true;
                }
                return false;
            }
        });
        this.mTargetUser = ActivityManager.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), this.mTargetUser, false, false, null, null);
        return intent;
    }

    private void printResolveInfo(PrintWriterPrinter pr, String prefix, ResolveInfo ri, boolean brief, boolean components) {
        ComponentName comp;
        if (brief || components) {
            if (ri.activityInfo != null) {
                comp = new ComponentName(ri.activityInfo.packageName, ri.activityInfo.name);
            } else if (ri.serviceInfo != null) {
                comp = new ComponentName(ri.serviceInfo.packageName, ri.serviceInfo.name);
            } else if (ri.providerInfo != null) {
                comp = new ComponentName(ri.providerInfo.packageName, ri.providerInfo.name);
            } else {
                comp = null;
            }
            if (comp != null) {
                if (!components) {
                    pr.println(prefix + "priority=" + ri.priority + " preferredOrder=" + ri.preferredOrder + " match=0x" + Integer.toHexString(ri.match) + " specificIndex=" + ri.specificIndex + " isDefault=" + ri.isDefault);
                }
                pr.println(prefix + comp.flattenToShortString());
                return;
            }
        }
        ri.dump(pr, prefix);
    }

    private int runResolveActivity() {
        try {
            Intent intent = parseIntentAndUser();
            try {
                ResolveInfo ri = this.mInterface.resolveIntent(intent, intent.getType(), this.mQueryFlags, this.mTargetUser);
                PrintWriter pw = getOutPrintWriter();
                if (ri == null) {
                    pw.println("No activity found");
                    return 0;
                }
                PrintWriterPrinter pr = new PrintWriterPrinter(pw);
                printResolveInfo(pr, "", ri, this.mBrief, this.mComponents);
                return 0;
            } catch (RemoteException e) {
                throw new RuntimeException("Failed calling service", e);
            }
        } catch (URISyntaxException e2) {
            throw new RuntimeException(e2.getMessage(), e2);
        }
    }

    private int runQueryIntentActivities() {
        try {
            Intent intent = parseIntentAndUser();
            try {
                List<ResolveInfo> result = this.mInterface.queryIntentActivities(intent, intent.getType(), this.mQueryFlags, this.mTargetUser).getList();
                PrintWriter pw = getOutPrintWriter();
                if (result != null && result.size() > 0) {
                    if (!this.mComponents) {
                        pw.print(result.size());
                        pw.println(" activities found:");
                        PrintWriterPrinter pr = new PrintWriterPrinter(pw);
                        for (int i = 0; i < result.size(); i++) {
                            pw.print("  Activity #");
                            pw.print(i);
                            pw.println(":");
                            printResolveInfo(pr, "    ", result.get(i), this.mBrief, this.mComponents);
                        }
                        return 0;
                    }
                    PrintWriterPrinter pr2 = new PrintWriterPrinter(pw);
                    for (int i2 = 0; i2 < result.size(); i2++) {
                        printResolveInfo(pr2, "", result.get(i2), this.mBrief, this.mComponents);
                    }
                    return 0;
                }
                pw.println("No activities found");
                return 0;
            } catch (RemoteException e) {
                throw new RuntimeException("Failed calling service", e);
            }
        } catch (URISyntaxException e2) {
            throw new RuntimeException(e2.getMessage(), e2);
        }
    }

    private int runQueryIntentServices() {
        try {
            Intent intent = parseIntentAndUser();
            try {
                List<ResolveInfo> result = this.mInterface.queryIntentServices(intent, intent.getType(), this.mQueryFlags, this.mTargetUser).getList();
                PrintWriter pw = getOutPrintWriter();
                if (result != null && result.size() > 0) {
                    if (!this.mComponents) {
                        pw.print(result.size());
                        pw.println(" services found:");
                        PrintWriterPrinter pr = new PrintWriterPrinter(pw);
                        for (int i = 0; i < result.size(); i++) {
                            pw.print("  Service #");
                            pw.print(i);
                            pw.println(":");
                            printResolveInfo(pr, "    ", result.get(i), this.mBrief, this.mComponents);
                        }
                        return 0;
                    }
                    PrintWriterPrinter pr2 = new PrintWriterPrinter(pw);
                    for (int i2 = 0; i2 < result.size(); i2++) {
                        printResolveInfo(pr2, "", result.get(i2), this.mBrief, this.mComponents);
                    }
                    return 0;
                }
                pw.println("No services found");
                return 0;
            } catch (RemoteException e) {
                throw new RuntimeException("Failed calling service", e);
            }
        } catch (URISyntaxException e2) {
            throw new RuntimeException(e2.getMessage(), e2);
        }
    }

    private int runQueryIntentReceivers() {
        try {
            Intent intent = parseIntentAndUser();
            try {
                List<ResolveInfo> result = this.mInterface.queryIntentReceivers(intent, intent.getType(), this.mQueryFlags, this.mTargetUser).getList();
                PrintWriter pw = getOutPrintWriter();
                if (result != null && result.size() > 0) {
                    if (!this.mComponents) {
                        pw.print(result.size());
                        pw.println(" receivers found:");
                        PrintWriterPrinter pr = new PrintWriterPrinter(pw);
                        for (int i = 0; i < result.size(); i++) {
                            pw.print("  Receiver #");
                            pw.print(i);
                            pw.println(":");
                            printResolveInfo(pr, "    ", result.get(i), this.mBrief, this.mComponents);
                        }
                        return 0;
                    }
                    PrintWriterPrinter pr2 = new PrintWriterPrinter(pw);
                    for (int i2 = 0; i2 < result.size(); i2++) {
                        printResolveInfo(pr2, "", result.get(i2), this.mBrief, this.mComponents);
                    }
                    return 0;
                }
                pw.println("No receivers found");
                return 0;
            } catch (RemoteException e) {
                throw new RuntimeException("Failed calling service", e);
            }
        } catch (URISyntaxException e2) {
            throw new RuntimeException(e2.getMessage(), e2);
        }
    }

    private int runStreamingInstall() throws RemoteException {
        InstallParams params = makeInstallParams();
        if (params.sessionParams.dataLoaderParams == null) {
            params.sessionParams.setDataLoaderParams(PackageManagerShellCommandDataLoader.getStreamingDataLoaderParams(this));
        }
        return doRunInstall(params);
    }

    private int runIncrementalInstall() throws RemoteException {
        InstallParams params = makeInstallParams();
        if (params.sessionParams.dataLoaderParams == null) {
            params.sessionParams.setDataLoaderParams(PackageManagerShellCommandDataLoader.getIncrementalDataLoaderParams(this));
        }
        return doRunInstall(params);
    }

    private int runInstall() throws RemoteException {
        return doRunInstall(makeInstallParams());
    }

    private int doRunInstall(InstallParams params) throws Throwable {
        Throwable th;
        int sessionId;
        PrintWriter pw = getOutPrintWriter();
        int sessionId2 = 1;
        boolean isStreaming = params.sessionParams.dataLoaderParams != null;
        boolean isApex = (params.sessionParams.installFlags & 131072) != 0;
        ArrayList<String> args = getRemainingArgs();
        boolean fromStdIn = args.isEmpty() || STDIN_PATH.equals(args.get(0));
        boolean hasSplits = args.size() > 1;
        if (fromStdIn && params.sessionParams.sizeBytes == -1) {
            pw.println("Error: must either specify a package size or an APK file");
            return 1;
        }
        if (isApex && hasSplits) {
            pw.println("Error: can't specify SPLIT(s) for APEX");
            return 1;
        }
        if (!isStreaming) {
            if (fromStdIn && hasSplits) {
                pw.println("Error: can't specify SPLIT(s) along with STDIN");
                return 1;
            }
            if (args.isEmpty()) {
                args.add(STDIN_PATH);
            } else {
                setParamsSize(params, args);
            }
        }
        int sessionId3 = doCreateSession(params.sessionParams, params.installerPackageName, params.userId);
        try {
            if (isStreaming) {
                try {
                    sessionId = sessionId3;
                    if (doAddFiles(sessionId3, args, params.sessionParams.sizeBytes, isApex) != 0) {
                        if (1 == 0) {
                            return 1;
                        }
                        try {
                            doAbandonSession(sessionId, false);
                            return 1;
                        } catch (Exception e) {
                            return 1;
                        }
                    }
                } catch (Throwable th2) {
                    sessionId2 = sessionId3;
                    th = th2;
                    if (1 == 0) {
                        throw th;
                    }
                    try {
                        doAbandonSession(sessionId2, false);
                        throw th;
                    } catch (Exception e2) {
                        throw th;
                    }
                }
            } else {
                sessionId = sessionId3;
                if (doWriteSplits(sessionId, args, params.sessionParams.sizeBytes, isApex) != 0) {
                    if (1 == 0) {
                        return 1;
                    }
                    try {
                        doAbandonSession(sessionId, false);
                        return 1;
                    } catch (Exception e3) {
                        return 1;
                    }
                }
            }
            if (doCommitSession(sessionId, false) != 0) {
                if (1 == 0) {
                    return 1;
                }
                try {
                    doAbandonSession(sessionId, false);
                    return 1;
                } catch (Exception e4) {
                    return 1;
                }
            }
            if (params.sessionParams.isStaged && params.mWaitForStagedSessionReady) {
                int iDoWaitForStagedSessionRead = doWaitForStagedSessionRead(sessionId, params.timeoutMs, pw);
                if (0 != 0) {
                    try {
                        doAbandonSession(sessionId, false);
                    } catch (Exception e5) {
                    }
                }
                return iDoWaitForStagedSessionRead;
            }
            pw.println("Success");
            if (0 != 0) {
                try {
                    doAbandonSession(sessionId, false);
                } catch (Exception e6) {
                }
            }
            return 0;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private int doWaitForStagedSessionRead(int sessionId, long timeoutMs, PrintWriter pw) throws RemoteException {
        if (timeoutMs <= 0) {
            timeoutMs = 60000;
        }
        PackageInstaller.SessionInfo si = this.mInterface.getPackageInstaller().getSessionInfo(sessionId);
        if (si == null) {
            pw.println("Failure [Unknown session " + sessionId + "]");
            return 1;
        }
        if (!si.isStaged()) {
            pw.println("Failure [Session " + sessionId + " is not a staged session]");
            return 1;
        }
        long currentTime = System.currentTimeMillis();
        long endTime = currentTime + timeoutMs;
        while (currentTime < endTime && (si == null || (!si.isStagedSessionReady() && !si.isStagedSessionFailed()))) {
            SystemClock.sleep(Math.min(endTime - currentTime, 100L));
            currentTime = System.currentTimeMillis();
            si = this.mInterface.getPackageInstaller().getSessionInfo(sessionId);
        }
        if (si == null) {
            pw.println("Failure [failed to retrieve SessionInfo]");
            return 1;
        }
        if (!si.isStagedSessionReady() && !si.isStagedSessionFailed()) {
            pw.println("Failure [timed out after " + timeoutMs + " ms]");
            return 1;
        }
        if (!si.isStagedSessionReady()) {
            pw.println("Error [" + si.getStagedSessionErrorCode() + "] [" + si.getStagedSessionErrorMessage() + "]");
            return 1;
        }
        pw.println("Success. Reboot device to apply staged session");
        return 0;
    }

    private int runInstallAbandon() throws RemoteException {
        int sessionId = Integer.parseInt(getNextArg());
        return doAbandonSession(sessionId, true);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0033  */
    private int runInstallCommit() throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        boolean waitForStagedSessionReady = true;
        long timeoutMs = -1;
        while (true) {
            String opt = getNextOption();
            byte b = 0;
            if (opt == null) {
                break;
            }
            int iHashCode = opt.hashCode();
            if (iHashCode != -844792735) {
                if (iHashCode != 1333511957 || !opt.equals("--wait")) {
                    b = -1;
                }
            } else if (opt.equals("--no-wait")) {
                b = 1;
            } else {
                b = -1;
            }
            if (b == 0) {
                waitForStagedSessionReady = true;
                if (getRemainingArgsCount() > 1) {
                    try {
                        timeoutMs = Long.parseLong(peekNextArg());
                        getNextArg();
                    } catch (NumberFormatException e) {
                    }
                }
            } else if (b == 1) {
                waitForStagedSessionReady = false;
            }
        }
        int sessionId = Integer.parseInt(getNextArg());
        if (doCommitSession(sessionId, false) != 0) {
            return 1;
        }
        PackageInstaller.SessionInfo si = this.mInterface.getPackageInstaller().getSessionInfo(sessionId);
        if (si == null || !si.isStaged() || !waitForStagedSessionReady) {
            pw.println("Success");
            return 0;
        }
        return doWaitForStagedSessionRead(sessionId, timeoutMs, pw);
    }

    private int runInstallCreate() throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        InstallParams installParams = makeInstallParams();
        int sessionId = doCreateSession(installParams.sessionParams, installParams.installerPackageName, installParams.userId);
        pw.println("Success: created install session [" + sessionId + "]");
        return 0;
    }

    private int runInstallWrite() throws RemoteException {
        long sizeBytes = -1;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if (opt.equals("-S")) {
                    sizeBytes = Long.parseLong(getNextArg());
                } else {
                    throw new IllegalArgumentException("Unknown option: " + opt);
                }
            } else {
                int sessionId = Integer.parseInt(getNextArg());
                String splitName = getNextArg();
                String path = getNextArg();
                return doWriteSplit(sessionId, path, sizeBytes, splitName, true);
            }
        }
    }

    private int runInstallAddSession() throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        int parentSessionId = Integer.parseInt(getNextArg());
        List<Integer> otherSessionIds = new ArrayList<>();
        while (true) {
            String opt = getNextArg();
            if (opt == null) {
                break;
            }
            otherSessionIds.add(Integer.valueOf(Integer.parseInt(opt)));
        }
        if (otherSessionIds.size() == 0) {
            pw.println("Error: At least two sessions are required.");
            return 1;
        }
        return doInstallAddSession(parentSessionId, ArrayUtils.convertToIntArray(otherSessionIds), true);
    }

    private int runInstallRemove() throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        int sessionId = Integer.parseInt(getNextArg());
        ArrayList<String> splitNames = getRemainingArgs();
        if (splitNames.isEmpty()) {
            pw.println("Error: split name not specified");
            return 1;
        }
        return doRemoveSplits(sessionId, splitNames, true);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private int runInstallExisting() throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        int installFlags = 4194304;
        boolean waitTillComplete = false;
        int userId = -2;
        while (true) {
            String opt = getNextOption();
            byte b = 0;
            if (opt != null) {
                switch (opt.hashCode()) {
                    case -951415743:
                        b = !opt.equals("--instant") ? (byte) -1 : (byte) 2;
                        break;
                    case 1051781117:
                        b = !opt.equals("--ephemeral") ? (byte) -1 : (byte) 1;
                        break;
                    case 1333024815:
                        b = !opt.equals("--full") ? (byte) -1 : (byte) 3;
                        break;
                    case 1333469547:
                        if (!opt.equals("--user")) {
                            b = -1;
                        }
                        break;
                    case 1333511957:
                        b = !opt.equals("--wait") ? (byte) -1 : (byte) 4;
                        break;
                    case 1494514835:
                        b = !opt.equals("--restrict-permissions") ? (byte) -1 : (byte) 5;
                        break;
                    default:
                        b = -1;
                        break;
                }
                if (b == 0) {
                    int userId2 = UserHandle.parseUserArg(getNextArgRequired());
                    userId = userId2;
                } else if (b == 1 || b == 2) {
                    installFlags = (installFlags | 2048) & (-16385);
                } else if (b == 3) {
                    installFlags = (installFlags & (-2049)) | 16384;
                } else if (b == 4) {
                    waitTillComplete = true;
                } else {
                    if (b != 5) {
                        pw.println("Error: Unknown option: " + opt);
                        return 1;
                    }
                    installFlags = (-4194305) & installFlags;
                }
            } else {
                String packageName = getNextArg();
                if (packageName != null) {
                    int translatedUserId = translateUserId(userId, -10000, "runInstallExisting");
                    if (waitTillComplete) {
                        try {
                            LocalIntentReceiver receiver = new LocalIntentReceiver();
                            IPackageInstaller installer = this.mInterface.getPackageInstaller();
                            pw.println("Installing package " + packageName + " for user: " + translatedUserId);
                            try {
                                installer.installExistingPackage(packageName, installFlags, 0, receiver.getIntentSender(), translatedUserId, (List) null);
                                Intent result = receiver.getResult();
                                int status = result.getIntExtra("android.content.pm.extra.STATUS", 1);
                                pw.println("Received intent for package install");
                                return status == 0 ? 0 : 1;
                            } catch (PackageManager.NameNotFoundException | RemoteException e) {
                                e = e;
                            }
                        } catch (PackageManager.NameNotFoundException | RemoteException e2) {
                            e = e2;
                        }
                    } else {
                        try {
                            int res = this.mInterface.installExistingPackageAsUser(packageName, translatedUserId, installFlags, 0, (List) null);
                            try {
                                if (res == -3) {
                                    throw new PackageManager.NameNotFoundException("Package " + packageName + " doesn't exist");
                                }
                                StringBuilder sb = new StringBuilder();
                                sb.append("Package ");
                                try {
                                    sb.append(packageName);
                                    sb.append(" installed for user: ");
                                    sb.append(translatedUserId);
                                    pw.println(sb.toString());
                                    return 0;
                                } catch (PackageManager.NameNotFoundException | RemoteException e3) {
                                    e = e3;
                                }
                            } catch (PackageManager.NameNotFoundException | RemoteException e4) {
                                e = e4;
                            }
                        } catch (PackageManager.NameNotFoundException | RemoteException e5) {
                            e = e5;
                        }
                    }
                    pw.println(e.toString());
                    return 1;
                }
                pw.println("Error: package name not specified");
                return 1;
            }
        }
    }

    private int runSetInstallLocation() throws RemoteException {
        String arg = getNextArg();
        if (arg == null) {
            getErrPrintWriter().println("Error: no install location specified.");
            return 1;
        }
        try {
            int loc = Integer.parseInt(arg);
            if (!this.mInterface.setInstallLocation(loc)) {
                getErrPrintWriter().println("Error: install location has to be a number.");
                return 1;
            }
            return 0;
        } catch (NumberFormatException e) {
            getErrPrintWriter().println("Error: install location has to be a number.");
            return 1;
        }
    }

    private int runGetInstallLocation() throws RemoteException {
        int loc = this.mInterface.getInstallLocation();
        String locStr = "invalid";
        if (loc == 0) {
            locStr = UiModeManagerService.Shell.NIGHT_MODE_STR_AUTO;
        } else if (loc == 1) {
            locStr = "internal";
        } else if (loc == 2) {
            locStr = "external";
        }
        getOutPrintWriter().println(loc + "[" + locStr + "]");
        return 0;
    }

    public int runMovePackage() throws RemoteException {
        String packageName = getNextArg();
        if (packageName == null) {
            getErrPrintWriter().println("Error: package name not specified");
            return 1;
        }
        String volumeUuid = getNextArg();
        if ("internal".equals(volumeUuid)) {
            volumeUuid = null;
        }
        int moveId = this.mInterface.movePackage(packageName, volumeUuid);
        int status = this.mInterface.getMoveStatus(moveId);
        while (!PackageManager.isMoveStatusFinished(status)) {
            SystemClock.sleep(1000L);
            status = this.mInterface.getMoveStatus(moveId);
        }
        if (status == -100) {
            getOutPrintWriter().println("Success");
            return 0;
        }
        getErrPrintWriter().println("Failure [" + status + "]");
        return 1;
    }

    public int runMovePrimaryStorage() throws RemoteException {
        String volumeUuid = getNextArg();
        if ("internal".equals(volumeUuid)) {
            volumeUuid = null;
        }
        int moveId = this.mInterface.movePrimaryStorage(volumeUuid);
        int status = this.mInterface.getMoveStatus(moveId);
        while (!PackageManager.isMoveStatusFinished(status)) {
            SystemClock.sleep(1000L);
            status = this.mInterface.getMoveStatus(moveId);
        }
        if (status == -100) {
            getOutPrintWriter().println("Success");
            return 0;
        }
        getErrPrintWriter().println("Failure [" + status + "]");
        return 1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:38:0x008d  */
    private int runCompile() throws RemoteException {
        String targetCompilerFilter;
        List<String> packageNames;
        int index;
        boolean zPerformDexOptMode;
        boolean result;
        int reason;
        PackageManagerShellCommand packageManagerShellCommand = this;
        PrintWriter pw = getOutPrintWriter();
        boolean checkProfiles = SystemProperties.getBoolean("dalvik.vm.usejitprofiles", false);
        boolean forceCompilation = false;
        boolean allPackages = false;
        boolean clearProfileData = false;
        String compilerFilter = null;
        String compilationReason = null;
        String checkProfilesRaw = null;
        boolean secondaryDex = false;
        String split = null;
        boolean compileLayouts = false;
        while (true) {
            String nextOption = getNextOption();
            String opt = nextOption;
            if (nextOption != null) {
                switch (opt) {
                    case "-a":
                        allPackages = true;
                        break;
                    case "-c":
                        clearProfileData = true;
                        break;
                    case "-f":
                        forceCompilation = true;
                        break;
                    case "-m":
                        String compilerFilter2 = getNextArgRequired();
                        compilerFilter = compilerFilter2;
                        break;
                    case "-r":
                        String compilationReason2 = getNextArgRequired();
                        compilationReason = compilationReason2;
                        break;
                    case "--compile-layouts":
                        compileLayouts = true;
                        break;
                    case "--check-prof":
                        String checkProfilesRaw2 = getNextArgRequired();
                        checkProfilesRaw = checkProfilesRaw2;
                        break;
                    case "--reset":
                        compilationReason = "install";
                        clearProfileData = true;
                        forceCompilation = true;
                        break;
                    case "--secondary-dex":
                        secondaryDex = true;
                        break;
                    case "--split":
                        String split2 = getNextArgRequired();
                        split = split2;
                        break;
                    default:
                        pw.println("Error: Unknown option: " + opt);
                        return 1;
                }
            } else {
                if (checkProfilesRaw != null) {
                    if ("true".equals(checkProfilesRaw)) {
                        checkProfiles = true;
                    } else if ("false".equals(checkProfilesRaw)) {
                        checkProfiles = false;
                    } else {
                        pw.println("Invalid value for \"--check-prof\". Expected \"true\" or \"false\".");
                        return 1;
                    }
                }
                boolean compilerFilterGiven = compilerFilter != null;
                boolean compilationReasonGiven = compilationReason != null;
                if ((!compilerFilterGiven && !compilationReasonGiven && !compileLayouts) || ((!compilerFilterGiven && compilationReasonGiven && compileLayouts) || ((compilerFilterGiven && !compilationReasonGiven && compileLayouts) || ((compilerFilterGiven && compilationReasonGiven && !compileLayouts) || (compilerFilterGiven && compilationReasonGiven && compileLayouts))))) {
                    pw.println("Must specify exactly one of compilation filter (\"-m\"), compilation reason (\"-r\"), or compile layouts (\"--compile-layouts\")");
                    return 1;
                }
                if (allPackages && split != null) {
                    pw.println("-a cannot be specified together with --split");
                    return 1;
                }
                if (secondaryDex && split != null) {
                    pw.println("--secondary-dex cannot be specified together with --split");
                    return 1;
                }
                String targetCompilerFilter2 = null;
                if (compilerFilterGiven) {
                    if (!DexFile.isValidCompilerFilter(compilerFilter)) {
                        pw.println("Error: \"" + compilerFilter + "\" is not a valid compilation filter.");
                        return 1;
                    }
                    targetCompilerFilter2 = compilerFilter;
                }
                if (compilationReasonGiven) {
                    int reason2 = -1;
                    int i = 0;
                    while (true) {
                        int reason3 = reason2;
                        if (i >= PackageManagerServiceCompilerMapping.REASON_STRINGS.length) {
                            reason = reason3;
                        } else if (!PackageManagerServiceCompilerMapping.REASON_STRINGS[i].equals(compilationReason)) {
                            i++;
                            reason2 = reason3;
                        } else {
                            reason = i;
                        }
                    }
                    if (reason == -1) {
                        pw.println("Error: Unknown compilation reason: " + compilationReason);
                        return 1;
                    }
                    String targetCompilerFilter3 = PackageManagerServiceCompilerMapping.getCompilerFilterForReason(reason);
                    targetCompilerFilter = targetCompilerFilter3;
                } else {
                    targetCompilerFilter = targetCompilerFilter2;
                }
                if (allPackages) {
                    packageNames = packageManagerShellCommand.mInterface.getAllPackages();
                } else {
                    String packageName = getNextArg();
                    if (packageName == null) {
                        pw.println("Error: package name not specified");
                        return 1;
                    }
                    packageNames = Collections.singletonList(packageName);
                }
                List<String> failedPackages = new ArrayList<>();
                int index2 = 0;
                for (String packageName2 : packageNames) {
                    String compilationReason3 = compilationReason;
                    if (clearProfileData) {
                        packageManagerShellCommand.mInterface.clearApplicationProfileData(packageName2);
                    }
                    if (allPackages) {
                        StringBuilder sb = new StringBuilder();
                        int index3 = index2 + 1;
                        sb.append(index3);
                        sb.append(SliceClientPermissions.SliceAuthority.DELIMITER);
                        sb.append(packageNames.size());
                        sb.append(": ");
                        sb.append(packageName2);
                        pw.println(sb.toString());
                        pw.flush();
                        index = index3;
                    } else {
                        index = index2;
                    }
                    if (compileLayouts) {
                        PackageManagerInternal internal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                        result = internal.compileLayouts(packageName2);
                        failedPackages = failedPackages;
                        opt = opt;
                    } else {
                        if (secondaryDex) {
                            zPerformDexOptMode = packageManagerShellCommand.mInterface.performDexOptSecondary(packageName2, targetCompilerFilter, forceCompilation);
                        } else {
                            zPerformDexOptMode = packageManagerShellCommand.mInterface.performDexOptMode(packageName2, checkProfiles, targetCompilerFilter, forceCompilation, true, split);
                        }
                        result = zPerformDexOptMode;
                    }
                    if (!result) {
                        failedPackages.add(packageName2);
                    }
                    failedPackages = failedPackages;
                    index2 = index;
                    compilationReason = compilationReason3;
                    clearProfileData = clearProfileData;
                    allPackages = allPackages;
                    opt = opt;
                    packageManagerShellCommand = this;
                }
                List<String> failedPackages2 = failedPackages;
                boolean allPackages2 = failedPackages2.isEmpty();
                if (allPackages2) {
                    pw.println("Success");
                    return 0;
                }
                if (failedPackages2.size() == 1) {
                    pw.println("Failure: package " + failedPackages2.get(0) + " could not be compiled");
                    return 1;
                }
                pw.print("Failure: the following packages could not be compiled: ");
                boolean is_first = true;
                for (String packageName3 : failedPackages2) {
                    if (is_first) {
                        is_first = false;
                    } else {
                        pw.print(", ");
                    }
                    pw.print(packageName3);
                }
                pw.println();
                return 1;
            }
        }
    }

    private int runreconcileSecondaryDexFiles() throws RemoteException {
        String packageName = getNextArg();
        this.mInterface.reconcileSecondaryDexFiles(packageName);
        return 0;
    }

    public int runForceDexOpt() throws RemoteException {
        this.mInterface.forceDexOpt(getNextArgRequired());
        return 0;
    }

    private int runDexoptJob() throws RemoteException {
        List<String> packageNames = new ArrayList<>();
        while (true) {
            String arg = getNextArg();
            if (arg == null) {
                break;
            }
            packageNames.add(arg);
        }
        boolean result = this.mInterface.runBackgroundDexoptJob(packageNames.isEmpty() ? null : packageNames);
        getOutPrintWriter().println(result ? "Success" : "Failure");
        return result ? 0 : -1;
    }

    private int runDumpProfiles() throws RemoteException {
        String packageName = getNextArg();
        this.mInterface.dumpProfiles(packageName);
        return 0;
    }

    private int runSnapshotProfile() throws RemoteException {
        String codePath;
        String baseCodePath;
        String str;
        PrintWriter pw = getOutPrintWriter();
        String packageName = getNextArg();
        boolean isBootImage = PackageManagerService.PLATFORM_PACKAGE_NAME.equals(packageName);
        String codePath2 = null;
        while (true) {
            String opt = getNextArg();
            if (opt != null) {
                if (((opt.hashCode() == -684928411 && opt.equals("--code-path")) ? (byte) 0 : (byte) -1) == 0) {
                    if (isBootImage) {
                        pw.write("--code-path cannot be used for the boot image.");
                        return -1;
                    }
                    codePath2 = getNextArg();
                } else {
                    pw.write("Unknown arg: " + opt);
                    return -1;
                }
            } else {
                if (isBootImage) {
                    codePath = codePath2;
                    baseCodePath = null;
                } else {
                    PackageInfo packageInfo = this.mInterface.getPackageInfo(packageName, 0, 0);
                    if (packageInfo == null) {
                        pw.write("Package not found " + packageName);
                        return -1;
                    }
                    String baseCodePath2 = packageInfo.applicationInfo.getBaseCodePath();
                    if (codePath2 != null) {
                        codePath = codePath2;
                        baseCodePath = baseCodePath2;
                    } else {
                        codePath = baseCodePath2;
                        baseCodePath = baseCodePath2;
                    }
                }
                SnapshotRuntimeProfileCallback callback = new SnapshotRuntimeProfileCallback();
                String callingPackage = Binder.getCallingUid() == 0 ? "root" : "com.android.shell";
                int profileType = isBootImage ? 1 : 0;
                if (!this.mInterface.getArtManager().isRuntimeProfilingEnabled(profileType, callingPackage)) {
                    pw.println("Error: Runtime profiling is not enabled");
                    return -1;
                }
                this.mInterface.getArtManager().snapshotRuntimeProfile(profileType, packageName, codePath, callback, callingPackage);
                if (!callback.waitTillDone()) {
                    pw.println("Error: callback not called");
                    return callback.mErrCode;
                }
                try {
                    InputStream inStream = new ParcelFileDescriptor.AutoCloseInputStream(callback.mProfileReadFd);
                    if (isBootImage) {
                        str = "";
                    } else {
                        try {
                            if (Objects.equals(baseCodePath, codePath)) {
                                str = "";
                            } else {
                                str = STDIN_PATH + new File(codePath).getName();
                            }
                        } catch (Throwable th) {
                            try {
                                inStream.close();
                                throw th;
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                                throw th;
                            }
                        }
                    }
                    String outputFileSuffix = str;
                    String outputProfilePath = ART_PROFILE_SNAPSHOT_DEBUG_LOCATION + packageName + outputFileSuffix + ".prof";
                    OutputStream outStream = new FileOutputStream(outputProfilePath);
                    try {
                        Streams.copy(inStream, outStream);
                        outStream.close();
                        Os.chmod(outputProfilePath, 420);
                        inStream.close();
                        return 0;
                    } catch (Throwable th3) {
                        try {
                            outStream.close();
                            throw th3;
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                            throw th3;
                        }
                    }
                } catch (ErrnoException | IOException e) {
                    pw.println("Error when reading the profile fd: " + e.getMessage());
                    e.printStackTrace(pw);
                    return -1;
                }
            }
        }
    }

    private ArrayList<String> getRemainingArgs() {
        ArrayList<String> args = new ArrayList<>();
        while (true) {
            String arg = getNextArg();
            if (arg != null) {
                args.add(arg);
            } else {
                return args;
            }
        }
    }

    private static class SnapshotRuntimeProfileCallback extends ISnapshotRuntimeProfileCallback.Stub {
        private CountDownLatch mDoneSignal;
        private int mErrCode;
        private ParcelFileDescriptor mProfileReadFd;
        private boolean mSuccess;

        private SnapshotRuntimeProfileCallback() {
            this.mSuccess = false;
            this.mErrCode = -1;
            this.mProfileReadFd = null;
            this.mDoneSignal = new CountDownLatch(1);
        }

        public void onSuccess(ParcelFileDescriptor profileReadFd) {
            this.mSuccess = true;
            try {
                this.mProfileReadFd = profileReadFd.dup();
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.mDoneSignal.countDown();
        }

        public void onError(int errCode) {
            this.mSuccess = false;
            this.mErrCode = errCode;
            this.mDoneSignal.countDown();
        }

        boolean waitTillDone() throws InterruptedException {
            boolean done = false;
            try {
                done = this.mDoneSignal.await(10000000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
            }
            return done && this.mSuccess;
        }
    }

    private int runUninstall() throws RemoteException {
        String str;
        int translatedUserId;
        PrintWriter pw = getOutPrintWriter();
        int flags = 0;
        int userId = -1;
        long versionCode = -1;
        while (true) {
            String opt = getNextOption();
            byte b = -1;
            if (opt != null) {
                int iHashCode = opt.hashCode();
                if (iHashCode != 1502) {
                    if (iHashCode != 1333469547) {
                        if (iHashCode == 1884113221 && opt.equals("--versionCode")) {
                            b = 2;
                        }
                    } else if (opt.equals("--user")) {
                        b = 1;
                    }
                } else if (opt.equals("-k")) {
                    b = 0;
                }
                if (b == 0) {
                    flags |= 1;
                } else if (b == 1) {
                    userId = UserHandle.parseUserArg(getNextArgRequired());
                } else if (b == 2) {
                    long versionCode2 = Long.parseLong(getNextArgRequired());
                    versionCode = versionCode2;
                } else {
                    pw.println("Error: Unknown option: " + opt);
                    return 1;
                }
            } else {
                String packageName = getNextArg();
                if (packageName == null) {
                    pw.println("Error: package name not specified");
                    return 1;
                }
                ArrayList<String> splitNames = getRemainingArgs();
                if (!splitNames.isEmpty()) {
                    return runRemoveSplits(packageName, splitNames);
                }
                if (userId == -1) {
                    flags |= 2;
                }
                int translatedUserId2 = translateUserId(userId, 0, "runUninstall");
                LocalIntentReceiver receiver = new LocalIntentReceiver();
                PackageManagerInternal internal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                if (internal.isApexPackage(packageName)) {
                    str = "]";
                    internal.uninstallApex(packageName, versionCode, translatedUserId2, receiver.getIntentSender(), flags);
                } else {
                    str = "]";
                    if ((flags & 2) != 0) {
                        translatedUserId = translatedUserId2;
                    } else {
                        translatedUserId = translatedUserId2;
                        PackageInfo info = this.mInterface.getPackageInfo(packageName, 67108864, translatedUserId);
                        if (info == null) {
                            pw.println("Failure [not installed for " + translatedUserId + str);
                            return 1;
                        }
                        boolean isSystem = (info.applicationInfo.flags & 1) != 0;
                        if (isSystem) {
                            flags |= 4;
                        }
                    }
                    this.mInterface.getPackageInstaller().uninstall(new VersionedPackage(packageName, versionCode), (String) null, flags, receiver.getIntentSender(), translatedUserId);
                }
                Intent result = receiver.getResult();
                int status = result.getIntExtra("android.content.pm.extra.STATUS", 1);
                if (status == 0) {
                    pw.println("Success");
                    return 0;
                }
                pw.println("Failure [" + result.getStringExtra("android.content.pm.extra.STATUS_MESSAGE") + str);
                return 1;
            }
        }
    }

    private int runRemoveSplits(String packageName, Collection<String> splitNames) throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(2);
        sessionParams.installFlags = 2 | sessionParams.installFlags;
        sessionParams.appPackageName = packageName;
        int sessionId = doCreateSession(sessionParams, null, -1);
        boolean abandonSession = true;
        try {
            if (doRemoveSplits(sessionId, splitNames, false) != 0) {
                return 1;
            }
            if (doCommitSession(sessionId, false) != 0) {
                return 1;
            }
            abandonSession = false;
            pw.println("Success");
            return 0;
        } finally {
            if (abandonSession) {
                try {
                    doAbandonSession(sessionId, false);
                } catch (Exception e) {
                }
            }
        }
    }

    static class ClearDataObserver extends IPackageDataObserver.Stub {
        boolean finished;
        boolean result;

        ClearDataObserver() {
        }

        public void onRemoveCompleted(String packageName, boolean succeeded) throws RemoteException {
            synchronized (this) {
                this.finished = true;
                this.result = succeeded;
                notifyAll();
            }
        }
    }

    private int runClear() throws RemoteException {
        int userId = 0;
        String option = getNextOption();
        if (option != null && option.equals("--user")) {
            userId = UserHandle.parseUserArg(getNextArgRequired());
        }
        String pkg = getNextArg();
        if (pkg == null) {
            getErrPrintWriter().println("Error: no package specified");
            return 1;
        }
        int translatedUserId = translateUserId(userId, -10000, "runClear");
        ClearDataObserver obs = new ClearDataObserver();
        ActivityManager.getService().clearApplicationUserData(pkg, false, obs, translatedUserId);
        synchronized (obs) {
            while (!obs.finished) {
                try {
                    obs.wait();
                } catch (InterruptedException e) {
                }
            }
        }
        if (obs.result) {
            getOutPrintWriter().println("Success");
            return 0;
        }
        getErrPrintWriter().println("Failed");
        return 1;
    }

    private static String enabledSettingToString(int state) {
        if (state == 0) {
            return BatteryService.HealthServiceWrapper.INSTANCE_VENDOR;
        }
        if (state == 1) {
            return "enabled";
        }
        if (state == 2) {
            return "disabled";
        }
        if (state == 3) {
            return "disabled-user";
        }
        if (state == 4) {
            return "disabled-until-used";
        }
        return UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN;
    }

    private int runSetEnabledSetting(int state) throws RemoteException {
        int userId = 0;
        String option = getNextOption();
        if (option != null && option.equals("--user")) {
            userId = UserHandle.parseUserArg(getNextArgRequired());
        }
        String pkg = getNextArg();
        if (pkg == null) {
            getErrPrintWriter().println("Error: no package or component specified");
            return 1;
        }
        int translatedUserId = translateUserId(userId, -10000, "runSetEnabledSetting");
        ComponentName cn = ComponentName.unflattenFromString(pkg);
        if (cn == null) {
            this.mInterface.setApplicationEnabledSetting(pkg, state, 0, translatedUserId, "shell:" + Process.myUid());
            getOutPrintWriter().println("Package " + pkg + " new state: " + enabledSettingToString(this.mInterface.getApplicationEnabledSetting(pkg, translatedUserId)));
            return 0;
        }
        this.mInterface.setComponentEnabledSetting(cn, state, 0, translatedUserId);
        getOutPrintWriter().println("Component " + cn.toShortString() + " new state: " + enabledSettingToString(this.mInterface.getComponentEnabledSetting(cn, translatedUserId)));
        return 0;
    }

    private int runSetHiddenSetting(boolean state) throws RemoteException {
        int userId = 0;
        String option = getNextOption();
        if (option != null && option.equals("--user")) {
            userId = UserHandle.parseUserArg(getNextArgRequired());
        }
        String pkg = getNextArg();
        if (pkg == null) {
            getErrPrintWriter().println("Error: no package or component specified");
            return 1;
        }
        int translatedUserId = translateUserId(userId, -10000, "runSetHiddenSetting");
        this.mInterface.setApplicationHiddenSettingAsUser(pkg, state, translatedUserId);
        getOutPrintWriter().println("Package " + pkg + " new hidden state: " + this.mInterface.getApplicationHiddenSettingAsUser(pkg, translatedUserId));
        return 0;
    }

    private int runSuspend(boolean suspendedState) {
        SuspendDialogInfo info;
        PrintWriter pw = getOutPrintWriter();
        PersistableBundle appExtras = new PersistableBundle();
        PersistableBundle launcherExtras = new PersistableBundle();
        String dialogMessage = null;
        int userId = 0;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                switch (opt) {
                    case "--user":
                        String dialogMessage2 = getNextArgRequired();
                        int userId2 = UserHandle.parseUserArg(dialogMessage2);
                        userId = userId2;
                        break;
                    case "--dialogMessage":
                        String dialogMessage3 = getNextArgRequired();
                        dialogMessage = dialogMessage3;
                        break;
                    case "--ael":
                    case "--aes":
                    case "--aed":
                    case "--lel":
                    case "--les":
                    case "--led":
                        String key = getNextArgRequired();
                        String val = getNextArgRequired();
                        if (suspendedState) {
                            PersistableBundle bundleToInsert = opt.startsWith("--a") ? appExtras : launcherExtras;
                            char cCharAt = opt.charAt(4);
                            if (cCharAt == 'd') {
                                bundleToInsert.putDouble(key, Double.valueOf(val).doubleValue());
                            } else if (cCharAt == 'l') {
                                bundleToInsert.putLong(key, Long.valueOf(val).longValue());
                            } else if (cCharAt == 's') {
                                bundleToInsert.putString(key, val);
                            }
                            break;
                        } else {
                            break;
                        }
                        break;
                    default:
                        pw.println("Error: Unknown option: " + opt);
                        return 1;
                }
            } else {
                String packageName = getNextArg();
                if (packageName == null) {
                    pw.println("Error: package name not specified");
                    return 1;
                }
                String callingPackage = Binder.getCallingUid() == 0 ? "root" : "com.android.shell";
                if (!TextUtils.isEmpty(dialogMessage)) {
                    info = new SuspendDialogInfo.Builder().setMessage(dialogMessage).build();
                } else {
                    info = null;
                }
                try {
                    int translatedUserId = translateUserId(userId, -10000, "runSuspend");
                    this.mInterface.setPackagesSuspendedAsUser(new String[]{packageName}, suspendedState, appExtras.size() > 0 ? appExtras : null, launcherExtras.size() > 0 ? launcherExtras : null, info, callingPackage, translatedUserId);
                    pw.println("Package " + packageName + " new suspended state: " + this.mInterface.isPackageSuspendedForUser(packageName, translatedUserId));
                    return 0;
                } catch (RemoteException | IllegalArgumentException e) {
                    pw.println(e.toString());
                    return 1;
                }
            }
        }
    }

    private int runGrantRevokePermission(boolean grant) throws RemoteException {
        int userId = 0;
        while (true) {
            String opt = getNextOption();
            if (opt == null) {
                break;
            }
            if (opt.equals("--user")) {
                userId = UserHandle.parseUserArg(getNextArgRequired());
            }
        }
        String pkg = getNextArg();
        if (pkg == null) {
            getErrPrintWriter().println("Error: no package specified");
            return 1;
        }
        String perm = getNextArg();
        if (perm == null) {
            getErrPrintWriter().println("Error: no permission specified");
            return 1;
        }
        int translatedUserId = translateUserId(userId, -10000, "runGrantRevokePermission");
        if (grant) {
            this.mPermissionManager.grantRuntimePermission(pkg, perm, translatedUserId);
            return 0;
        }
        this.mPermissionManager.revokeRuntimePermission(pkg, perm, translatedUserId, (String) null);
        return 0;
    }

    private int runResetPermissions() throws RemoteException {
        this.mPermissionManager.resetRuntimePermissions();
        return 0;
    }

    private int runSetPermissionEnforced() throws RemoteException {
        String permission = getNextArg();
        if (permission == null) {
            getErrPrintWriter().println("Error: no permission specified");
            return 1;
        }
        String enforcedRaw = getNextArg();
        if (enforcedRaw == null) {
            getErrPrintWriter().println("Error: no enforcement specified");
            return 1;
        }
        this.mPermissionManager.setPermissionEnforced(permission, Boolean.parseBoolean(enforcedRaw));
        return 0;
    }

    private boolean isVendorApp(String pkg) {
        try {
            PackageInfo info = this.mInterface.getPackageInfo(pkg, 4194304, 0);
            return info != null && info.applicationInfo.isVendor();
        } catch (RemoteException e) {
            return false;
        }
    }

    private boolean isProductApp(String pkg) {
        try {
            PackageInfo info = this.mInterface.getPackageInfo(pkg, 4194304, 0);
            return info != null && info.applicationInfo.isProduct();
        } catch (RemoteException e) {
            return false;
        }
    }

    private boolean isSystemExtApp(String pkg) {
        try {
            PackageInfo info = this.mInterface.getPackageInfo(pkg, 4194304, 0);
            return info != null && info.applicationInfo.isSystemExt();
        } catch (RemoteException e) {
            return false;
        }
    }

    private int runGetPrivappPermissions() {
        ArraySet<String> privAppPermissions;
        String pkg = getNextArg();
        if (pkg == null) {
            getErrPrintWriter().println("Error: no package specified.");
            return 1;
        }
        if (isVendorApp(pkg)) {
            privAppPermissions = SystemConfig.getInstance().getVendorPrivAppPermissions(pkg);
        } else if (isProductApp(pkg)) {
            privAppPermissions = SystemConfig.getInstance().getProductPrivAppPermissions(pkg);
        } else if (isSystemExtApp(pkg)) {
            privAppPermissions = SystemConfig.getInstance().getSystemExtPrivAppPermissions(pkg);
        } else {
            privAppPermissions = SystemConfig.getInstance().getPrivAppPermissions(pkg);
        }
        getOutPrintWriter().println(privAppPermissions == null ? "{}" : privAppPermissions.toString());
        return 0;
    }

    private int runGetPrivappDenyPermissions() {
        ArraySet<String> privAppPermissions;
        String pkg = getNextArg();
        if (pkg == null) {
            getErrPrintWriter().println("Error: no package specified.");
            return 1;
        }
        if (isVendorApp(pkg)) {
            privAppPermissions = SystemConfig.getInstance().getVendorPrivAppDenyPermissions(pkg);
        } else if (isProductApp(pkg)) {
            privAppPermissions = SystemConfig.getInstance().getProductPrivAppDenyPermissions(pkg);
        } else if (isSystemExtApp(pkg)) {
            privAppPermissions = SystemConfig.getInstance().getSystemExtPrivAppDenyPermissions(pkg);
        } else {
            privAppPermissions = SystemConfig.getInstance().getPrivAppDenyPermissions(pkg);
        }
        getOutPrintWriter().println(privAppPermissions == null ? "{}" : privAppPermissions.toString());
        return 0;
    }

    private int runGetOemPermissions() {
        String pkg = getNextArg();
        if (pkg == null) {
            getErrPrintWriter().println("Error: no package specified.");
            return 1;
        }
        Map<String, Boolean> oemPermissions = SystemConfig.getInstance().getOemPermissions(pkg);
        if (oemPermissions == null || oemPermissions.isEmpty()) {
            getOutPrintWriter().println("{}");
            return 0;
        }
        oemPermissions.forEach(new BiConsumer() { // from class: com.android.server.pm.-$$Lambda$PackageManagerShellCommand$-OZpz58K2HXVuHDuVYKnCu6oo4c
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                this.f$0.lambda$runGetOemPermissions$0$PackageManagerShellCommand((String) obj, (Boolean) obj2);
            }
        });
        return 0;
    }

    public /* synthetic */ void lambda$runGetOemPermissions$0$PackageManagerShellCommand(String permission, Boolean granted) {
        getOutPrintWriter().println(permission + " granted:" + granted);
    }

    private String linkStateToString(int state) {
        if (state == 0) {
            return "undefined";
        }
        if (state == 1) {
            return "ask";
        }
        if (state == 2) {
            return "always";
        }
        if (state == 3) {
            return "never";
        }
        if (state == 4) {
            return "always ask";
        }
        return "Unknown link state: " + state;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private int runSetAppLink() throws RemoteException {
        int newMode;
        int userId = 0;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if (opt.equals("--user")) {
                    userId = UserHandle.parseUserArg(getNextArgRequired());
                } else {
                    getErrPrintWriter().println("Error: unknown option: " + opt);
                    return 1;
                }
            } else {
                String pkg = getNextArg();
                if (pkg == null) {
                    getErrPrintWriter().println("Error: no package specified.");
                    return 1;
                }
                String modeString = getNextArg();
                if (modeString == null) {
                    getErrPrintWriter().println("Error: no app link state specified.");
                    return 1;
                }
                String lowerCase = modeString.toLowerCase();
                byte b = -1;
                switch (lowerCase.hashCode()) {
                    case -1414557169:
                        if (lowerCase.equals("always")) {
                            b = 1;
                        }
                        break;
                    case -1038130864:
                        if (lowerCase.equals("undefined")) {
                            b = 0;
                        }
                        break;
                    case 96889:
                        if (lowerCase.equals("ask")) {
                            b = 2;
                        }
                        break;
                    case 104712844:
                        if (lowerCase.equals("never")) {
                            b = 4;
                        }
                        break;
                    case 1182785979:
                        if (lowerCase.equals("always-ask")) {
                            b = 3;
                        }
                        break;
                }
                if (b == 0) {
                    newMode = 0;
                } else if (b == 1) {
                    newMode = 2;
                } else if (b == 2) {
                    newMode = 1;
                } else if (b == 3) {
                    newMode = 4;
                } else if (b == 4) {
                    newMode = 3;
                } else {
                    getErrPrintWriter().println("Error: unknown app link state '" + modeString + "'");
                    return 1;
                }
                int translatedUserId = translateUserId(userId, -10000, "runSetAppLink");
                PackageInfo info = this.mInterface.getPackageInfo(pkg, 0, translatedUserId);
                if (info == null) {
                    getErrPrintWriter().println("Error: package " + pkg + " not found.");
                    return 1;
                }
                if ((info.applicationInfo.privateFlags & 16) == 0) {
                    getErrPrintWriter().println("Error: package " + pkg + " does not handle web links.");
                    return 1;
                }
                if (this.mInterface.updateIntentVerificationStatus(pkg, newMode, translatedUserId)) {
                    return 0;
                }
                getErrPrintWriter().println("Error: unable to update app link status for " + pkg);
                return 1;
            }
        }
    }

    private int runGetAppLink() throws RemoteException {
        int userId = 0;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if (opt.equals("--user")) {
                    userId = UserHandle.parseUserArg(getNextArgRequired());
                } else {
                    getErrPrintWriter().println("Error: unknown option: " + opt);
                    return 1;
                }
            } else {
                String pkg = getNextArg();
                if (pkg == null) {
                    getErrPrintWriter().println("Error: no package specified.");
                    return 1;
                }
                int translatedUserId = translateUserId(userId, -10000, "runGetAppLink");
                PackageInfo info = this.mInterface.getPackageInfo(pkg, 0, translatedUserId);
                if (info == null) {
                    getErrPrintWriter().println("Error: package " + pkg + " not found.");
                    return 1;
                }
                if ((info.applicationInfo.privateFlags & 16) == 0) {
                    getErrPrintWriter().println("Error: package " + pkg + " does not handle web links.");
                    return 1;
                }
                getOutPrintWriter().println(linkStateToString(this.mInterface.getIntentVerificationStatus(pkg, translatedUserId)));
                return 0;
            }
        }
    }

    private int runTrimCaches() throws RemoteException {
        long multiplier;
        long multiplier2;
        String size;
        String volumeUuid;
        String size2 = getNextArg();
        if (size2 == null) {
            getErrPrintWriter().println("Error: no size specified");
            return 1;
        }
        int len = size2.length();
        char c = size2.charAt(len - 1);
        if (c >= '0' && c <= '9') {
            multiplier2 = 1;
            size = size2;
        } else {
            if (c == 'K' || c == 'k') {
                multiplier = 1024;
            } else if (c == 'M' || c == 'm') {
                multiplier = 1048576;
            } else if (c == 'G' || c == 'g') {
                multiplier = 1073741824;
            } else {
                getErrPrintWriter().println("Invalid suffix: " + c);
                return 1;
            }
            multiplier2 = multiplier;
            size = size2.substring(0, len - 1);
        }
        try {
            long sizeVal = Long.parseLong(size) * multiplier2;
            String volumeUuid2 = getNextArg();
            if (!"internal".equals(volumeUuid2)) {
                volumeUuid = volumeUuid2;
            } else {
                volumeUuid = null;
            }
            ClearDataObserver obs = new ClearDataObserver();
            this.mInterface.freeStorageAndNotify(volumeUuid, sizeVal, 2, obs);
            synchronized (obs) {
                while (!obs.finished) {
                    try {
                        obs.wait();
                    } catch (InterruptedException e) {
                    }
                }
            }
            return 0;
        } catch (NumberFormatException e2) {
            getErrPrintWriter().println("Error: expected number at: " + size);
            return 1;
        }
    }

    private static boolean isNumber(String s) {
        try {
            Integer.parseInt(s);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    public int runCreateUser() throws RemoteException {
        String userType;
        UserInfo userInfoCreateUserWithThrow;
        boolean preCreateOnly = false;
        int userId = -1;
        String userType2 = null;
        int flags = 0;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                String newUserType = null;
                if ("--profileOf".equals(opt)) {
                    userId = UserHandle.parseUserArg(getNextArgRequired());
                } else if ("--managed".equals(opt)) {
                    newUserType = "android.os.usertype.profile.MANAGED";
                } else if ("--restricted".equals(opt)) {
                    newUserType = "android.os.usertype.full.RESTRICTED";
                } else if ("--guest".equals(opt)) {
                    newUserType = "android.os.usertype.full.GUEST";
                } else if ("--demo".equals(opt)) {
                    newUserType = "android.os.usertype.full.DEMO";
                } else if ("--ephemeral".equals(opt)) {
                    flags |= 256;
                } else if ("--pre-create-only".equals(opt)) {
                    preCreateOnly = true;
                } else if ("--user-type".equals(opt)) {
                    newUserType = getNextArgRequired();
                } else {
                    getErrPrintWriter().println("Error: unknown option " + opt);
                    return 1;
                }
                if (newUserType != null) {
                    if (userType2 != null && !userType2.equals(newUserType)) {
                        getErrPrintWriter().println("Error: more than one user type was specified (" + userType2 + " and " + newUserType + ")");
                        return 1;
                    }
                    userType2 = newUserType;
                }
            } else {
                String arg = getNextArg();
                if (arg == null && !preCreateOnly) {
                    getErrPrintWriter().println("Error: no user name specified.");
                    return 1;
                }
                if (arg != null && preCreateOnly) {
                    getErrPrintWriter().println("Warning: name is ignored for pre-created users");
                }
                UserInfo info = null;
                IUserManager um = IUserManager.Stub.asInterface(ServiceManager.getService("user"));
                IAccountManager accm = IAccountManager.Stub.asInterface(ServiceManager.getService("account"));
                if (userType2 != null) {
                    userType = userType2;
                } else {
                    String userType3 = UserInfo.getDefaultUserType(flags);
                    userType = userType3;
                }
                try {
                    try {
                        if (UserManager.isUserTypeRestricted(userType)) {
                            int parentUserId = userId >= 0 ? userId : 0;
                            info = um.createRestrictedProfileWithThrow(arg, parentUserId);
                            accm.addSharedAccountsFromParentUser(parentUserId, userId, Process.myUid() == 0 ? "root" : "com.android.shell");
                        } else if (userId >= 0) {
                            try {
                                info = um.createProfileForUserWithThrow(arg, userType, flags, userId, (String[]) null);
                            } catch (ServiceSpecificException e) {
                                e = e;
                                getErrPrintWriter().println("Error: " + e);
                            }
                        } else {
                            if (preCreateOnly) {
                                userInfoCreateUserWithThrow = um.preCreateUserWithThrow(userType);
                            } else {
                                userInfoCreateUserWithThrow = um.createUserWithThrow(arg, userType, flags);
                            }
                            info = userInfoCreateUserWithThrow;
                        }
                    } catch (ServiceSpecificException e2) {
                        e = e2;
                    }
                } catch (ServiceSpecificException e3) {
                    e = e3;
                }
                if (info != null) {
                    getOutPrintWriter().println("Success: created user id " + info.id);
                    return 0;
                }
                getErrPrintWriter().println("Error: couldn't create User.");
                return 1;
            }
        }
    }

    public int runRemoveUser() throws RemoteException {
        String arg = getNextArg();
        if (arg == null) {
            getErrPrintWriter().println("Error: no user id specified.");
            return 1;
        }
        int userId = UserHandle.parseUserArg(arg);
        IUserManager um = IUserManager.Stub.asInterface(ServiceManager.getService("user"));
        if (um.removeUser(userId)) {
            getOutPrintWriter().println("Success: removed user");
            return 0;
        }
        getErrPrintWriter().println("Error: couldn't remove user id " + userId);
        return 1;
    }

    public int runSetUserRestriction() throws RemoteException {
        boolean value;
        int userId = 0;
        String opt = getNextOption();
        if (opt != null && "--user".equals(opt)) {
            userId = UserHandle.parseUserArg(getNextArgRequired());
        }
        String restriction = getNextArg();
        String arg = getNextArg();
        if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(arg)) {
            value = true;
        } else if ("0".equals(arg)) {
            value = false;
        } else {
            getErrPrintWriter().println("Error: valid value not specified");
            return 1;
        }
        int translatedUserId = translateUserId(userId, -10000, "runSetUserRestriction");
        IUserManager um = IUserManager.Stub.asInterface(ServiceManager.getService("user"));
        um.setUserRestriction(restriction, value, translatedUserId);
        return 0;
    }

    public int runGetMaxUsers() {
        getOutPrintWriter().println("Maximum supported users: " + UserManager.getMaxSupportedUsers());
        return 0;
    }

    public int runGetMaxRunningUsers() {
        ActivityManagerInternal activityManagerInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        getOutPrintWriter().println("Maximum supported running users: " + activityManagerInternal.getMaxRunningUsers());
        return 0;
    }

    private static class InstallParams {
        String installerPackageName;
        boolean mWaitForStagedSessionReady;
        PackageInstaller.SessionParams sessionParams;
        long timeoutMs;
        int userId;

        private InstallParams() {
            this.userId = -1;
            this.mWaitForStagedSessionReady = true;
            this.timeoutMs = 60000L;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private InstallParams makeInstallParams() {
        PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(1);
        InstallParams params = new InstallParams();
        params.sessionParams = sessionParams;
        sessionParams.installFlags |= 4194304;
        boolean replaceExisting = true;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                byte b = -1;
                switch (opt.hashCode()) {
                    case -2091380650:
                        if (opt.equals("--install-reason")) {
                            b = 22;
                        }
                        break;
                    case -1950997763:
                        if (opt.equals("--force-uuid")) {
                            b = 23;
                        }
                        break;
                    case -1777984902:
                        if (opt.equals("--dont-kill")) {
                            b = 8;
                        }
                        break;
                    case -1313152697:
                        if (opt.equals("--install-location")) {
                            b = 21;
                        }
                        break;
                    case -1137116608:
                        if (opt.equals("--instantapp")) {
                            b = 17;
                        }
                        break;
                    case -951415743:
                        if (opt.equals("--instant")) {
                            b = 16;
                        }
                        break;
                    case -844792735:
                        if (opt.equals("--no-wait")) {
                            b = 31;
                        }
                        break;
                    case -706813505:
                        if (opt.equals("--referrer")) {
                            b = 10;
                        }
                        break;
                    case -653924786:
                        if (opt.equals("--enable-rollback")) {
                            b = 29;
                        }
                        break;
                    case -170474990:
                        if (opt.equals("--multi-package")) {
                            b = 26;
                        }
                        break;
                    case 1477:
                        if (opt.equals("-R")) {
                            b = 1;
                        }
                        break;
                    case 1478:
                        if (opt.equals("-S")) {
                            b = UsbACInterface.ACI_SAMPLE_RATE_CONVERTER;
                        }
                        break;
                    case 1495:
                        if (opt.equals("-d")) {
                            b = 5;
                        }
                        break;
                    case 1497:
                        if (opt.equals("-f")) {
                            b = 4;
                        }
                        break;
                    case 1498:
                        if (opt.equals("-g")) {
                            b = 6;
                        }
                        break;
                    case NetworkConstants.ETHER_MTU /* 1500 */:
                        if (opt.equals("-i")) {
                            b = 2;
                        }
                        break;
                    case 1507:
                        if (opt.equals("-p")) {
                            b = 11;
                        }
                        break;
                    case 1509:
                        if (opt.equals("-r")) {
                            b = 0;
                        }
                        break;
                    case 1511:
                        if (opt.equals("-t")) {
                            b = 3;
                        }
                        break;
                    case 42995400:
                        if (opt.equals("--abi")) {
                            b = 14;
                        }
                        break;
                    case 43010092:
                        if (opt.equals("--pkg")) {
                            b = 12;
                        }
                        break;
                    case 77141024:
                        if (opt.equals("--force-queryable")) {
                            b = 28;
                        }
                        break;
                    case 148207464:
                        if (opt.equals("--originating-uri")) {
                            b = 9;
                        }
                        break;
                    case 1051781117:
                        if (opt.equals("--ephemeral")) {
                            b = UsbDescriptor.DESCRIPTORTYPE_BOS;
                        }
                        break;
                    case 1067504745:
                        if (opt.equals("--preload")) {
                            b = 19;
                        }
                        break;
                    case 1332870850:
                        if (opt.equals("--apex")) {
                            b = 25;
                        }
                        break;
                    case 1333024815:
                        if (opt.equals("--full")) {
                            b = 18;
                        }
                        break;
                    case 1333469547:
                        if (opt.equals("--user")) {
                            b = 20;
                        }
                        break;
                    case 1333511957:
                        if (opt.equals("--wait")) {
                            b = 30;
                        }
                        break;
                    case 1494514835:
                        if (opt.equals("--restrict-permissions")) {
                            b = 7;
                        }
                        break;
                    case 1507519174:
                        if (opt.equals("--staged")) {
                            b = 27;
                        }
                        break;
                    case 2015272120:
                        if (opt.equals("--force-sdk")) {
                            b = 24;
                        }
                        break;
                    case 2037590537:
                        if (opt.equals("--skip-verification")) {
                            b = 32;
                        }
                        break;
                }
                switch (b) {
                    case 0:
                    case WindowManagerService.H.WAITING_FOR_DRAWN_TIMEOUT /* 24 */:
                        break;
                    case 1:
                        replaceExisting = false;
                        break;
                    case 2:
                        params.installerPackageName = getNextArg();
                        if (params.installerPackageName == null) {
                            throw new IllegalArgumentException("Missing installer package");
                        }
                        break;
                        break;
                    case 3:
                        sessionParams.installFlags |= 4;
                        break;
                    case 4:
                        sessionParams.installFlags |= 16;
                        break;
                    case 5:
                        sessionParams.installFlags |= 128;
                        break;
                    case 6:
                        sessionParams.installFlags |= 256;
                        break;
                    case 7:
                        sessionParams.installFlags &= -4194305;
                        break;
                    case 8:
                        sessionParams.installFlags |= 4096;
                        break;
                    case 9:
                        sessionParams.originatingUri = Uri.parse(getNextArg());
                        break;
                    case 10:
                        sessionParams.referrerUri = Uri.parse(getNextArg());
                        break;
                    case 11:
                        sessionParams.mode = 2;
                        sessionParams.appPackageName = getNextArg();
                        if (sessionParams.appPackageName == null) {
                            throw new IllegalArgumentException("Missing inherit package name");
                        }
                        break;
                        break;
                    case 12:
                        sessionParams.appPackageName = getNextArg();
                        if (sessionParams.appPackageName == null) {
                            throw new IllegalArgumentException("Missing package name");
                        }
                        break;
                        break;
                    case 13:
                        long sizeBytes = Long.parseLong(getNextArg());
                        if (sizeBytes <= 0) {
                            throw new IllegalArgumentException("Size must be positive");
                        }
                        sessionParams.setSize(sizeBytes);
                        break;
                        break;
                    case 14:
                        sessionParams.abiOverride = checkAbiArgument(getNextArg());
                        break;
                    case 15:
                    case 16:
                    case 17:
                        sessionParams.setInstallAsInstantApp(true);
                        break;
                    case 18:
                        sessionParams.setInstallAsInstantApp(false);
                        break;
                    case 19:
                        sessionParams.setInstallAsVirtualPreload();
                        break;
                    case 20:
                        params.userId = UserHandle.parseUserArg(getNextArgRequired());
                        break;
                    case 21:
                        sessionParams.installLocation = Integer.parseInt(getNextArg());
                        break;
                    case 22:
                        sessionParams.installReason = Integer.parseInt(getNextArg());
                        break;
                    case WindowManagerService.H.BOOT_TIMEOUT /* 23 */:
                        sessionParams.installFlags |= 512;
                        sessionParams.volumeUuid = getNextArg();
                        if ("internal".equals(sessionParams.volumeUuid)) {
                            sessionParams.volumeUuid = null;
                        }
                        break;
                    case WindowManagerService.H.SHOW_STRICT_MODE_VIOLATION /* 25 */:
                        sessionParams.setInstallAsApex();
                        sessionParams.setStaged();
                        break;
                    case CecMessageType.GIVE_DECK_STATUS /* 26 */:
                        sessionParams.setMultiPackage();
                        break;
                    case CecMessageType.DECK_STATUS /* 27 */:
                        sessionParams.setStaged();
                        break;
                    case 28:
                        sessionParams.setForceQueryable();
                        break;
                    case HdmiCecKeycode.CEC_KEYCODE_NUMBER_ENTRY_MODE /* 29 */:
                        if (params.installerPackageName == null) {
                            params.installerPackageName = "com.android.shell";
                        }
                        sessionParams.installFlags |= 262144;
                        break;
                    case 30:
                        params.mWaitForStagedSessionReady = true;
                        try {
                            params.timeoutMs = Long.parseLong(peekNextArg());
                            getNextArg();
                        } catch (NumberFormatException e) {
                        }
                        break;
                    case HdmiCecKeycode.CEC_KEYCODE_NUMBER_12 /* 31 */:
                        params.mWaitForStagedSessionReady = false;
                        break;
                    case 32:
                        sessionParams.installFlags |= 524288;
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown option " + opt);
                }
            } else {
                if (replaceExisting) {
                    sessionParams.installFlags |= 2;
                }
                return params;
            }
        }
    }

    private int runSetHomeActivity() {
        String pkgName;
        PrintWriter pw = getOutPrintWriter();
        int userId = 0;
        while (true) {
            String opt = getNextOption();
            if (opt == null) {
                String component = getNextArg();
                if (component.indexOf(47) < 0) {
                    pkgName = component;
                } else {
                    ComponentName componentName = component != null ? ComponentName.unflattenFromString(component) : null;
                    if (componentName == null) {
                        pw.println("Error: invalid component name");
                        return 1;
                    }
                    pkgName = componentName.getPackageName();
                }
                int translatedUserId = translateUserId(userId, -10000, "runSetHomeActivity");
                final CompletableFuture<Boolean> future = new CompletableFuture<>();
                RemoteCallback callback = new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.pm.-$$Lambda$PackageManagerShellCommand$v3vXA2YvCwaE7J0QfR1IQ122iTI
                    public final void onResult(Bundle bundle) {
                        future.complete(Boolean.valueOf(bundle != null));
                    }
                });
                try {
                    IRoleManager roleManager = IRoleManager.Stub.asInterface(ServiceManager.getServiceOrThrow("role"));
                    roleManager.addRoleHolderAsUser("android.app.role.HOME", pkgName, 0, translatedUserId, callback);
                    boolean success = future.get().booleanValue();
                    if (success) {
                        pw.println("Success");
                        return 0;
                    }
                    pw.println("Error: Failed to set default home.");
                    return 1;
                } catch (Exception e) {
                    pw.println(e.toString());
                    return 1;
                }
            }
            if (((opt.hashCode() == 1333469547 && opt.equals("--user")) ? (byte) 0 : (byte) -1) == 0) {
                userId = UserHandle.parseUserArg(getNextArgRequired());
            } else {
                pw.println("Error: Unknown option: " + opt);
                return 1;
            }
        }
    }

    private int runSetInstaller() throws RemoteException {
        String targetPackage = getNextArg();
        String installerPackageName = getNextArg();
        if (targetPackage == null || installerPackageName == null) {
            getErrPrintWriter().println("Must provide both target and installer package names");
            return 1;
        }
        this.mInterface.setInstallerPackageName(targetPackage, installerPackageName);
        getOutPrintWriter().println("Success");
        return 0;
    }

    private int runGetInstantAppResolver() {
        PrintWriter pw = getOutPrintWriter();
        try {
            ComponentName instantAppsResolver = this.mInterface.getInstantAppResolverComponent();
            if (instantAppsResolver == null) {
                return 1;
            }
            pw.println(instantAppsResolver.flattenToString());
            return 0;
        } catch (Exception e) {
            pw.println(e.toString());
            return 1;
        }
    }

    private int runHasFeature() {
        int version;
        PrintWriter err = getErrPrintWriter();
        String featureName = getNextArg();
        if (featureName == null) {
            err.println("Error: expected FEATURE name");
            return 1;
        }
        String versionString = getNextArg();
        if (versionString == null) {
            version = 0;
        } else {
            try {
                version = Integer.parseInt(versionString);
            } catch (RemoteException e) {
                err.println(e.toString());
                return 1;
            } catch (NumberFormatException e2) {
                err.println("Error: illegal version number " + versionString);
                return 1;
            }
        }
        boolean hasFeature = this.mInterface.hasSystemFeature(featureName, version);
        getOutPrintWriter().println(hasFeature);
        if (!hasFeature) {
            return 1;
        }
        return 0;
    }

    private int runDump() {
        String pkg = getNextArg();
        if (pkg == null) {
            getErrPrintWriter().println("Error: no package specified");
            return 1;
        }
        ActivityManager.dumpPackageStateStatic(getOutFileDescriptor(), pkg);
        return 0;
    }

    private int runSetHarmfulAppWarning() throws RemoteException {
        int userId = -2;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if (opt.equals("--user")) {
                    userId = UserHandle.parseUserArg(getNextArgRequired());
                } else {
                    getErrPrintWriter().println("Error: Unknown option: " + opt);
                    return -1;
                }
            } else {
                int translatedUserId = translateUserId(userId, -10000, "runSetHarmfulAppWarning");
                String packageName = getNextArgRequired();
                String warning = getNextArg();
                this.mInterface.setHarmfulAppWarning(packageName, warning, translatedUserId);
                return 0;
            }
        }
    }

    private int runGetHarmfulAppWarning() throws RemoteException {
        int userId = -2;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if (opt.equals("--user")) {
                    userId = UserHandle.parseUserArg(getNextArgRequired());
                } else {
                    getErrPrintWriter().println("Error: Unknown option: " + opt);
                    return -1;
                }
            } else {
                int translatedUserId = translateUserId(userId, -10000, "runGetHarmfulAppWarning");
                String packageName = getNextArgRequired();
                CharSequence warning = this.mInterface.getHarmfulAppWarning(packageName, translatedUserId);
                if (!TextUtils.isEmpty(warning)) {
                    getOutPrintWriter().println(warning);
                    return 0;
                }
                return 1;
            }
        }
    }

    private static String checkAbiArgument(String abi) {
        if (TextUtils.isEmpty(abi)) {
            throw new IllegalArgumentException("Missing ABI argument");
        }
        if (STDIN_PATH.equals(abi)) {
            return abi;
        }
        String[] supportedAbis = Build.SUPPORTED_ABIS;
        for (String supportedAbi : supportedAbis) {
            if (supportedAbi.equals(abi)) {
                return abi;
            }
        }
        throw new IllegalArgumentException("ABI " + abi + " not supported on this device");
    }

    private int translateUserId(int userId, int allUserId, String logContext) {
        boolean allowAll = allUserId != -10000;
        int translatedUserId = ActivityManager.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, allowAll, true, logContext, "pm command");
        return translatedUserId == -1 ? allUserId : translatedUserId;
    }

    private int doCreateSession(PackageInstaller.SessionParams params, String installerPackageName, int userId) throws RemoteException {
        if (userId == -1) {
            params.installFlags |= 64;
        }
        int translatedUserId = translateUserId(userId, 0, "doCreateSession");
        int sessionId = this.mInterface.getPackageInstaller().createSession(params, installerPackageName, translatedUserId);
        return sessionId;
    }

    private int doAddFiles(int sessionId, ArrayList<String> args, long sessionSizeBytes, boolean isApex) throws RemoteException {
        PackageInstaller.Session session = null;
        try {
            try {
                try {
                    session = new PackageInstaller.Session(this.mInterface.getPackageInstaller().openSession(sessionId));
                    if (!args.isEmpty()) {
                        try {
                            if (!STDIN_PATH.equals(args.get(0))) {
                                for (String arg : args) {
                                    int delimLocation = arg.indexOf(58);
                                    if (delimLocation == -1) {
                                        processArgForLocalFile(arg, session);
                                    } else if (processArgForStdin(arg, session) != 0) {
                                        IoUtils.closeQuietly(session);
                                        return 1;
                                    }
                                }
                                IoUtils.closeQuietly(session);
                                return 0;
                            }
                        } catch (IllegalArgumentException e) {
                            e = e;
                            getErrPrintWriter().println("Failed to add file(s), reason: " + e);
                            getOutPrintWriter().println("Failure [failed to add file(s)]");
                            IoUtils.closeQuietly(session);
                            return 1;
                        }
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("base.");
                    sb.append(isApex ? "apex" : "apk");
                    String name = sb.toString();
                    PackageManagerShellCommandDataLoader.Metadata metadata = PackageManagerShellCommandDataLoader.Metadata.forStdIn(name);
                    session.addFile(0, name, sessionSizeBytes, metadata.toByteArray(), null);
                    IoUtils.closeQuietly(session);
                    return 0;
                } catch (IllegalArgumentException e2) {
                    e = e2;
                    getErrPrintWriter().println("Failed to add file(s), reason: " + e);
                    getOutPrintWriter().println("Failure [failed to add file(s)]");
                    IoUtils.closeQuietly(session);
                    return 1;
                } catch (Throwable th) {
                    e = th;
                    IoUtils.closeQuietly(session);
                    throw e;
                }
            } catch (Throwable th2) {
                e = th2;
                IoUtils.closeQuietly(session);
                throw e;
            }
        } catch (IllegalArgumentException e3) {
            e = e3;
        } catch (Throwable th3) {
            e = th3;
        }
    }

    private int processArgForStdin(String arg, PackageInstaller.Session session) {
        String fileId;
        PackageManagerShellCommandDataLoader.Metadata metadata;
        String[] fileDesc = arg.split(":");
        byte[] signature = null;
        int streamingVersion = 0;
        try {
            if (fileDesc.length < 2) {
                getErrPrintWriter().println("Must specify file name and size");
                return 1;
            }
            String name = fileDesc[0];
            long sizeBytes = Long.parseUnsignedLong(fileDesc[1]);
            if (fileDesc.length > 2 && !TextUtils.isEmpty(fileDesc[2])) {
                fileId = fileDesc[2];
            } else {
                fileId = name;
            }
            if (fileDesc.length > 3) {
                signature = Base64.getDecoder().decode(fileDesc[3]);
            }
            if (fileDesc.length > 4 && ((streamingVersion = Integer.parseUnsignedInt(fileDesc[4])) < 0 || streamingVersion > 1)) {
                getErrPrintWriter().println("Unsupported streaming version: " + streamingVersion);
                return 1;
            }
            if (TextUtils.isEmpty(name)) {
                getErrPrintWriter().println("Empty file name in: " + arg);
                return 1;
            }
            if (signature != null) {
                PackageManagerShellCommandDataLoader.Metadata metadata2 = streamingVersion == 0 ? PackageManagerShellCommandDataLoader.Metadata.forDataOnlyStreaming(fileId) : PackageManagerShellCommandDataLoader.Metadata.forStreaming(fileId);
                try {
                    if (signature.length > 0 && V4Signature.readFrom(signature) == null) {
                        getErrPrintWriter().println("V4 signature is invalid in: " + arg);
                        return 1;
                    }
                    metadata = metadata2;
                } catch (Exception e) {
                    getErrPrintWriter().println("V4 signature is invalid: " + e + " in " + arg);
                    return 1;
                }
            } else {
                PackageManagerShellCommandDataLoader.Metadata metadata3 = PackageManagerShellCommandDataLoader.Metadata.forStdIn(fileId);
                metadata = metadata3;
            }
            session.addFile(0, name, sizeBytes, metadata.toByteArray(), signature);
            return 0;
        } catch (IllegalArgumentException e2) {
            getErrPrintWriter().println("Unable to parse file parameters: " + arg + ", reason: " + e2);
            return 1;
        }
    }

    private void processArgForLocalFile(String arg, PackageInstaller.Session session) {
        byte[] v4signatureBytes;
        File file = new File(arg);
        String name = file.getName();
        long size = file.length();
        PackageManagerShellCommandDataLoader.Metadata metadata = PackageManagerShellCommandDataLoader.Metadata.forLocalFile(arg);
        String v4SignaturePath = arg + ".idsig";
        ParcelFileDescriptor pfd = openFileForSystem(v4SignaturePath, ActivityTaskManagerService.DUMP_RECENTS_SHORT_CMD);
        if (pfd != null) {
            try {
                try {
                    V4Signature v4signature = V4Signature.readFrom(pfd);
                    byte[] v4signatureBytes2 = v4signature.toByteArray();
                    IoUtils.closeQuietly(pfd);
                    v4signatureBytes = v4signatureBytes2;
                } catch (IOException ex) {
                    Slog.e(TAG, "V4 signature file exists but failed to be parsed.", ex);
                    IoUtils.closeQuietly(pfd);
                    v4signatureBytes = null;
                    session.addFile(0, name, size, metadata.toByteArray(), v4signatureBytes);
                }
            } catch (Throwable th) {
                IoUtils.closeQuietly(pfd);
                throw th;
            }
        } else {
            v4signatureBytes = null;
        }
        session.addFile(0, name, size, metadata.toByteArray(), v4signatureBytes);
    }

    private int doWriteSplits(int sessionId, ArrayList<String> splitPaths, long sessionSizeBytes, boolean isApex) throws RemoteException {
        String splitName;
        boolean multipleSplits = splitPaths.size() > 1;
        for (String splitPath : splitPaths) {
            if (multipleSplits) {
                splitName = new File(splitPath).getName();
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("base.");
                sb.append(isApex ? "apex" : "apk");
                splitName = sb.toString();
            }
            if (doWriteSplit(sessionId, splitPath, sessionSizeBytes, splitName, false) != 0) {
                return 1;
            }
        }
        return 0;
    }

    private int doWriteSplit(int sessionId, String inPath, long sizeBytes, String splitName, boolean logSuccess) throws IOException, RemoteException {
        ParcelFileDescriptor fd;
        long sizeBytes2;
        PackageInstaller.Session session = null;
        try {
            try {
                PackageInstaller.Session session2 = new PackageInstaller.Session(this.mInterface.getPackageInstaller().openSession(sessionId));
                try {
                    PrintWriter pw = getOutPrintWriter();
                    if (STDIN_PATH.equals(inPath)) {
                        fd = ParcelFileDescriptor.dup(getInFileDescriptor());
                        sizeBytes2 = sizeBytes;
                    } else if (inPath != null) {
                        fd = openFileForSystem(inPath, ActivityTaskManagerService.DUMP_RECENTS_SHORT_CMD);
                        if (fd == null) {
                            IoUtils.closeQuietly(session2);
                            return -1;
                        }
                        long sizeBytes3 = fd.getStatSize();
                        if (sizeBytes3 < 0) {
                            try {
                                getErrPrintWriter().println("Unable to get size of: " + inPath);
                                IoUtils.closeQuietly(session2);
                                return -1;
                            } catch (IOException e) {
                                e = e;
                                session = session2;
                                try {
                                    getErrPrintWriter().println("Error: failed to write; " + e.getMessage());
                                    IoUtils.closeQuietly(session);
                                    return 1;
                                } catch (Throwable th) {
                                    e = th;
                                    IoUtils.closeQuietly(session);
                                    throw e;
                                }
                            } catch (Throwable th2) {
                                e = th2;
                                session = session2;
                                IoUtils.closeQuietly(session);
                                throw e;
                            }
                        }
                        sizeBytes2 = sizeBytes3;
                    } else {
                        fd = ParcelFileDescriptor.dup(getInFileDescriptor());
                        sizeBytes2 = sizeBytes;
                    }
                    try {
                        if (sizeBytes2 <= 0) {
                            getErrPrintWriter().println("Error: must specify a APK size");
                            IoUtils.closeQuietly(session2);
                            return 1;
                        }
                        session2.write(splitName, 0L, sizeBytes2, fd);
                        if (logSuccess) {
                            pw.println("Success: streamed " + sizeBytes2 + " bytes");
                        }
                        IoUtils.closeQuietly(session2);
                        return 0;
                    } catch (IOException e2) {
                        e = e2;
                        session = session2;
                        getErrPrintWriter().println("Error: failed to write; " + e.getMessage());
                        IoUtils.closeQuietly(session);
                        return 1;
                    } catch (Throwable th3) {
                        e = th3;
                        session = session2;
                        IoUtils.closeQuietly(session);
                        throw e;
                    }
                } catch (IOException e3) {
                    e = e3;
                    session = session2;
                } catch (Throwable th4) {
                    e = th4;
                    session = session2;
                }
            } catch (IOException e4) {
                e = e4;
                getErrPrintWriter().println("Error: failed to write; " + e.getMessage());
                IoUtils.closeQuietly(session);
                return 1;
            } catch (Throwable th5) {
                e = th5;
                IoUtils.closeQuietly(session);
                throw e;
            }
        } catch (IOException e5) {
            e = e5;
        } catch (Throwable th6) {
            e = th6;
        }
    }

    private int doInstallAddSession(int parentId, int[] sessionIds, boolean logSuccess) throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        PackageInstaller.Session session = null;
        try {
            session = new PackageInstaller.Session(this.mInterface.getPackageInstaller().openSession(parentId));
            if (!session.isMultiPackage()) {
                getErrPrintWriter().println("Error: parent session ID is not a multi-package session");
                return 1;
            }
            for (int i : sessionIds) {
                session.addChildSessionId(i);
            }
            if (logSuccess) {
                pw.println("Success");
            }
            return 0;
        } finally {
            IoUtils.closeQuietly(session);
        }
    }

    private int doRemoveSplits(int sessionId, Collection<String> splitNames, boolean logSuccess) throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        PackageInstaller.Session session = null;
        try {
            session = new PackageInstaller.Session(this.mInterface.getPackageInstaller().openSession(sessionId));
            for (String splitName : splitNames) {
                session.removeSplit(splitName);
            }
            if (logSuccess) {
                pw.println("Success");
            }
            return 0;
        } catch (IOException e) {
            pw.println("Error: failed to remove split; " + e.getMessage());
            return 1;
        } finally {
            IoUtils.closeQuietly(session);
        }
    }

    private int doCommitSession(int sessionId, boolean logSuccess) throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        PackageInstaller.Session session = null;
        try {
            session = new PackageInstaller.Session(this.mInterface.getPackageInstaller().openSession(sessionId));
            if (!session.isMultiPackage() && !session.isStaged()) {
                try {
                    DexMetadataHelper.validateDexPaths(session.getNames());
                } catch (IOException | IllegalStateException e) {
                    pw.println("Warning [Could not validate the dex paths: " + e.getMessage() + "]");
                }
            }
            LocalIntentReceiver receiver = new LocalIntentReceiver();
            session.commit(receiver.getIntentSender());
            Intent result = receiver.getResult();
            int status = result.getIntExtra("android.content.pm.extra.STATUS", 1);
            if (status == 0) {
                if (logSuccess) {
                    pw.println("Success");
                }
            } else {
                pw.println("Failure [" + result.getStringExtra("android.content.pm.extra.STATUS_MESSAGE") + "]");
            }
            IoUtils.closeQuietly(session);
            return status;
        } catch (Throwable th) {
            IoUtils.closeQuietly(session);
            throw th;
        }
    }

    private int doAbandonSession(int sessionId, boolean logSuccess) throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        PackageInstaller.Session session = null;
        try {
            session = new PackageInstaller.Session(this.mInterface.getPackageInstaller().openSession(sessionId));
            session.abandon();
            if (logSuccess) {
                pw.println("Success");
            }
            return 0;
        } finally {
            IoUtils.closeQuietly(session);
        }
    }

    private void doListPermissions(ArrayList<String> groupList, boolean groups, boolean labels, boolean summary, int startProtectionLevel, int endProtectionLevel) throws RemoteException {
        int groupCount;
        List<PermissionInfo> ps;
        PrintWriter pw = getOutPrintWriter();
        int groupCount2 = groupList.size();
        int i = 0;
        while (i < groupCount2) {
            String groupName = groupList.get(i);
            String prefix = "";
            if (!groups) {
                groupCount = groupCount2;
            } else {
                if (i > 0) {
                    pw.println("");
                }
                if (groupName != null) {
                    PermissionGroupInfo pgi = this.mInterface.getPermissionGroupInfo(groupName, 0);
                    if (summary) {
                        Resources res = getResources(pgi);
                        if (res != null) {
                            StringBuilder sb = new StringBuilder();
                            groupCount = groupCount2;
                            int groupCount3 = pgi.labelRes;
                            sb.append(loadText(pgi, groupCount3, pgi.nonLocalizedLabel));
                            sb.append(": ");
                            pw.print(sb.toString());
                        } else {
                            groupCount = groupCount2;
                            pw.print(pgi.name + ": ");
                        }
                    } else {
                        groupCount = groupCount2;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(labels ? "+ " : "");
                        sb2.append("group:");
                        sb2.append(pgi.name);
                        pw.println(sb2.toString());
                        if (labels) {
                            pw.println("  package:" + pgi.packageName);
                            Resources res2 = getResources(pgi);
                            if (res2 != null) {
                                pw.println("  label:" + loadText(pgi, pgi.labelRes, pgi.nonLocalizedLabel));
                                pw.println("  description:" + loadText(pgi, pgi.descriptionRes, pgi.nonLocalizedDescription));
                            }
                        }
                    }
                } else {
                    groupCount = groupCount2;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append((!labels || summary) ? "" : "+ ");
                    sb3.append("ungrouped:");
                    pw.println(sb3.toString());
                }
                prefix = "  ";
            }
            List<PermissionInfo> ps2 = this.mPermissionManager.queryPermissionsByGroup(groupList.get(i), 0).getList();
            int count = ps2.size();
            boolean first = true;
            int p = 0;
            while (p < count) {
                PermissionInfo pi = ps2.get(p);
                if (groups && groupName == null && pi.group != null) {
                    ps = ps2;
                    groupName = groupName;
                } else {
                    int base = pi.protectionLevel & 15;
                    ps = ps2;
                    if (base < startProtectionLevel) {
                        groupName = groupName;
                    } else if (base > endProtectionLevel) {
                        groupName = groupName;
                    } else if (summary) {
                        if (first) {
                            first = false;
                        } else {
                            pw.print(", ");
                        }
                        Resources res3 = getResources(pi);
                        if (res3 != null) {
                            pw.print(loadText(pi, pi.labelRes, pi.nonLocalizedLabel));
                        } else {
                            pw.print(pi.name);
                        }
                        groupName = groupName;
                    } else {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(prefix);
                        sb4.append(labels ? "+ " : "");
                        sb4.append("permission:");
                        sb4.append(pi.name);
                        pw.println(sb4.toString());
                        if (!labels) {
                            groupName = groupName;
                        } else {
                            pw.println(prefix + "  package:" + pi.packageName);
                            Resources res4 = getResources(pi);
                            if (res4 != null) {
                                pw.println(prefix + "  label:" + loadText(pi, pi.labelRes, pi.nonLocalizedLabel));
                                pw.println(prefix + "  description:" + loadText(pi, pi.descriptionRes, pi.nonLocalizedDescription));
                            }
                            pw.println(prefix + "  protectionLevel:" + PermissionInfo.protectionToString(pi.protectionLevel));
                        }
                    }
                }
                p++;
                ps2 = ps;
                groupName = groupName;
            }
            if (summary) {
                pw.println("");
            }
            i++;
            groupCount2 = groupCount;
        }
    }

    private String loadText(PackageItemInfo pii, int res, CharSequence nonLocalized) throws RemoteException {
        Resources r;
        if (nonLocalized != null) {
            return nonLocalized.toString();
        }
        if (res != 0 && (r = getResources(pii)) != null) {
            try {
                return r.getString(res);
            } catch (Resources.NotFoundException e) {
                return null;
            }
        }
        return null;
    }

    private Resources getResources(PackageItemInfo pii) throws RemoteException {
        Resources res = this.mResourceCache.get(pii.packageName);
        if (res != null) {
            return res;
        }
        ApplicationInfo ai = this.mInterface.getApplicationInfo(pii.packageName, 536904192, 0);
        AssetManager am = new AssetManager();
        am.addAssetPath(ai.publicSourceDir);
        Resources res2 = new Resources(am, null, null);
        this.mResourceCache.put(pii.packageName, res2);
        return res2;
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("Package manager (package) commands:");
        pw.println("  help");
        pw.println("    Print this help text.");
        pw.println("");
        pw.println("  path [--user USER_ID] PACKAGE");
        pw.println("    Print the path to the .apk of the given PACKAGE.");
        pw.println("");
        pw.println("  dump PACKAGE");
        pw.println("    Print various system state associated with the given PACKAGE.");
        pw.println("");
        pw.println("  has-feature FEATURE_NAME [version]");
        pw.println("    Prints true and returns exit status 0 when system has a FEATURE_NAME,");
        pw.println("    otherwise prints false and returns exit status 1");
        pw.println("");
        pw.println("  list features");
        pw.println("    Prints all features of the system.");
        pw.println("");
        pw.println("  list instrumentation [-f] [TARGET-PACKAGE]");
        pw.println("    Prints all test packages; optionally only those targeting TARGET-PACKAGE");
        pw.println("    Options:");
        pw.println("      -f: dump the name of the .apk file containing the test package");
        pw.println("");
        pw.println("  list libraries");
        pw.println("    Prints all system libraries.");
        pw.println("");
        pw.println("  list packages [-f] [-d] [-e] [-s] [-3] [-i] [-l] [-u] [-U] ");
        pw.println("      [--show-versioncode] [--apex-only] [--uid UID] [--user USER_ID] [FILTER]");
        pw.println("    Prints all packages; optionally only those whose name contains");
        pw.println("    the text in FILTER.  Options are:");
        pw.println("      -f: see their associated file");
        pw.println("      -a: all known packages (but excluding APEXes)");
        pw.println("      -d: filter to only show disabled packages");
        pw.println("      -e: filter to only show enabled packages");
        pw.println("      -s: filter to only show system packages");
        pw.println("      -3: filter to only show third party packages");
        pw.println("      -i: see the installer for the packages");
        pw.println("      -l: ignored (used for compatibility with older releases)");
        pw.println("      -U: also show the package UID");
        pw.println("      -u: also include uninstalled packages");
        pw.println("      --show-versioncode: also show the version code");
        pw.println("      --apex-only: only show APEX packages");
        pw.println("      --uid UID: filter to only show packages with the given UID");
        pw.println("      --user USER_ID: only list packages belonging to the given user");
        pw.println("");
        pw.println("  list permission-groups");
        pw.println("    Prints all known permission groups.");
        pw.println("");
        pw.println("  list permissions [-g] [-f] [-d] [-u] [GROUP]");
        pw.println("    Prints all known permissions; optionally only those in GROUP.  Options are:");
        pw.println("      -g: organize by group");
        pw.println("      -f: print all information");
        pw.println("      -s: short summary");
        pw.println("      -d: only list dangerous permissions");
        pw.println("      -u: list only the permissions users will see");
        pw.println("");
        pw.println("  list staged-sessions [--only-ready] [--only-sessionid] [--only-parent]");
        pw.println("    Prints all staged sessions.");
        pw.println("      --only-ready: show only staged sessions that are ready");
        pw.println("      --only-sessionid: show only sessionId of each session");
        pw.println("      --only-parent: hide all children sessions");
        pw.println("");
        pw.println("  list users");
        pw.println("    Prints all users.");
        pw.println("");
        pw.println("  resolve-activity [--brief] [--components] [--query-flags FLAGS]");
        pw.println("       [--user USER_ID] INTENT");
        pw.println("    Prints the activity that resolves to the given INTENT.");
        pw.println("");
        pw.println("  query-activities [--brief] [--components] [--query-flags FLAGS]");
        pw.println("       [--user USER_ID] INTENT");
        pw.println("    Prints all activities that can handle the given INTENT.");
        pw.println("");
        pw.println("  query-services [--brief] [--components] [--query-flags FLAGS]");
        pw.println("       [--user USER_ID] INTENT");
        pw.println("    Prints all services that can handle the given INTENT.");
        pw.println("");
        pw.println("  query-receivers [--brief] [--components] [--query-flags FLAGS]");
        pw.println("       [--user USER_ID] INTENT");
        pw.println("    Prints all broadcast receivers that can handle the given INTENT.");
        pw.println("");
        pw.println("  install [-rtfdgw] [-i PACKAGE] [--user USER_ID|all|current]");
        pw.println("       [-p INHERIT_PACKAGE] [--install-location 0/1/2]");
        pw.println("       [--install-reason 0/1/2/3/4] [--originating-uri URI]");
        pw.println("       [--referrer URI] [--abi ABI_NAME] [--force-sdk]");
        pw.println("       [--preload] [--instant] [--full] [--dont-kill]");
        pw.println("       [--enable-rollback]");
        pw.println("       [--force-uuid internal|UUID] [--pkg PACKAGE] [-S BYTES]");
        pw.println("       [--apex] [--wait TIMEOUT]");
        pw.println("       [PATH [SPLIT...]|-]");
        pw.println("    Install an application.  Must provide the apk data to install, either as");
        pw.println("    file path(s) or '-' to read from stdin.  Options are:");
        pw.println("      -R: disallow replacement of existing application");
        pw.println("      -t: allow test packages");
        pw.println("      -i: specify package name of installer owning the app");
        pw.println("      -f: install application on internal flash");
        pw.println("      -d: allow version code downgrade (debuggable packages only)");
        pw.println("      -p: partial application install (new split on top of existing pkg)");
        pw.println("      -g: grant all runtime permissions");
        pw.println("      -S: size in bytes of package, required for stdin");
        pw.println("      --user: install under the given user.");
        pw.println("      --dont-kill: installing a new feature split, don't kill running app");
        pw.println("      --restrict-permissions: don't whitelist restricted permissions at install");
        pw.println("      --originating-uri: set URI where app was downloaded from");
        pw.println("      --referrer: set URI that instigated the install of the app");
        pw.println("      --pkg: specify expected package name of app being installed");
        pw.println("      --abi: override the default ABI of the platform");
        pw.println("      --instant: cause the app to be installed as an ephemeral install app");
        pw.println("      --full: cause the app to be installed as a non-ephemeral full app");
        pw.println("      --install-location: force the install location:");
        pw.println("          0=auto, 1=internal only, 2=prefer external");
        pw.println("      --install-reason: indicates why the app is being installed:");
        pw.println("          0=unknown, 1=admin policy, 2=device restore,");
        pw.println("          3=device setup, 4=user request");
        pw.println("      --force-uuid: force install on to disk volume with given UUID");
        pw.println("      --apex: install an .apex file, not an .apk");
        pw.println("      --wait: when performing staged install, wait TIMEOUT milliseconds");
        pw.println("          for pre-reboot verification to complete. If TIMEOUT is not");
        pw.println("          specified it will wait for 60000 milliseconds.");
        pw.println("");
        pw.println("  install-existing [--user USER_ID|all|current]");
        pw.println("       [--instant] [--full] [--wait] [--restrict-permissions] PACKAGE");
        pw.println("    Installs an existing application for a new user.  Options are:");
        pw.println("      --user: install for the given user.");
        pw.println("      --instant: install as an instant app");
        pw.println("      --full: install as a full app");
        pw.println("      --wait: wait until the package is installed");
        pw.println("      --restrict-permissions: don't whitelist restricted permissions");
        pw.println("");
        pw.println("  install-create [-lrtsfdg] [-i PACKAGE] [--user USER_ID|all|current]");
        pw.println("       [-p INHERIT_PACKAGE] [--install-location 0/1/2]");
        pw.println("       [--install-reason 0/1/2/3/4] [--originating-uri URI]");
        pw.println("       [--referrer URI] [--abi ABI_NAME] [--force-sdk]");
        pw.println("       [--preload] [--instant] [--full] [--dont-kill]");
        pw.println("       [--force-uuid internal|UUID] [--pkg PACKAGE] [--apex] [-S BYTES]");
        pw.println("       [--multi-package] [--staged]");
        pw.println("    Like \"install\", but starts an install session.  Use \"install-write\"");
        pw.println("    to push data into the session, and \"install-commit\" to finish.");
        pw.println("");
        pw.println("  install-write [-S BYTES] SESSION_ID SPLIT_NAME [PATH|-]");
        pw.println("    Write an apk into the given install session.  If the path is '-', data");
        pw.println("    will be read from stdin.  Options are:");
        pw.println("      -S: size in bytes of package, required for stdin");
        pw.println("");
        pw.println("  install-remove SESSION_ID SPLIT...");
        pw.println("    Mark SPLIT(s) as removed in the given install session.");
        pw.println("");
        pw.println("  install-add-session MULTI_PACKAGE_SESSION_ID CHILD_SESSION_IDs");
        pw.println("    Add one or more session IDs to a multi-package session.");
        pw.println("");
        pw.println("  install-commit SESSION_ID");
        pw.println("    Commit the given active install session, installing the app.");
        pw.println("");
        pw.println("  install-abandon SESSION_ID");
        pw.println("    Delete the given active install session.");
        pw.println("");
        pw.println("  set-install-location LOCATION");
        pw.println("    Changes the default install location.  NOTE this is only intended for debugging;");
        pw.println("    using this can cause applications to break and other undersireable behavior.");
        pw.println("    LOCATION is one of:");
        pw.println("    0 [auto]: Let system decide the best location");
        pw.println("    1 [internal]: Install on internal device storage");
        pw.println("    2 [external]: Install on external media");
        pw.println("");
        pw.println("  get-install-location");
        pw.println("    Returns the current install location: 0, 1 or 2 as per set-install-location.");
        pw.println("");
        pw.println("  move-package PACKAGE [internal|UUID]");
        pw.println("");
        pw.println("  move-primary-storage [internal|UUID]");
        pw.println("");
        pw.println("  uninstall [-k] [--user USER_ID] [--versionCode VERSION_CODE]");
        pw.println("       PACKAGE [SPLIT...]");
        pw.println("    Remove the given package name from the system.  May remove an entire app");
        pw.println("    if no SPLIT names specified, otherwise will remove only the splits of the");
        pw.println("    given app.  Options are:");
        pw.println("      -k: keep the data and cache directories around after package removal.");
        pw.println("      --user: remove the app from the given user.");
        pw.println("      --versionCode: only uninstall if the app has the given version code.");
        pw.println("");
        pw.println("  clear [--user USER_ID] PACKAGE");
        pw.println("    Deletes all data associated with a package.");
        pw.println("");
        pw.println("  enable [--user USER_ID] PACKAGE_OR_COMPONENT");
        pw.println("  disable [--user USER_ID] PACKAGE_OR_COMPONENT");
        pw.println("  disable-user [--user USER_ID] PACKAGE_OR_COMPONENT");
        pw.println("  disable-until-used [--user USER_ID] PACKAGE_OR_COMPONENT");
        pw.println("  default-state [--user USER_ID] PACKAGE_OR_COMPONENT");
        pw.println("    These commands change the enabled state of a given package or");
        pw.println("    component (written as \"package/class\").");
        pw.println("");
        pw.println("  hide [--user USER_ID] PACKAGE_OR_COMPONENT");
        pw.println("  unhide [--user USER_ID] PACKAGE_OR_COMPONENT");
        pw.println("");
        pw.println("  suspend [--user USER_ID] TARGET-PACKAGE");
        pw.println("    Suspends the specified package (as user).");
        pw.println("");
        pw.println("  unsuspend [--user USER_ID] TARGET-PACKAGE");
        pw.println("    Unsuspends the specified package (as user).");
        pw.println("");
        pw.println("  grant [--user USER_ID] PACKAGE PERMISSION");
        pw.println("  revoke [--user USER_ID] PACKAGE PERMISSION");
        pw.println("    These commands either grant or revoke permissions to apps.  The permissions");
        pw.println("    must be declared as used in the app's manifest, be runtime permissions");
        pw.println("    (protection level dangerous), and the app targeting SDK greater than Lollipop MR1.");
        pw.println("");
        pw.println("  reset-permissions");
        pw.println("    Revert all runtime permissions to their default state.");
        pw.println("");
        pw.println("  set-permission-enforced PERMISSION [true|false]");
        pw.println("");
        pw.println("  get-privapp-permissions TARGET-PACKAGE");
        pw.println("    Prints all privileged permissions for a package.");
        pw.println("");
        pw.println("  get-privapp-deny-permissions TARGET-PACKAGE");
        pw.println("    Prints all privileged permissions that are denied for a package.");
        pw.println("");
        pw.println("  get-oem-permissions TARGET-PACKAGE");
        pw.println("    Prints all OEM permissions for a package.");
        pw.println("");
        pw.println("  set-app-link [--user USER_ID] PACKAGE {always|ask|never|undefined}");
        pw.println("  get-app-link [--user USER_ID] PACKAGE");
        pw.println("");
        pw.println("  trim-caches DESIRED_FREE_SPACE [internal|UUID]");
        pw.println("    Trim cache files to reach the given free space.");
        pw.println("");
        pw.println("  list users");
        pw.println("    Lists the current users.");
        pw.println("");
        pw.println("  create-user [--profileOf USER_ID] [--managed] [--restricted] [--ephemeral]");
        pw.println("      [--guest] [--pre-create-only] [--user-type USER_TYPE] USER_NAME");
        pw.println("    Create a new user with the given USER_NAME, printing the new user identifier");
        pw.println("    of the user.");
        pw.println("    USER_TYPE is the name of a user type, e.g. android.os.usertype.profile.MANAGED.");
        pw.println("      If not specified, the default user type is android.os.usertype.full.SECONDARY.");
        pw.println("      --managed is shorthand for '--user-type android.os.usertype.profile.MANAGED'.");
        pw.println("      --restricted is shorthand for '--user-type android.os.usertype.full.RESTRICTED'.");
        pw.println("      --guest is shorthand for '--user-type android.os.usertype.full.GUEST'.");
        pw.println("");
        pw.println("  remove-user USER_ID");
        pw.println("    Remove the user with the given USER_IDENTIFIER, deleting all data");
        pw.println("    associated with that user");
        pw.println("");
        pw.println("  set-user-restriction [--user USER_ID] RESTRICTION VALUE");
        pw.println("");
        pw.println("  get-max-users");
        pw.println("");
        pw.println("  get-max-running-users");
        pw.println("");
        pw.println("  compile [-m MODE | -r REASON] [-f] [-c] [--split SPLIT_NAME]");
        pw.println("          [--reset] [--check-prof (true | false)] (-a | TARGET-PACKAGE)");
        pw.println("    Trigger compilation of TARGET-PACKAGE or all packages if \"-a\".  Options are:");
        pw.println("      -a: compile all packages");
        pw.println("      -c: clear profile data before compiling");
        pw.println("      -f: force compilation even if not needed");
        pw.println("      -m: select compilation mode");
        pw.println("          MODE is one of the dex2oat compiler filters:");
        pw.println("            assume-verified");
        pw.println("            extract");
        pw.println("            verify");
        pw.println("            quicken");
        pw.println("            space-profile");
        pw.println("            space");
        pw.println("            speed-profile");
        pw.println("            speed");
        pw.println("            everything");
        pw.println("      -r: select compilation reason");
        pw.println("          REASON is one of:");
        for (int i = 0; i < PackageManagerServiceCompilerMapping.REASON_STRINGS.length; i++) {
            pw.println("            " + PackageManagerServiceCompilerMapping.REASON_STRINGS[i]);
        }
        pw.println("      --reset: restore package to its post-install state");
        pw.println("      --check-prof (true | false): look at profiles when doing dexopt?");
        pw.println("      --secondary-dex: compile app secondary dex files");
        pw.println("      --split SPLIT: compile only the given split name");
        pw.println("      --compile-layouts: compile layout resources for faster inflation");
        pw.println("");
        pw.println("  force-dex-opt PACKAGE");
        pw.println("    Force immediate execution of dex opt for the given PACKAGE.");
        pw.println("");
        pw.println("  bg-dexopt-job");
        pw.println("    Execute the background optimizations immediately.");
        pw.println("    Note that the command only runs the background optimizer logic. It may");
        pw.println("    overlap with the actual job but the job scheduler will not be able to");
        pw.println("    cancel it. It will also run even if the device is not in the idle");
        pw.println("    maintenance mode.");
        pw.println("");
        pw.println("  reconcile-secondary-dex-files TARGET-PACKAGE");
        pw.println("    Reconciles the package secondary dex files with the generated oat files.");
        pw.println("");
        pw.println("  dump-profiles TARGET-PACKAGE");
        pw.println("    Dumps method/class profile files to");
        pw.println("    /data/misc/profman/TARGET-PACKAGE.txt");
        pw.println("");
        pw.println("  snapshot-profile TARGET-PACKAGE [--code-path path]");
        pw.println("    Take a snapshot of the package profiles to");
        pw.println("    /data/misc/profman/TARGET-PACKAGE[-code-path].prof");
        pw.println("    If TARGET-PACKAGE=android it will take a snapshot of the boot image");
        pw.println("");
        pw.println("  set-home-activity [--user USER_ID] TARGET-COMPONENT");
        pw.println("    Set the default home activity (aka launcher).");
        pw.println("    TARGET-COMPONENT can be a package name (com.package.my) or a full");
        pw.println("    component (com.package.my/component.name). However, only the package name");
        pw.println("    matters: the actual component used will be determined automatically from");
        pw.println("    the package.");
        pw.println("");
        pw.println("  set-installer PACKAGE INSTALLER");
        pw.println("    Set installer package name");
        pw.println("");
        pw.println("  get-instantapp-resolver");
        pw.println("    Return the name of the component that is the current instant app installer.");
        pw.println("");
        pw.println("  set-harmful-app-warning [--user <USER_ID>] <PACKAGE> [<WARNING>]");
        pw.println("    Mark the app as harmful with the given warning message.");
        pw.println("");
        pw.println("  get-harmful-app-warning [--user <USER_ID>] <PACKAGE>");
        pw.println("    Return the harmful app warning message for the given app, if present");
        pw.println();
        pw.println("  uninstall-system-updates [<PACKAGE>]");
        pw.println("    Removes updates to the given system application and falls back to its");
        pw.println("    /system version. Does nothing if the given package is not a system app.");
        pw.println("    If no package is specified, removes updates to all system applications.");
        pw.println("");
        pw.println("  get-moduleinfo [--all | --installed] [module-name]");
        pw.println("    Displays module info. If module-name is specified only that info is shown");
        pw.println("    By default, without any argument only installed modules are shown.");
        pw.println("      --all: show all module info");
        pw.println("      --installed: show only installed modules");
        pw.println("");
        pw.println("  log-visibility [--enable|--disable] <PACKAGE>");
        pw.println("    Turns on debug logging when visibility is blocked for the given package.");
        pw.println("      --enable: turn on debug logging (default)");
        pw.println("      --disable: turn off debug logging");
        pw.println("");
        Intent.printIntentArgsHelp(pw, "");
    }

    private static class LocalIntentReceiver {
        private IIntentSender.Stub mLocalSender;
        private final LinkedBlockingQueue<Intent> mResult;

        private LocalIntentReceiver() {
            this.mResult = new LinkedBlockingQueue<>();
            this.mLocalSender = new IIntentSender.Stub() { // from class: com.android.server.pm.PackageManagerShellCommand.LocalIntentReceiver.1
                public void send(int code, Intent intent, String resolvedType, IBinder whitelistToken, IIntentReceiver finishedReceiver, String requiredPermission, Bundle options) {
                    try {
                        LocalIntentReceiver.this.mResult.offer(intent, 5L, TimeUnit.SECONDS);
                    } catch (InterruptedException e) {
                        throw new RuntimeException(e);
                    }
                }
            };
        }

        public IntentSender getIntentSender() {
            return new IntentSender(this.mLocalSender);
        }

        public Intent getResult() {
            try {
                return this.mResult.take();
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
    }
}

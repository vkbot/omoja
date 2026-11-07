package com.android.server.am;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.ActivityTaskManager;
import android.app.AppGlobals;
import android.app.BroadcastOptions;
import android.app.IActivityController;
import android.app.IActivityManager;
import android.app.IActivityTaskManager;
import android.app.IApplicationThread;
import android.app.IStopUserCallback;
import android.app.IUidObserver;
import android.app.KeyguardManager;
import android.app.ProfilerInfo;
import android.app.UserSwitchObserver;
import android.app.WaitResult;
import android.app.usage.AppStandbyInfo;
import android.app.usage.ConfigurationStats;
import android.app.usage.IUsageStatsManager;
import android.compat.Compatibility;
import android.content.ComponentName;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.pm.ConfigurationInfo;
import android.content.pm.FeatureInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.content.pm.ParceledListSlice;
import android.content.pm.ResolveInfo;
import android.content.pm.SharedLibraryInfo;
import android.content.pm.UserInfo;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.display.DisplayManager;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.net.INetd;
import android.opengl.GLES10;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IProgressListener;
import android.os.ParcelFileDescriptor;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.ShellCommand;
import android.os.StrictMode;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.DebugUtils;
import android.util.DisplayMetrics;
import android.util.proto.ProtoOutputStream;
import android.view.Display;
import com.android.internal.compat.CompatibilityChangeConfig;
import com.android.internal.util.HexDump;
import com.android.internal.util.MemInfoReader;
import com.android.server.compat.PlatformCompat;
import com.android.server.hdmi.HdmiCecKeycode;
import com.android.server.job.controllers.JobStatus;
import com.android.server.usb.descriptors.UsbACInterface;
import com.android.server.usb.descriptors.UsbDescriptor;
import com.android.server.utils.PriorityDump;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.android.server.wm.ActivityTaskManagerService;
import com.android.server.wm.WindowManagerService;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URISyntaxException;
import java.time.Clock;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: classes.dex */
final class ActivityManagerShellCommand extends ShellCommand {
    private static final DateTimeFormatter LOG_NAME_TIME_FORMATTER = DateTimeFormatter.ofPattern("yyyyMMdd-HHmmss", Locale.ROOT);
    public static final String NO_CLASS_ERROR_CODE = "Error type 3";
    private static final String SHELL_PACKAGE_NAME = "com.android.shell";
    private static final int USER_OPERATION_TIMEOUT_MS = 120000;
    private int mActivityType;
    private String mAgent;
    private boolean mAttachAgentDuringBind;
    private boolean mAutoStop;
    private BroadcastOptions mBroadcastOptions;
    private int mDisplayId;
    final boolean mDumping;
    final IActivityManager mInterface;
    final ActivityManagerService mInternal;
    private boolean mIsLockTask;
    private boolean mIsTaskOverlay;
    private String mProfileFile;
    private String mReceiverPermission;
    private int mSamplingInterval;
    private boolean mStreaming;
    private int mTaskId;
    final IActivityTaskManager mTaskInterface;
    private int mUserId;
    private int mWindowingMode;
    private int mStartFlags = 0;
    private boolean mWaitOption = false;
    private boolean mStopOption = false;
    private int mRepeat = 0;
    final IPackageManager mPm = AppGlobals.getPackageManager();

    static /* synthetic */ int access$076(ActivityManagerShellCommand x0, int x1) {
        int i = x0.mStartFlags | x1;
        x0.mStartFlags = i;
        return i;
    }

    ActivityManagerShellCommand(ActivityManagerService service, boolean dumping) {
        this.mInterface = service;
        this.mTaskInterface = service.mActivityTaskManager;
        this.mInternal = service;
        this.mDumping = dumping;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public int onCommand(String cmd) {
        byte b;
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        PrintWriter pw = getOutPrintWriter();
        try {
            switch (cmd.hashCode()) {
                case -2121667104:
                    b = !cmd.equals("dumpheap") ? (byte) -1 : (byte) 14;
                    break;
                case -1969672196:
                    if (cmd.equals("set-debug-app")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_BOS;
                    }
                    break;
                case -1719979774:
                    if (cmd.equals("get-inactive")) {
                        b = 50;
                    }
                    break;
                case -1710503333:
                    if (cmd.equals("package-importance")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_HID;
                    }
                    break;
                case -1667670943:
                    if (cmd.equals("get-standby-bucket")) {
                        b = 52;
                    }
                    break;
                case -1619282346:
                    if (cmd.equals("start-user")) {
                        b = 39;
                    }
                    break;
                case -1618876223:
                    if (cmd.equals(INetd.IF_FLAG_BROADCAST)) {
                        b = 10;
                    }
                    break;
                case -1354812542:
                    if (cmd.equals("compat")) {
                        b = 64;
                    }
                    break;
                case -1324660647:
                    if (cmd.equals("suppress-resize-config-changes")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_ENDPOINT_COMPANION;
                    }
                    break;
                case -1303445945:
                    if (cmd.equals("send-trim-memory")) {
                        b = 53;
                    }
                    break;
                case -1131287478:
                    if (cmd.equals("start-service")) {
                        b = 3;
                    }
                    break;
                case -1002578147:
                    if (cmd.equals("get-uid-state")) {
                        b = 46;
                    }
                    break;
                case -969091893:
                    if (cmd.equals("get-process-record-frozen-state")) {
                        b = 66;
                    }
                    break;
                case -965273485:
                    if (cmd.equals("stopservice")) {
                        b = 8;
                    }
                    break;
                case -930080590:
                    if (cmd.equals("startfgservice")) {
                        b = 5;
                    }
                    break;
                case -907667276:
                    if (cmd.equals("unlock-user")) {
                        b = 40;
                    }
                    break;
                case -892396682:
                    if (cmd.equals("start-foreground-service")) {
                        b = 6;
                    }
                    break;
                case -870018278:
                    if (cmd.equals("to-uri")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_REPORT;
                    }
                    break;
                case -812219210:
                    if (cmd.equals("get-current-user")) {
                        b = 38;
                    }
                    break;
                case -747637291:
                    if (cmd.equals("set-standby-bucket")) {
                        b = 51;
                    }
                    break;
                case -699625063:
                    if (cmd.equals("get-config")) {
                        b = 47;
                    }
                    break;
                case -606123342:
                    if (cmd.equals("kill-all")) {
                        b = 25;
                    }
                    break;
                case -548621938:
                    if (cmd.equals("is-user-stopped")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_SUPERSPEED_HUB;
                    }
                    break;
                case -387147436:
                    if (cmd.equals("track-associations")) {
                        b = 44;
                    }
                    break;
                case -354890749:
                    if (cmd.equals("screen-compat")) {
                        b = 32;
                    }
                    break;
                case -309425751:
                    if (cmd.equals("profile")) {
                        b = UsbACInterface.ACI_SAMPLE_RATE_CONVERTER;
                    }
                    break;
                case -170987146:
                    if (cmd.equals("set-inactive")) {
                        b = 49;
                    }
                    break;
                case -146027423:
                    if (cmd.equals("watch-uids")) {
                        b = 28;
                    }
                    break;
                case -138040195:
                    if (cmd.equals("clear-exit-info")) {
                        b = 20;
                    }
                    break;
                case -100644880:
                    if (cmd.equals("startforegroundservice")) {
                        b = 4;
                    }
                    break;
                case -27715536:
                    if (cmd.equals("make-uid-idle")) {
                        b = 26;
                    }
                    break;
                case 3194994:
                    if (cmd.equals("hang")) {
                        b = 29;
                    }
                    break;
                case 3291998:
                    if (cmd.equals("kill")) {
                        b = 24;
                    }
                    break;
                case 3552645:
                    if (cmd.equals("task")) {
                        b = 56;
                    }
                    break;
                case 88586660:
                    if (cmd.equals("force-stop")) {
                        b = 22;
                    }
                    break;
                case 94921639:
                    if (cmd.equals("crash")) {
                        b = 23;
                    }
                    break;
                case 109757064:
                    if (cmd.equals("stack")) {
                        b = 55;
                    }
                    break;
                case 109757538:
                    if (cmd.equals("start")) {
                        b = 0;
                    }
                    break;
                case 113399775:
                    if (cmd.equals("write")) {
                        b = 57;
                    }
                    break;
                case 185053203:
                    if (cmd.equals("startservice")) {
                        b = 2;
                    }
                    break;
                case 237240942:
                    if (cmd.equals("to-app-uri")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_CLASSSPECIFIC_INTERFACE;
                    }
                    break;
                case 549617690:
                    if (cmd.equals("start-activity")) {
                        b = 1;
                    }
                    break;
                case 622433197:
                    if (cmd.equals("untrack-associations")) {
                        b = 45;
                    }
                    break;
                case 667014829:
                    if (cmd.equals("bug-report")) {
                        b = 21;
                    }
                    break;
                case 680834441:
                    if (cmd.equals("supports-split-screen-multi-window")) {
                        b = 60;
                    }
                    break;
                case 723112852:
                    if (cmd.equals("trace-ipc")) {
                        b = 12;
                    }
                    break;
                case 764545184:
                    if (cmd.equals("supports-multiwindow")) {
                        b = 59;
                    }
                    break;
                case 808179021:
                    if (cmd.equals("to-intent-uri")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_PHYSICAL;
                    }
                    break;
                case 810242677:
                    if (cmd.equals("set-watch-heap")) {
                        b = 18;
                    }
                    break;
                case 817137578:
                    if (cmd.equals("clear-watch-heap")) {
                        b = 19;
                    }
                    break;
                case 822490030:
                    if (cmd.equals("set-agent-app")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_CAPABILITY;
                    }
                    break;
                case 900455412:
                    if (cmd.equals("start-fg-service")) {
                        b = 7;
                    }
                    break;
                case 1024703869:
                    if (cmd.equals("attach-agent")) {
                        b = 58;
                    }
                    break;
                case 1078591527:
                    if (cmd.equals("clear-debug-app")) {
                        b = 17;
                    }
                    break;
                case 1097506319:
                    if (cmd.equals("restart")) {
                        b = 30;
                    }
                    break;
                case 1129261387:
                    if (cmd.equals("update-appinfo")) {
                        b = 61;
                    }
                    break;
                case 1180451466:
                    if (cmd.equals("refresh-settings-cache")) {
                        b = 65;
                    }
                    break;
                case 1219773618:
                    if (cmd.equals("get-started-user-state")) {
                        b = 43;
                    }
                    break;
                case 1236319578:
                    if (cmd.equals("monitor")) {
                        b = 27;
                    }
                    break;
                case 1395483623:
                    if (cmd.equals("instrument")) {
                        b = 11;
                    }
                    break;
                case 1583986358:
                    if (cmd.equals("stop-user")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_HUB;
                    }
                    break;
                case 1618908732:
                    if (cmd.equals("wait-for-broadcast-idle")) {
                        b = 63;
                    }
                    break;
                case 1671764162:
                    if (cmd.equals("display")) {
                        b = 54;
                    }
                    break;
                case 1852789518:
                    if (cmd.equals("no-home-screen")) {
                        b = 62;
                    }
                    break;
                case 1861559962:
                    if (cmd.equals("idle-maintenance")) {
                        b = 31;
                    }
                    break;
                case 1863290858:
                    if (cmd.equals("stop-service")) {
                        b = 9;
                    }
                    break;
                case 2083239620:
                    if (cmd.equals("switch-user")) {
                        b = UsbDescriptor.DESCRIPTORTYPE_CLASSSPECIFIC_ENDPOINT;
                    }
                    break;
                default:
                    break;
            }
            switch (b) {
                case 0:
                case 1:
                    return runStartActivity(pw);
                case 2:
                case 3:
                    return runStartService(pw, false);
                case 4:
                case 5:
                case 6:
                case 7:
                    return runStartService(pw, true);
                case 8:
                case 9:
                    return runStopService(pw);
                case 10:
                    return runSendBroadcast(pw);
                case 11:
                    getOutPrintWriter().println("Error: must be invoked through 'am instrument'.");
                    return -1;
                case 12:
                    return runTraceIpc(pw);
                case 13:
                    return runProfile(pw);
                case 14:
                    return runDumpHeap(pw);
                case 15:
                    return runSetDebugApp(pw);
                case 16:
                    return runSetAgentApp(pw);
                case 17:
                    return runClearDebugApp(pw);
                case 18:
                    return runSetWatchHeap(pw);
                case 19:
                    return runClearWatchHeap(pw);
                case 20:
                    return runClearExitInfo(pw);
                case 21:
                    return runBugReport(pw);
                case 22:
                    return runForceStop(pw);
                case WindowManagerService.H.BOOT_TIMEOUT /* 23 */:
                    return runCrash(pw);
                case WindowManagerService.H.WAITING_FOR_DRAWN_TIMEOUT /* 24 */:
                    return runKill(pw);
                case WindowManagerService.H.SHOW_STRICT_MODE_VIOLATION /* 25 */:
                    return runKillAll(pw);
                case CecMessageType.GIVE_DECK_STATUS /* 26 */:
                    return runMakeIdle(pw);
                case CecMessageType.DECK_STATUS /* 27 */:
                    return runMonitor(pw);
                case 28:
                    return runWatchUids(pw);
                case HdmiCecKeycode.CEC_KEYCODE_NUMBER_ENTRY_MODE /* 29 */:
                    return runHang(pw);
                case 30:
                    return runRestart(pw);
                case HdmiCecKeycode.CEC_KEYCODE_NUMBER_12 /* 31 */:
                    return runIdleMaintenance(pw);
                case 32:
                    return runScreenCompat(pw);
                case 33:
                    return runPackageImportance(pw);
                case 34:
                    return runToUri(pw, 0);
                case 35:
                    return runToUri(pw, 1);
                case 36:
                    return runToUri(pw, 2);
                case 37:
                    return runSwitchUser(pw);
                case 38:
                    return runGetCurrentUser(pw);
                case 39:
                    return runStartUser(pw);
                case 40:
                    return runUnlockUser(pw);
                case 41:
                    return runStopUser(pw);
                case HdmiCecKeycode.CEC_KEYCODE_DOT /* 42 */:
                    return runIsUserStopped(pw);
                case HdmiCecKeycode.CEC_KEYCODE_ENTER /* 43 */:
                    return runGetStartedUserState(pw);
                case HdmiCecKeycode.CEC_KEYCODE_CLEAR /* 44 */:
                    return runTrackAssociations(pw);
                case 45:
                    return runUntrackAssociations(pw);
                case WindowManagerService.H.WINDOW_REPLACEMENT_TIMEOUT /* 46 */:
                    return getUidState(pw);
                case HdmiCecKeycode.CEC_KEYCODE_NEXT_FAVORITE /* 47 */:
                    return runGetConfig(pw);
                case 48:
                    return runSuppressResizeConfigChanges(pw);
                case HdmiCecKeycode.CEC_KEYCODE_CHANNEL_DOWN /* 49 */:
                    return runSetInactive(pw);
                case 50:
                    return runGetInactive(pw);
                case 51:
                    return runSetStandbyBucket(pw);
                case 52:
                    return runGetStandbyBucket(pw);
                case 53:
                    return runSendTrimMemory(pw);
                case 54:
                    return runDisplay(pw);
                case 55:
                    return runStack(pw);
                case 56:
                    return runTask(pw);
                case 57:
                    return runWrite(pw);
                case WindowManagerService.H.SET_HAS_OVERLAY_UI /* 58 */:
                    return runAttachAgent(pw);
                case 59:
                    return runSupportsMultiwindow(pw);
                case WindowManagerService.H.ANIMATION_FAILSAFE /* 60 */:
                    return runSupportsSplitScreenMultiwindow(pw);
                case WindowManagerService.H.RECOMPUTE_FOCUS /* 61 */:
                    return runUpdateApplicationInfo(pw);
                case WindowManagerService.H.ON_POINTER_DOWN_OUTSIDE_FOCUS /* 62 */:
                    return runNoHomeScreen(pw);
                case 63:
                    return runWaitForBroadcastIdle(pw);
                case 64:
                    return runCompat(pw);
                case 65:
                    return runRefreshSettingsCache();
                case 66:
                    return getProcessRecordFrozenState(pw);
                default:
                    return handleDefaultCommands(cmd);
            }
        } catch (RemoteException e) {
            pw.println("Remote exception: " + e);
            return -1;
        }
    }

    private Intent makeIntent(int defUser) throws URISyntaxException {
        this.mStartFlags = 0;
        this.mWaitOption = false;
        this.mStopOption = false;
        this.mRepeat = 0;
        this.mProfileFile = null;
        this.mSamplingInterval = 0;
        this.mAutoStop = false;
        this.mStreaming = false;
        this.mUserId = defUser;
        this.mDisplayId = -1;
        this.mWindowingMode = 0;
        this.mActivityType = 0;
        this.mTaskId = -1;
        this.mIsTaskOverlay = false;
        this.mIsLockTask = false;
        this.mBroadcastOptions = null;
        return Intent.parseCommandArgs(this, new Intent.CommandOptionHandler() { // from class: com.android.server.am.ActivityManagerShellCommand.1
            public boolean handleOption(String opt, ShellCommand cmd) {
                if (opt.equals("-D")) {
                    ActivityManagerShellCommand.access$076(ActivityManagerShellCommand.this, 2);
                } else if (opt.equals("-N")) {
                    ActivityManagerShellCommand.access$076(ActivityManagerShellCommand.this, 8);
                } else if (opt.equals("-W")) {
                    ActivityManagerShellCommand.this.mWaitOption = true;
                } else if (opt.equals("-P")) {
                    ActivityManagerShellCommand activityManagerShellCommand = ActivityManagerShellCommand.this;
                    activityManagerShellCommand.mProfileFile = activityManagerShellCommand.getNextArgRequired();
                    ActivityManagerShellCommand.this.mAutoStop = true;
                } else if (opt.equals("--start-profiler")) {
                    ActivityManagerShellCommand activityManagerShellCommand2 = ActivityManagerShellCommand.this;
                    activityManagerShellCommand2.mProfileFile = activityManagerShellCommand2.getNextArgRequired();
                    ActivityManagerShellCommand.this.mAutoStop = false;
                } else if (opt.equals("--sampling")) {
                    ActivityManagerShellCommand activityManagerShellCommand3 = ActivityManagerShellCommand.this;
                    activityManagerShellCommand3.mSamplingInterval = Integer.parseInt(activityManagerShellCommand3.getNextArgRequired());
                } else if (opt.equals("--streaming")) {
                    ActivityManagerShellCommand.this.mStreaming = true;
                } else if (opt.equals("--attach-agent")) {
                    if (ActivityManagerShellCommand.this.mAgent != null) {
                        cmd.getErrPrintWriter().println("Multiple --attach-agent(-bind) not supported");
                        return false;
                    }
                    ActivityManagerShellCommand activityManagerShellCommand4 = ActivityManagerShellCommand.this;
                    activityManagerShellCommand4.mAgent = activityManagerShellCommand4.getNextArgRequired();
                    ActivityManagerShellCommand.this.mAttachAgentDuringBind = false;
                } else if (opt.equals("--attach-agent-bind")) {
                    if (ActivityManagerShellCommand.this.mAgent != null) {
                        cmd.getErrPrintWriter().println("Multiple --attach-agent(-bind) not supported");
                        return false;
                    }
                    ActivityManagerShellCommand activityManagerShellCommand5 = ActivityManagerShellCommand.this;
                    activityManagerShellCommand5.mAgent = activityManagerShellCommand5.getNextArgRequired();
                    ActivityManagerShellCommand.this.mAttachAgentDuringBind = true;
                } else if (opt.equals("-R")) {
                    ActivityManagerShellCommand activityManagerShellCommand6 = ActivityManagerShellCommand.this;
                    activityManagerShellCommand6.mRepeat = Integer.parseInt(activityManagerShellCommand6.getNextArgRequired());
                } else if (opt.equals("-S")) {
                    ActivityManagerShellCommand.this.mStopOption = true;
                } else if (opt.equals("--track-allocation")) {
                    ActivityManagerShellCommand.access$076(ActivityManagerShellCommand.this, 4);
                } else if (opt.equals("--user")) {
                    ActivityManagerShellCommand activityManagerShellCommand7 = ActivityManagerShellCommand.this;
                    activityManagerShellCommand7.mUserId = UserHandle.parseUserArg(activityManagerShellCommand7.getNextArgRequired());
                } else if (opt.equals("--receiver-permission")) {
                    ActivityManagerShellCommand activityManagerShellCommand8 = ActivityManagerShellCommand.this;
                    activityManagerShellCommand8.mReceiverPermission = activityManagerShellCommand8.getNextArgRequired();
                } else if (opt.equals("--display")) {
                    ActivityManagerShellCommand activityManagerShellCommand9 = ActivityManagerShellCommand.this;
                    activityManagerShellCommand9.mDisplayId = Integer.parseInt(activityManagerShellCommand9.getNextArgRequired());
                } else if (opt.equals("--windowingMode")) {
                    ActivityManagerShellCommand activityManagerShellCommand10 = ActivityManagerShellCommand.this;
                    activityManagerShellCommand10.mWindowingMode = Integer.parseInt(activityManagerShellCommand10.getNextArgRequired());
                } else if (opt.equals("--activityType")) {
                    ActivityManagerShellCommand activityManagerShellCommand11 = ActivityManagerShellCommand.this;
                    activityManagerShellCommand11.mActivityType = Integer.parseInt(activityManagerShellCommand11.getNextArgRequired());
                } else if (opt.equals("--task")) {
                    ActivityManagerShellCommand activityManagerShellCommand12 = ActivityManagerShellCommand.this;
                    activityManagerShellCommand12.mTaskId = Integer.parseInt(activityManagerShellCommand12.getNextArgRequired());
                } else if (opt.equals("--task-overlay")) {
                    ActivityManagerShellCommand.this.mIsTaskOverlay = true;
                } else if (opt.equals("--lock-task")) {
                    ActivityManagerShellCommand.this.mIsLockTask = true;
                } else {
                    if (!opt.equals("--allow-background-activity-starts")) {
                        return false;
                    }
                    if (ActivityManagerShellCommand.this.mBroadcastOptions == null) {
                        ActivityManagerShellCommand.this.mBroadcastOptions = BroadcastOptions.makeBasic();
                    }
                    ActivityManagerShellCommand.this.mBroadcastOptions.setBackgroundActivityStartsAllowed(true);
                }
                return true;
            }
        });
    }

    private class ProgressWaiter extends IProgressListener.Stub {
        private final CountDownLatch mFinishedLatch;

        private ProgressWaiter() {
            this.mFinishedLatch = new CountDownLatch(1);
        }

        public void onStarted(int id, Bundle extras) {
        }

        public void onProgress(int id, int progress, Bundle extras) {
        }

        public void onFinished(int id, Bundle extras) {
            this.mFinishedLatch.countDown();
        }

        public boolean waitForFinish(long timeoutMillis) {
            try {
                return this.mFinishedLatch.await(timeoutMillis, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                System.err.println("Thread interrupted unexpectedly.");
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2, types: [android.app.ActivityOptions] */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v22, types: [android.app.ActivityOptions] */
    /* JADX WARN: Type inference failed for: r3v24, types: [android.app.ActivityOptions] */
    /* JADX WARN: Type inference failed for: r3v52 */
    /* JADX WARN: Type inference failed for: r3v53 */
    /* JADX WARN: Type inference failed for: r3v54 */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v57 */
    /* JADX WARN: Type inference failed for: r3v58 */
    int runStartActivity(PrintWriter printWriter) throws URISyntaxException, RemoteException {
        String providerMimeType;
        ?? r19;
        String str;
        Intent intent;
        int iStartActivityAsUserWithFeature;
        Intent intent2;
        int i;
        WaitResult waitResult;
        String packageName;
        try {
            Intent intentMakeIntent = makeIntent(-2);
            int i2 = -1;
            ?? r13 = 1;
            if (this.mUserId == -1) {
                getErrPrintWriter().println("Error: Can't start service with user 'all'");
                return 1;
            }
            String type = intentMakeIntent.getType();
            if (type == null && intentMakeIntent.getData() != null && ActivityTaskManagerInternal.ASSIST_KEY_CONTENT.equals(intentMakeIntent.getData().getScheme())) {
                providerMimeType = this.mInterface.getProviderMimeType(intentMakeIntent.getData(), this.mUserId);
            } else {
                providerMimeType = type;
            }
            while (true) {
                if (this.mStopOption) {
                    if (intentMakeIntent.getComponent() != null) {
                        packageName = intentMakeIntent.getComponent().getPackageName();
                    } else {
                        List list = this.mPm.queryIntentActivities(intentMakeIntent, providerMimeType, 0, this.mInternal.mUserController.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), this.mUserId, false, 0, "ActivityManagerShellCommand", null)).getList();
                        if (list != null && list.size() > 0) {
                            if (list.size() > r13) {
                                getErrPrintWriter().println("Error: Intent matches multiple activities; can't stop: " + intentMakeIntent);
                                return r13;
                            }
                            packageName = ((ResolveInfo) list.get(0)).activityInfo.packageName;
                        }
                    }
                    printWriter.println("Stopping: " + packageName);
                    printWriter.flush();
                    this.mInterface.forceStopPackage(packageName, this.mUserId);
                    try {
                        Thread.sleep(250L);
                    } catch (InterruptedException e) {
                    }
                }
                ProfilerInfo profilerInfo = null;
                if (this.mProfileFile != null || this.mAgent != null) {
                    ParcelFileDescriptor parcelFileDescriptorOpenFileForSystem = null;
                    String str2 = this.mProfileFile;
                    if (str2 != null && (parcelFileDescriptorOpenFileForSystem = openFileForSystem(str2, "w")) == null) {
                        return r13;
                    }
                    profilerInfo = new ProfilerInfo(this.mProfileFile, parcelFileDescriptorOpenFileForSystem, this.mSamplingInterval, this.mAutoStop, this.mStreaming, this.mAgent, this.mAttachAgentDuringBind);
                }
                printWriter.println("Starting: " + intentMakeIntent);
                printWriter.flush();
                intentMakeIntent.addFlags(AudioFormat.EVRC);
                WaitResult waitResult2 = null;
                long jUptimeMillis = SystemClock.uptimeMillis();
                ActivityOptions activityOptions = null;
                if (this.mDisplayId != i2) {
                    ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
                    activityOptionsMakeBasic.setLaunchDisplayId(this.mDisplayId);
                    activityOptions = activityOptionsMakeBasic;
                }
                ActivityOptions activityOptionsMakeBasic2 = activityOptions;
                ActivityOptions activityOptions2 = activityOptions;
                if (this.mWindowingMode != 0) {
                    if (activityOptions == null) {
                        activityOptionsMakeBasic2 = ActivityOptions.makeBasic();
                    }
                    activityOptionsMakeBasic2.setLaunchWindowingMode(this.mWindowingMode);
                    activityOptions2 = activityOptionsMakeBasic2;
                }
                ActivityOptions activityOptionsMakeBasic3 = activityOptions2;
                ActivityOptions activityOptions3 = activityOptions2;
                if (this.mActivityType != 0) {
                    if (activityOptions2 == null) {
                        activityOptionsMakeBasic3 = ActivityOptions.makeBasic();
                    }
                    activityOptionsMakeBasic3.setLaunchActivityType(this.mActivityType);
                    activityOptions3 = activityOptionsMakeBasic3;
                }
                ?? MakeBasic = activityOptions3;
                ?? r3 = activityOptions3;
                if (this.mTaskId != i2) {
                    if (activityOptions3 == null) {
                        MakeBasic = ActivityOptions.makeBasic();
                    }
                    MakeBasic.setLaunchTaskId(this.mTaskId);
                    r3 = MakeBasic;
                    if (this.mIsTaskOverlay) {
                        MakeBasic.setTaskOverlay(r13, r13);
                        r3 = MakeBasic;
                    }
                }
                ?? MakeBasic2 = r3;
                if (!this.mIsLockTask) {
                    r19 = r3;
                } else {
                    if (r3 == 0) {
                        MakeBasic2 = ActivityOptions.makeBasic();
                    }
                    MakeBasic2.setLockTaskEnabled(r13);
                    r19 = MakeBasic2;
                }
                if (this.mWaitOption) {
                    str = providerMimeType;
                    intent = intentMakeIntent;
                    WaitResult waitResultStartActivityAndWait = this.mInternal.startActivityAndWait(null, SHELL_PACKAGE_NAME, null, intentMakeIntent, providerMimeType, null, null, 0, this.mStartFlags, profilerInfo, r19 != 0 ? r19.toBundle() : null, this.mUserId);
                    iStartActivityAsUserWithFeature = waitResultStartActivityAndWait.result;
                    waitResult2 = waitResultStartActivityAndWait;
                } else {
                    str = providerMimeType;
                    intent = intentMakeIntent;
                    iStartActivityAsUserWithFeature = this.mInternal.startActivityAsUserWithFeature(null, SHELL_PACKAGE_NAME, null, intent, str, null, null, 0, this.mStartFlags, profilerInfo, r19 != 0 ? r19.toBundle() : null, this.mUserId);
                }
                long jUptimeMillis2 = SystemClock.uptimeMillis();
                PrintWriter errPrintWriter = this.mWaitOption ? printWriter : getErrPrintWriter();
                boolean z = false;
                if (iStartActivityAsUserWithFeature == -98) {
                    intent2 = intent;
                    i = 1;
                    errPrintWriter.println("Error: Not allowed to start background user activity that shouldn't be displayed for all users.");
                } else if (iStartActivityAsUserWithFeature == -97) {
                    i = 1;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Error: Activity not started, voice control not allowed for: ");
                    intent2 = intent;
                    sb.append(intent2);
                    errPrintWriter.println(sb.toString());
                } else if (iStartActivityAsUserWithFeature != 0) {
                    i = 1;
                    if (iStartActivityAsUserWithFeature == 1) {
                        z = true;
                        errPrintWriter.println("Warning: Activity not started because intent should be handled by the caller");
                        intent2 = intent;
                    } else if (iStartActivityAsUserWithFeature == 2) {
                        z = true;
                        errPrintWriter.println("Warning: Activity not started, its current task has been brought to the front");
                        intent2 = intent;
                    } else if (iStartActivityAsUserWithFeature == 3) {
                        z = true;
                        errPrintWriter.println("Warning: Activity not started, intent has been delivered to currently running top-most instance.");
                        intent2 = intent;
                    } else if (iStartActivityAsUserWithFeature == 100) {
                        z = true;
                        errPrintWriter.println("Warning: Activity not started because the  current activity is being kept for the user.");
                        intent2 = intent;
                    } else {
                        switch (iStartActivityAsUserWithFeature) {
                            case -94:
                                errPrintWriter.println("Error: Activity not started, you do not have permission to access it.");
                                intent2 = intent;
                                break;
                            case -93:
                                errPrintWriter.println("Error: Activity not started, you requested to both forward and receive its result");
                                intent2 = intent;
                                break;
                            case -92:
                                errPrintWriter.println(NO_CLASS_ERROR_CODE);
                                errPrintWriter.println("Error: Activity class " + intent.getComponent().toShortString() + " does not exist.");
                                intent2 = intent;
                                break;
                            case -91:
                                errPrintWriter.println("Error: Activity not started, unable to resolve " + intent.toString());
                                intent2 = intent;
                                break;
                            default:
                                errPrintWriter.println("Error: Activity not started, unknown error code " + iStartActivityAsUserWithFeature);
                                intent2 = intent;
                                break;
                        }
                    }
                } else {
                    i = 1;
                    z = true;
                    intent2 = intent;
                }
                errPrintWriter.flush();
                if (this.mWaitOption && z) {
                    if (waitResult2 != null) {
                        waitResult = waitResult2;
                    } else {
                        waitResult = new WaitResult();
                        waitResult.who = intent2.getComponent();
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Status: ");
                    sb2.append(waitResult.timeout ? "timeout" : "ok");
                    printWriter.println(sb2.toString());
                    printWriter.println("LaunchState: " + WaitResult.launchStateToString(waitResult.launchState));
                    if (waitResult.who != null) {
                        printWriter.println("Activity: " + waitResult.who.flattenToShortString());
                    }
                    if (waitResult.totalTime >= 0) {
                        printWriter.println("TotalTime: " + waitResult.totalTime);
                    }
                    printWriter.println("WaitTime: " + (jUptimeMillis2 - jUptimeMillis));
                    printWriter.println("Complete");
                    printWriter.flush();
                }
                int i3 = this.mRepeat - i;
                this.mRepeat = i3;
                if (i3 > 0) {
                    this.mTaskInterface.unhandledBack();
                }
                if (this.mRepeat <= 0) {
                    return 0;
                }
                r13 = i;
                intentMakeIntent = intent2;
                providerMimeType = str;
                i2 = i2;
            }
            getErrPrintWriter().println("Error: Intent does not match any activities: " + intentMakeIntent);
            return r13;
        } catch (URISyntaxException e2) {
            throw new RuntimeException(e2.getMessage(), e2);
        }
    }

    int runStartService(PrintWriter pw, boolean asForeground) throws RemoteException {
        PrintWriter err = getErrPrintWriter();
        try {
            Intent intent = makeIntent(-2);
            if (this.mUserId == -1) {
                err.println("Error: Can't start activity with user 'all'");
                return -1;
            }
            pw.println("Starting service: " + intent);
            pw.flush();
            ComponentName cn = this.mInterface.startService((IApplicationThread) null, intent, intent.getType(), asForeground, SHELL_PACKAGE_NAME, (String) null, this.mUserId);
            if (cn == null) {
                err.println("Error: Not found; no service started.");
                return -1;
            }
            if (cn.getPackageName().equals("!")) {
                err.println("Error: Requires permission " + cn.getClassName());
                return -1;
            }
            if (cn.getPackageName().equals("!!")) {
                err.println("Error: " + cn.getClassName());
                return -1;
            }
            if (cn.getPackageName().equals("?")) {
                err.println("Error: " + cn.getClassName());
                return -1;
            }
            return 0;
        } catch (URISyntaxException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    int runStopService(PrintWriter pw) throws RemoteException {
        PrintWriter err = getErrPrintWriter();
        try {
            Intent intent = makeIntent(-2);
            if (this.mUserId == -1) {
                err.println("Error: Can't stop activity with user 'all'");
                return -1;
            }
            pw.println("Stopping service: " + intent);
            pw.flush();
            int result = this.mInterface.stopService((IApplicationThread) null, intent, intent.getType(), this.mUserId);
            if (result == 0) {
                err.println("Service not stopped: was not running.");
                return -1;
            }
            if (result == 1) {
                err.println("Service stopped");
                return -1;
            }
            if (result == -1) {
                err.println("Error stopping service");
                return -1;
            }
            return 0;
        } catch (URISyntaxException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    static final class IntentReceiver extends IIntentReceiver.Stub {
        private boolean mFinished = false;
        private final PrintWriter mPw;

        IntentReceiver(PrintWriter pw) {
            this.mPw = pw;
        }

        public void performReceive(Intent intent, int resultCode, String data, Bundle extras, boolean ordered, boolean sticky, int sendingUser) {
            String line = "Broadcast completed: result=" + resultCode;
            if (data != null) {
                line = line + ", data=\"" + data + "\"";
            }
            if (extras != null) {
                line = line + ", extras: " + extras;
            }
            this.mPw.println(line);
            this.mPw.flush();
            synchronized (this) {
                this.mFinished = true;
                notifyAll();
            }
        }

        public synchronized void waitForFinish() {
            while (!this.mFinished) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    throw new IllegalStateException(e);
                }
            }
        }
    }

    int runSendBroadcast(PrintWriter pw) throws RemoteException {
        try {
            Intent intent = makeIntent(-2);
            intent.addFlags(4194304);
            IntentReceiver receiver = new IntentReceiver(pw);
            String str = this.mReceiverPermission;
            String[] requiredPermissions = str == null ? null : new String[]{str};
            pw.println("Broadcasting: " + intent);
            pw.flush();
            BroadcastOptions broadcastOptions = this.mBroadcastOptions;
            Bundle bundle = broadcastOptions == null ? null : broadcastOptions.toBundle();
            this.mInterface.broadcastIntentWithFeature((IApplicationThread) null, (String) null, intent, (String) null, receiver, 0, (String) null, (Bundle) null, requiredPermissions, -1, bundle, true, false, this.mUserId);
            receiver.waitForFinish();
            return 0;
        } catch (URISyntaxException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    int runTraceIpc(PrintWriter pw) throws RemoteException {
        String op = getNextArgRequired();
        if (op.equals("start")) {
            return runTraceIpcStart(pw);
        }
        if (op.equals("stop")) {
            return runTraceIpcStop(pw);
        }
        getErrPrintWriter().println("Error: unknown trace ipc command '" + op + "'");
        return -1;
    }

    int runTraceIpcStart(PrintWriter pw) throws RemoteException {
        pw.println("Starting IPC tracing.");
        pw.flush();
        this.mInterface.startBinderTracking();
        return 0;
    }

    int runTraceIpcStop(PrintWriter pw) throws RemoteException {
        PrintWriter err = getErrPrintWriter();
        String filename = null;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if (opt.equals("--dump-file")) {
                    filename = getNextArgRequired();
                } else {
                    err.println("Error: Unknown option: " + opt);
                    return -1;
                }
            } else {
                if (filename == null) {
                    err.println("Error: Specify filename to dump logs to.");
                    return -1;
                }
                ParcelFileDescriptor fd = openFileForSystem(filename, "w");
                if (fd == null) {
                    return -1;
                }
                if (!this.mInterface.stopBinderTrackingAndDump(fd)) {
                    err.println("STOP TRACE FAILED.");
                    return -1;
                }
                pw.println("Stopped IPC tracing. Dumping logs to: " + filename);
                return 0;
            }
        }
    }

    static void removeWallOption() {
        String props = SystemProperties.get("dalvik.vm.extra-opts");
        if (props != null && props.contains("-Xprofile:wallclock")) {
            SystemProperties.set("dalvik.vm.extra-opts", props.replace("-Xprofile:wallclock", "").trim());
        }
    }

    private int runProfile(PrintWriter pw) throws RemoteException {
        String process;
        ProfilerInfo profilerInfo;
        PrintWriter err = getErrPrintWriter();
        boolean start = false;
        boolean wall = false;
        int userId = -2;
        this.mSamplingInterval = 0;
        this.mStreaming = false;
        String cmd = getNextArgRequired();
        if ("start".equals(cmd)) {
            start = true;
            while (true) {
                String opt = getNextOption();
                if (opt != null) {
                    if (opt.equals("--user")) {
                        userId = UserHandle.parseUserArg(getNextArgRequired());
                    } else if (opt.equals("--wall")) {
                        wall = true;
                    } else if (opt.equals("--streaming")) {
                        this.mStreaming = true;
                    } else if (opt.equals("--sampling")) {
                        this.mSamplingInterval = Integer.parseInt(getNextArgRequired());
                    } else {
                        err.println("Error: Unknown option: " + opt);
                        return -1;
                    }
                } else {
                    String process2 = getNextArgRequired();
                    process = process2;
                    break;
                }
            }
        } else if ("stop".equals(cmd)) {
            while (true) {
                String opt2 = getNextOption();
                if (opt2 != null) {
                    if (opt2.equals("--user")) {
                        userId = UserHandle.parseUserArg(getNextArgRequired());
                    } else {
                        err.println("Error: Unknown option: " + opt2);
                        return -1;
                    }
                } else {
                    String process3 = getNextArgRequired();
                    process = process3;
                    break;
                }
            }
        } else {
            String cmd2 = getNextArgRequired();
            if ("start".equals(cmd2)) {
                start = true;
                process = cmd;
            } else if ("stop".equals(cmd2)) {
                process = cmd;
            } else {
                throw new IllegalArgumentException("Profile command " + cmd + " not valid");
            }
        }
        if (userId == -1) {
            err.println("Error: Can't profile with user 'all'");
            return -1;
        }
        if (!start) {
            profilerInfo = null;
        } else {
            String profileFile = getNextArgRequired();
            ParcelFileDescriptor fd = openFileForSystem(profileFile, "w");
            if (fd == null) {
                return -1;
            }
            ProfilerInfo profilerInfo2 = new ProfilerInfo(profileFile, fd, this.mSamplingInterval, false, this.mStreaming, (String) null, false);
            profilerInfo = profilerInfo2;
        }
        if (wall) {
            try {
                String props = SystemProperties.get("dalvik.vm.extra-opts");
                if (props == null || !props.contains("-Xprofile:wallclock")) {
                    String str = props + " -Xprofile:wallclock";
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.mInterface.profileControl(process, userId, start, profilerInfo, 0)) {
            return 0;
        }
        err.println("PROFILE FAILED on process " + process);
        return -1;
    }

    int runDumpHeap(PrintWriter pw) throws RemoteException {
        String heapFile;
        PrintWriter err = getErrPrintWriter();
        boolean runGc = false;
        int userId = -2;
        boolean mallocInfo = false;
        boolean managed = true;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if (opt.equals("--user")) {
                    userId = UserHandle.parseUserArg(getNextArgRequired());
                    if (userId == -1) {
                        err.println("Error: Can't dump heap with user 'all'");
                        return -1;
                    }
                } else if (opt.equals("-n")) {
                    managed = false;
                } else if (opt.equals("-g")) {
                    runGc = true;
                } else if (opt.equals("-m")) {
                    managed = false;
                    mallocInfo = true;
                } else {
                    err.println("Error: Unknown option: " + opt);
                    return -1;
                }
            } else {
                String process = getNextArgRequired();
                String heapFile2 = getNextArg();
                if (heapFile2 != null) {
                    heapFile = heapFile2;
                } else {
                    LocalDateTime localDateTime = LocalDateTime.now(Clock.systemDefaultZone());
                    String logNameTimeString = LOG_NAME_TIME_FORMATTER.format(localDateTime);
                    heapFile = "/data/local/tmp/heapdump-" + logNameTimeString + ".prof";
                }
                ParcelFileDescriptor fd = openFileForSystem(heapFile, "w");
                if (fd == null) {
                    return -1;
                }
                pw.println("File: " + heapFile);
                pw.flush();
                final CountDownLatch latch = new CountDownLatch(1);
                RemoteCallback finishCallback = new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.am.ActivityManagerShellCommand.2
                    public void onResult(Bundle result) {
                        latch.countDown();
                    }
                }, (Handler) null);
                if (!this.mInterface.dumpHeap(process, userId, managed, mallocInfo, runGc, heapFile, fd, finishCallback)) {
                    err.println("HEAP DUMP FAILED on process " + process);
                    return -1;
                }
                pw.println("Waiting for dump to finish...");
                pw.flush();
                try {
                    latch.await();
                    return 0;
                } catch (InterruptedException e) {
                    err.println("Caught InterruptedException");
                    return 0;
                }
            }
        }
    }

    int runSetDebugApp(PrintWriter pw) throws RemoteException {
        boolean wait = false;
        boolean persistent = false;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if (opt.equals("-w")) {
                    wait = true;
                } else if (opt.equals("--persistent")) {
                    persistent = true;
                } else {
                    getErrPrintWriter().println("Error: Unknown option: " + opt);
                    return -1;
                }
            } else {
                String pkg = getNextArgRequired();
                this.mInterface.setDebugApp(pkg, wait, persistent);
                return 0;
            }
        }
    }

    int runSetAgentApp(PrintWriter pw) throws RemoteException {
        String pkg = getNextArgRequired();
        String agent = getNextArg();
        this.mInterface.setAgentApp(pkg, agent);
        return 0;
    }

    int runClearDebugApp(PrintWriter pw) throws RemoteException {
        this.mInterface.setDebugApp((String) null, false, true);
        return 0;
    }

    int runSetWatchHeap(PrintWriter pw) throws RemoteException {
        String proc = getNextArgRequired();
        String limit = getNextArgRequired();
        this.mInterface.setDumpHeapDebugLimit(proc, 0, Long.parseLong(limit), (String) null);
        return 0;
    }

    int runClearWatchHeap(PrintWriter pw) throws RemoteException {
        String proc = getNextArgRequired();
        this.mInterface.setDumpHeapDebugLimit(proc, 0, -1L, (String) null);
        return 0;
    }

    int runClearExitInfo(PrintWriter pw) throws RemoteException {
        this.mInternal.enforceCallingPermission("android.permission.WRITE_SECURE_SETTINGS", "runClearExitInfo()");
        int userId = -2;
        String packageName = null;
        while (true) {
            String opt = getNextOption();
            if (opt == null) {
                break;
            }
            if (opt.equals("--user")) {
                userId = UserHandle.parseUserArg(getNextArgRequired());
            } else {
                packageName = opt;
            }
        }
        if (userId == -2) {
            UserInfo user = this.mInterface.getCurrentUser();
            if (user == null) {
                return -1;
            }
            userId = user.id;
        }
        this.mInternal.mProcessList.mAppExitInfoTracker.clearHistoryProcessExitInfo(packageName, userId);
        return 0;
    }

    int runBugReport(PrintWriter pw) throws RemoteException {
        boolean fullBugreport = true;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if (opt.equals("--progress")) {
                    fullBugreport = false;
                    this.mInterface.requestInteractiveBugReport();
                } else if (opt.equals("--telephony")) {
                    fullBugreport = false;
                    this.mInterface.requestTelephonyBugReport("", "");
                } else {
                    getErrPrintWriter().println("Error: Unknown option: " + opt);
                    return -1;
                }
            } else {
                if (fullBugreport) {
                    this.mInterface.requestFullBugReport();
                }
                pw.println("Your lovely bug report is being created; please be patient.");
                return 0;
            }
        }
    }

    int runForceStop(PrintWriter pw) throws RemoteException {
        int userId = -1;
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
                this.mInterface.forceStopPackage(getNextArgRequired(), userId);
                return 0;
            }
        }
    }

    int runCrash(PrintWriter pw) throws RemoteException {
        int pid;
        String packageName;
        int userId = -1;
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
                String arg = getNextArgRequired();
                try {
                    int pid2 = Integer.parseInt(arg);
                    pid = pid2;
                    packageName = null;
                } catch (NumberFormatException e) {
                    pid = -1;
                    packageName = arg;
                }
                this.mInterface.crashApplication(-1, pid, packageName, userId, "shell-induced crash", false);
                return 0;
            }
        }
    }

    int runKill(PrintWriter pw) throws RemoteException {
        int userId = -1;
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
                this.mInterface.killBackgroundProcesses(getNextArgRequired(), userId);
                return 0;
            }
        }
    }

    int runKillAll(PrintWriter pw) throws RemoteException {
        this.mInterface.killAllBackgroundProcesses();
        return 0;
    }

    int runMakeIdle(PrintWriter pw) throws RemoteException {
        int userId = -1;
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
                this.mInterface.makePackageIdle(getNextArgRequired(), userId);
                return 0;
            }
        }
    }

    static final class MyActivityController extends IActivityController.Stub {
        static final int RESULT_ANR_DIALOG = 0;
        static final int RESULT_ANR_KILL = 1;
        static final int RESULT_ANR_WAIT = 2;
        static final int RESULT_CRASH_DIALOG = 0;
        static final int RESULT_CRASH_KILL = 1;
        static final int RESULT_DEFAULT = 0;
        static final int RESULT_EARLY_ANR_CONTINUE = 0;
        static final int RESULT_EARLY_ANR_KILL = 1;
        static final int STATE_ANR = 3;
        static final int STATE_CRASHED = 1;
        static final int STATE_EARLY_ANR = 2;
        static final int STATE_NORMAL = 0;
        final String mGdbPort;
        Process mGdbProcess;
        Thread mGdbThread;
        boolean mGotGdbPrint;
        final InputStream mInput;
        final IActivityManager mInterface;
        final boolean mMonkey;
        final PrintWriter mPw;
        int mResult;
        int mState;

        MyActivityController(IActivityManager iam, PrintWriter pw, InputStream input, String gdbPort, boolean monkey) {
            this.mInterface = iam;
            this.mPw = pw;
            this.mInput = input;
            this.mGdbPort = gdbPort;
            this.mMonkey = monkey;
        }

        public boolean activityResuming(String pkg) {
            synchronized (this) {
                this.mPw.println("** Activity resuming: " + pkg);
                this.mPw.flush();
            }
            return true;
        }

        public boolean activityStarting(Intent intent, String pkg) {
            synchronized (this) {
                this.mPw.println("** Activity starting: " + pkg);
                this.mPw.flush();
            }
            return true;
        }

        public boolean appCrashed(String processName, int pid, String shortMsg, String longMsg, long timeMillis, String stackTrace) {
            boolean z;
            synchronized (this) {
                this.mPw.println("** ERROR: PROCESS CRASHED");
                this.mPw.println("processName: " + processName);
                this.mPw.println("processPid: " + pid);
                this.mPw.println("shortMsg: " + shortMsg);
                this.mPw.println("longMsg: " + longMsg);
                this.mPw.println("timeMillis: " + timeMillis);
                this.mPw.println("stack:");
                this.mPw.print(stackTrace);
                this.mPw.println("#");
                this.mPw.flush();
                int result = waitControllerLocked(pid, 1);
                z = result != 1;
            }
            return z;
        }

        public int appEarlyNotResponding(String processName, int pid, String annotation) {
            synchronized (this) {
                this.mPw.println("** ERROR: EARLY PROCESS NOT RESPONDING");
                this.mPw.println("processName: " + processName);
                this.mPw.println("processPid: " + pid);
                this.mPw.println("annotation: " + annotation);
                this.mPw.flush();
                int result = waitControllerLocked(pid, 2);
                return result == 1 ? -1 : 0;
            }
        }

        public int appNotResponding(String processName, int pid, String processStats) {
            synchronized (this) {
                this.mPw.println("** ERROR: PROCESS NOT RESPONDING");
                this.mPw.println("processName: " + processName);
                this.mPw.println("processPid: " + pid);
                this.mPw.println("processStats:");
                this.mPw.print(processStats);
                this.mPw.println("#");
                this.mPw.flush();
                int result = waitControllerLocked(pid, 3);
                if (result == 1) {
                    return -1;
                }
                if (result == 2) {
                    return 1;
                }
                return 0;
            }
        }

        public int systemNotResponding(String message) {
            synchronized (this) {
                this.mPw.println("** ERROR: PROCESS NOT RESPONDING");
                this.mPw.println("message: " + message);
                this.mPw.println("#");
                this.mPw.println("Allowing system to die.");
                this.mPw.flush();
            }
            return -1;
        }

        void killGdbLocked() {
            this.mGotGdbPrint = false;
            if (this.mGdbProcess != null) {
                this.mPw.println("Stopping gdbserver");
                this.mPw.flush();
                this.mGdbProcess.destroy();
                this.mGdbProcess = null;
            }
            Thread thread = this.mGdbThread;
            if (thread != null) {
                thread.interrupt();
                this.mGdbThread = null;
            }
        }

        int waitControllerLocked(int pid, int state) {
            if (this.mGdbPort != null) {
                killGdbLocked();
                try {
                    this.mPw.println("Starting gdbserver on port " + this.mGdbPort);
                    this.mPw.println("Do the following:");
                    this.mPw.println("  adb forward tcp:" + this.mGdbPort + " tcp:" + this.mGdbPort);
                    PrintWriter printWriter = this.mPw;
                    StringBuilder sb = new StringBuilder();
                    sb.append("  gdbclient app_process :");
                    sb.append(this.mGdbPort);
                    printWriter.println(sb.toString());
                    this.mPw.flush();
                    this.mGdbProcess = Runtime.getRuntime().exec(new String[]{"gdbserver", ":" + this.mGdbPort, "--attach", Integer.toString(pid)});
                    final InputStreamReader converter = new InputStreamReader(this.mGdbProcess.getInputStream());
                    Thread thread = new Thread() { // from class: com.android.server.am.ActivityManagerShellCommand.MyActivityController.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            BufferedReader in = new BufferedReader(converter);
                            int count = 0;
                            while (true) {
                                synchronized (MyActivityController.this) {
                                    if (MyActivityController.this.mGdbThread == null) {
                                        return;
                                    }
                                    if (count == 2) {
                                        MyActivityController.this.mGotGdbPrint = true;
                                        MyActivityController.this.notifyAll();
                                    }
                                    try {
                                        String line = in.readLine();
                                        if (line == null) {
                                            return;
                                        }
                                        MyActivityController.this.mPw.println("GDB: " + line);
                                        MyActivityController.this.mPw.flush();
                                        count++;
                                    } catch (IOException e) {
                                        return;
                                    }
                                }
                            }
                        }
                    };
                    this.mGdbThread = thread;
                    thread.start();
                    try {
                        wait(500L);
                    } catch (InterruptedException e) {
                    }
                } catch (IOException e2) {
                    this.mPw.println("Failure starting gdbserver: " + e2);
                    this.mPw.flush();
                    killGdbLocked();
                }
            }
            this.mState = state;
            this.mPw.println("");
            printMessageForState();
            this.mPw.flush();
            while (this.mState != 0) {
                try {
                    wait();
                } catch (InterruptedException e3) {
                }
            }
            killGdbLocked();
            return this.mResult;
        }

        void resumeController(int result) {
            synchronized (this) {
                this.mState = 0;
                this.mResult = result;
                notifyAll();
            }
        }

        void printMessageForState() {
            int i = this.mState;
            if (i == 0) {
                this.mPw.println("Monitoring activity manager...  available commands:");
            } else if (i == 1) {
                this.mPw.println("Waiting after crash...  available commands:");
                this.mPw.println("(c)ontinue: show crash dialog");
                this.mPw.println("(k)ill: immediately kill app");
            } else if (i == 2) {
                this.mPw.println("Waiting after early ANR...  available commands:");
                this.mPw.println("(c)ontinue: standard ANR processing");
                this.mPw.println("(k)ill: immediately kill app");
            } else if (i == 3) {
                this.mPw.println("Waiting after ANR...  available commands:");
                this.mPw.println("(c)ontinue: show ANR dialog");
                this.mPw.println("(k)ill: immediately kill app");
                this.mPw.println("(w)ait: wait some more");
            }
            this.mPw.println("(q)uit: finish monitoring");
        }

        void run() throws RemoteException {
            try {
                try {
                    printMessageForState();
                    this.mPw.flush();
                    this.mInterface.setActivityController(this, this.mMonkey);
                    this.mState = 0;
                    InputStreamReader converter = new InputStreamReader(this.mInput);
                    BufferedReader in = new BufferedReader(converter);
                    while (true) {
                        String line = in.readLine();
                        if (line == null) {
                            break;
                        }
                        boolean addNewline = true;
                        if (line.length() <= 0) {
                            addNewline = false;
                        } else {
                            if (!"q".equals(line) && !"quit".equals(line)) {
                                if (this.mState == 1) {
                                    if ("c".equals(line) || "continue".equals(line)) {
                                        resumeController(0);
                                    } else if ("k".equals(line) || "kill".equals(line)) {
                                        resumeController(1);
                                    } else {
                                        this.mPw.println("Invalid command: " + line);
                                    }
                                } else if (this.mState == 3) {
                                    if ("c".equals(line) || "continue".equals(line)) {
                                        resumeController(0);
                                    } else if ("k".equals(line) || "kill".equals(line)) {
                                        resumeController(1);
                                    } else if ("w".equals(line) || "wait".equals(line)) {
                                        resumeController(2);
                                    } else {
                                        this.mPw.println("Invalid command: " + line);
                                    }
                                } else if (this.mState == 2) {
                                    if ("c".equals(line) || "continue".equals(line)) {
                                        resumeController(0);
                                    } else if ("k".equals(line) || "kill".equals(line)) {
                                        resumeController(1);
                                    } else {
                                        this.mPw.println("Invalid command: " + line);
                                    }
                                } else {
                                    this.mPw.println("Invalid command: " + line);
                                }
                            }
                            resumeController(0);
                            break;
                        }
                        synchronized (this) {
                            if (addNewline) {
                                this.mPw.println("");
                            }
                            printMessageForState();
                            this.mPw.flush();
                        }
                    }
                } catch (IOException e) {
                    e.printStackTrace(this.mPw);
                    this.mPw.flush();
                }
                this.mInterface.setActivityController((IActivityController) null, this.mMonkey);
            } catch (Throwable th) {
                this.mInterface.setActivityController((IActivityController) null, this.mMonkey);
                throw th;
            }
        }
    }

    int runMonitor(PrintWriter pw) throws RemoteException {
        String gdbPort = null;
        boolean monkey = false;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if (opt.equals("--gdb")) {
                    gdbPort = getNextArgRequired();
                } else if (opt.equals("-m")) {
                    monkey = true;
                } else {
                    getErrPrintWriter().println("Error: Unknown option: " + opt);
                    return -1;
                }
            } else {
                MyActivityController controller = new MyActivityController(this.mInterface, pw, getRawInputStream(), gdbPort, monkey);
                controller.run();
                return 0;
            }
        }
    }

    static final class MyUidObserver extends IUidObserver.Stub implements ActivityManagerService.OomAdjObserver {
        static final int STATE_NORMAL = 0;
        final InputStream mInput;
        final IActivityManager mInterface;
        final ActivityManagerService mInternal;
        final PrintWriter mPw;
        int mState;
        final int mUid;

        MyUidObserver(ActivityManagerService service, PrintWriter pw, InputStream input, int uid) {
            this.mInterface = service;
            this.mInternal = service;
            this.mPw = pw;
            this.mInput = input;
            this.mUid = uid;
        }

        public void onUidStateChanged(int uid, int procState, long procStateSeq, int capability) throws RemoteException {
            synchronized (this) {
                StrictMode.ThreadPolicy oldPolicy = StrictMode.allowThreadDiskWrites();
                try {
                    this.mPw.print(uid);
                    this.mPw.print(" procstate ");
                    this.mPw.print(ProcessList.makeProcStateString(procState));
                    this.mPw.print(" seq ");
                    this.mPw.print(procStateSeq);
                    this.mPw.print(" capability ");
                    this.mPw.println(capability);
                    this.mPw.flush();
                    StrictMode.setThreadPolicy(oldPolicy);
                } catch (Throwable th) {
                    StrictMode.setThreadPolicy(oldPolicy);
                    throw th;
                }
            }
        }

        public void onUidGone(int uid, boolean disabled) throws RemoteException {
            synchronized (this) {
                StrictMode.ThreadPolicy oldPolicy = StrictMode.allowThreadDiskWrites();
                try {
                    this.mPw.print(uid);
                    this.mPw.print(" gone");
                    if (disabled) {
                        this.mPw.print(" disabled");
                    }
                    this.mPw.println();
                    this.mPw.flush();
                    StrictMode.setThreadPolicy(oldPolicy);
                } catch (Throwable th) {
                    StrictMode.setThreadPolicy(oldPolicy);
                    throw th;
                }
            }
        }

        public void onUidActive(int uid) throws RemoteException {
            synchronized (this) {
                StrictMode.ThreadPolicy oldPolicy = StrictMode.allowThreadDiskWrites();
                try {
                    this.mPw.print(uid);
                    this.mPw.println(" active");
                    this.mPw.flush();
                    StrictMode.setThreadPolicy(oldPolicy);
                } catch (Throwable th) {
                    StrictMode.setThreadPolicy(oldPolicy);
                    throw th;
                }
            }
        }

        public void onUidIdle(int uid, boolean disabled) throws RemoteException {
            synchronized (this) {
                StrictMode.ThreadPolicy oldPolicy = StrictMode.allowThreadDiskWrites();
                try {
                    this.mPw.print(uid);
                    this.mPw.print(" idle");
                    if (disabled) {
                        this.mPw.print(" disabled");
                    }
                    this.mPw.println();
                    this.mPw.flush();
                    StrictMode.setThreadPolicy(oldPolicy);
                } catch (Throwable th) {
                    StrictMode.setThreadPolicy(oldPolicy);
                    throw th;
                }
            }
        }

        public void onUidCachedChanged(int uid, boolean cached) throws RemoteException {
            synchronized (this) {
                StrictMode.ThreadPolicy oldPolicy = StrictMode.allowThreadDiskWrites();
                try {
                    this.mPw.print(uid);
                    this.mPw.println(cached ? " cached" : " uncached");
                    this.mPw.flush();
                    StrictMode.setThreadPolicy(oldPolicy);
                } catch (Throwable th) {
                    StrictMode.setThreadPolicy(oldPolicy);
                    throw th;
                }
            }
        }

        @Override // com.android.server.am.ActivityManagerService.OomAdjObserver
        public void onOomAdjMessage(String msg) {
            synchronized (this) {
                StrictMode.ThreadPolicy oldPolicy = StrictMode.allowThreadDiskWrites();
                try {
                    this.mPw.print("# ");
                    this.mPw.println(msg);
                    this.mPw.flush();
                    StrictMode.setThreadPolicy(oldPolicy);
                } catch (Throwable th) {
                    StrictMode.setThreadPolicy(oldPolicy);
                    throw th;
                }
            }
        }

        void printMessageForState() {
            if (this.mState == 0) {
                this.mPw.println("Watching uid states...  available commands:");
            }
            this.mPw.println("(q)uit: finish watching");
        }

        /* JADX WARN: Code duplicated, block: B:35:0x0091  */
        void run() throws RemoteException {
            try {
                try {
                    printMessageForState();
                    this.mPw.flush();
                    this.mInterface.registerUidObserver(this, 31, -1, (String) null);
                    if (this.mUid >= 0) {
                        this.mInternal.setOomAdjObserver(this.mUid, this);
                    }
                    this.mState = 0;
                    InputStreamReader converter = new InputStreamReader(this.mInput);
                    BufferedReader in = new BufferedReader(converter);
                    while (true) {
                        String line = in.readLine();
                        if (line == null) {
                            break;
                        }
                        boolean addNewline = true;
                        if (line.length() > 0) {
                            if ("q".equals(line) || "quit".equals(line)) {
                                break;
                                break;
                            }
                            this.mPw.println("Invalid command: " + line);
                        } else {
                            addNewline = false;
                        }
                        synchronized (this) {
                            if (addNewline) {
                                this.mPw.println("");
                            }
                            printMessageForState();
                            this.mPw.flush();
                        }
                    }
                    if (this.mUid >= 0) {
                        this.mInternal.clearOomAdjObserver();
                    }
                } catch (IOException e) {
                    e.printStackTrace(this.mPw);
                    this.mPw.flush();
                    if (this.mUid >= 0) {
                        this.mInternal.clearOomAdjObserver();
                    }
                }
                this.mInterface.unregisterUidObserver(this);
            } catch (Throwable th) {
                if (this.mUid >= 0) {
                    this.mInternal.clearOomAdjObserver();
                }
                this.mInterface.unregisterUidObserver(this);
                throw th;
            }
        }
    }

    int runWatchUids(PrintWriter pw) throws RemoteException {
        int uid = -1;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if (opt.equals("--oom")) {
                    uid = Integer.parseInt(getNextArgRequired());
                } else {
                    getErrPrintWriter().println("Error: Unknown option: " + opt);
                    return -1;
                }
            } else {
                MyUidObserver controller = new MyUidObserver(this.mInternal, pw, getRawInputStream(), uid);
                controller.run();
                return 0;
            }
        }
    }

    int runHang(PrintWriter pw) throws RemoteException {
        boolean allowRestart = false;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if (opt.equals("--allow-restart")) {
                    allowRestart = true;
                } else {
                    getErrPrintWriter().println("Error: Unknown option: " + opt);
                    return -1;
                }
            } else {
                pw.println("Hanging the system...");
                pw.flush();
                this.mInterface.hang(new Binder(), allowRestart);
                return 0;
            }
        }
    }

    int runRestart(PrintWriter pw) throws RemoteException {
        String opt = getNextOption();
        if (opt != null) {
            getErrPrintWriter().println("Error: Unknown option: " + opt);
            return -1;
        }
        pw.println("Restart the system...");
        pw.flush();
        this.mInterface.restart();
        return 0;
    }

    int runIdleMaintenance(PrintWriter pw) throws RemoteException {
        String opt = getNextOption();
        if (opt != null) {
            getErrPrintWriter().println("Error: Unknown option: " + opt);
            return -1;
        }
        pw.println("Performing idle maintenance...");
        this.mInterface.sendIdleJobTrigger();
        return 0;
    }

    int runScreenCompat(PrintWriter pw) throws RemoteException {
        boolean enabled;
        int i;
        String mode = getNextArgRequired();
        if ("on".equals(mode)) {
            enabled = true;
        } else if ("off".equals(mode)) {
            enabled = false;
        } else {
            getErrPrintWriter().println("Error: enabled mode must be 'on' or 'off' at " + mode);
            return -1;
        }
        String packageName = getNextArgRequired();
        do {
            try {
                IActivityManager iActivityManager = this.mInterface;
                if (enabled) {
                    i = 1;
                } else {
                    i = 0;
                }
                iActivityManager.setPackageScreenCompatMode(packageName, i);
            } catch (RemoteException e) {
            }
            packageName = getNextArg();
        } while (packageName != null);
        return 0;
    }

    int runPackageImportance(PrintWriter pw) throws RemoteException {
        String packageName = getNextArgRequired();
        int procState = this.mInterface.getPackageProcessState(packageName, SHELL_PACKAGE_NAME);
        pw.println(ActivityManager.RunningAppProcessInfo.procStateToImportance(procState));
        return 0;
    }

    int runToUri(PrintWriter pw, int flags) throws RemoteException {
        try {
            Intent intent = makeIntent(-2);
            pw.println(intent.toUri(flags));
            return 0;
        } catch (URISyntaxException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    private boolean switchUserAndWaitForComplete(final int userId) throws RemoteException {
        UserInfo currentUser = this.mInterface.getCurrentUser();
        if (currentUser != null && userId == currentUser.id) {
            return true;
        }
        final CountDownLatch switchLatch = new CountDownLatch(1);
        this.mInterface.registerUserSwitchObserver(new UserSwitchObserver() { // from class: com.android.server.am.ActivityManagerShellCommand.3
            public void onUserSwitchComplete(int newUserId) {
                if (userId == newUserId) {
                    switchLatch.countDown();
                }
            }
        }, ActivityManagerShellCommand.class.getName());
        boolean switched = this.mInterface.switchUser(userId);
        if (!switched) {
            return false;
        }
        try {
            return switchLatch.await(JobStatus.DEFAULT_TRIGGER_MAX_DELAY, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            getErrPrintWriter().println("Error: Thread interrupted unexpectedly.");
            return switched;
        }
    }

    int runSwitchUser(PrintWriter pw) throws RemoteException {
        boolean switched;
        UserManager userManager = (UserManager) this.mInternal.mContext.getSystemService(UserManager.class);
        int userSwitchable = userManager.getUserSwitchability();
        if (userSwitchable != 0) {
            getErrPrintWriter().println("Error: " + userSwitchable);
            return -1;
        }
        boolean wait = false;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if ("-w".equals(opt)) {
                    wait = true;
                } else {
                    getErrPrintWriter().println("Error: unknown option: " + opt);
                    return -1;
                }
            } else {
                int userId = Integer.parseInt(getNextArgRequired());
                if (wait) {
                    switched = switchUserAndWaitForComplete(userId);
                } else {
                    switched = this.mInterface.switchUser(userId);
                }
                if (switched) {
                    return 0;
                }
                pw.printf("Error: Failed to switch to user %d\n", Integer.valueOf(userId));
                return 1;
            }
        }
    }

    int runGetCurrentUser(PrintWriter pw) throws RemoteException {
        UserInfo currentUser = this.mInterface.getCurrentUser();
        Objects.requireNonNull(currentUser, "Current user not set");
        UserInfo currentUser2 = currentUser;
        pw.println(currentUser2.id);
        return 0;
    }

    int runStartUser(PrintWriter pw) throws RemoteException {
        boolean wait = false;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if ("-w".equals(opt)) {
                    wait = true;
                } else {
                    getErrPrintWriter().println("Error: unknown option: " + opt);
                    return -1;
                }
            } else {
                int userId = Integer.parseInt(getNextArgRequired());
                IProgressListener progressWaiter = wait ? new ProgressWaiter() : null;
                boolean success = this.mInterface.startUserInBackgroundWithListener(userId, progressWaiter);
                if (wait && success) {
                    success = progressWaiter.waitForFinish(JobStatus.DEFAULT_TRIGGER_MAX_DELAY);
                }
                if (success) {
                    pw.println("Success: user started");
                    return 0;
                }
                getErrPrintWriter().println("Error: could not start user");
                return 0;
            }
        }
    }

    private static byte[] argToBytes(String arg) {
        if (arg.equals("!")) {
            return null;
        }
        return HexDump.hexStringToByteArray(arg);
    }

    int runUnlockUser(PrintWriter pw) throws RemoteException {
        int userId = Integer.parseInt(getNextArgRequired());
        byte[] token = argToBytes(getNextArgRequired());
        byte[] secret = argToBytes(getNextArgRequired());
        boolean success = this.mInterface.unlockUser(userId, token, secret, (IProgressListener) null);
        if (success) {
            pw.println("Success: user unlocked");
            return 0;
        }
        getErrPrintWriter().println("Error: could not unlock user");
        return 0;
    }

    static final class StopUserCallback extends IStopUserCallback.Stub {
        private boolean mFinished = false;

        StopUserCallback() {
        }

        public synchronized void waitForFinish() {
            while (!this.mFinished) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    throw new IllegalStateException(e);
                }
            }
        }

        public synchronized void userStopped(int userId) {
            this.mFinished = true;
            notifyAll();
        }

        public synchronized void userStopAborted(int userId) {
            this.mFinished = true;
            notifyAll();
        }
    }

    int runStopUser(PrintWriter pw) throws RemoteException {
        boolean wait = false;
        boolean force = false;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if ("-w".equals(opt)) {
                    wait = true;
                } else if ("-f".equals(opt)) {
                    force = true;
                } else {
                    getErrPrintWriter().println("Error: unknown option: " + opt);
                    return -1;
                }
            } else {
                int user = Integer.parseInt(getNextArgRequired());
                StopUserCallback callback = wait ? new StopUserCallback() : null;
                int res = this.mInterface.stopUser(user, force, callback);
                if (res != 0) {
                    String txt = "";
                    if (res == -4) {
                        txt = " (Can't stop user " + user + " - one of its related users can't be stopped)";
                    } else if (res == -3) {
                        txt = " (System user cannot be stopped)";
                    } else if (res == -2) {
                        txt = " (Can't stop current user)";
                    } else if (res == -1) {
                        txt = " (Unknown user " + user + ")";
                    }
                    getErrPrintWriter().println("Switch failed: " + res + txt);
                    return -1;
                }
                if (callback != null) {
                    callback.waitForFinish();
                    return 0;
                }
                return 0;
            }
        }
    }

    int runIsUserStopped(PrintWriter pw) {
        int userId = UserHandle.parseUserArg(getNextArgRequired());
        boolean stopped = this.mInternal.isUserStopped(userId);
        pw.println(stopped);
        return 0;
    }

    int runGetStartedUserState(PrintWriter pw) throws RemoteException {
        this.mInternal.enforceCallingPermission("android.permission.DUMP", "runGetStartedUserState()");
        int userId = Integer.parseInt(getNextArgRequired());
        try {
            pw.println(this.mInternal.getStartedUserState(userId));
            return 0;
        } catch (NullPointerException e) {
            pw.println("User is not started: " + userId);
            return 0;
        }
    }

    int runTrackAssociations(PrintWriter pw) {
        this.mInternal.enforceCallingPermission("android.permission.SET_ACTIVITY_WATCHER", "runTrackAssociations()");
        synchronized (this.mInternal) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                if (!this.mInternal.mTrackingAssociations) {
                    this.mInternal.mTrackingAssociations = true;
                    pw.println("Association tracking started.");
                } else {
                    pw.println("Association tracking already enabled.");
                }
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
        return 0;
    }

    int runUntrackAssociations(PrintWriter pw) {
        this.mInternal.enforceCallingPermission("android.permission.SET_ACTIVITY_WATCHER", "runUntrackAssociations()");
        synchronized (this.mInternal) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                if (this.mInternal.mTrackingAssociations) {
                    this.mInternal.mTrackingAssociations = false;
                    this.mInternal.mAssociations.clear();
                    pw.println("Association tracking stopped.");
                } else {
                    pw.println("Association tracking not running.");
                }
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
        return 0;
    }

    int getUidState(PrintWriter pw) throws RemoteException {
        this.mInternal.enforceCallingPermission("android.permission.DUMP", "getUidState()");
        int state = this.mInternal.getUidState(Integer.parseInt(getNextArgRequired()));
        pw.print(state);
        pw.print(" (");
        pw.printf(DebugUtils.valueToString(ActivityManager.class, "PROCESS_STATE_", state), new Object[0]);
        pw.println(")");
        return 0;
    }

    private List<Configuration> getRecentConfigurations(int days) {
        IUsageStatsManager usm = IUsageStatsManager.Stub.asInterface(ServiceManager.getService("usagestats"));
        long now = System.currentTimeMillis();
        long nDaysAgo = now - ((long) ((((days * 24) * 60) * 60) * 1000));
        try {
            ParceledListSlice<ConfigurationStats> configStatsSlice = usm.queryConfigurationStats(4, nDaysAgo, now, SHELL_PACKAGE_NAME);
            if (configStatsSlice == null) {
                return Collections.emptyList();
            }
            final ArrayMap<Configuration, Integer> recentConfigs = new ArrayMap<>();
            List<ConfigurationStats> configStatsList = configStatsSlice.getList();
            int configStatsListSize = configStatsList.size();
            for (int i = 0; i < configStatsListSize; i++) {
                ConfigurationStats stats = configStatsList.get(i);
                int indexOfKey = recentConfigs.indexOfKey(stats.getConfiguration());
                if (indexOfKey < 0) {
                    recentConfigs.put(stats.getConfiguration(), Integer.valueOf(stats.getActivationCount()));
                } else {
                    recentConfigs.setValueAt(indexOfKey, Integer.valueOf(recentConfigs.valueAt(indexOfKey).intValue() + stats.getActivationCount()));
                }
            }
            Comparator<Configuration> comparator = new Comparator<Configuration>() { // from class: com.android.server.am.ActivityManagerShellCommand.4
                @Override // java.util.Comparator
                public int compare(Configuration a, Configuration b) {
                    return ((Integer) recentConfigs.get(b)).compareTo((Integer) recentConfigs.get(a));
                }
            };
            ArrayList<Configuration> configs = new ArrayList<>(recentConfigs.size());
            configs.addAll(recentConfigs.keySet());
            Collections.sort(configs, comparator);
            return configs;
        } catch (RemoteException e) {
            return Collections.emptyList();
        }
    }

    private static void addExtensionsForConfig(EGL10 egl, EGLDisplay display, EGLConfig config, int[] surfaceSize, int[] contextAttribs, Set<String> glExtensions) {
        EGLContext context = egl.eglCreateContext(display, config, EGL10.EGL_NO_CONTEXT, contextAttribs);
        if (context == EGL10.EGL_NO_CONTEXT) {
            return;
        }
        EGLSurface surface = egl.eglCreatePbufferSurface(display, config, surfaceSize);
        if (surface == EGL10.EGL_NO_SURFACE) {
            egl.eglDestroyContext(display, context);
            return;
        }
        egl.eglMakeCurrent(display, surface, surface, context);
        String extensionList = GLES10.glGetString(7939);
        if (!TextUtils.isEmpty(extensionList)) {
            for (String extension : extensionList.split(" ")) {
                glExtensions.add(extension);
            }
        }
        egl.eglMakeCurrent(display, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
        egl.eglDestroySurface(display, surface);
        egl.eglDestroyContext(display, context);
    }

    Set<String> getGlExtensionsFromDriver() {
        Set<String> glExtensions = new HashSet<>();
        EGL10 egl = (EGL10) EGLContext.getEGL();
        if (egl == null) {
            getErrPrintWriter().println("Warning: couldn't get EGL");
            return glExtensions;
        }
        EGLDisplay display = egl.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        int[] version = new int[2];
        egl.eglInitialize(display, version);
        int i = 1;
        int[] numConfigs = new int[1];
        char c = 0;
        if (!egl.eglGetConfigs(display, null, 0, numConfigs)) {
            getErrPrintWriter().println("Warning: couldn't get EGL config count");
            return glExtensions;
        }
        EGLConfig[] configs = new EGLConfig[numConfigs[0]];
        if (!egl.eglGetConfigs(display, configs, numConfigs[0], numConfigs)) {
            getErrPrintWriter().println("Warning: couldn't get EGL configs");
            return glExtensions;
        }
        int[] surfaceSize = {12375, 1, 12374, 1, 12344};
        int[] gles2 = {12440, 2, 12344};
        int[] attrib = new int[1];
        int i2 = 0;
        while (i2 < numConfigs[c]) {
            egl.eglGetConfigAttrib(display, configs[i2], 12327, attrib);
            if (attrib[c] == 12368) {
                i2 = i2;
            } else {
                egl.eglGetConfigAttrib(display, configs[i2], 12339, attrib);
                if ((attrib[c] & i) == 0) {
                    i2 = i2;
                } else {
                    egl.eglGetConfigAttrib(display, configs[i2], 12352, attrib);
                    if ((attrib[c] & i) != 0) {
                        addExtensionsForConfig(egl, display, configs[i2], surfaceSize, null, glExtensions);
                    }
                    if ((attrib[c] & 4) != 0) {
                        addExtensionsForConfig(egl, display, configs[i2], surfaceSize, gles2, glExtensions);
                    }
                }
            }
            numConfigs = numConfigs;
            configs = configs;
            c = c;
            i = i;
            i2++;
            attrib = attrib;
        }
        egl.eglTerminate(display);
        return glExtensions;
    }

    private void writeDeviceConfig(ProtoOutputStream protoOutputStream, long fieldId, PrintWriter pw, Configuration config, DisplayMetrics displayMetrics) {
        long token = -1;
        if (protoOutputStream != null) {
            token = protoOutputStream.start(fieldId);
            protoOutputStream.write(1155346202625L, displayMetrics.widthPixels);
            protoOutputStream.write(1155346202626L, displayMetrics.heightPixels);
            protoOutputStream.write(1155346202627L, DisplayMetrics.DENSITY_DEVICE_STABLE);
        }
        if (pw != null) {
            pw.print("stable-width-px: ");
            pw.println(displayMetrics.widthPixels);
            pw.print("stable-height-px: ");
            pw.println(displayMetrics.heightPixels);
            pw.print("stable-density-dpi: ");
            pw.println(DisplayMetrics.DENSITY_DEVICE_STABLE);
        }
        MemInfoReader memreader = new MemInfoReader();
        memreader.readMemInfo();
        KeyguardManager kgm = (KeyguardManager) this.mInternal.mContext.getSystemService(KeyguardManager.class);
        if (protoOutputStream != null) {
            protoOutputStream.write(1116691496964L, memreader.getTotalSize());
            protoOutputStream.write(1133871366149L, ActivityManager.isLowRamDeviceStatic());
            protoOutputStream.write(1155346202630L, Runtime.getRuntime().availableProcessors());
            protoOutputStream.write(1133871366151L, kgm.isDeviceSecure());
        }
        if (pw != null) {
            pw.print("total-ram: ");
            pw.println(memreader.getTotalSize());
            pw.print("low-ram: ");
            pw.println(ActivityManager.isLowRamDeviceStatic());
            pw.print("max-cores: ");
            pw.println(Runtime.getRuntime().availableProcessors());
            pw.print("has-secure-screen-lock: ");
            pw.println(kgm.isDeviceSecure());
        }
        try {
            ConfigurationInfo configInfo = this.mTaskInterface.getDeviceConfigurationInfo();
            if (configInfo.reqGlEsVersion != 0) {
                if (protoOutputStream != null) {
                    protoOutputStream.write(1155346202632L, configInfo.reqGlEsVersion);
                }
                if (pw != null) {
                    pw.print("opengl-version: 0x");
                    pw.println(Integer.toHexString(configInfo.reqGlEsVersion));
                }
            }
            Set<String> glExtensionsSet = getGlExtensionsFromDriver();
            String[] glExtensions = (String[]) glExtensionsSet.toArray(new String[glExtensionsSet.size()]);
            Arrays.sort(glExtensions);
            for (int i = 0; i < glExtensions.length; i++) {
                if (protoOutputStream != null) {
                    protoOutputStream.write(2237677961225L, glExtensions[i]);
                }
                if (pw != null) {
                    pw.print("opengl-extensions: ");
                    pw.println(glExtensions[i]);
                }
            }
            PackageManager pm = this.mInternal.mContext.getPackageManager();
            List<SharedLibraryInfo> slibs = pm.getSharedLibraries(0);
            Collections.sort(slibs, Comparator.comparing(new Function() { // from class: com.android.server.am.-$$Lambda$jVSWDZTj55yxOQmZSLdNsbUkMb4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((SharedLibraryInfo) obj).getName();
                }
            }));
            int i2 = 0;
            while (i2 < slibs.size()) {
                if (protoOutputStream != null) {
                    protoOutputStream.write(2237677961226L, slibs.get(i2).getName());
                }
                if (pw != null) {
                    pw.print("shared-libraries: ");
                    pw.println(slibs.get(i2).getName());
                }
                i2++;
                configInfo = configInfo;
            }
            FeatureInfo[] features = pm.getSystemAvailableFeatures();
            Arrays.sort(features, new Comparator() { // from class: com.android.server.am.-$$Lambda$ActivityManagerShellCommand$yu115wjRB5hvRTjVM9oePAy5cM0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ActivityManagerShellCommand.lambda$writeDeviceConfig$0((FeatureInfo) obj, (FeatureInfo) obj2);
                }
            });
            for (int i3 = 0; i3 < features.length; i3++) {
                if (features[i3].name != null) {
                    if (protoOutputStream != null) {
                        protoOutputStream.write(2237677961227L, features[i3].name);
                    }
                    if (pw != null) {
                        pw.print("features: ");
                        pw.println(features[i3].name);
                    }
                }
            }
            if (protoOutputStream != null) {
                protoOutputStream.end(token);
            }
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    static /* synthetic */ int lambda$writeDeviceConfig$0(FeatureInfo o1, FeatureInfo o2) {
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

    int runGetConfig(PrintWriter pw) throws RemoteException {
        List<Configuration> recentConfigs;
        int recentConfigSize;
        int days = -1;
        int displayId = 0;
        boolean asProto = false;
        boolean inclDevice = false;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if (opt.equals("--days")) {
                    days = Integer.parseInt(getNextArgRequired());
                    if (days <= 0) {
                        throw new IllegalArgumentException("--days must be a positive integer");
                    }
                } else if (opt.equals(PriorityDump.PROTO_ARG)) {
                    asProto = true;
                } else if (opt.equals("--device")) {
                    inclDevice = true;
                } else if (opt.equals("--display")) {
                    displayId = Integer.parseInt(getNextArgRequired());
                    if (displayId < 0) {
                        throw new IllegalArgumentException("--display must be a non-negative integer");
                    }
                } else {
                    getErrPrintWriter().println("Error: Unknown option: " + opt);
                    return -1;
                }
            } else {
                Configuration config = this.mInterface.getConfiguration();
                if (config == null) {
                    getErrPrintWriter().println("Activity manager has no configuration");
                    return -1;
                }
                DisplayManager dm = (DisplayManager) this.mInternal.mContext.getSystemService(DisplayManager.class);
                Display display = dm.getDisplay(displayId);
                if (display == null) {
                    getErrPrintWriter().println("Error: Display does not exist: " + displayId);
                    return -1;
                }
                DisplayMetrics metrics = new DisplayMetrics();
                display.getMetrics(metrics);
                if (asProto) {
                    ProtoOutputStream proto = new ProtoOutputStream(getOutFileDescriptor());
                    config.writeResConfigToProto(proto, 1146756268033L, metrics);
                    if (inclDevice) {
                        writeDeviceConfig(proto, 1146756268034L, null, config, metrics);
                    }
                    proto.flush();
                    return 0;
                }
                pw.println("config: " + Configuration.resourceQualifierString(config, metrics));
                pw.println("abi: " + TextUtils.join(",", Build.SUPPORTED_ABIS));
                if (inclDevice) {
                    writeDeviceConfig(null, -1L, pw, config, metrics);
                }
                if (days >= 0 && (recentConfigSize = (recentConfigs = getRecentConfigurations(days)).size()) > 0) {
                    pw.println("recentConfigs:");
                    for (int i = 0; i < recentConfigSize; i++) {
                        pw.println("  config: " + Configuration.resourceQualifierString(recentConfigs.get(i)));
                    }
                    return 0;
                }
                return 0;
            }
        }
    }

    int runSuppressResizeConfigChanges(PrintWriter pw) throws RemoteException {
        boolean suppress = Boolean.valueOf(getNextArgRequired()).booleanValue();
        this.mTaskInterface.suppressResizeConfigChanges(suppress);
        return 0;
    }

    int runSetInactive(PrintWriter pw) throws RemoteException {
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
                String packageName = getNextArgRequired();
                String value = getNextArgRequired();
                IUsageStatsManager usm = IUsageStatsManager.Stub.asInterface(ServiceManager.getService("usagestats"));
                usm.setAppInactive(packageName, Boolean.parseBoolean(value), userId);
                return 0;
            }
        }
    }

    private int bucketNameToBucketValue(String name) {
        String lower = name.toLowerCase();
        if (lower.startsWith("ac")) {
            return 10;
        }
        if (lower.startsWith("wo")) {
            return 20;
        }
        if (lower.startsWith("fr")) {
            return 30;
        }
        if (lower.startsWith("ra")) {
            return 40;
        }
        if (lower.startsWith("re")) {
            return 45;
        }
        if (lower.startsWith("ne")) {
            return 50;
        }
        try {
            int bucket = Integer.parseInt(lower);
            return bucket;
        } catch (NumberFormatException e) {
            getErrPrintWriter().println("Error: Unknown bucket: " + name);
            return -1;
        }
    }

    int runSetStandbyBucket(PrintWriter pw) throws RemoteException {
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
                String packageName = getNextArgRequired();
                String value = getNextArgRequired();
                int bucket = bucketNameToBucketValue(value);
                if (bucket < 0) {
                    return -1;
                }
                boolean multiple = peekNextArg() != null;
                IUsageStatsManager usm = IUsageStatsManager.Stub.asInterface(ServiceManager.getService("usagestats"));
                if (!multiple) {
                    usm.setAppStandbyBucket(packageName, bucketNameToBucketValue(value), userId);
                } else {
                    ArrayList<AppStandbyInfo> bucketInfoList = new ArrayList<>();
                    bucketInfoList.add(new AppStandbyInfo(packageName, bucket));
                    while (true) {
                        String packageName2 = getNextArg();
                        if (packageName2 == null) {
                            break;
                        }
                        int bucket2 = bucketNameToBucketValue(getNextArgRequired());
                        if (bucket2 >= 0) {
                            bucketInfoList.add(new AppStandbyInfo(packageName2, bucket2));
                        }
                    }
                    ParceledListSlice<AppStandbyInfo> slice = new ParceledListSlice<>(bucketInfoList);
                    usm.setAppStandbyBuckets(slice, userId);
                }
                return 0;
            }
        }
    }

    int runGetStandbyBucket(PrintWriter pw) throws RemoteException {
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
                String packageName = getNextArg();
                IUsageStatsManager usm = IUsageStatsManager.Stub.asInterface(ServiceManager.getService("usagestats"));
                if (packageName != null) {
                    int bucket = usm.getAppStandbyBucket(packageName, (String) null, userId);
                    pw.println(bucket);
                    return 0;
                }
                ParceledListSlice<AppStandbyInfo> buckets = usm.getAppStandbyBuckets(SHELL_PACKAGE_NAME, userId);
                for (AppStandbyInfo bucketInfo : buckets.getList()) {
                    pw.print(bucketInfo.mPackageName);
                    pw.print(": ");
                    pw.println(bucketInfo.mStandbyBucket);
                }
                return 0;
            }
        }
    }

    int runGetInactive(PrintWriter pw) throws RemoteException {
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
                String packageName = getNextArgRequired();
                IUsageStatsManager usm = IUsageStatsManager.Stub.asInterface(ServiceManager.getService("usagestats"));
                boolean isIdle = usm.isAppInactive(packageName, userId, SHELL_PACKAGE_NAME);
                pw.println("Idle=" + isIdle);
                return 0;
            }
        }
    }

    int runSendTrimMemory(PrintWriter pw) throws RemoteException {
        int level;
        int userId = -2;
        do {
            String opt = getNextOption();
            if (opt != null) {
                if (opt.equals("--user")) {
                    userId = UserHandle.parseUserArg(getNextArgRequired());
                } else {
                    getErrPrintWriter().println("Error: Unknown option: " + opt);
                    return -1;
                }
            } else {
                String proc = getNextArgRequired();
                String levelArg = getNextArgRequired();
                switch (levelArg) {
                    case "HIDDEN":
                        level = 20;
                        break;
                    case "RUNNING_MODERATE":
                        level = 5;
                        break;
                    case "BACKGROUND":
                        level = 40;
                        break;
                    case "RUNNING_LOW":
                        level = 10;
                        break;
                    case "MODERATE":
                        level = 60;
                        break;
                    case "RUNNING_CRITICAL":
                        level = 15;
                        break;
                    case "COMPLETE":
                        level = 80;
                        break;
                    default:
                        try {
                            level = Integer.parseInt(levelArg);
                            break;
                        } catch (NumberFormatException e) {
                            getErrPrintWriter().println("Error: Unknown level option: " + levelArg);
                            return -1;
                        }
                        break;
                }
                if (this.mInterface.setProcessMemoryTrimLevel(proc, userId, level)) {
                    return 0;
                }
                getErrPrintWriter().println("Unknown error: failed to set trim level");
                return -1;
            }
        } while (userId != -1);
        getErrPrintWriter().println("Error: Can't use user 'all'");
        return -1;
    }

    int runDisplay(PrintWriter pw) throws RemoteException {
        String op = getNextArgRequired();
        if (((op.hashCode() == 1625698700 && op.equals("move-stack")) ? (byte) 0 : (byte) -1) == 0) {
            return runDisplayMoveStack(pw);
        }
        getErrPrintWriter().println("Error: unknown command '" + op + "'");
        return -1;
    }

    int runStack(PrintWriter pw) throws RemoteException {
        byte b;
        String op = getNextArgRequired();
        switch (op) {
            case "move-top-activity-to-pinned-stack":
                b = 4;
                break;
            case "remove":
                b = 5;
                break;
            case "info":
                b = 3;
                break;
            case "list":
                b = 2;
                break;
            case "positiontask":
                b = 1;
                break;
            case "move-task":
                b = 0;
                break;
            default:
                b = -1;
                break;
        }
        if (b == 0) {
            return runStackMoveTask(pw);
        }
        if (b == 1) {
            return runStackPositionTask(pw);
        }
        if (b == 2) {
            return runStackList(pw);
        }
        if (b == 3) {
            return runStackInfo(pw);
        }
        if (b == 4) {
            return runMoveTopActivityToPinnedStack(pw);
        }
        if (b == 5) {
            return runStackRemove(pw);
        }
        getErrPrintWriter().println("Error: unknown command '" + op + "'");
        return -1;
    }

    private Rect getBounds() {
        String leftStr = getNextArgRequired();
        int left = Integer.parseInt(leftStr);
        String topStr = getNextArgRequired();
        int top = Integer.parseInt(topStr);
        String rightStr = getNextArgRequired();
        int right = Integer.parseInt(rightStr);
        String bottomStr = getNextArgRequired();
        int bottom = Integer.parseInt(bottomStr);
        if (left < 0) {
            getErrPrintWriter().println("Error: bad left arg: " + leftStr);
            return null;
        }
        if (top < 0) {
            getErrPrintWriter().println("Error: bad top arg: " + topStr);
            return null;
        }
        if (right <= 0) {
            getErrPrintWriter().println("Error: bad right arg: " + rightStr);
            return null;
        }
        if (bottom <= 0) {
            getErrPrintWriter().println("Error: bad bottom arg: " + bottomStr);
            return null;
        }
        return new Rect(left, top, right, bottom);
    }

    int runDisplayMoveStack(PrintWriter pw) throws RemoteException {
        String stackIdStr = getNextArgRequired();
        int stackId = Integer.parseInt(stackIdStr);
        String displayIdStr = getNextArgRequired();
        int displayId = Integer.parseInt(displayIdStr);
        this.mTaskInterface.moveStackToDisplay(stackId, displayId);
        return 0;
    }

    int runStackMoveTask(PrintWriter pw) throws RemoteException {
        boolean toTop;
        String taskIdStr = getNextArgRequired();
        int taskId = Integer.parseInt(taskIdStr);
        String stackIdStr = getNextArgRequired();
        int stackId = Integer.parseInt(stackIdStr);
        String toTopStr = getNextArgRequired();
        if ("true".equals(toTopStr)) {
            toTop = true;
        } else if ("false".equals(toTopStr)) {
            toTop = false;
        } else {
            getErrPrintWriter().println("Error: bad toTop arg: " + toTopStr);
            return -1;
        }
        this.mTaskInterface.moveTaskToStack(taskId, stackId, toTop);
        return 0;
    }

    int runStackPositionTask(PrintWriter pw) throws RemoteException {
        String taskIdStr = getNextArgRequired();
        int taskId = Integer.parseInt(taskIdStr);
        String stackIdStr = getNextArgRequired();
        int stackId = Integer.parseInt(stackIdStr);
        String positionStr = getNextArgRequired();
        int position = Integer.parseInt(positionStr);
        this.mTaskInterface.positionTaskInStack(taskId, stackId, position);
        return 0;
    }

    int runStackList(PrintWriter pw) throws RemoteException {
        List<ActivityManager.StackInfo> stacks = this.mTaskInterface.getAllStackInfos();
        for (ActivityManager.StackInfo info : stacks) {
            pw.println(info);
        }
        return 0;
    }

    int runStackInfo(PrintWriter pw) throws RemoteException {
        int windowingMode = Integer.parseInt(getNextArgRequired());
        int activityType = Integer.parseInt(getNextArgRequired());
        ActivityManager.StackInfo info = this.mTaskInterface.getStackInfo(windowingMode, activityType);
        pw.println(info);
        return 0;
    }

    int runStackRemove(PrintWriter pw) throws RemoteException {
        String stackIdStr = getNextArgRequired();
        int stackId = Integer.parseInt(stackIdStr);
        this.mTaskInterface.removeStack(stackId);
        return 0;
    }

    int runMoveTopActivityToPinnedStack(PrintWriter pw) throws RemoteException {
        int stackId = Integer.parseInt(getNextArgRequired());
        Rect bounds = getBounds();
        if (bounds == null) {
            getErrPrintWriter().println("Error: invalid input bounds");
            return -1;
        }
        if (!this.mTaskInterface.moveTopActivityToPinnedStack(stackId, bounds)) {
            getErrPrintWriter().println("Didn't move top activity to pinned stack.");
            return -1;
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0043  */
    void setBoundsSide(Rect bounds, String side, int value) {
        byte b;
        int iHashCode = side.hashCode();
        if (iHashCode != 98) {
            if (iHashCode != 108) {
                if (iHashCode != 114) {
                    if (iHashCode == 116 && side.equals("t")) {
                        b = 2;
                    } else {
                        b = -1;
                    }
                } else if (side.equals(ActivityTaskManagerService.DUMP_RECENTS_SHORT_CMD)) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (side.equals("l")) {
                b = 0;
            } else {
                b = -1;
            }
        } else if (side.equals("b")) {
            b = 3;
        } else {
            b = -1;
        }
        if (b == 0) {
            bounds.left = value;
            return;
        }
        if (b == 1) {
            bounds.right = value;
            return;
        }
        if (b == 2) {
            bounds.top = value;
            return;
        }
        if (b == 3) {
            bounds.bottom = value;
            return;
        }
        getErrPrintWriter().println("Unknown set side: " + side);
    }

    int runTask(PrintWriter pw) throws RemoteException {
        String op = getNextArgRequired();
        if (op.equals("lock")) {
            return runTaskLock(pw);
        }
        if (op.equals("resizeable")) {
            return runTaskResizeable(pw);
        }
        if (op.equals("resize")) {
            return runTaskResize(pw);
        }
        if (op.equals("focus")) {
            return runTaskFocus(pw);
        }
        getErrPrintWriter().println("Error: unknown command '" + op + "'");
        return -1;
    }

    int runTaskLock(PrintWriter pw) throws RemoteException {
        String taskIdStr = getNextArgRequired();
        if (taskIdStr.equals("stop")) {
            this.mTaskInterface.stopSystemLockTaskMode();
        } else {
            int taskId = Integer.parseInt(taskIdStr);
            this.mTaskInterface.startSystemLockTaskMode(taskId);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Activity manager is ");
        sb.append(this.mTaskInterface.isInLockTaskMode() ? "" : "not ");
        sb.append("in lockTaskMode");
        pw.println(sb.toString());
        return 0;
    }

    int runTaskResizeable(PrintWriter pw) throws RemoteException {
        String taskIdStr = getNextArgRequired();
        int taskId = Integer.parseInt(taskIdStr);
        String resizeableStr = getNextArgRequired();
        int resizeableMode = Integer.parseInt(resizeableStr);
        this.mTaskInterface.setTaskResizeable(taskId, resizeableMode);
        return 0;
    }

    int runTaskResize(PrintWriter pw) throws RemoteException {
        String taskIdStr = getNextArgRequired();
        int taskId = Integer.parseInt(taskIdStr);
        Rect bounds = getBounds();
        if (bounds == null) {
            getErrPrintWriter().println("Error: invalid input bounds");
            return -1;
        }
        taskResize(taskId, bounds, 0, false);
        return 0;
    }

    void taskResize(int i, Rect rect, int i2, boolean z) throws RemoteException {
        this.mTaskInterface.resizeTask(i, rect, z ? 1 : 0);
        try {
            Thread.sleep(i2);
        } catch (InterruptedException e) {
        }
    }

    int moveTask(int taskId, Rect taskRect, Rect stackRect, int stepSize, int maxToTravel, boolean movingForward, boolean horizontal, int delay_ms) throws RemoteException {
        if (movingForward) {
            while (maxToTravel > 0 && ((horizontal && taskRect.right < stackRect.right) || (!horizontal && taskRect.bottom < stackRect.bottom))) {
                if (horizontal) {
                    int maxMove = Math.min(stepSize, stackRect.right - taskRect.right);
                    maxToTravel -= maxMove;
                    taskRect.right += maxMove;
                    taskRect.left += maxMove;
                } else {
                    int maxMove2 = Math.min(stepSize, stackRect.bottom - taskRect.bottom);
                    maxToTravel -= maxMove2;
                    taskRect.top += maxMove2;
                    taskRect.bottom += maxMove2;
                }
                taskResize(taskId, taskRect, delay_ms, false);
            }
        } else {
            while (maxToTravel < 0 && ((horizontal && taskRect.left > stackRect.left) || (!horizontal && taskRect.top > stackRect.top))) {
                if (horizontal) {
                    int maxMove3 = Math.min(stepSize, taskRect.left - stackRect.left);
                    maxToTravel -= maxMove3;
                    taskRect.right -= maxMove3;
                    taskRect.left -= maxMove3;
                } else {
                    int maxMove4 = Math.min(stepSize, taskRect.top - stackRect.top);
                    maxToTravel -= maxMove4;
                    taskRect.top -= maxMove4;
                    taskRect.bottom -= maxMove4;
                }
                taskResize(taskId, taskRect, delay_ms, false);
            }
        }
        return maxToTravel;
    }

    int getStepSize(int current, int target, int inStepSize, boolean greaterThanTarget) {
        int stepSize = 0;
        if (greaterThanTarget && target < current) {
            current -= inStepSize;
            stepSize = inStepSize;
            if (target > current) {
                stepSize -= target - current;
            }
        }
        if (!greaterThanTarget && target > current) {
            int current2 = current + inStepSize;
            return target < current2 ? inStepSize + (current2 - target) : inStepSize;
        }
        return stepSize;
    }

    int runTaskFocus(PrintWriter pw) throws RemoteException {
        int taskId = Integer.parseInt(getNextArgRequired());
        pw.println("Setting focus to task " + taskId);
        this.mTaskInterface.setFocusedTask(taskId);
        return 0;
    }

    int runWrite(PrintWriter pw) {
        this.mInternal.enforceCallingPermission("android.permission.SET_ACTIVITY_WATCHER", "registerUidObserver()");
        this.mInternal.mAtmInternal.flushRecentTasks();
        pw.println("All tasks persisted.");
        return 0;
    }

    int runAttachAgent(PrintWriter pw) {
        this.mInternal.enforceCallingPermission("android.permission.SET_ACTIVITY_WATCHER", "attach-agent");
        String process = getNextArgRequired();
        String agent = getNextArgRequired();
        String opt = getNextArg();
        if (opt != null) {
            pw.println("Error: Unknown option: " + opt);
            return -1;
        }
        this.mInternal.attachAgent(process, agent);
        return 0;
    }

    int runSupportsMultiwindow(PrintWriter pw) throws RemoteException {
        Resources res = getResources(pw);
        if (res == null) {
            return -1;
        }
        pw.println(ActivityTaskManager.supportsMultiWindow(this.mInternal.mContext));
        return 0;
    }

    int runSupportsSplitScreenMultiwindow(PrintWriter pw) throws RemoteException {
        Resources res = getResources(pw);
        if (res == null) {
            return -1;
        }
        pw.println(ActivityTaskManager.supportsSplitScreenMultiWindow(this.mInternal.mContext));
        return 0;
    }

    int runUpdateApplicationInfo(PrintWriter pw) throws RemoteException {
        int userid = UserHandle.parseUserArg(getNextArgRequired());
        ArrayList<String> packages = new ArrayList<>();
        packages.add(getNextArgRequired());
        while (true) {
            String packageName = getNextArg();
            if (packageName != null) {
                packages.add(packageName);
            } else {
                this.mInternal.scheduleApplicationInfoChanged(packages, userid);
                pw.println("Packages updated with most recent ApplicationInfos.");
                return 0;
            }
        }
    }

    int runNoHomeScreen(PrintWriter pw) throws RemoteException {
        Resources res = getResources(pw);
        if (res == null) {
            return -1;
        }
        pw.println(res.getBoolean(R.bool.config_cecQuerySadMp3Enabled_default));
        return 0;
    }

    int runWaitForBroadcastIdle(PrintWriter pw) throws RemoteException {
        this.mInternal.waitForBroadcastIdle(pw);
        return 0;
    }

    int runRefreshSettingsCache() throws RemoteException {
        this.mInternal.refreshSettingsCache();
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00b7  */
    private int runCompat(PrintWriter pw) throws RemoteException {
        byte b;
        PlatformCompat platformCompat = (PlatformCompat) ServiceManager.getService("platform_compat");
        String toggleValue = getNextArgRequired();
        boolean toggleAll = false;
        int targetSdkVersion = -1;
        long changeId = -1;
        if (toggleValue.endsWith("-all")) {
            toggleValue = toggleValue.substring(0, toggleValue.lastIndexOf("-all"));
            toggleAll = true;
            if (!toggleValue.equals("reset")) {
                try {
                    targetSdkVersion = Integer.parseInt(getNextArgRequired());
                } catch (NumberFormatException e) {
                    pw.println("Invalid targetSdkVersion!");
                    return -1;
                }
            }
        } else {
            String changeIdString = getNextArgRequired();
            try {
                changeId = Long.parseLong(changeIdString);
            } catch (NumberFormatException e2) {
                changeId = platformCompat.lookupChangeId(changeIdString);
            }
            if (changeId == -1) {
                pw.println("Unknown or invalid change: '" + changeIdString + "'.");
                return -1;
            }
        }
        String packageName = getNextArgRequired();
        if (!toggleAll && !platformCompat.isKnownChangeId(changeId)) {
            pw.println("Warning! Change " + changeId + " is not known yet. Enabling/disabling it could have no effect.");
        }
        ArraySet<Long> enabled = new ArraySet<>();
        ArraySet<Long> disabled = new ArraySet<>();
        try {
            int iHashCode = toggleValue.hashCode();
            if (iHashCode != -1298848381) {
                if (iHashCode != 108404047) {
                    b = (iHashCode == 1671308008 && toggleValue.equals("disable")) ? (byte) 1 : (byte) -1;
                } else if (toggleValue.equals("reset")) {
                    b = 2;
                }
            } else if (toggleValue.equals("enable")) {
                b = 0;
            }
            if (b == 0) {
                if (toggleAll) {
                    int numChanges = platformCompat.enableTargetSdkChanges(packageName, targetSdkVersion);
                    if (numChanges == 0) {
                        pw.println("No changes were enabled.");
                        return -1;
                    }
                    pw.println("Enabled " + numChanges + " changes gated by targetSdkVersion " + targetSdkVersion + " for " + packageName + ".");
                    return 0;
                }
                enabled.add(Long.valueOf(changeId));
                CompatibilityChangeConfig overrides = new CompatibilityChangeConfig(new Compatibility.ChangeConfig(enabled, disabled));
                platformCompat.setOverrides(overrides, packageName);
                pw.println("Enabled change " + changeId + " for " + packageName + ".");
                return 0;
            }
            if (b == 1) {
                if (toggleAll) {
                    int numChanges2 = platformCompat.disableTargetSdkChanges(packageName, targetSdkVersion);
                    if (numChanges2 == 0) {
                        pw.println("No changes were disabled.");
                        return -1;
                    }
                    pw.println("Disabled " + numChanges2 + " changes gated by targetSdkVersion " + targetSdkVersion + " for " + packageName + ".");
                    return 0;
                }
                disabled.add(Long.valueOf(changeId));
                CompatibilityChangeConfig overrides2 = new CompatibilityChangeConfig(new Compatibility.ChangeConfig(enabled, disabled));
                platformCompat.setOverrides(overrides2, packageName);
                pw.println("Disabled change " + changeId + " for " + packageName + ".");
                return 0;
            }
            if (b != 2) {
                pw.println("Invalid toggle value: '" + toggleValue + "'.");
                return -1;
            }
            if (toggleAll) {
                platformCompat.clearOverrides(packageName);
                pw.println("Reset all changes for " + packageName + " to default value.");
                return 0;
            }
            if (platformCompat.clearOverride(changeId, packageName)) {
                pw.println("Reset change " + changeId + " for " + packageName + " to default value.");
                return 0;
            }
            pw.println("No override exists for changeId " + changeId + ".");
            return 0;
        } catch (SecurityException e3) {
            pw.println(e3.getMessage());
            return -1;
        }
    }

    private Resources getResources(PrintWriter pw) throws RemoteException {
        Configuration config = this.mInterface.getConfiguration();
        if (config == null) {
            pw.println("Error: Activity manager has no configuration");
            return null;
        }
        DisplayMetrics metrics = new DisplayMetrics();
        metrics.setToDefaults();
        return new Resources(AssetManager.getSystem(), metrics, config);
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        dumpHelp(pw, this.mDumping);
    }

    static void dumpHelp(PrintWriter pw, boolean dumping) {
        if (dumping) {
            pw.println("Activity manager dump options:");
            pw.println("  [-a] [-c] [-p PACKAGE] [-h] [WHAT] ...");
            pw.println("  WHAT may be one of:");
            pw.println("    a[ctivities]: activity stack state");
            pw.println("    r[recents]: recent activities state");
            pw.println("    b[roadcasts] [PACKAGE_NAME] [history [-s]]: broadcast state");
            pw.println("    broadcast-stats [PACKAGE_NAME]: aggregated broadcast statistics");
            pw.println("    i[ntents] [PACKAGE_NAME]: pending intent state");
            pw.println("    p[rocesses] [PACKAGE_NAME]: process state");
            pw.println("    o[om]: out of memory management");
            pw.println("    perm[issions]: URI permission grant state");
            pw.println("    prov[iders] [COMP_SPEC ...]: content provider state");
            pw.println("    provider [COMP_SPEC]: provider client-side state");
            pw.println("    s[ervices] [COMP_SPEC ...]: service state");
            pw.println("    allowed-associations: current package association restrictions");
            pw.println("    as[sociations]: tracked app associations");
            pw.println("    exit-info [PACKAGE_NAME]: historical process exit information");
            pw.println("    lmk: stats on low memory killer");
            pw.println("    lru: raw LRU process list");
            pw.println("    binder-proxies: stats on binder objects and IPCs");
            pw.println("    settings: currently applied config settings");
            pw.println("    service [COMP_SPEC]: service client-side state");
            pw.println("    package [PACKAGE_NAME]: all state related to given package");
            pw.println("    all: dump all activities");
            pw.println("    top: dump the top activity");
            pw.println("  WHAT may also be a COMP_SPEC to dump activities.");
            pw.println("  COMP_SPEC may be a component name (com.foo/.myApp),");
            pw.println("    a partial substring in a component name, a");
            pw.println("    hex object identifier.");
            pw.println("  -a: include all available server state.");
            pw.println("  -c: include client state.");
            pw.println("  -p: limit output to given package.");
            pw.println("  --checkin: output checkin format, resetting data.");
            pw.println("  --C: output checkin format, not resetting data.");
            pw.println("  --proto: output dump in protocol buffer format.");
            pw.println("  --autofill: dump just the autofill-related state of an activity");
            return;
        }
        pw.println("Activity manager (activity) commands:");
        pw.println("  help");
        pw.println("      Print this help text.");
        pw.println("  start-activity [-D] [-N] [-W] [-P <FILE>] [--start-profiler <FILE>]");
        pw.println("          [--sampling INTERVAL] [--streaming] [-R COUNT] [-S]");
        pw.println("          [--track-allocation] [--user <USER_ID> | current] <INTENT>");
        pw.println("      Start an Activity.  Options are:");
        pw.println("      -D: enable debugging");
        pw.println("      -N: enable native debugging");
        pw.println("      -W: wait for launch to complete");
        pw.println("      --start-profiler <FILE>: start profiler and send results to <FILE>");
        pw.println("      --sampling INTERVAL: use sample profiling with INTERVAL microseconds");
        pw.println("          between samples (use with --start-profiler)");
        pw.println("      --streaming: stream the profiling output to the specified file");
        pw.println("          (use with --start-profiler)");
        pw.println("      -P <FILE>: like above, but profiling stops when app goes idle");
        pw.println("      --attach-agent <agent>: attach the given agent before binding");
        pw.println("      --attach-agent-bind <agent>: attach the given agent during binding");
        pw.println("      -R: repeat the activity launch <COUNT> times.  Prior to each repeat,");
        pw.println("          the top activity will be finished.");
        pw.println("      -S: force stop the target app before starting the activity");
        pw.println("      --track-allocation: enable tracking of object allocations");
        pw.println("      --user <USER_ID> | current: Specify which user to run as; if not");
        pw.println("          specified then run as the current user.");
        pw.println("      --windowingMode <WINDOWING_MODE>: The windowing mode to launch the activity into.");
        pw.println("      --activityType <ACTIVITY_TYPE>: The activity type to launch the activity as.");
        pw.println("      --display <DISPLAY_ID>: The display to launch the activity into.");
        pw.println("  start-service [--user <USER_ID> | current] <INTENT>");
        pw.println("      Start a Service.  Options are:");
        pw.println("      --user <USER_ID> | current: Specify which user to run as; if not");
        pw.println("          specified then run as the current user.");
        pw.println("  start-foreground-service [--user <USER_ID> | current] <INTENT>");
        pw.println("      Start a foreground Service.  Options are:");
        pw.println("      --user <USER_ID> | current: Specify which user to run as; if not");
        pw.println("          specified then run as the current user.");
        pw.println("  stop-service [--user <USER_ID> | current] <INTENT>");
        pw.println("      Stop a Service.  Options are:");
        pw.println("      --user <USER_ID> | current: Specify which user to run as; if not");
        pw.println("          specified then run as the current user.");
        pw.println("  broadcast [--user <USER_ID> | all | current] <INTENT>");
        pw.println("      Send a broadcast Intent.  Options are:");
        pw.println("      --user <USER_ID> | all | current: Specify which user to send to; if not");
        pw.println("          specified then send to all users.");
        pw.println("      --receiver-permission <PERMISSION>: Require receiver to hold permission.");
        pw.println("      --allow-background-activity-starts: The receiver may start activities");
        pw.println("          even if in the background.");
        pw.println("  instrument [-r] [-e <NAME> <VALUE>] [-p <FILE>] [-w]");
        pw.println("          [--user <USER_ID> | current]");
        pw.println("          [--no-hidden-api-checks [--no-test-api-access]]");
        pw.println("          [--no-isolated-storage]");
        pw.println("          [--no-window-animation] [--abi <ABI>] <COMPONENT>");
        pw.println("      Start an Instrumentation.  Typically this target <COMPONENT> is in the");
        pw.println("      form <TEST_PACKAGE>/<RUNNER_CLASS> or only <TEST_PACKAGE> if there");
        pw.println("      is only one instrumentation.  Options are:");
        pw.println("      -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT).  Use with");
        pw.println("          [-e perf true] to generate raw output for performance measurements.");
        pw.println("      -e <NAME> <VALUE>: set argument <NAME> to <VALUE>.  For test runners a");
        pw.println("          common form is [-e <testrunner_flag> <value>[,<value>...]].");
        pw.println("      -p <FILE>: write profiling data to <FILE>");
        pw.println("      -m: Write output as protobuf to stdout (machine readable)");
        pw.println("      -f <Optional PATH/TO/FILE>: Write output as protobuf to a file (machine");
        pw.println("          readable). If path is not specified, default directory and file name will");
        pw.println("          be used: /sdcard/instrument-logs/log-yyyyMMdd-hhmmss-SSS.instrumentation_data_proto");
        pw.println("      -w: wait for instrumentation to finish before returning.  Required for");
        pw.println("          test runners.");
        pw.println("      --user <USER_ID> | current: Specify user instrumentation runs in;");
        pw.println("          current user if not specified.");
        pw.println("      --no-hidden-api-checks: disable restrictions on use of hidden API.");
        pw.println("      --no-test-api-access: do not allow access to test APIs, if hidden");
        pw.println("          API checks are enabled.");
        pw.println("      --no-isolated-storage: don't use isolated storage sandbox and ");
        pw.println("          mount full external storage");
        pw.println("      --no-window-animation: turn off window animations while running.");
        pw.println("      --abi <ABI>: Launch the instrumented process with the selected ABI.");
        pw.println("          This assumes that the process supports the selected ABI.");
        pw.println("  trace-ipc [start|stop] [--dump-file <FILE>]");
        pw.println("      Trace IPC transactions.");
        pw.println("      start: start tracing IPC transactions.");
        pw.println("      stop: stop tracing IPC transactions and dump the results to file.");
        pw.println("      --dump-file <FILE>: Specify the file the trace should be dumped to.");
        pw.println("  profile start [--user <USER_ID> current]");
        pw.println("          [--sampling INTERVAL | --streaming] <PROCESS> <FILE>");
        pw.println("      Start profiler on a process.  The given <PROCESS> argument");
        pw.println("        may be either a process name or pid.  Options are:");
        pw.println("      --user <USER_ID> | current: When supplying a process name,");
        pw.println("          specify user of process to profile; uses current user if not");
        pw.println("          specified.");
        pw.println("      --sampling INTERVAL: use sample profiling with INTERVAL microseconds");
        pw.println("          between samples.");
        pw.println("      --streaming: stream the profiling output to the specified file.");
        pw.println("  profile stop [--user <USER_ID> current] <PROCESS>");
        pw.println("      Stop profiler on a process.  The given <PROCESS> argument");
        pw.println("        may be either a process name or pid.  Options are:");
        pw.println("      --user <USER_ID> | current: When supplying a process name,");
        pw.println("          specify user of process to profile; uses current user if not");
        pw.println("          specified.");
        pw.println("  dumpheap [--user <USER_ID> current] [-n] [-g] <PROCESS> <FILE>");
        pw.println("      Dump the heap of a process.  The given <PROCESS> argument may");
        pw.println("        be either a process name or pid.  Options are:");
        pw.println("      -n: dump native heap instead of managed heap");
        pw.println("      -g: force GC before dumping the heap");
        pw.println("      --user <USER_ID> | current: When supplying a process name,");
        pw.println("          specify user of process to dump; uses current user if not specified.");
        pw.println("  set-debug-app [-w] [--persistent] <PACKAGE>");
        pw.println("      Set application <PACKAGE> to debug.  Options are:");
        pw.println("      -w: wait for debugger when application starts");
        pw.println("      --persistent: retain this value");
        pw.println("  clear-debug-app");
        pw.println("      Clear the previously set-debug-app.");
        pw.println("  set-watch-heap <PROCESS> <MEM-LIMIT>");
        pw.println("      Start monitoring pss size of <PROCESS>, if it is at or");
        pw.println("      above <HEAP-LIMIT> then a heap dump is collected for the user to report.");
        pw.println("  clear-watch-heap");
        pw.println("      Clear the previously set-watch-heap.");
        pw.println("  clear-exit-info [--user <USER_ID> | all | current] [package]");
        pw.println("      Clear the process exit-info for given package");
        pw.println("  bug-report [--progress | --telephony]");
        pw.println("      Request bug report generation; will launch a notification");
        pw.println("        when done to select where it should be delivered. Options are:");
        pw.println("     --progress: will launch a notification right away to show its progress.");
        pw.println("     --telephony: will dump only telephony sections.");
        pw.println("  force-stop [--user <USER_ID> | all | current] <PACKAGE>");
        pw.println("      Completely stop the given application package.");
        pw.println("  crash [--user <USER_ID>] <PACKAGE|PID>");
        pw.println("      Induce a VM crash in the specified package or process");
        pw.println("  kill [--user <USER_ID> | all | current] <PACKAGE>");
        pw.println("      Kill all background processes associated with the given application.");
        pw.println("  kill-all");
        pw.println("      Kill all processes that are safe to kill (cached, etc).");
        pw.println("  make-uid-idle [--user <USER_ID> | all | current] <PACKAGE>");
        pw.println("      If the given application's uid is in the background and waiting to");
        pw.println("      become idle (not allowing background services), do that now.");
        pw.println("  monitor [--gdb <port>]");
        pw.println("      Start monitoring for crashes or ANRs.");
        pw.println("      --gdb: start gdbserv on the given port at crash/ANR");
        pw.println("  watch-uids [--oom <uid>]");
        pw.println("      Start watching for and reporting uid state changes.");
        pw.println("      --oom: specify a uid for which to report detailed change messages.");
        pw.println("  hang [--allow-restart]");
        pw.println("      Hang the system.");
        pw.println("      --allow-restart: allow watchdog to perform normal system restart");
        pw.println("  restart");
        pw.println("      Restart the user-space system.");
        pw.println("  idle-maintenance");
        pw.println("      Perform idle maintenance now.");
        pw.println("  screen-compat [on|off] <PACKAGE>");
        pw.println("      Control screen compatibility mode of <PACKAGE>.");
        pw.println("  package-importance <PACKAGE>");
        pw.println("      Print current importance of <PACKAGE>.");
        pw.println("  to-uri [INTENT]");
        pw.println("      Print the given Intent specification as a URI.");
        pw.println("  to-intent-uri [INTENT]");
        pw.println("      Print the given Intent specification as an intent: URI.");
        pw.println("  to-app-uri [INTENT]");
        pw.println("      Print the given Intent specification as an android-app: URI.");
        pw.println("  switch-user <USER_ID>");
        pw.println("      Switch to put USER_ID in the foreground, starting");
        pw.println("      execution of that user if it is currently stopped.");
        pw.println("  get-current-user");
        pw.println("      Returns id of the current foreground user.");
        pw.println("  start-user [-w] <USER_ID>");
        pw.println("      Start USER_ID in background if it is currently stopped;");
        pw.println("      use switch-user if you want to start the user in foreground.");
        pw.println("      -w: wait for start-user to complete and the user to be unlocked.");
        pw.println("  unlock-user <USER_ID> [TOKEN_HEX]");
        pw.println("      Attempt to unlock the given user using the given authorization token.");
        pw.println("  stop-user [-w] [-f] <USER_ID>");
        pw.println("      Stop execution of USER_ID, not allowing it to run any");
        pw.println("      code until a later explicit start or switch to it.");
        pw.println("      -w: wait for stop-user to complete.");
        pw.println("      -f: force stop even if there are related users that cannot be stopped.");
        pw.println("  is-user-stopped <USER_ID>");
        pw.println("      Returns whether <USER_ID> has been stopped or not.");
        pw.println("  get-started-user-state <USER_ID>");
        pw.println("      Gets the current state of the given started user.");
        pw.println("  track-associations");
        pw.println("      Enable association tracking.");
        pw.println("  untrack-associations");
        pw.println("      Disable and clear association tracking.");
        pw.println("  get-uid-state <UID>");
        pw.println("      Gets the process state of an app given its <UID>.");
        pw.println("  attach-agent <PROCESS> <FILE>");
        pw.println("    Attach an agent to the specified <PROCESS>, which may be either a process name or a PID.");
        pw.println("  get-config [--days N] [--device] [--proto] [--display <DISPLAY_ID>]");
        pw.println("      Retrieve the configuration and any recent configurations of the device.");
        pw.println("      --days: also return last N days of configurations that have been seen.");
        pw.println("      --device: also output global device configuration info.");
        pw.println("      --proto: return result as a proto; does not include --days info.");
        pw.println("      --display: Specify for which display to run the command; if not ");
        pw.println("          specified then run for the default display.");
        pw.println("  supports-multiwindow");
        pw.println("      Returns true if the device supports multiwindow.");
        pw.println("  supports-split-screen-multi-window");
        pw.println("      Returns true if the device supports split screen multiwindow.");
        pw.println("  suppress-resize-config-changes <true|false>");
        pw.println("      Suppresses configuration changes due to user resizing an activity/task.");
        pw.println("  set-inactive [--user <USER_ID>] <PACKAGE> true|false");
        pw.println("      Sets the inactive state of an app.");
        pw.println("  get-inactive [--user <USER_ID>] <PACKAGE>");
        pw.println("      Returns the inactive state of an app.");
        pw.println("  set-standby-bucket [--user <USER_ID>] <PACKAGE> active|working_set|frequent|rare");
        pw.println("      Puts an app in the standby bucket.");
        pw.println("  get-standby-bucket [--user <USER_ID>] <PACKAGE>");
        pw.println("      Returns the standby bucket of an app.");
        pw.println("  send-trim-memory [--user <USER_ID>] <PROCESS>");
        pw.println("          [HIDDEN|RUNNING_MODERATE|BACKGROUND|RUNNING_LOW|MODERATE|RUNNING_CRITICAL|COMPLETE]");
        pw.println("      Send a memory trim event to a <PROCESS>.  May also supply a raw trim int level.");
        pw.println("  display [COMMAND] [...]: sub-commands for operating on displays.");
        pw.println("       move-stack <STACK_ID> <DISPLAY_ID>");
        pw.println("           Move <STACK_ID> from its current display to <DISPLAY_ID>.");
        pw.println("  stack [COMMAND] [...]: sub-commands for operating on activity stacks.");
        pw.println("       move-task <TASK_ID> <STACK_ID> [true|false]");
        pw.println("           Move <TASK_ID> from its current stack to the top (true) or");
        pw.println("           bottom (false) of <STACK_ID>.");
        pw.println("       resize-docked-stack <LEFT,TOP,RIGHT,BOTTOM> [<TASK_LEFT,TASK_TOP,TASK_RIGHT,TASK_BOTTOM>]");
        pw.println("           Change docked stack to <LEFT,TOP,RIGHT,BOTTOM>");
        pw.println("           and supplying temporary different task bounds indicated by");
        pw.println("           <TASK_LEFT,TOP,RIGHT,BOTTOM>");
        pw.println("       move-top-activity-to-pinned-stack: <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>");
        pw.println("           Moves the top activity from");
        pw.println("           <STACK_ID> to the pinned stack using <LEFT,TOP,RIGHT,BOTTOM> for the");
        pw.println("           bounds of the pinned stack.");
        pw.println("       positiontask <TASK_ID> <STACK_ID> <POSITION>");
        pw.println("           Place <TASK_ID> in <STACK_ID> at <POSITION>");
        pw.println("       list");
        pw.println("           List all of the activity stacks and their sizes.");
        pw.println("       info <WINDOWING_MODE> <ACTIVITY_TYPE>");
        pw.println("           Display the information about activity stack in <WINDOWING_MODE> and <ACTIVITY_TYPE>.");
        pw.println("       remove <STACK_ID>");
        pw.println("           Remove stack <STACK_ID>.");
        pw.println("  task [COMMAND] [...]: sub-commands for operating on activity tasks.");
        pw.println("       lock <TASK_ID>");
        pw.println("           Bring <TASK_ID> to the front and don't allow other tasks to run.");
        pw.println("       lock stop");
        pw.println("           End the current task lock.");
        pw.println("       resizeable <TASK_ID> [0|1|2|3]");
        pw.println("           Change resizeable mode of <TASK_ID> to one of the following:");
        pw.println("           0: unresizeable");
        pw.println("           1: crop_windows");
        pw.println("           2: resizeable");
        pw.println("           3: resizeable_and_pipable");
        pw.println("       resize <TASK_ID> <LEFT,TOP,RIGHT,BOTTOM>");
        pw.println("           Makes sure <TASK_ID> is in a stack with the specified bounds.");
        pw.println("           Forces the task to be resizeable and creates a stack if no existing stack");
        pw.println("           has the specified bounds.");
        pw.println("  update-appinfo <USER_ID> <PACKAGE_NAME> [<PACKAGE_NAME>...]");
        pw.println("      Update the ApplicationInfo objects of the listed packages for <USER_ID>");
        pw.println("      without restarting any processes.");
        pw.println("  write");
        pw.println("      Write all pending state to storage.");
        pw.println("  compat [COMMAND] [...]: sub-commands for toggling app-compat changes.");
        pw.println("         enable|disable|reset <CHANGE_ID|CHANGE_NAME> <PACKAGE_NAME>");
        pw.println("            Toggles a change either by id or by name for <PACKAGE_NAME>.");
        pw.println("            It kills <PACKAGE_NAME> (to allow the toggle to take effect).");
        pw.println("         enable-all|disable-all <targetSdkVersion> <PACKAGE_NAME");
        pw.println("            Toggles all changes that are gated by <targetSdkVersion>.");
        pw.println("         reset-all <PACKAGE_NAME>");
        pw.println("            Removes all existing overrides for all changes for ");
        pw.println("            <PACKAGE_NAME> (back to default behaviour).");
        pw.println("            It kills <PACKAGE_NAME> (to allow the toggle to take effect).");
        pw.println();
        pw.println("##################### Mega Porting cmd start #####################");
        pw.println("  get-process-record-frozen-state <pid>");
        pw.println("         get the process record frozen state for process pid.");
        pw.println("##################### Mega Porting cmd end #####################");
        pw.println();
        Intent.printIntentArgsHelp(pw, "");
    }

    int getProcessRecordFrozenState(PrintWriter pw) throws RemoteException {
        int frozenState = this.mInternal.getProcessRecordFrozenState(Integer.parseInt(getNextArgRequired()), SHELL_PACKAGE_NAME);
        pw.print(frozenState);
        pw.print(" (");
        pw.printf(DebugUtils.valueToString(ActivityManager.class, "PROCESS_RECORD_", frozenState), new Object[0]);
        pw.println(")");
        return 0;
    }
}

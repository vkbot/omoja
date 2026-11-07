package com.android.server.job;

import android.app.ActivityManager;
import android.app.AppGlobals;
import android.content.pm.IPackageManager;
import android.os.BasicShellCommandHandler;
import android.os.Binder;
import android.os.UserHandle;
import com.android.server.usb.descriptors.UsbACInterface;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public final class JobSchedulerShellCommand extends BasicShellCommandHandler {
    public static final int CMD_ERR_CONSTRAINTS = -1002;
    public static final int CMD_ERR_NO_JOB = -1001;
    public static final int CMD_ERR_NO_PACKAGE = -1000;
    JobSchedulerService mInternal;
    IPackageManager mPM = AppGlobals.getPackageManager();

    JobSchedulerShellCommand(JobSchedulerService service) {
        this.mInternal = service;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:8:0x0012  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public int onCommand(String cmd) {
        byte b;
        PrintWriter pw = getOutPrintWriter();
        String str = cmd != null ? cmd : "";
        try {
            switch (str.hashCode()) {
                case -1894245460:
                    b = !str.equals("trigger-dock-state") ? (byte) -1 : UsbACInterface.ACI_SAMPLE_RATE_CONVERTER;
                    break;
                case -1845752298:
                    if (str.equals("get-storage-seq")) {
                        b = 7;
                    }
                    break;
                case -1687551032:
                    if (str.equals("get-battery-charging")) {
                        b = 5;
                    }
                    break;
                case -1367724422:
                    if (str.equals("cancel")) {
                        b = 2;
                    }
                    break;
                case -1313911455:
                    if (str.equals("timeout")) {
                        b = 1;
                    }
                    break;
                case 113291:
                    if (str.equals("run")) {
                        b = 0;
                    }
                    break;
                case 55361425:
                    if (str.equals("get-storage-not-low")) {
                        b = 8;
                    }
                    break;
                case 200896764:
                    if (str.equals("heartbeat")) {
                        b = 10;
                    }
                    break;
                case 703160488:
                    if (str.equals("get-battery-seq")) {
                        b = 4;
                    }
                    break;
                case 826231557:
                    if (str.equals("reset-execution-quota")) {
                        b = 11;
                    }
                    break;
                case 859357184:
                    if (str.equals("reset-schedule-quota")) {
                        b = 12;
                    }
                    break;
                case 1749711139:
                    if (str.equals("get-battery-not-low")) {
                        b = 6;
                    }
                    break;
                case 1791471818:
                    if (str.equals("get-job-state")) {
                        b = 9;
                    }
                    break;
                case 1854493850:
                    if (str.equals("monitor-battery")) {
                        b = 3;
                    }
                    break;
                default:
                    break;
            }
            switch (b) {
                case 0:
                    return runJob(pw);
                case 1:
                    return timeout(pw);
                case 2:
                    return cancelJob(pw);
                case 3:
                    return monitorBattery(pw);
                case 4:
                    return getBatterySeq(pw);
                case 5:
                    return getBatteryCharging(pw);
                case 6:
                    return getBatteryNotLow(pw);
                case 7:
                    return getStorageSeq(pw);
                case 8:
                    return getStorageNotLow(pw);
                case 9:
                    return getJobState(pw);
                case 10:
                    return doHeartbeat(pw);
                case 11:
                    return resetExecutionQuota(pw);
                case 12:
                    return resetScheduleQuota(pw);
                case 13:
                    return triggerDockState(pw);
                default:
                    return handleDefaultCommands(cmd);
            }
        } catch (Exception e) {
            pw.println("Exception: " + e);
            return -1;
        }
    }

    private void checkPermission(String operation) throws Exception {
        int uid = Binder.getCallingUid();
        if (uid == 0) {
            return;
        }
        int perm = this.mPM.checkUidPermission("android.permission.CHANGE_APP_IDLE_STATE", uid);
        if (perm != 0) {
            throw new SecurityException("Uid " + uid + " not permitted to " + operation);
        }
    }

    private boolean printError(int errCode, String pkgName, int userId, int jobId) {
        switch (errCode) {
            case CMD_ERR_CONSTRAINTS /* -1002 */:
                PrintWriter pw = getErrPrintWriter();
                pw.print("Job ");
                pw.print(jobId);
                pw.print(" in package ");
                pw.print(pkgName);
                pw.print(" / user ");
                pw.print(userId);
                pw.println(" has functional constraints but --force not specified");
                return true;
            case CMD_ERR_NO_JOB /* -1001 */:
                PrintWriter pw2 = getErrPrintWriter();
                pw2.print("Could not find job ");
                pw2.print(jobId);
                pw2.print(" in package ");
                pw2.print(pkgName);
                pw2.print(" / user ");
                pw2.println(userId);
                return true;
            case CMD_ERR_NO_PACKAGE /* -1000 */:
                PrintWriter pw3 = getErrPrintWriter();
                pw3.print("Package not found: ");
                pw3.print(pkgName);
                pw3.print(" / user ");
                pw3.println(userId);
                return true;
            default:
                return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0071  */
    private int runJob(PrintWriter pw) throws Exception {
        byte b;
        checkPermission("force scheduled jobs");
        boolean force = false;
        boolean satisfied = false;
        int userId = 0;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                int iHashCode = opt.hashCode();
                if (iHashCode != -1626076853) {
                    if (iHashCode != -969907566) {
                        if (iHashCode != 1497) {
                            if (iHashCode != 1510) {
                                if (iHashCode != 1512) {
                                    if (iHashCode == 1333469547 && opt.equals("--user")) {
                                        b = 5;
                                    } else {
                                        b = -1;
                                    }
                                } else if (opt.equals("-u")) {
                                    b = 4;
                                } else {
                                    b = -1;
                                }
                            } else if (opt.equals("-s")) {
                                b = 2;
                            } else {
                                b = -1;
                            }
                        } else if (opt.equals("-f")) {
                            b = 0;
                        } else {
                            b = -1;
                        }
                    } else if (opt.equals("--satisfied")) {
                        b = 3;
                    } else {
                        b = -1;
                    }
                } else if (opt.equals("--force")) {
                    b = 1;
                } else {
                    b = -1;
                }
                if (b == 0 || b == 1) {
                    force = true;
                } else if (b == 2 || b == 3) {
                    satisfied = true;
                } else if (b == 4 || b == 5) {
                    userId = Integer.parseInt(getNextArgRequired());
                } else {
                    pw.println("Error: unknown option '" + opt + "'");
                    return -1;
                }
            } else {
                if (force && satisfied) {
                    pw.println("Cannot specify both --force and --satisfied");
                    return -1;
                }
                String pkgName = getNextArgRequired();
                int jobId = Integer.parseInt(getNextArgRequired());
                long ident = Binder.clearCallingIdentity();
                try {
                    int ret = this.mInternal.executeRunCommand(pkgName, userId, jobId, satisfied, force);
                    if (printError(ret, pkgName, userId, jobId)) {
                        return ret;
                    }
                    pw.print("Running job");
                    if (force) {
                        pw.print(" [FORCED]");
                    }
                    pw.println();
                    return ret;
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0033  */
    private int timeout(PrintWriter pw) throws Exception {
        int userId;
        checkPermission("force timeout jobs");
        int userId2 = -1;
        while (true) {
            String opt = getNextOption();
            byte b = 0;
            if (opt != null) {
                int iHashCode = opt.hashCode();
                if (iHashCode != 1512) {
                    if (iHashCode == 1333469547 && opt.equals("--user")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                } else if (!opt.equals("-u")) {
                    b = -1;
                }
                if (b == 0 || b == 1) {
                    userId2 = UserHandle.parseUserArg(getNextArgRequired());
                } else {
                    pw.println("Error: unknown option '" + opt + "'");
                    return -1;
                }
            } else {
                if (userId2 != -2) {
                    userId = userId2;
                } else {
                    int userId3 = ActivityManager.getCurrentUser();
                    userId = userId3;
                }
                String pkgName = getNextArg();
                String jobIdStr = getNextArg();
                int jobId = jobIdStr != null ? Integer.parseInt(jobIdStr) : -1;
                long ident = Binder.clearCallingIdentity();
                try {
                    return this.mInternal.executeTimeoutCommand(pw, pkgName, userId, jobIdStr != null, jobId);
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0031  */
    private int cancelJob(PrintWriter pw) throws Exception {
        checkPermission("cancel jobs");
        int userId = 0;
        while (true) {
            String opt = getNextOption();
            byte b = 0;
            if (opt != null) {
                int iHashCode = opt.hashCode();
                if (iHashCode != 1512) {
                    if (iHashCode == 1333469547 && opt.equals("--user")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                } else if (!opt.equals("-u")) {
                    b = -1;
                }
                if (b == 0 || b == 1) {
                    userId = UserHandle.parseUserArg(getNextArgRequired());
                } else {
                    pw.println("Error: unknown option '" + opt + "'");
                    return -1;
                }
            } else {
                if (userId < 0) {
                    pw.println("Error: must specify a concrete user ID");
                    return -1;
                }
                String pkgName = getNextArg();
                String jobIdStr = getNextArg();
                int jobId = jobIdStr != null ? Integer.parseInt(jobIdStr) : -1;
                long ident = Binder.clearCallingIdentity();
                try {
                    return this.mInternal.executeCancelCommand(pw, pkgName, userId, jobIdStr != null, jobId);
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
        }
    }

    private int monitorBattery(PrintWriter pw) throws Exception {
        boolean enabled;
        checkPermission("change battery monitoring");
        String opt = getNextArgRequired();
        if ("on".equals(opt)) {
            enabled = true;
        } else if ("off".equals(opt)) {
            enabled = false;
        } else {
            getErrPrintWriter().println("Error: unknown option " + opt);
            return 1;
        }
        long ident = Binder.clearCallingIdentity();
        try {
            this.mInternal.setMonitorBattery(enabled);
            if (enabled) {
                pw.println("Battery monitoring enabled");
            } else {
                pw.println("Battery monitoring disabled");
            }
            return 0;
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    private int getBatterySeq(PrintWriter pw) {
        int seq = this.mInternal.getBatterySeq();
        pw.println(seq);
        return 0;
    }

    private int getBatteryCharging(PrintWriter pw) {
        boolean val = this.mInternal.getBatteryCharging();
        pw.println(val);
        return 0;
    }

    private int getBatteryNotLow(PrintWriter pw) {
        boolean val = this.mInternal.getBatteryNotLow();
        pw.println(val);
        return 0;
    }

    private int getStorageSeq(PrintWriter pw) {
        int seq = this.mInternal.getStorageSeq();
        pw.println(seq);
        return 0;
    }

    private int getStorageNotLow(PrintWriter pw) {
        boolean val = this.mInternal.getStorageNotLow();
        pw.println(val);
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0031  */
    private int getJobState(PrintWriter pw) throws Exception {
        byte b;
        checkPermission("force timeout jobs");
        int userId = 0;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                int iHashCode = opt.hashCode();
                if (iHashCode != 1512) {
                    if (iHashCode == 1333469547 && opt.equals("--user")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                } else if (opt.equals("-u")) {
                    b = 0;
                } else {
                    b = -1;
                }
                if (b == 0 || b == 1) {
                    userId = UserHandle.parseUserArg(getNextArgRequired());
                } else {
                    pw.println("Error: unknown option '" + opt + "'");
                    return -1;
                }
            } else {
                if (userId == -2) {
                    userId = ActivityManager.getCurrentUser();
                }
                String pkgName = getNextArgRequired();
                String jobIdStr = getNextArgRequired();
                int jobId = Integer.parseInt(jobIdStr);
                long ident = Binder.clearCallingIdentity();
                try {
                    int ret = this.mInternal.getJobState(pw, pkgName, userId, jobId);
                    printError(ret, pkgName, userId, jobId);
                    return ret;
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
        }
    }

    private int doHeartbeat(PrintWriter pw) throws Exception {
        checkPermission("manipulate scheduler heartbeat");
        pw.println("Heartbeat command is no longer supported");
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0032  */
    private int resetExecutionQuota(PrintWriter pw) throws Exception {
        checkPermission("reset execution quota");
        int userId = 0;
        while (true) {
            String opt = getNextOption();
            byte b = 0;
            if (opt != null) {
                int iHashCode = opt.hashCode();
                if (iHashCode != 1512) {
                    if (iHashCode == 1333469547 && opt.equals("--user")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                } else if (!opt.equals("-u")) {
                    b = -1;
                }
                if (b == 0 || b == 1) {
                    userId = UserHandle.parseUserArg(getNextArgRequired());
                } else {
                    pw.println("Error: unknown option '" + opt + "'");
                    return -1;
                }
            } else {
                if (userId == -2) {
                    userId = ActivityManager.getCurrentUser();
                }
                String pkgName = getNextArgRequired();
                long ident = Binder.clearCallingIdentity();
                try {
                    this.mInternal.resetExecutionQuota(pkgName, userId);
                    return 0;
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
        }
    }

    private int resetScheduleQuota(PrintWriter pw) throws Exception {
        checkPermission("reset schedule quota");
        long ident = Binder.clearCallingIdentity();
        try {
            this.mInternal.resetScheduleQuota();
            return 0;
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    private int triggerDockState(PrintWriter pw) throws Exception {
        boolean idleState;
        checkPermission("trigger wireless charging dock state");
        String opt = getNextArgRequired();
        if ("idle".equals(opt)) {
            idleState = true;
        } else if ("active".equals(opt)) {
            idleState = false;
        } else {
            getErrPrintWriter().println("Error: unknown option " + opt);
            return 1;
        }
        long ident = Binder.clearCallingIdentity();
        try {
            this.mInternal.triggerDockState(idleState);
            return 0;
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("Job scheduler (jobscheduler) commands:");
        pw.println("  help");
        pw.println("    Print this help text.");
        pw.println("  run [-f | --force] [-s | --satisfied] [-u | --user USER_ID] PACKAGE JOB_ID");
        pw.println("    Trigger immediate execution of a specific scheduled job. For historical");
        pw.println("    reasons, some constraints, such as battery, are ignored when this");
        pw.println("    command is called. If you don't want any constraints to be ignored,");
        pw.println("    include the -s flag.");
        pw.println("    Options:");
        pw.println("      -f or --force: run the job even if technical constraints such as");
        pw.println("         connectivity are not currently met. This is incompatible with -f ");
        pw.println("         and so an error will be reported if both are given.");
        pw.println("      -s or --satisfied: run the job only if all constraints are met.");
        pw.println("         This is incompatible with -f and so an error will be reported");
        pw.println("         if both are given.");
        pw.println("      -u or --user: specify which user's job is to be run; the default is");
        pw.println("         the primary or system user");
        pw.println("  timeout [-u | --user USER_ID] [PACKAGE] [JOB_ID]");
        pw.println("    Trigger immediate timeout of currently executing jobs, as if their.");
        pw.println("    execution timeout had expired.");
        pw.println("    Options:");
        pw.println("      -u or --user: specify which user's job is to be run; the default is");
        pw.println("         all users");
        pw.println("  cancel [-u | --user USER_ID] PACKAGE [JOB_ID]");
        pw.println("    Cancel a scheduled job.  If a job ID is not supplied, all jobs scheduled");
        pw.println("    by that package will be canceled.  USE WITH CAUTION.");
        pw.println("    Options:");
        pw.println("      -u or --user: specify which user's job is to be run; the default is");
        pw.println("         the primary or system user");
        pw.println("  heartbeat [num]");
        pw.println("    No longer used.");
        pw.println("  monitor-battery [on|off]");
        pw.println("    Control monitoring of all battery changes.  Off by default.  Turning");
        pw.println("    on makes get-battery-seq useful.");
        pw.println("  get-battery-seq");
        pw.println("    Return the last battery update sequence number that was received.");
        pw.println("  get-battery-charging");
        pw.println("    Return whether the battery is currently considered to be charging.");
        pw.println("  get-battery-not-low");
        pw.println("    Return whether the battery is currently considered to not be low.");
        pw.println("  get-storage-seq");
        pw.println("    Return the last storage update sequence number that was received.");
        pw.println("  get-storage-not-low");
        pw.println("    Return whether storage is currently considered to not be low.");
        pw.println("  get-job-state [-u | --user USER_ID] PACKAGE JOB_ID");
        pw.println("    Return the current state of a job, may be any combination of:");
        pw.println("      pending: currently on the pending list, waiting to be active");
        pw.println("      active: job is actively running");
        pw.println("      user-stopped: job can't run because its user is stopped");
        pw.println("      backing-up: job can't run because app is currently backing up its data");
        pw.println("      no-component: job can't run because its component is not available");
        pw.println("      ready: job is ready to run (all constraints satisfied or bypassed)");
        pw.println("      waiting: if nothing else above is printed, job not ready to run");
        pw.println("    Options:");
        pw.println("      -u or --user: specify which user's job is to be run; the default is");
        pw.println("         the primary or system user");
        pw.println("  trigger-dock-state [idle|active]");
        pw.println("    Trigger wireless charging dock state.  Active by default.");
        pw.println();
    }
}

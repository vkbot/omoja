package com.android.server.autofill;

import android.os.Bundle;
import android.os.RemoteCallback;
import android.os.ShellCommand;
import android.os.UserHandle;
import android.service.autofill.AutofillFieldClassificationService;
import com.android.internal.os.IResultReceiver;
import com.android.server.BatteryService;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class AutofillManagerServiceShellCommand extends ShellCommand {
    private final AutofillManagerService mService;

    public AutofillManagerServiceShellCommand(AutofillManagerService service) {
        this.mService = service;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public int onCommand(String cmd) {
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        PrintWriter pw = getOutPrintWriter();
        byte b = -1;
        switch (cmd.hashCode()) {
            case 102230:
                if (cmd.equals("get")) {
                    b = 3;
                }
                break;
            case 113762:
                if (cmd.equals("set")) {
                    b = 4;
                }
                break;
            case 3322014:
                if (cmd.equals("list")) {
                    b = 0;
                }
                break;
            case 108404047:
                if (cmd.equals("reset")) {
                    b = 2;
                }
                break;
            case 1557372922:
                if (cmd.equals("destroy")) {
                    b = 1;
                }
                break;
        }
        if (b == 0) {
            return requestList(pw);
        }
        if (b == 1) {
            return requestDestroy(pw);
        }
        if (b == 2) {
            return requestReset();
        }
        if (b == 3) {
            return requestGet(pw);
        }
        if (b == 4) {
            return requestSet(pw);
        }
        return handleDefaultCommands(cmd);
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        try {
            pw.println("AutoFill Service (autofill) commands:");
            pw.println("  help");
            pw.println("    Prints this help text.");
            pw.println("");
            pw.println("  get log_level ");
            pw.println("    Gets the Autofill log level (off | debug | verbose).");
            pw.println("");
            pw.println("  get max_partitions");
            pw.println("    Gets the maximum number of partitions per session.");
            pw.println("");
            pw.println("  get max_visible_datasets");
            pw.println("    Gets the maximum number of visible datasets in the UI.");
            pw.println("");
            pw.println("  get full_screen_mode");
            pw.println("    Gets the Fill UI full screen mode");
            pw.println("");
            pw.println("  get fc_score [--algorithm ALGORITHM] value1 value2");
            pw.println("    Gets the field classification score for 2 fields.");
            pw.println("");
            pw.println("  get bind-instant-service-allowed");
            pw.println("    Gets whether binding to services provided by instant apps is allowed");
            pw.println("");
            pw.println("  set log_level [off | debug | verbose]");
            pw.println("    Sets the Autofill log level.");
            pw.println("");
            pw.println("  set max_partitions number");
            pw.println("    Sets the maximum number of partitions per session.");
            pw.println("");
            pw.println("  set max_visible_datasets number");
            pw.println("    Sets the maximum number of visible datasets in the UI.");
            pw.println("");
            pw.println("  set full_screen_mode [true | false | default]");
            pw.println("    Sets the Fill UI full screen mode");
            pw.println("");
            pw.println("  set bind-instant-service-allowed [true | false]");
            pw.println("    Sets whether binding to services provided by instant apps is allowed");
            pw.println("");
            pw.println("  set temporary-augmented-service USER_ID [COMPONENT_NAME DURATION]");
            pw.println("    Temporarily (for DURATION ms) changes the augmented autofill service implementation.");
            pw.println("    To reset, call with just the USER_ID argument.");
            pw.println("");
            pw.println("  set default-augmented-service-enabled USER_ID [true|false]");
            pw.println("    Enable / disable the default augmented autofill service for the user.");
            pw.println("");
            pw.println("  get default-augmented-service-enabled USER_ID");
            pw.println("    Checks whether the default augmented autofill service is enabled for the user.");
            pw.println("");
            pw.println("  list sessions [--user USER_ID]");
            pw.println("    Lists all pending sessions.");
            pw.println("");
            pw.println("  destroy sessions [--user USER_ID]");
            pw.println("    Destroys all pending sessions.");
            pw.println("");
            pw.println("  reset");
            pw.println("    Resets all pending sessions and cached service connections.");
            pw.println("");
            if (pw != null) {
                pw.close();
            }
        } catch (Throwable th) {
            if (pw != null) {
                try {
                    pw.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private int requestGet(PrintWriter pw) {
        String what = getNextArgRequired();
        switch (what) {
            case "log_level":
                return getLogLevel(pw);
            case "max_partitions":
                return getMaxPartitions(pw);
            case "max_visible_datasets":
                return getMaxVisibileDatasets(pw);
            case "fc_score":
                return getFieldClassificationScore(pw);
            case "full_screen_mode":
                return getFullScreenMode(pw);
            case "bind-instant-service-allowed":
                return getBindInstantService(pw);
            case "default-augmented-service-enabled":
                return getDefaultAugmentedServiceEnabled(pw);
            default:
                pw.println("Invalid set: " + what);
                return -1;
        }
    }

    private int requestSet(PrintWriter pw) {
        String what = getNextArgRequired();
        switch (what) {
            case "log_level":
                return setLogLevel(pw);
            case "max_partitions":
                return setMaxPartitions();
            case "max_visible_datasets":
                return setMaxVisibileDatasets();
            case "full_screen_mode":
                return setFullScreenMode(pw);
            case "bind-instant-service-allowed":
                return setBindInstantService(pw);
            case "temporary-augmented-service":
                return setTemporaryAugmentedService(pw);
            case "default-augmented-service-enabled":
                return setDefaultAugmentedServiceEnabled(pw);
            default:
                pw.println("Invalid set: " + what);
                return -1;
        }
    }

    private int getLogLevel(PrintWriter pw) {
        int logLevel = this.mService.getLogLevel();
        if (logLevel == 0) {
            pw.println("off");
            return 0;
        }
        if (logLevel == 2) {
            pw.println("debug");
            return 0;
        }
        if (logLevel == 4) {
            pw.println("verbose");
            return 0;
        }
        pw.println("unknow (" + logLevel + ")");
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    private int setLogLevel(PrintWriter pw) {
        byte b;
        String logLevel = getNextArgRequired();
        String lowerCase = logLevel.toLowerCase();
        int iHashCode = lowerCase.hashCode();
        if (iHashCode != 109935) {
            if (iHashCode != 95458899) {
                if (iHashCode == 351107458 && lowerCase.equals("verbose")) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (lowerCase.equals("debug")) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (lowerCase.equals("off")) {
            b = 2;
        } else {
            b = -1;
        }
        if (b == 0) {
            this.mService.setLogLevel(4);
            return 0;
        }
        if (b == 1) {
            this.mService.setLogLevel(2);
            return 0;
        }
        if (b == 2) {
            this.mService.setLogLevel(0);
            return 0;
        }
        pw.println("Invalid level: " + logLevel);
        return -1;
    }

    private int getMaxPartitions(PrintWriter pw) {
        pw.println(this.mService.getMaxPartitions());
        return 0;
    }

    private int setMaxPartitions() {
        this.mService.setMaxPartitions(Integer.parseInt(getNextArgRequired()));
        return 0;
    }

    private int getMaxVisibileDatasets(PrintWriter pw) {
        pw.println(this.mService.getMaxVisibleDatasets());
        return 0;
    }

    private int setMaxVisibileDatasets() {
        this.mService.setMaxVisibleDatasets(Integer.parseInt(getNextArgRequired()));
        return 0;
    }

    private int getFieldClassificationScore(final PrintWriter pw) {
        String algorithm;
        String value1;
        String nextArg = getNextArgRequired();
        if ("--algorithm".equals(nextArg)) {
            algorithm = getNextArgRequired();
            value1 = getNextArgRequired();
        } else {
            algorithm = null;
            value1 = nextArg;
        }
        String value2 = getNextArgRequired();
        final CountDownLatch latch = new CountDownLatch(1);
        this.mService.calculateScore(algorithm, value1, value2, new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.autofill.-$$Lambda$AutofillManagerServiceShellCommand$3WCRplTGFh_xsmb8tmAG8x-Pn5A
            public final void onResult(Bundle bundle) {
                AutofillManagerServiceShellCommand.lambda$getFieldClassificationScore$0(pw, latch, bundle);
            }
        }));
        return waitForLatch(pw, latch);
    }

    static /* synthetic */ void lambda$getFieldClassificationScore$0(PrintWriter pw, CountDownLatch latch, Bundle result) {
        AutofillFieldClassificationService.Scores scores = result.getParcelable("scores");
        if (scores == null) {
            pw.println("no score");
        } else {
            pw.println(scores.scores[0][0]);
        }
        latch.countDown();
    }

    private int getFullScreenMode(PrintWriter pw) {
        Boolean mode = this.mService.getFullScreenMode();
        if (mode == null) {
            pw.println(BatteryService.HealthServiceWrapper.INSTANCE_VENDOR);
            return 0;
        }
        if (mode.booleanValue()) {
            pw.println("true");
            return 0;
        }
        pw.println("false");
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003f  */
    private int setFullScreenMode(PrintWriter pw) {
        byte b;
        String mode = getNextArgRequired();
        String lowerCase = mode.toLowerCase();
        int iHashCode = lowerCase.hashCode();
        if (iHashCode != 3569038) {
            if (iHashCode != 97196323) {
                if (iHashCode == 1544803905 && lowerCase.equals(BatteryService.HealthServiceWrapper.INSTANCE_VENDOR)) {
                    b = 2;
                } else {
                    b = -1;
                }
            } else if (lowerCase.equals("false")) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (lowerCase.equals("true")) {
            b = 0;
        } else {
            b = -1;
        }
        if (b == 0) {
            this.mService.setFullScreenMode(Boolean.TRUE);
            return 0;
        }
        if (b == 1) {
            this.mService.setFullScreenMode(Boolean.FALSE);
            return 0;
        }
        if (b == 2) {
            this.mService.setFullScreenMode(null);
            return 0;
        }
        pw.println("Invalid mode: " + mode);
        return -1;
    }

    private int getBindInstantService(PrintWriter pw) {
        if (this.mService.getAllowInstantService()) {
            pw.println("true");
            return 0;
        }
        pw.println("false");
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002f  */
    private int setBindInstantService(PrintWriter pw) {
        byte b;
        String mode = getNextArgRequired();
        String lowerCase = mode.toLowerCase();
        int iHashCode = lowerCase.hashCode();
        if (iHashCode != 3569038) {
            if (iHashCode == 97196323 && lowerCase.equals("false")) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (lowerCase.equals("true")) {
            b = 0;
        } else {
            b = -1;
        }
        if (b == 0) {
            this.mService.setAllowInstantService(true);
            return 0;
        }
        if (b == 1) {
            this.mService.setAllowInstantService(false);
            return 0;
        }
        pw.println("Invalid mode: " + mode);
        return -1;
    }

    private int setTemporaryAugmentedService(PrintWriter pw) {
        int userId = getNextIntArgRequired();
        String serviceName = getNextArg();
        if (serviceName == null) {
            this.mService.resetTemporaryAugmentedAutofillService(userId);
            return 0;
        }
        int duration = getNextIntArgRequired();
        this.mService.setTemporaryAugmentedAutofillService(userId, serviceName, duration);
        pw.println("AugmentedAutofillService temporarily set to " + serviceName + " for " + duration + "ms");
        return 0;
    }

    private int getDefaultAugmentedServiceEnabled(PrintWriter pw) {
        int userId = getNextIntArgRequired();
        boolean enabled = this.mService.isDefaultAugmentedServiceEnabled(userId);
        pw.println(enabled);
        return 0;
    }

    private int setDefaultAugmentedServiceEnabled(PrintWriter pw) {
        int userId = getNextIntArgRequired();
        boolean enabled = Boolean.parseBoolean(getNextArgRequired());
        boolean changed = this.mService.setDefaultAugmentedServiceEnabled(userId, enabled);
        if (!changed) {
            pw.println("already " + enabled);
            return 0;
        }
        return 0;
    }

    private int requestDestroy(PrintWriter pw) {
        if (!isNextArgSessions(pw)) {
            return -1;
        }
        final int userId = getUserIdFromArgsOrAllUsers();
        final CountDownLatch latch = new CountDownLatch(1);
        final IResultReceiver.Stub stub = new IResultReceiver.Stub() { // from class: com.android.server.autofill.AutofillManagerServiceShellCommand.1
            public void send(int resultCode, Bundle resultData) {
                latch.countDown();
            }
        };
        return requestSessionCommon(pw, latch, new Runnable() { // from class: com.android.server.autofill.-$$Lambda$AutofillManagerServiceShellCommand$ww56nbkJspkRdVJ0yMdT4sroSiY
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$requestDestroy$1$AutofillManagerServiceShellCommand(userId, stub);
            }
        });
    }

    public /* synthetic */ void lambda$requestDestroy$1$AutofillManagerServiceShellCommand(int userId, IResultReceiver receiver) {
        this.mService.destroySessions(userId, receiver);
    }

    private int requestList(final PrintWriter pw) {
        if (!isNextArgSessions(pw)) {
            return -1;
        }
        final int userId = getUserIdFromArgsOrAllUsers();
        final CountDownLatch latch = new CountDownLatch(1);
        final IResultReceiver.Stub stub = new IResultReceiver.Stub() { // from class: com.android.server.autofill.AutofillManagerServiceShellCommand.2
            public void send(int resultCode, Bundle resultData) {
                ArrayList<String> sessions = resultData.getStringArrayList("sessions");
                for (String session : sessions) {
                    pw.println(session);
                }
                latch.countDown();
            }
        };
        return requestSessionCommon(pw, latch, new Runnable() { // from class: com.android.server.autofill.-$$Lambda$AutofillManagerServiceShellCommand$WrWpLlZPawytZji8-6Dx9_p70Dw
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$requestList$2$AutofillManagerServiceShellCommand(userId, stub);
            }
        });
    }

    public /* synthetic */ void lambda$requestList$2$AutofillManagerServiceShellCommand(int userId, IResultReceiver receiver) {
        this.mService.listSessions(userId, receiver);
    }

    private boolean isNextArgSessions(PrintWriter pw) {
        String type = getNextArgRequired();
        if (!type.equals("sessions")) {
            pw.println("Error: invalid list type");
            return false;
        }
        return true;
    }

    private int requestSessionCommon(PrintWriter pw, CountDownLatch latch, Runnable command) {
        command.run();
        return waitForLatch(pw, latch);
    }

    private int waitForLatch(PrintWriter pw, CountDownLatch latch) {
        try {
            boolean received = latch.await(5L, TimeUnit.SECONDS);
            if (!received) {
                pw.println("Timed out after 5 seconds");
                return -1;
            }
            return 0;
        } catch (InterruptedException e) {
            pw.println("System call interrupted");
            Thread.currentThread().interrupt();
            return -1;
        }
    }

    private int requestReset() {
        this.mService.reset();
        return 0;
    }

    private int getUserIdFromArgsOrAllUsers() {
        if ("--user".equals(getNextArg())) {
            return UserHandle.parseUserArg(getNextArgRequired());
        }
        return -1;
    }

    private int getNextIntArgRequired() {
        return Integer.parseInt(getNextArgRequired());
    }
}

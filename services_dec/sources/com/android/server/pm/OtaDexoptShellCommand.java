package com.android.server.pm;

import android.content.pm.IOtaDexopt;
import android.os.RemoteException;
import android.os.ShellCommand;
import java.io.PrintWriter;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
class OtaDexoptShellCommand extends ShellCommand {
    final IOtaDexopt mInterface;

    OtaDexoptShellCommand(OtaDexoptService service) {
        this.mInterface = service;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:8:0x0019  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public int onCommand(String cmd) {
        byte b;
        if (cmd == null) {
            return handleDefaultCommands(null);
        }
        PrintWriter pw = getOutPrintWriter();
        try {
            switch (cmd.hashCode()) {
                case -1001078227:
                    b = !cmd.equals("progress") ? (byte) -1 : (byte) 5;
                    break;
                case -318370553:
                    if (cmd.equals("prepare")) {
                        b = 0;
                    }
                    break;
                case 3089282:
                    if (cmd.equals("done")) {
                        b = 2;
                    }
                    break;
                case 3377907:
                    if (cmd.equals("next")) {
                        b = 4;
                    }
                    break;
                case 3540684:
                    if (cmd.equals("step")) {
                        b = 3;
                    }
                    break;
                case 856774308:
                    if (cmd.equals("cleanup")) {
                        b = 1;
                    }
                    break;
                default:
                    break;
            }
            if (b == 0) {
                return runOtaPrepare();
            }
            if (b == 1) {
                return runOtaCleanup();
            }
            if (b == 2) {
                return runOtaDone();
            }
            if (b == 3) {
                return runOtaStep();
            }
            if (b == 4) {
                return runOtaNext();
            }
            if (b == 5) {
                return runOtaProgress();
            }
            return handleDefaultCommands(cmd);
        } catch (RemoteException e) {
            pw.println("Remote exception: " + e);
            return -1;
        }
    }

    private int runOtaPrepare() throws RemoteException {
        this.mInterface.prepare();
        getOutPrintWriter().println("Success");
        return 0;
    }

    private int runOtaCleanup() throws RemoteException {
        this.mInterface.cleanup();
        return 0;
    }

    private int runOtaDone() throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        if (this.mInterface.isDone()) {
            pw.println("OTA complete.");
            return 0;
        }
        pw.println("OTA incomplete.");
        return 0;
    }

    private int runOtaStep() throws RemoteException {
        this.mInterface.dexoptNextPackage();
        return 0;
    }

    private int runOtaNext() throws RemoteException {
        getOutPrintWriter().println(this.mInterface.nextDexoptCommand());
        return 0;
    }

    private int runOtaProgress() throws RemoteException {
        float progress = this.mInterface.getProgress();
        PrintWriter pw = getOutPrintWriter();
        pw.format(Locale.ROOT, "%.2f", Float.valueOf(progress));
        return 0;
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("OTA Dexopt (ota) commands:");
        pw.println("  help");
        pw.println("    Print this help text.");
        pw.println("");
        pw.println("  prepare");
        pw.println("    Prepare an OTA dexopt pass, collecting all packages.");
        pw.println("  done");
        pw.println("    Replies whether the OTA is complete or not.");
        pw.println("  step");
        pw.println("    OTA dexopt the next package.");
        pw.println("  next");
        pw.println("    Get parameters for OTA dexopt of the next package.");
        pw.println("  cleanup");
        pw.println("    Clean up internal states. Ends an OTA session.");
    }
}

package com.android.server.appprediction;

import android.os.ShellCommand;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class AppPredictionManagerServiceShellCommand extends ShellCommand {
    private static final String TAG = AppPredictionManagerServiceShellCommand.class.getSimpleName();
    private final AppPredictionManagerService mService;

    public AppPredictionManagerServiceShellCommand(AppPredictionManagerService service) {
        this.mService = service;
    }

    public int onCommand(String cmd) {
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        PrintWriter pw = getOutPrintWriter();
        byte b = -1;
        if (((cmd.hashCode() == 113762 && cmd.equals("set")) ? (byte) 0 : (byte) -1) == 0) {
            String what = getNextArgRequired();
            if (what.hashCode() == 2003978041 && what.equals("temporary-service")) {
                b = 0;
            }
            if (b == 0) {
                int userId = Integer.parseInt(getNextArgRequired());
                String serviceName = getNextArg();
                if (serviceName == null) {
                    this.mService.resetTemporaryService(userId);
                    return 0;
                }
                int duration = Integer.parseInt(getNextArgRequired());
                this.mService.setTemporaryService(userId, serviceName, duration);
                pw.println("AppPredictionService temporarily set to " + serviceName + " for " + duration + "ms");
            }
            return 0;
        }
        return handleDefaultCommands(cmd);
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        try {
            pw.println("AppPredictionManagerService commands:");
            pw.println("  help");
            pw.println("    Prints this help text.");
            pw.println("");
            pw.println("  set temporary-service USER_ID [COMPONENT_NAME DURATION]");
            pw.println("    Temporarily (for DURATION ms) changes the service implemtation.");
            pw.println("    To reset, call with just the USER_ID argument.");
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
}

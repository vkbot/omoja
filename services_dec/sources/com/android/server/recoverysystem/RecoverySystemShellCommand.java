package com.android.server.recoverysystem;

import android.content.IntentSender;
import android.os.IRecoverySystem;
import android.os.RemoteException;
import android.os.ShellCommand;
import com.android.server.content.SyncStorageEngine;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class RecoverySystemShellCommand extends ShellCommand {
    private final IRecoverySystem mService;

    public RecoverySystemShellCommand(RecoverySystemService service) {
        this.mService = service;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001d  */
    public int onCommand(String cmd) {
        byte b;
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        try {
            int iHashCode = cmd.hashCode();
            if (iHashCode != -779212638) {
                if (iHashCode != 1256867232) {
                    b = (iHashCode == 1405182928 && cmd.equals("reboot-and-apply")) ? (byte) 2 : (byte) -1;
                } else if (cmd.equals("request-lskf")) {
                    b = 0;
                }
            } else if (cmd.equals("clear-lskf")) {
                b = 1;
            }
            if (b == 0) {
                return requestLskf();
            }
            if (b == 1) {
                return clearLskf();
            }
            if (b == 2) {
                return rebootAndApply();
            }
            return handleDefaultCommands(cmd);
        } catch (Exception e) {
            getErrPrintWriter().println("Error while executing command: " + cmd);
            e.printStackTrace(getErrPrintWriter());
            return -1;
        }
    }

    private int requestLskf() throws RemoteException {
        String updateToken = getNextArgRequired();
        boolean success = this.mService.requestLskf(updateToken, (IntentSender) null);
        PrintWriter pw = getOutPrintWriter();
        StringBuilder sb = new StringBuilder();
        sb.append("Request LSKF status: ");
        sb.append(success ? SyncStorageEngine.MESG_SUCCESS : "failure");
        pw.println(sb.toString());
        return 0;
    }

    private int clearLskf() throws RemoteException {
        boolean success = this.mService.clearLskf();
        PrintWriter pw = getOutPrintWriter();
        StringBuilder sb = new StringBuilder();
        sb.append("Clear LSKF: ");
        sb.append(success ? SyncStorageEngine.MESG_SUCCESS : "failure");
        pw.println(sb.toString());
        return 0;
    }

    private int rebootAndApply() throws RemoteException {
        String updateToken = getNextArgRequired();
        String rebootReason = getNextArgRequired();
        boolean success = this.mService.rebootWithLskf(updateToken, rebootReason);
        PrintWriter pw = getOutPrintWriter();
        StringBuilder sb = new StringBuilder();
        sb.append("Reboot and apply status: ");
        sb.append(success ? SyncStorageEngine.MESG_SUCCESS : "failure");
        pw.println(sb.toString());
        return 0;
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("Recovery system commands:");
        pw.println("  request-lskf <token>");
        pw.println("  clear-lskf");
        pw.println("  reboot-and-apply <token> <reason>");
    }
}

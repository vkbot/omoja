package com.android.server;

import android.content.Context;
import android.os.RemoteException;
import android.os.ShellCommand;
import java.io.PrintWriter;

/* JADX INFO: compiled from: NetworkManagementShellCommand.java */
/* JADX INFO: loaded from: classes.dex */
class NetworkManagerShellCommand extends ShellCommand {
    private final NetworkManagementService mInterface;

    NetworkManagerShellCommand(Context context, NetworkManagementService service) {
        this.mInterface = service;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public int onCommand(String cmd) {
        byte b;
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        PrintWriter pw = getOutPrintWriter();
        try {
            switch (cmd.hashCode()) {
                case 3526671:
                    b = !cmd.equals("set1") ? (byte) -1 : (byte) 0;
                    break;
                case 3526672:
                    if (cmd.equals("set2")) {
                        b = 1;
                    }
                    break;
                default:
                    break;
            }
            if (b == 0) {
                return runSet(1);
            }
            if (b == 1) {
                return runSet(2);
            }
            return handleDefaultCommands(cmd);
        } catch (RemoteException e) {
            pw.println("Remote exception: " + e);
            return -1;
        }
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("Network policy manager (netpolicy) commands:");
        pw.println("  help");
        pw.println("    Print this help text.");
        pw.println("");
        pw.println("  set1 interface UID true/false");
        pw.println("    set if a UID allow to access network through the interface, true means allow, flase means deny");
        pw.println("  set2 interface UID true/false");
        pw.println("    set if a UID binding to the network, true means allow, flase means deny");
    }

    private int runSet(int type) throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        String ifname = getNextArg();
        if (ifname == null) {
            pw.println("Error: didn't specify ifname to set");
            return -1;
        }
        int uid = getUidFromNextArg();
        if (uid == 0) {
            pw.println("Error: didn't specify uid to set");
            return -1;
        }
        int allow = getNextBooleanArg();
        if (allow == -1) {
            pw.println("Error: didn't specify allow to set");
            return -1;
        }
        pw.println("runSet ifname:" + ifname + ", uid:" + uid + ", allow:" + allow);
        if (type == 1) {
            this.mInterface.setFirewallUidInterfaceRule(ifname, uid, allow == 1);
        } else if (type == 2) {
            this.mInterface.setFirewallUidBindingInterface(ifname, uid, allow == 1);
        }
        return 0;
    }

    private int getNextBooleanArg() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        String nextArg = getNextArg();
        if (nextArg != null) {
            return Boolean.valueOf(nextArg).booleanValue() ? 1 : 0;
        }
        outPrintWriter.println("Error: didn't specify BOOLEAN");
        return -1;
    }

    private int getUidFromNextArg() {
        PrintWriter pw = getOutPrintWriter();
        String arg = getNextArg();
        if (arg == null) {
            pw.println("Error: didn't specify UID");
            return -1;
        }
        try {
            return Integer.parseInt(arg);
        } catch (NumberFormatException e) {
            pw.println("Error: UID (" + arg + ") should be a number");
            return -2;
        }
    }
}

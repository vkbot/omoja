package com.android.server.power;

import android.content.Intent;
import android.os.IPowerManager;
import android.os.RemoteException;
import android.os.ShellCommand;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
class PowerManagerShellCommand extends ShellCommand {
    private static final int LOW_POWER_MODE_ON = 1;
    final IPowerManager mInterface;

    PowerManagerShellCommand(IPowerManager service) {
        this.mInterface = service;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0021  */
    public int onCommand(String cmd) {
        byte b;
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        PrintWriter pw = getOutPrintWriter();
        try {
            int iHashCode = cmd.hashCode();
            if (iHashCode != -531688203) {
                if (iHashCode != 1032507032) {
                    b = (iHashCode == 1369181230 && cmd.equals("set-mode")) ? (byte) 1 : (byte) -1;
                } else if (cmd.equals("set-fixed-performance-mode-enabled")) {
                    b = 2;
                }
            } else if (cmd.equals("set-adaptive-power-saver-enabled")) {
                b = 0;
            }
            if (b == 0) {
                return runSetAdaptiveEnabled();
            }
            if (b == 1) {
                return runSetMode();
            }
            if (b == 2) {
                return runSetFixedPerformanceModeEnabled();
            }
            return handleDefaultCommands(cmd);
        } catch (RemoteException e) {
            pw.println("Remote exception: " + e);
            return -1;
        }
    }

    private int runSetAdaptiveEnabled() throws RemoteException {
        this.mInterface.setAdaptivePowerSaveEnabled(Boolean.parseBoolean(getNextArgRequired()));
        return 0;
    }

    private int runSetMode() throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        try {
            int mode = Integer.parseInt(getNextArgRequired());
            this.mInterface.setPowerSaveModeEnabled(mode == 1);
            return 0;
        } catch (RuntimeException ex) {
            pw.println("Error: " + ex.toString());
            return -1;
        }
    }

    private int runSetFixedPerformanceModeEnabled() throws RemoteException {
        boolean success = this.mInterface.setPowerModeChecked(3, Boolean.parseBoolean(getNextArgRequired()));
        if (!success) {
            PrintWriter ew = getErrPrintWriter();
            ew.println("Failed to set FIXED_PERFORMANCE mode");
            ew.println("This is likely because Power HAL AIDL is not implemented on this device");
        }
        return success ? 0 : -1;
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("Power manager (power) commands:");
        pw.println("  help");
        pw.println("    Print this help text.");
        pw.println("");
        pw.println("  set-adaptive-power-saver-enabled [true|false]");
        pw.println("    enables or disables adaptive power saver.");
        pw.println("  set-mode MODE");
        pw.println("    sets the power mode of the device to MODE.");
        pw.println("    1 turns low power mode on and 0 turns low power mode off.");
        pw.println("  set-fixed-performance-mode-enabled [true|false]");
        pw.println("    enables or disables fixed performance mode");
        pw.println("    note: this will affect system performance and should only be used");
        pw.println("          during development");
        pw.println();
        Intent.printIntentArgsHelp(pw, "");
    }
}

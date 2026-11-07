package com.android.server.adb;

import android.os.BasicShellCommandHandler;
import java.io.PrintWriter;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
class AdbShellCommand extends BasicShellCommandHandler {
    private final AdbService mService;

    AdbShellCommand(AdbService service) {
        Objects.requireNonNull(service);
        this.mService = service;
    }

    public int onCommand(String cmd) {
        if (cmd == null) {
            return handleDefaultCommands(null);
        }
        PrintWriter pw = getOutPrintWriter();
        byte b = -1;
        int iHashCode = cmd.hashCode();
        if (iHashCode != -138263081) {
            if (iHashCode == 434812665 && cmd.equals("is-wifi-supported")) {
                b = 0;
            }
        } else if (cmd.equals("is-wifi-qr-supported")) {
            b = 1;
        }
        if (b == 0) {
            pw.println(Boolean.toString(this.mService.isAdbWifiSupported()));
            return 0;
        }
        if (b == 1) {
            pw.println(Boolean.toString(this.mService.isAdbWifiQrSupported()));
            return 0;
        }
        return handleDefaultCommands(cmd);
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("Adb service commands:");
        pw.println("  help or -h");
        pw.println("    Print this help text.");
        pw.println("  is-wifi-supported");
        pw.println("    Returns \"true\" if adb over wifi is supported.");
        pw.println("  is-wifi-qr-supported");
        pw.println("    Returns \"true\" if adb over wifi + QR pairing is supported.");
        pw.println();
    }
}

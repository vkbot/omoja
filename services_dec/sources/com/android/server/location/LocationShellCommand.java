package com.android.server.location;

import android.os.BasicShellCommandHandler;
import android.os.UserHandle;
import java.io.PrintWriter;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
class LocationShellCommand extends BasicShellCommandHandler {
    private final LocationManagerService mService;

    LocationShellCommand(LocationManagerService service) {
        Objects.requireNonNull(service);
        this.mService = service;
    }

    public int onCommand(String cmd) {
        if (cmd == null) {
            return handleDefaultCommands(null);
        }
        byte b = -1;
        int iHashCode = cmd.hashCode();
        if (iHashCode != 1546249012) {
            if (iHashCode == 2036447497 && cmd.equals("send-extra-command")) {
                b = 1;
            }
        } else if (cmd.equals("set-location-enabled")) {
            b = 0;
        }
        if (b == 0) {
            int userId = parseUserId();
            boolean enabled = Boolean.parseBoolean(getNextArgRequired());
            this.mService.setLocationEnabledForUser(enabled, userId);
            return 0;
        }
        if (b == 1) {
            String provider = getNextArgRequired();
            String command = getNextArgRequired();
            this.mService.sendExtraCommand(provider, command, null);
            return 0;
        }
        return handleDefaultCommands(cmd);
    }

    private int parseUserId() {
        String option = getNextOption();
        if (option != null) {
            if (option.equals("--user")) {
                return UserHandle.parseUserArg(getNextArgRequired());
            }
            throw new IllegalArgumentException("Expected \"--user\" option, but got \"" + option + "\" instead");
        }
        return -3;
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("Location service commands:");
        pw.println("  help or -h");
        pw.println("    Print this help text.");
        pw.println("  set-location-enabled [--user <USER_ID>] true|false");
        pw.println("    Sets the master location switch enabled state.");
        pw.println("  send-extra-command <PROVIDER> <COMMAND>");
        pw.println("    Sends the given extra command to the given provider.");
        pw.println();
        pw.println("    Common commands that may be supported by the gps provider, depending on");
        pw.println("    hardware and software configurations:");
        pw.println("      delete_aiding_data - requests deletion of any predictive aiding data");
        pw.println("      force_time_injection - requests NTP time injection to chipset");
        pw.println("      force_psds_injection - requests predictive aiding data injection to chipset");
    }
}

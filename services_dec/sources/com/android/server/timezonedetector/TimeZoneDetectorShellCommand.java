package com.android.server.timezonedetector;

import android.app.timezonedetector.ManualTimeZoneSuggestion;
import android.app.timezonedetector.TelephonyTimeZoneSuggestion;
import android.os.ShellCommand;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
class TimeZoneDetectorShellCommand extends ShellCommand {
    private final TimeZoneDetectorService mInterface;

    TimeZoneDetectorShellCommand(TimeZoneDetectorService timeZoneDetectorService) {
        this.mInterface = timeZoneDetectorService;
    }

    public int onCommand(String cmd) {
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        byte b = -1;
        int iHashCode = cmd.hashCode();
        if (iHashCode != -1595273216) {
            if (iHashCode == 596690236 && cmd.equals("suggest_telephony_time_zone")) {
                b = 0;
            }
        } else if (cmd.equals("suggest_manual_time_zone")) {
            b = 1;
        }
        if (b == 0) {
            return runSuggestTelephonyTimeZone();
        }
        if (b == 1) {
            return runSuggestManualTimeZone();
        }
        return handleDefaultCommands(cmd);
    }

    private int runSuggestTelephonyTimeZone() {
        PrintWriter pw = getOutPrintWriter();
        TelephonyTimeZoneSuggestion suggestion = null;
        while (true) {
            try {
                String opt = getNextArg();
                if (opt != null) {
                    if ("--suggestion".equals(opt)) {
                        suggestion = TelephonyTimeZoneSuggestion.parseCommandLineArg(this);
                    } else {
                        pw.println("Error: Unknown option: " + opt);
                        return 1;
                    }
                } else {
                    if (suggestion == null) {
                        pw.println("Error: suggestion not specified");
                        return 1;
                    }
                    this.mInterface.suggestTelephonyTimeZone(suggestion);
                    pw.println("Suggestion " + suggestion + " injected.");
                    return 0;
                }
            } catch (RuntimeException e) {
                pw.println(e.toString());
                return 1;
            }
        }
    }

    private int runSuggestManualTimeZone() {
        PrintWriter pw = getOutPrintWriter();
        ManualTimeZoneSuggestion suggestion = null;
        while (true) {
            try {
                String opt = getNextArg();
                if (opt != null) {
                    if ("--suggestion".equals(opt)) {
                        suggestion = ManualTimeZoneSuggestion.parseCommandLineArg(this);
                    } else {
                        pw.println("Error: Unknown option: " + opt);
                        return 1;
                    }
                } else {
                    if (suggestion == null) {
                        pw.println("Error: suggestion not specified");
                        return 1;
                    }
                    this.mInterface.suggestManualTimeZone(suggestion);
                    pw.println("Suggestion " + suggestion + " injected.");
                    return 0;
                }
            } catch (RuntimeException e) {
                pw.println(e.toString());
                return 1;
            }
        }
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("Time Zone Detector (time_zone_detector) commands:");
        pw.println("  help");
        pw.println("    Print this help text.");
        pw.println("  suggest_telephony_time_zone");
        pw.println("    --suggestion <telephony suggestion opts>");
        pw.println("  suggest_manual_time_zone");
        pw.println("    --suggestion <manual suggestion opts>");
        pw.println();
        ManualTimeZoneSuggestion.printCommandLineOpts(pw);
        pw.println();
        TelephonyTimeZoneSuggestion.printCommandLineOpts(pw);
        pw.println();
    }
}

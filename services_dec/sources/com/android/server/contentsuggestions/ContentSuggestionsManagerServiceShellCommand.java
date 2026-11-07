package com.android.server.contentsuggestions;

import android.os.ShellCommand;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class ContentSuggestionsManagerServiceShellCommand extends ShellCommand {
    private static final String TAG = ContentSuggestionsManagerServiceShellCommand.class.getSimpleName();
    private final ContentSuggestionsManagerService mService;

    public ContentSuggestionsManagerServiceShellCommand(ContentSuggestionsManagerService service) {
        this.mService = service;
    }

    public int onCommand(String cmd) {
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        PrintWriter pw = getOutPrintWriter();
        byte b = -1;
        int iHashCode = cmd.hashCode();
        if (iHashCode != 102230) {
            if (iHashCode == 113762 && cmd.equals("set")) {
                b = 0;
            }
        } else if (cmd.equals("get")) {
            b = 1;
        }
        if (b == 0) {
            return requestSet(pw);
        }
        if (b == 1) {
            return requestGet(pw);
        }
        return handleDefaultCommands(cmd);
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        try {
            pw.println("ContentSuggestionsManagerService commands:");
            pw.println("  help");
            pw.println("    Prints this help text.");
            pw.println("");
            pw.println("  set temporary-service USER_ID [COMPONENT_NAME DURATION]");
            pw.println("    Temporarily (for DURATION ms) changes the service implementation.");
            pw.println("    To reset, call with just the USER_ID argument.");
            pw.println("");
            pw.println("  set default-service-enabled USER_ID [true|false]");
            pw.println("    Enable / disable the default service for the user.");
            pw.println("");
            pw.println("  get default-service-enabled USER_ID");
            pw.println("    Checks whether the default service is enabled for the user.");
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

    /* JADX WARN: Code duplicated, block: B:13:0x002a  */
    private int requestSet(PrintWriter pw) {
        byte b;
        String what = getNextArgRequired();
        int iHashCode = what.hashCode();
        if (iHashCode != 529654941) {
            if (iHashCode == 2003978041 && what.equals("temporary-service")) {
                b = 0;
            } else {
                b = -1;
            }
        } else if (what.equals("default-service-enabled")) {
            b = 1;
        } else {
            b = -1;
        }
        if (b == 0) {
            return setTemporaryService(pw);
        }
        if (b == 1) {
            return setDefaultServiceEnabled();
        }
        pw.println("Invalid set: " + what);
        return -1;
    }

    private int requestGet(PrintWriter pw) {
        String what = getNextArgRequired();
        if (((what.hashCode() == 529654941 && what.equals("default-service-enabled")) ? (byte) 0 : (byte) -1) == 0) {
            return getDefaultServiceEnabled(pw);
        }
        pw.println("Invalid get: " + what);
        return -1;
    }

    private int setTemporaryService(PrintWriter pw) {
        int userId = Integer.parseInt(getNextArgRequired());
        String serviceName = getNextArg();
        if (serviceName == null) {
            this.mService.resetTemporaryService(userId);
            return 0;
        }
        int duration = Integer.parseInt(getNextArgRequired());
        this.mService.setTemporaryService(userId, serviceName, duration);
        pw.println("ContentSuggestionsService temporarily set to " + serviceName + " for " + duration + "ms");
        return 0;
    }

    private int setDefaultServiceEnabled() {
        int userId = getNextIntArgRequired();
        boolean enabled = Boolean.parseBoolean(getNextArg());
        this.mService.setDefaultServiceEnabled(userId, enabled);
        return 0;
    }

    private int getDefaultServiceEnabled(PrintWriter pw) {
        int userId = getNextIntArgRequired();
        boolean enabled = this.mService.isDefaultServiceEnabled(userId);
        pw.println(enabled);
        return 0;
    }

    private int getNextIntArgRequired() {
        return Integer.parseInt(getNextArgRequired());
    }
}

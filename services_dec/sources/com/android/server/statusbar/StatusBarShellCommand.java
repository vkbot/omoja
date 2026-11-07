package com.android.server.statusbar;

import android.app.StatusBarManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ShellCommand;
import android.service.quicksettings.TileService;
import android.util.Pair;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
public class StatusBarShellCommand extends ShellCommand {
    private static final IBinder sToken = new StatusBarShellCommandToken();
    private final Context mContext;
    private final StatusBarManagerService mInterface;

    public StatusBarShellCommand(StatusBarManagerService service, Context context) {
        this.mInterface = service;
        this.mContext = context;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:8:0x0010  */
    public int onCommand(String cmd) {
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        try {
            switch (cmd) {
                case "expand-notifications":
                    return runExpandNotifications();
                case "expand-settings":
                    return runExpandSettings();
                case "collapse":
                    return runCollapse();
                case "add-tile":
                    return runAddTile();
                case "remove-tile":
                    return runRemoveTile();
                case "click-tile":
                    return runClickTile();
                case "check-support":
                    PrintWriter pw = getOutPrintWriter();
                    pw.println(String.valueOf(TileService.isQuickSettingsSupported()));
                    return 0;
                case "get-status-icons":
                    return runGetStatusIcons();
                case "disable-for-setup":
                    return runDisableForSetup();
                case "send-disable-flag":
                    return runSendDisableFlag();
                case "tracing":
                    return runTracing();
                default:
                    return handleDefaultCommands(cmd);
            }
        } catch (RemoteException e) {
            PrintWriter pw2 = getOutPrintWriter();
            pw2.println("Remote exception: " + e);
            return -1;
        }
    }

    private int runAddTile() throws RemoteException {
        this.mInterface.addTile(ComponentName.unflattenFromString(getNextArgRequired()));
        return 0;
    }

    private int runRemoveTile() throws RemoteException {
        this.mInterface.remTile(ComponentName.unflattenFromString(getNextArgRequired()));
        return 0;
    }

    private int runClickTile() throws RemoteException {
        this.mInterface.clickTile(ComponentName.unflattenFromString(getNextArgRequired()));
        return 0;
    }

    private int runCollapse() throws RemoteException {
        this.mInterface.collapsePanels();
        return 0;
    }

    private int runExpandSettings() throws RemoteException {
        this.mInterface.expandSettingsPanel(null);
        return 0;
    }

    private int runExpandNotifications() throws RemoteException {
        this.mInterface.expandNotificationsPanel();
        return 0;
    }

    private int runGetStatusIcons() {
        PrintWriter pw = getOutPrintWriter();
        for (String icon : this.mInterface.getStatusBarIcons()) {
            pw.println(icon);
        }
        return 0;
    }

    private int runDisableForSetup() {
        String arg = getNextArgRequired();
        String pkg = this.mContext.getPackageName();
        boolean disable = Boolean.parseBoolean(arg);
        if (!disable) {
            this.mInterface.disable(0, sToken, pkg);
            this.mInterface.disable2(0, sToken, pkg);
        } else {
            this.mInterface.disable(61145088, sToken, pkg);
            this.mInterface.disable2(16, sToken, pkg);
        }
        return 0;
    }

    private int runSendDisableFlag() {
        String pkg = this.mContext.getPackageName();
        StatusBarManager.DisableInfo info = new StatusBarManager.DisableInfo();
        String arg = getNextArg();
        while (true) {
            if (arg != null) {
                switch (arg) {
                    case "search":
                        info.setSearchDisabled(true);
                        break;
                    case "home":
                        info.setNagivationHomeDisabled(true);
                        break;
                    case "recents":
                        info.setRecentsDisabled(true);
                        break;
                    case "notification-alerts":
                        info.setNotificationPeekingDisabled(true);
                        break;
                    case "statusbar-expansion":
                        info.setStatusBarExpansionDisabled(true);
                        break;
                    case "system-icons":
                        info.setSystemIconsDisabled(true);
                        break;
                    case "clock":
                        info.setClockDisabled(true);
                        break;
                    case "notification-icons":
                        info.setNotificationIconsDisabled(true);
                        break;
                }
                arg = getNextArg();
            } else {
                Pair<Integer, Integer> flagPair = info.toFlags();
                this.mInterface.disable(((Integer) flagPair.first).intValue(), sToken, pkg);
                this.mInterface.disable2(((Integer) flagPair.second).intValue(), sToken, pkg);
                return 0;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0029  */
    private int runTracing() {
        byte b;
        String nextArg = getNextArg();
        int iHashCode = nextArg.hashCode();
        if (iHashCode != 3540994) {
            if (iHashCode == 109757538 && nextArg.equals("start")) {
                b = 0;
            } else {
                b = -1;
            }
        } else if (nextArg.equals("stop")) {
            b = 1;
        } else {
            b = -1;
        }
        if (b == 0) {
            this.mInterface.startTracing();
        } else if (b == 1) {
            this.mInterface.stopTracing();
        }
        return 0;
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("Status bar commands:");
        pw.println("  help");
        pw.println("    Print this help text.");
        pw.println("");
        pw.println("  expand-notifications");
        pw.println("    Open the notifications panel.");
        pw.println("");
        pw.println("  expand-settings");
        pw.println("    Open the notifications panel and expand quick settings if present.");
        pw.println("");
        pw.println("  collapse");
        pw.println("    Collapse the notifications and settings panel.");
        pw.println("");
        pw.println("  add-tile COMPONENT");
        pw.println("    Add a TileService of the specified component");
        pw.println("");
        pw.println("  remove-tile COMPONENT");
        pw.println("    Remove a TileService of the specified component");
        pw.println("");
        pw.println("  click-tile COMPONENT");
        pw.println("    Click on a TileService of the specified component");
        pw.println("");
        pw.println("  check-support");
        pw.println("    Check if this device supports QS + APIs");
        pw.println("");
        pw.println("  get-status-icons");
        pw.println("    Print the list of status bar icons and the order they appear in");
        pw.println("");
        pw.println("  disable-for-setup DISABLE");
        pw.println("    If true, disable status bar components unsuitable for device setup");
        pw.println("");
        pw.println("  send-disable-flag FLAG...");
        pw.println("    Send zero or more disable flags (parsed individually) to StatusBarManager");
        pw.println("    Valid options:");
        pw.println("        <blank>             - equivalent to \"none\"");
        pw.println("        none                - re-enables all components");
        pw.println("        search              - disable search");
        pw.println("        home                - disable naviagation home");
        pw.println("        recents             - disable recents/overview");
        pw.println("        notification-peek   - disable notification peeking");
        pw.println("        statusbar-expansion - disable status bar expansion");
        pw.println("        system-icons        - disable system icons appearing in status bar");
        pw.println("        clock               - disable clock appearing in status bar");
        pw.println("        notification-icons  - disable notification icons from status bar");
        pw.println("");
        pw.println("  tracing (start | stop)");
        pw.println("    Start or stop SystemUI tracing");
        pw.println("");
    }

    private static final class StatusBarShellCommandToken extends Binder {
        private StatusBarShellCommandToken() {
        }
    }
}

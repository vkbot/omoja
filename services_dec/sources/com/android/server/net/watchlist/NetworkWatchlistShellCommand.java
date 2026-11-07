package com.android.server.net.watchlist;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ShellCommand;
import android.provider.Settings;
import com.android.server.wm.ActivityTaskManagerService;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
class NetworkWatchlistShellCommand extends ShellCommand {
    final Context mContext;
    final NetworkWatchlistService mService;

    NetworkWatchlistShellCommand(NetworkWatchlistService service, Context context) {
        this.mContext = context;
        this.mService = service;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001b  */
    public int onCommand(String cmd) {
        byte b;
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        PrintWriter pw = getOutPrintWriter();
        try {
            int iHashCode = cmd.hashCode();
            if (iHashCode != 1757613042) {
                b = (iHashCode == 1854202282 && cmd.equals("force-generate-report")) ? (byte) 1 : (byte) -1;
            } else if (cmd.equals("set-test-config")) {
                b = 0;
            }
            if (b == 0) {
                return runSetTestConfig();
            }
            if (b == 1) {
                return runForceGenerateReport();
            }
            return handleDefaultCommands(cmd);
        } catch (Exception e) {
            pw.println("Exception: " + e);
            return -1;
        }
    }

    private int runSetTestConfig() throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        try {
            String configXmlPath = getNextArgRequired();
            ParcelFileDescriptor pfd = openFileForSystem(configXmlPath, ActivityTaskManagerService.DUMP_RECENTS_SHORT_CMD);
            if (pfd == null) {
                pw.println("Error: can't open input file " + configXmlPath);
                return -1;
            }
            InputStream fileStream = new FileInputStream(pfd.getFileDescriptor());
            WatchlistConfig.getInstance().setTestMode(fileStream);
            pw.println("Success!");
            return 0;
        } catch (Exception ex) {
            pw.println("Error: " + ex.toString());
            return -1;
        }
    }

    private int runForceGenerateReport() throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        long ident = Binder.clearCallingIdentity();
        try {
            if (WatchlistConfig.getInstance().isConfigSecure()) {
                pw.println("Error: Cannot force generate report under production config");
                return -1;
            }
            Settings.Global.putLong(this.mContext.getContentResolver(), "network_watchlist_last_report_time", 0L);
            this.mService.forceReportWatchlistForTest(System.currentTimeMillis());
            pw.println("Success!");
            return 0;
        } catch (Exception ex) {
            pw.println("Error: " + ex);
            return -1;
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("Network watchlist manager commands:");
        pw.println("  help");
        pw.println("    Print this help text.");
        pw.println("  set-test-config your_watchlist_config.xml");
        pw.println("    Set network watchlist test config file.");
        pw.println("  force-generate-report");
        pw.println("    Force generate watchlist test report.");
    }
}

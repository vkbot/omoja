package com.android.server.webkit;

import android.os.RemoteException;
import android.os.ShellCommand;
import android.webkit.IWebViewUpdateService;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
class WebViewUpdateServiceShellCommand extends ShellCommand {
    final IWebViewUpdateService mInterface;

    WebViewUpdateServiceShellCommand(IWebViewUpdateService service) {
        this.mInterface = service;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0022  */
    public int onCommand(String cmd) {
        byte b;
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        PrintWriter pw = getOutPrintWriter();
        try {
            int iHashCode = cmd.hashCode();
            if (iHashCode != -1857752288) {
                if (iHashCode != -1381305903) {
                    b = (iHashCode == 436183515 && cmd.equals("disable-multiprocess")) ? (byte) 2 : (byte) -1;
                } else if (cmd.equals("set-webview-implementation")) {
                    b = 0;
                }
            } else if (cmd.equals("enable-multiprocess")) {
                b = 1;
            }
            if (b == 0) {
                return setWebViewImplementation();
            }
            if (b == 1) {
                return enableMultiProcess(true);
            }
            if (b == 2) {
                return enableMultiProcess(false);
            }
            return handleDefaultCommands(cmd);
        } catch (RemoteException e) {
            pw.println("Remote exception: " + e);
            return -1;
        }
    }

    private int setWebViewImplementation() throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        String shellChosenPackage = getNextArg();
        if (shellChosenPackage == null) {
            pw.println("Failed to switch, no PACKAGE provided.");
            pw.println("");
            helpSetWebViewImplementation();
            return 1;
        }
        String newPackage = this.mInterface.changeProviderAndSetting(shellChosenPackage);
        if (!shellChosenPackage.equals(newPackage)) {
            pw.println(String.format("Failed to switch to %s, the WebView implementation is now provided by %s.", shellChosenPackage, newPackage));
            return 1;
        }
        pw.println("Success");
        return 0;
    }

    private int enableMultiProcess(boolean enable) throws RemoteException {
        PrintWriter pw = getOutPrintWriter();
        this.mInterface.enableMultiProcess(enable);
        pw.println("Success");
        return 0;
    }

    public void helpSetWebViewImplementation() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("  set-webview-implementation PACKAGE");
        pw.println("    Set the WebView implementation to the specified package.");
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("WebView updater commands:");
        pw.println("  help");
        pw.println("    Print this help text.");
        pw.println("");
        helpSetWebViewImplementation();
        pw.println("  enable-multiprocess");
        pw.println("    Enable multi-process mode for WebView");
        pw.println("  disable-multiprocess");
        pw.println("    Disable multi-process mode for WebView");
        pw.println();
    }
}

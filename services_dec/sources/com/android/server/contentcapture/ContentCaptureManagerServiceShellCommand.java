package com.android.server.contentcapture;

import android.os.Bundle;
import android.os.ShellCommand;
import android.os.UserHandle;
import com.android.internal.os.IResultReceiver;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ContentCaptureManagerServiceShellCommand extends ShellCommand {
    private final ContentCaptureManagerService mService;

    public ContentCaptureManagerServiceShellCommand(ContentCaptureManagerService service) {
        this.mService = service;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public int onCommand(String cmd) {
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        PrintWriter pw = getOutPrintWriter();
        byte b = -1;
        switch (cmd.hashCode()) {
            case 102230:
                if (cmd.equals("get")) {
                    b = 2;
                }
                break;
            case 113762:
                if (cmd.equals("set")) {
                    b = 3;
                }
                break;
            case 3322014:
                if (cmd.equals("list")) {
                    b = 0;
                }
                break;
            case 1557372922:
                if (cmd.equals("destroy")) {
                    b = 1;
                }
                break;
        }
        if (b == 0) {
            return requestList(pw);
        }
        if (b == 1) {
            return requestDestroy(pw);
        }
        if (b == 2) {
            return requestGet(pw);
        }
        if (b == 3) {
            return requestSet(pw);
        }
        return handleDefaultCommands(cmd);
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        try {
            pw.println("ContentCapture Service (content_capture) commands:");
            pw.println("  help");
            pw.println("    Prints this help text.");
            pw.println("");
            pw.println("  get bind-instant-service-allowed");
            pw.println("    Gets whether binding to services provided by instant apps is allowed");
            pw.println("");
            pw.println("  set bind-instant-service-allowed [true | false]");
            pw.println("    Sets whether binding to services provided by instant apps is allowed");
            pw.println("");
            pw.println("  set temporary-service USER_ID [COMPONENT_NAME DURATION]");
            pw.println("    Temporarily (for DURATION ms) changes the service implemtation.");
            pw.println("    To reset, call with just the USER_ID argument.");
            pw.println("");
            pw.println("  set default-service-enabled USER_ID [true|false]");
            pw.println("    Enable / disable the default service for the user.");
            pw.println("");
            pw.println("  get default-service-enabled USER_ID");
            pw.println("    Checks whether the default service is enabled for the user.");
            pw.println("");
            pw.println("  list sessions [--user USER_ID]");
            pw.println("    Lists all pending sessions.");
            pw.println("");
            pw.println("  destroy sessions [--user USER_ID]");
            pw.println("    Destroys all pending sessions.");
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

    /* JADX WARN: Code duplicated, block: B:13:0x0029  */
    private int requestGet(PrintWriter pw) {
        byte b;
        String what = getNextArgRequired();
        int iHashCode = what.hashCode();
        if (iHashCode != 529654941) {
            if (iHashCode == 809633044 && what.equals("bind-instant-service-allowed")) {
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
            return getBindInstantService(pw);
        }
        if (b == 1) {
            return getDefaultServiceEnabled(pw);
        }
        pw.println("Invalid set: " + what);
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003a  */
    private int requestSet(PrintWriter pw) {
        byte b;
        String what = getNextArgRequired();
        int iHashCode = what.hashCode();
        if (iHashCode != 529654941) {
            if (iHashCode != 809633044) {
                if (iHashCode == 2003978041 && what.equals("temporary-service")) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (what.equals("bind-instant-service-allowed")) {
                b = 0;
            } else {
                b = -1;
            }
        } else if (what.equals("default-service-enabled")) {
            b = 2;
        } else {
            b = -1;
        }
        if (b == 0) {
            return setBindInstantService(pw);
        }
        if (b == 1) {
            return setTemporaryService(pw);
        }
        if (b == 2) {
            return setDefaultServiceEnabled(pw);
        }
        pw.println("Invalid set: " + what);
        return -1;
    }

    private int getBindInstantService(PrintWriter pw) {
        if (this.mService.getAllowInstantService()) {
            pw.println("true");
            return 0;
        }
        pw.println("false");
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002f  */
    private int setBindInstantService(PrintWriter pw) {
        byte b;
        String mode = getNextArgRequired();
        String lowerCase = mode.toLowerCase();
        int iHashCode = lowerCase.hashCode();
        if (iHashCode != 3569038) {
            if (iHashCode == 97196323 && lowerCase.equals("false")) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (lowerCase.equals("true")) {
            b = 0;
        } else {
            b = -1;
        }
        if (b == 0) {
            this.mService.setAllowInstantService(true);
            return 0;
        }
        if (b == 1) {
            this.mService.setAllowInstantService(false);
            return 0;
        }
        pw.println("Invalid mode: " + mode);
        return -1;
    }

    private int setTemporaryService(PrintWriter pw) {
        int userId = getNextIntArgRequired();
        String serviceName = getNextArg();
        if (serviceName == null) {
            this.mService.resetTemporaryService(userId);
            return 0;
        }
        int duration = getNextIntArgRequired();
        this.mService.setTemporaryService(userId, serviceName, duration);
        pw.println("ContentCaptureService temporarily set to " + serviceName + " for " + duration + "ms");
        return 0;
    }

    private int setDefaultServiceEnabled(PrintWriter pw) {
        int userId = getNextIntArgRequired();
        boolean enabled = Boolean.parseBoolean(getNextArgRequired());
        boolean changed = this.mService.setDefaultServiceEnabled(userId, enabled);
        if (!changed) {
            pw.println("already " + enabled);
            return 0;
        }
        return 0;
    }

    private int getDefaultServiceEnabled(PrintWriter pw) {
        int userId = getNextIntArgRequired();
        boolean enabled = this.mService.isDefaultServiceEnabled(userId);
        pw.println(enabled);
        return 0;
    }

    private int requestDestroy(PrintWriter pw) {
        if (!isNextArgSessions(pw)) {
            return -1;
        }
        final int userId = getUserIdFromArgsOrAllUsers();
        final CountDownLatch latch = new CountDownLatch(1);
        final IResultReceiver.Stub stub = new IResultReceiver.Stub() { // from class: com.android.server.contentcapture.ContentCaptureManagerServiceShellCommand.1
            public void send(int resultCode, Bundle resultData) {
                latch.countDown();
            }
        };
        return requestSessionCommon(pw, latch, new Runnable() { // from class: com.android.server.contentcapture.-$$Lambda$ContentCaptureManagerServiceShellCommand$JID7gMfFJshMFIl2pXHCkZLd6tI
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$requestDestroy$0$ContentCaptureManagerServiceShellCommand(userId, stub);
            }
        });
    }

    public /* synthetic */ void lambda$requestDestroy$0$ContentCaptureManagerServiceShellCommand(int userId, IResultReceiver receiver) {
        this.mService.destroySessions(userId, receiver);
    }

    private int requestList(final PrintWriter pw) {
        if (!isNextArgSessions(pw)) {
            return -1;
        }
        final int userId = getUserIdFromArgsOrAllUsers();
        final CountDownLatch latch = new CountDownLatch(1);
        final IResultReceiver.Stub stub = new IResultReceiver.Stub() { // from class: com.android.server.contentcapture.ContentCaptureManagerServiceShellCommand.2
            public void send(int resultCode, Bundle resultData) {
                ArrayList<String> sessions = resultData.getStringArrayList("sessions");
                for (String session : sessions) {
                    pw.println(session);
                }
                latch.countDown();
            }
        };
        return requestSessionCommon(pw, latch, new Runnable() { // from class: com.android.server.contentcapture.-$$Lambda$ContentCaptureManagerServiceShellCommand$vv2l3dpITkvTtrSG9p-nNuz8Nsc
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$requestList$1$ContentCaptureManagerServiceShellCommand(userId, stub);
            }
        });
    }

    public /* synthetic */ void lambda$requestList$1$ContentCaptureManagerServiceShellCommand(int userId, IResultReceiver receiver) {
        this.mService.listSessions(userId, receiver);
    }

    private boolean isNextArgSessions(PrintWriter pw) {
        String type = getNextArgRequired();
        if (!type.equals("sessions")) {
            pw.println("Error: invalid list type");
            return false;
        }
        return true;
    }

    private int requestSessionCommon(PrintWriter pw, CountDownLatch latch, Runnable command) {
        command.run();
        return waitForLatch(pw, latch);
    }

    private int waitForLatch(PrintWriter pw, CountDownLatch latch) {
        try {
            boolean received = latch.await(5L, TimeUnit.SECONDS);
            if (!received) {
                pw.println("Timed out after 5 seconds");
                return -1;
            }
            return 0;
        } catch (InterruptedException e) {
            pw.println("System call interrupted");
            Thread.currentThread().interrupt();
            return -1;
        }
    }

    private int getUserIdFromArgsOrAllUsers() {
        if ("--user".equals(getNextArg())) {
            return UserHandle.parseUserArg(getNextArgRequired());
        }
        return -1;
    }

    private int getNextIntArgRequired() {
        return Integer.parseInt(getNextArgRequired());
    }
}

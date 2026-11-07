package com.android.server.wm;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.RemoteException;
import android.os.ShellCommand;
import android.util.Pair;
import android.view.IWindowManager;
import com.android.internal.os.ByteTransferPipe;
import com.android.internal.policy.IKeyguardDismissCallback;
import com.android.server.BatteryService;
import com.android.server.UiModeManagerService;
import com.android.server.protolog.ProtoLogImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.function.Consumer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class WindowManagerShellCommand extends ShellCommand {
    private final IWindowManager mInterface;
    private final WindowManagerService mInternal;

    public WindowManagerShellCommand(WindowManagerService service) {
        this.mInterface = service;
        this.mInternal = service;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:8:0x0013  */
    public int onCommand(String cmd) {
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        PrintWriter pw = getOutPrintWriter();
        try {
            switch (cmd) {
                case "size":
                    return runDisplaySize(pw);
                case "density":
                    return runDisplayDensity(pw);
                case "folded-area":
                    return runDisplayFoldedArea(pw);
                case "scaling":
                    return runDisplayScaling(pw);
                case "dismiss-keyguard":
                    return runDismissKeyguard(pw);
                case "tracing":
                    return this.mInternal.mWindowTracing.onShellCommand(this);
                case "logging":
                    return ProtoLogImpl.getSingleInstance().onShellCommand(this);
                case "set-user-rotation":
                    return runSetDisplayUserRotation(pw);
                case "set-fix-to-user-rotation":
                    return runSetFixToUserRotation(pw);
                case "dump-visible-window-views":
                    return runDumpVisibleWindowViews(pw);
                default:
                    return handleDefaultCommands(cmd);
            }
        } catch (RemoteException e) {
            pw.println("Remote exception: " + e);
            return -1;
        }
    }

    private int getDisplayId(String opt) {
        String option = "-d".equals(opt) ? opt : getNextOption();
        if (option == null || !"-d".equals(option)) {
            return 0;
        }
        try {
            int displayId = Integer.parseInt(getNextArgRequired());
            return displayId;
        } catch (NumberFormatException e) {
            getErrPrintWriter().println("Error: bad number " + e);
            return 0;
        } catch (IllegalArgumentException e2) {
            getErrPrintWriter().println("Error: " + e2);
            return 0;
        }
    }

    private void printInitialDisplaySize(PrintWriter pw, int displayId) {
        Point initialSize = new Point();
        Point baseSize = new Point();
        try {
            this.mInterface.getInitialDisplaySize(displayId, initialSize);
            this.mInterface.getBaseDisplaySize(displayId, baseSize);
            pw.println("Physical size: " + initialSize.x + "x" + initialSize.y);
            if (!initialSize.equals(baseSize)) {
                pw.println("Override size: " + baseSize.x + "x" + baseSize.y);
            }
        } catch (RemoteException e) {
            pw.println("Remote exception: " + e);
        }
    }

    private int runDisplaySize(PrintWriter pw) throws RemoteException {
        int div;
        String size = getNextArg();
        int displayId = getDisplayId(size);
        if (size == null) {
            printInitialDisplaySize(pw, displayId);
            return 0;
        }
        if ("-d".equals(size)) {
            printInitialDisplaySize(pw, displayId);
            return 0;
        }
        int w = -1;
        if ("reset".equals(size)) {
            div = -1;
        } else {
            int div2 = size.indexOf(120);
            if (div2 <= 0 || div2 >= size.length() - 1) {
                getErrPrintWriter().println("Error: bad size " + size);
                return -1;
            }
            String wstr = size.substring(0, div2);
            String hstr = size.substring(div2 + 1);
            try {
                int w2 = parseDimension(wstr, displayId);
                int h = parseDimension(hstr, displayId);
                div = h;
                w = w2;
            } catch (NumberFormatException e) {
                getErrPrintWriter().println("Error: bad number " + e);
                return -1;
            }
        }
        if (w >= 0 && div >= 0) {
            this.mInterface.setForcedDisplaySize(displayId, w, div);
        } else {
            this.mInterface.clearForcedDisplaySize(displayId);
        }
        return 0;
    }

    private void printInitialDisplayDensity(PrintWriter pw, int displayId) {
        try {
            int initialDensity = this.mInterface.getInitialDisplayDensity(displayId);
            int baseDensity = this.mInterface.getBaseDisplayDensity(displayId);
            pw.println("Physical density: " + initialDensity);
            if (initialDensity != baseDensity) {
                pw.println("Override density: " + baseDensity);
            }
        } catch (RemoteException e) {
            pw.println("Remote exception: " + e);
        }
    }

    private int runDisplayDensity(PrintWriter pw) throws RemoteException {
        int density;
        String densityStr = getNextArg();
        int displayId = getDisplayId(densityStr);
        if (densityStr == null) {
            printInitialDisplayDensity(pw, displayId);
            return 0;
        }
        if ("-d".equals(densityStr)) {
            printInitialDisplayDensity(pw, displayId);
            return 0;
        }
        if ("reset".equals(densityStr)) {
            density = -1;
        } else {
            try {
                int density2 = Integer.parseInt(densityStr);
                if (density2 >= 72) {
                    density = density2;
                } else {
                    getErrPrintWriter().println("Error: density must be >= 72");
                    return -1;
                }
            } catch (NumberFormatException e) {
                getErrPrintWriter().println("Error: bad number " + e);
                return -1;
            }
        }
        if (density > 0) {
            this.mInterface.setForcedDisplayDensityForUser(displayId, density, -2);
        } else {
            this.mInterface.clearForcedDisplayDensityForUser(displayId, -2);
        }
        return 0;
    }

    private void printFoldedArea(PrintWriter pw) {
        Rect foldedArea = this.mInternal.getFoldedArea();
        if (foldedArea.isEmpty()) {
            pw.println("Folded area: none");
            return;
        }
        pw.println("Folded area: " + foldedArea.left + "," + foldedArea.top + "," + foldedArea.right + "," + foldedArea.bottom);
    }

    private int runDisplayFoldedArea(PrintWriter pw) {
        String areaStr = getNextArg();
        Rect rect = new Rect();
        if (areaStr == null) {
            printFoldedArea(pw);
            return 0;
        }
        if ("reset".equals(areaStr)) {
            rect.setEmpty();
        } else {
            Pattern flattenedPattern = Pattern.compile("(-?\\d+),(-?\\d+),(-?\\d+),(-?\\d+)");
            Matcher matcher = flattenedPattern.matcher(areaStr);
            if (!matcher.matches()) {
                getErrPrintWriter().println("Error: area should be LEFT,TOP,RIGHT,BOTTOM");
                return -1;
            }
            rect.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)), Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)));
        }
        this.mInternal.setOverrideFoldedArea(rect);
        return 0;
    }

    private int runDisplayScaling(PrintWriter pw) throws RemoteException {
        String scalingStr = getNextArgRequired();
        if (UiModeManagerService.Shell.NIGHT_MODE_STR_AUTO.equals(scalingStr)) {
            this.mInterface.setForcedDisplayScalingMode(getDisplayId(scalingStr), 0);
        } else if ("off".equals(scalingStr)) {
            this.mInterface.setForcedDisplayScalingMode(getDisplayId(scalingStr), 1);
        } else {
            getErrPrintWriter().println("Error: scaling must be 'auto' or 'off'");
            return -1;
        }
        return 0;
    }

    private int runDismissKeyguard(PrintWriter pw) throws RemoteException {
        this.mInterface.dismissKeyguard((IKeyguardDismissCallback) null, (CharSequence) null);
        return 0;
    }

    private int parseDimension(String s, int displayId) throws NumberFormatException {
        int density;
        if (s.endsWith("px")) {
            return Integer.parseInt(s.substring(0, s.length() - 2));
        }
        if (s.endsWith("dp")) {
            try {
                density = this.mInterface.getBaseDisplayDensity(displayId);
            } catch (RemoteException e) {
                density = 160;
            }
            return (Integer.parseInt(s.substring(0, s.length() - 2)) * density) / 160;
        }
        int density2 = Integer.parseInt(s);
        return density2;
    }

    private int runSetDisplayUserRotation(PrintWriter pw) {
        int rotation;
        String lockMode = getNextArgRequired();
        int displayId = 0;
        String arg = getNextArg();
        if ("-d".equals(arg)) {
            displayId = Integer.parseInt(getNextArgRequired());
            arg = getNextArg();
        }
        if ("free".equals(lockMode)) {
            this.mInternal.thawDisplayRotation(displayId);
            return 0;
        }
        if (!lockMode.equals("lock")) {
            getErrPrintWriter().println("Error: lock mode needs to be either free or lock.");
            return -1;
        }
        if (arg == null) {
            rotation = 0;
        } else {
            try {
                rotation = Integer.parseInt(arg);
            } catch (IllegalArgumentException e) {
                getErrPrintWriter().println("Error: " + e.getMessage());
                return -1;
            }
        }
        this.mInternal.freezeDisplayRotation(displayId, rotation);
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004f  */
    private int runSetFixToUserRotation(PrintWriter pw) throws RemoteException {
        byte b;
        int fixedToUserRotation;
        int displayId = 0;
        String arg = getNextArgRequired();
        if ("-d".equals(arg)) {
            displayId = Integer.parseInt(getNextArgRequired());
            arg = getNextArgRequired();
        }
        int iHashCode = arg.hashCode();
        if (iHashCode != -1609594047) {
            if (iHashCode != 270940796) {
                if (iHashCode == 1544803905 && arg.equals(BatteryService.HealthServiceWrapper.INSTANCE_VENDOR)) {
                    b = 2;
                } else {
                    b = -1;
                }
            } else if (arg.equals("disabled")) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (arg.equals("enabled")) {
            b = 0;
        } else {
            b = -1;
        }
        if (b == 0) {
            fixedToUserRotation = 2;
        } else if (b == 1) {
            fixedToUserRotation = 1;
        } else if (b == 2) {
            fixedToUserRotation = 0;
        } else {
            getErrPrintWriter().println("Error: expecting enabled, disabled or default, but we get " + arg);
            return -1;
        }
        this.mInterface.setFixedToUserRotation(displayId, fixedToUserRotation);
        return 0;
    }

    private int runDumpVisibleWindowViews(PrintWriter pw) {
        if (!this.mInternal.checkCallingPermission("android.permission.DUMP", "runDumpVisibleWindowViews()")) {
            throw new SecurityException("Requires DUMP permission");
        }
        try {
            ZipOutputStream out = new ZipOutputStream(getRawOutputStream());
            try {
                final ArrayList<Pair<String, ByteTransferPipe>> requestList = new ArrayList<>();
                synchronized (this.mInternal.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        this.mInternal.mRoot.forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$WindowManagerShellCommand$prjQFpVCgSa5hzjzlwN4oL9HnaI
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                WindowManagerShellCommand.lambda$runDumpVisibleWindowViews$0(requestList, (WindowState) obj);
                            }
                        }, false);
                    } catch (Throwable th) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
                for (Pair<String, ByteTransferPipe> entry : requestList) {
                    try {
                        byte[] data = ((ByteTransferPipe) entry.second).get();
                        out.putNextEntry(new ZipEntry((String) entry.first));
                        out.write(data);
                    } catch (IOException e) {
                    }
                }
                out.close();
            } catch (Throwable th2) {
                try {
                    out.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IOException e2) {
            pw.println("Error fetching dump " + e2.getMessage());
        }
        return 0;
    }

    static /* synthetic */ void lambda$runDumpVisibleWindowViews$0(ArrayList requestList, WindowState w) {
        if (w.isVisible()) {
            ByteTransferPipe pipe = null;
            try {
                pipe = new ByteTransferPipe();
                w.mClient.executeCommand("DUMP_ENCODED", (String) null, pipe.getWriteFd());
                requestList.add(Pair.create(w.getName(), pipe));
            } catch (RemoteException | IOException e) {
                if (pipe != null) {
                    pipe.kill();
                }
            }
        }
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("Window manager (window) commands:");
        pw.println("  help");
        pw.println("      Print this help text.");
        pw.println("  size [reset|WxH|WdpxHdp] [-d DISPLAY_ID]");
        pw.println("    Return or override display size.");
        pw.println("    width and height in pixels unless suffixed with 'dp'.");
        pw.println("  density [reset|DENSITY] [-d DISPLAY_ID]");
        pw.println("    Return or override display density.");
        pw.println("  folded-area [reset|LEFT,TOP,RIGHT,BOTTOM]");
        pw.println("    Return or override folded area.");
        pw.println("  scaling [off|auto] [-d DISPLAY_ID]");
        pw.println("    Set display scaling mode.");
        pw.println("  dismiss-keyguard");
        pw.println("    Dismiss the keyguard, prompting user for auth if necessary.");
        pw.println("  set-user-rotation [free|lock] [-d DISPLAY_ID] [rotation]");
        pw.println("    Set user rotation mode and user rotation.");
        pw.println("  dump-visible-window-views");
        pw.println("    Dumps the encoded view hierarchies of visible windows");
        pw.println("  set-fix-to-user-rotation [-d DISPLAY_ID] [enabled|disabled]");
        pw.println("    Enable or disable rotating display for app requested orientation.");
        if (!Build.IS_USER) {
            pw.println("  tracing (start | stop)");
            pw.println("    Start or stop window tracing.");
            pw.println("  logging (start | stop | enable | disable | enable-text | disable-text)");
            pw.println("    Logging settings.");
        }
    }
}

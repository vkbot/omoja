package com.android.server.display;

import android.content.Context;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.os.Binder;
import android.os.ShellCommand;
import android.provider.Settings;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
class DisplayManagerShellCommand extends ShellCommand {
    private static final String TAG = "DisplayManagerShellCommand";
    private final DisplayManagerService mService;

    DisplayManagerShellCommand(DisplayManagerService service) {
        this.mService = service;
    }

    public int onCommand(String cmd) {
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        getOutPrintWriter();
        switch (cmd) {
            case "set-brightness":
                return setBrightness();
            case "reset-brightness-configuration":
                return resetBrightnessConfiguration();
            case "ab-logging-enable":
                return setAutoBrightnessLoggingEnabled(true);
            case "ab-logging-disable":
                return setAutoBrightnessLoggingEnabled(false);
            case "dwb-logging-enable":
                return setDisplayWhiteBalanceLoggingEnabled(true);
            case "dwb-logging-disable":
                return setDisplayWhiteBalanceLoggingEnabled(false);
            case "dmd-logging-enable":
                return setDisplayModeDirectorLoggingEnabled(true);
            case "dmd-logging-disable":
                return setDisplayModeDirectorLoggingEnabled(false);
            case "dwb-set-cct":
                return setAmbientColorTemperatureOverride();
            case "get-all-displayIds-for-screenType":
                return getDisplayIdsForScreenType();
            case "get-def-displayId-for-screenType":
                return getDefaultDisplayIdForScreenType();
            case "get-screenType-for-displayId":
                return getScreenTypeForDisplayId();
            default:
                return handleDefaultCommands(cmd);
        }
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("Display manager commands:");
        pw.println("  help");
        pw.println("    Print this help text.");
        pw.println();
        pw.println("  set-brightness BRIGHTNESS");
        pw.println("    Sets the current brightness to BRIGHTNESS (a number between 0 and 1).");
        pw.println("  reset-brightness-configuration");
        pw.println("    Reset the brightness to its default configuration.");
        pw.println("  ab-logging-enable");
        pw.println("    Enable auto-brightness logging.");
        pw.println("  ab-logging-disable");
        pw.println("    Disable auto-brightness logging.");
        pw.println("  dwb-logging-enable");
        pw.println("    Enable display white-balance logging.");
        pw.println("  dwb-logging-disable");
        pw.println("    Disable display white-balance logging.");
        pw.println("  dmd-logging-enable");
        pw.println("    Enable display mode director logging.");
        pw.println("  dmd-logging-disable");
        pw.println("    Disable display mode director logging.");
        pw.println("  dwb-set-cct CCT");
        pw.println("    Sets the ambient color temperature override to CCT (use -1 to disable).");
        pw.println();
        Intent.printIntentArgsHelp(pw, "");
        pw.println();
        pw.println("====== Mega platform commands start ======");
        pw.println();
        pw.println("  get-all-displayIds-for-screenType SCREEN_TYPE");
        pw.println("    Returns all display ids for screen type = SCREEN_TYPE");
        pw.println("  get-def-displayId-for-screenType SCREEN_TYPE");
        pw.println("    Returns default display id for screen type = SCREEN_TYPE");
        pw.println("  get-screenType-for-displayId DISPLAY_ID");
        pw.println("    Returns the screen type for display id = DISPLAY_ID");
        dumpScreenTypeArgs(pw);
        pw.println();
        pw.println("====== Mega platform commands end ======");
    }

    private int setBrightness() {
        String brightnessText = getNextArg();
        if (brightnessText == null) {
            getErrPrintWriter().println("Error: no brightness specified");
            return 1;
        }
        float brightness = -1.0f;
        try {
            brightness = Float.parseFloat(brightnessText);
        } catch (NumberFormatException e) {
        }
        if (brightness < 0.0f || brightness > 1.0f) {
            getErrPrintWriter().println("Error: brightness should be a number between 0 and 1");
            return 1;
        }
        Context context = this.mService.getContext();
        context.enforceCallingOrSelfPermission("android.permission.CONTROL_DISPLAY_BRIGHTNESS", "Permission required to set the display's brightness");
        long token = Binder.clearCallingIdentity();
        try {
            Settings.System.putFloatForUser(context.getContentResolver(), "screen_brightness_float", brightness, -2);
            return 0;
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    private int resetBrightnessConfiguration() {
        this.mService.resetBrightnessConfiguration();
        return 0;
    }

    private int setAutoBrightnessLoggingEnabled(boolean enabled) {
        this.mService.setAutoBrightnessLoggingEnabled(enabled);
        return 0;
    }

    private int setDisplayWhiteBalanceLoggingEnabled(boolean enabled) {
        this.mService.setDisplayWhiteBalanceLoggingEnabled(enabled);
        return 0;
    }

    private int setDisplayModeDirectorLoggingEnabled(boolean enabled) {
        this.mService.setDisplayModeDirectorLoggingEnabled(enabled);
        return 0;
    }

    private int setAmbientColorTemperatureOverride() {
        String cctText = getNextArg();
        if (cctText == null) {
            getErrPrintWriter().println("Error: no cct specified");
            return 1;
        }
        try {
            float cct = Float.parseFloat(cctText);
            this.mService.setAmbientColorTemperatureOverride(cct);
            return 0;
        } catch (NumberFormatException e) {
            getErrPrintWriter().println("Error: cct should be a number");
            return 1;
        }
    }

    private int getDisplayIdsForScreenType() {
        String screenTypeText = getNextArg();
        if (screenTypeText == null) {
            getErrPrintWriter().println("Error: no screenType argument!");
            return 1;
        }
        try {
            int screenType = Integer.parseInt(screenTypeText);
            DisplayManager dm = (DisplayManager) this.mService.getContext().getSystemService(DisplayManager.class);
            int[] displays = dm.getDisplayIdsForScreenType(screenType);
            PrintWriter out = getOutPrintWriter();
            StringBuilder builder = new StringBuilder();
            builder.append("All DisplayIds for screenType ");
            builder.append(DisplayManager.screenTypeToString(screenType));
            builder.append(" is:");
            if (displays != null && displays.length > 0) {
                for (int i : displays) {
                    builder.append("  " + i);
                }
            } else {
                builder.append(" null!");
            }
            out.println(builder.toString());
            return 0;
        } catch (NumberFormatException e) {
            getErrPrintWriter().println("Error: invalid screenType argument!");
            return 1;
        }
    }

    private int getDefaultDisplayIdForScreenType() {
        String screenTypeText = getNextArg();
        if (screenTypeText == null) {
            getErrPrintWriter().println("Error: no screenType argument!");
            return 1;
        }
        try {
            int screenType = Integer.parseInt(screenTypeText);
            DisplayManager dm = (DisplayManager) this.mService.getContext().getSystemService(DisplayManager.class);
            int display = dm.getDefaultDisplayIdForScreenType(screenType);
            PrintWriter out = getOutPrintWriter();
            out.println("DefaultDisplay for screenType " + DisplayManager.screenTypeToString(screenType) + " is: " + display);
            return 0;
        } catch (NumberFormatException e) {
            getErrPrintWriter().println("Error: invalid screenType argument!");
            return 1;
        }
    }

    private int getScreenTypeForDisplayId() {
        String displayIdText = getNextArg();
        if (displayIdText == null) {
            getErrPrintWriter().println("Error: no displayId argument!");
            return 1;
        }
        try {
            int displayId = Integer.parseInt(displayIdText);
            DisplayManager dm = (DisplayManager) this.mService.getContext().getSystemService(DisplayManager.class);
            int screenType = dm.getScreenTypeForDisplayId(displayId);
            PrintWriter out = getOutPrintWriter();
            out.println("ScreenType for displayId " + displayId + " is " + DisplayManager.screenTypeToString(screenType));
            return 0;
        } catch (NumberFormatException e) {
            getErrPrintWriter().println("Error: invalid displayId argument!");
            return 1;
        }
    }

    private void dumpScreenTypeArgs(PrintWriter pw) {
        pw.println("    The available SCREEN_TYPE values are:");
        pw.println("      1  (INSTRUMENT)");
        pw.println("      2  (MAIN)");
        pw.println("      3  (PASSENGER)");
        pw.println("      4  (VEHICLE)");
        pw.println("      5  (HUD)");
        pw.println("      6  (VPA)");
        pw.println("      7  (CEILING)");
        pw.println("      8  (LEFT_REAR)");
        pw.println("      9  (RIGHT_REAR)");
        pw.println("      10 (MID_REAR)");
    }
}

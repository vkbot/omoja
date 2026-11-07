package com.android.server.locksettings;

import android.app.ActivityManager;
import android.app.admin.PasswordMetrics;
import android.os.ShellCommand;
import android.text.TextUtils;
import com.android.internal.widget.LockPatternUtils;
import com.android.internal.widget.LockscreenCredential;
import com.android.internal.widget.PasswordValidationError;
import com.android.server.notification.SnoozeHelper;
import java.io.PrintWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class LockSettingsShellCommand extends ShellCommand {
    private static final String COMMAND_CLEAR = "clear";
    private static final String COMMAND_GET_DISABLED = "get-disabled";
    private static final String COMMAND_HELP = "help";
    private static final String COMMAND_REMOVE_CACHE = "remove-cache";
    private static final String COMMAND_SET_DISABLED = "set-disabled";
    private static final String COMMAND_SET_PASSWORD = "set-password";
    private static final String COMMAND_SET_PATTERN = "set-pattern";
    private static final String COMMAND_SET_PIN = "set-pin";
    private static final String COMMAND_SP = "sp";
    private static final String COMMAND_VERIFY = "verify";
    private int mCurrentUserId;
    private final LockPatternUtils mLockPatternUtils;
    private String mOld = "";
    private String mNew = "";

    LockSettingsShellCommand(LockPatternUtils lockPatternUtils) {
        this.mLockPatternUtils = lockPatternUtils;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:14:0x003c  */
    /* JADX WARN: Code duplicated, block: B:33:0x0071  */
    /* JADX WARN: Code duplicated, block: B:48:0x0099  */
    public int onCommand(String cmd) {
        byte b;
        byte b2;
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        try {
            this.mCurrentUserId = ActivityManager.getService().getCurrentUser().id;
            parseArgs();
            if (!this.mLockPatternUtils.hasSecureLockScreen()) {
                int iHashCode = cmd.hashCode();
                if (iHashCode != -1473704173) {
                    if (iHashCode != 3198785) {
                        b2 = (iHashCode == 75288455 && cmd.equals(COMMAND_SET_DISABLED)) ? (byte) 2 : (byte) -1;
                    } else if (cmd.equals(COMMAND_HELP)) {
                        b2 = 0;
                    }
                } else if (cmd.equals(COMMAND_GET_DISABLED)) {
                    b2 = 1;
                }
                if (b2 != 0 && b2 != 1 && b2 != 2) {
                    getErrPrintWriter().println("The device does not support lock screen - ignoring the command.");
                    return -1;
                }
            }
            int iHashCode2 = cmd.hashCode();
            if (iHashCode2 != -1957541639) {
                b = (iHashCode2 == 3198785 && cmd.equals(COMMAND_HELP)) ? (byte) 1 : (byte) -1;
            } else if (cmd.equals(COMMAND_REMOVE_CACHE)) {
                b = 0;
            }
            if (b == 0) {
                runRemoveCache();
                return 0;
            }
            if (b == 1) {
                onHelp();
                return 0;
            }
            if (!checkCredential()) {
                return -1;
            }
            boolean success = true;
            switch (cmd) {
                case "set-pattern":
                    success = runSetPattern();
                    break;
                case "set-password":
                    success = runSetPassword();
                    break;
                case "set-pin":
                    success = runSetPin();
                    break;
                case "clear":
                    success = runClear();
                    break;
                case "sp":
                    runChangeSp();
                    break;
                case "set-disabled":
                    runSetDisabled();
                    break;
                case "verify":
                    runVerify();
                    break;
                case "get-disabled":
                    runGetDisabled();
                    break;
                default:
                    getErrPrintWriter().println("Unknown command: " + cmd);
                    break;
            }
            return success ? 0 : -1;
        } catch (Exception e) {
            getErrPrintWriter().println("Error while executing command: " + cmd);
            e.printStackTrace(getErrPrintWriter());
            return -1;
        }
    }

    private void runVerify() {
        getOutPrintWriter().println("Lock credential verified successfully");
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        try {
            pw.println("lockSettings service commands:");
            pw.println("");
            pw.println("NOTE: when lock screen is set, all commands require the --old <CREDENTIAL> argument.");
            pw.println("");
            pw.println("  help");
            pw.println("    Prints this help text.");
            pw.println("");
            pw.println("  get-disabled [--old <CREDENTIAL>] [--user USER_ID]");
            pw.println("    Checks whether lock screen is disabled.");
            pw.println("");
            pw.println("  set-disabled [--old <CREDENTIAL>] [--user USER_ID] <true|false>");
            pw.println("    When true, disables lock screen.");
            pw.println("");
            pw.println("  set-pattern [--old <CREDENTIAL>] [--user USER_ID] <PATTERN>");
            pw.println("    Sets the lock screen as pattern, using the given PATTERN to unlock.");
            pw.println("");
            pw.println("  set-pin [--old <CREDENTIAL>] [--user USER_ID] <PIN>");
            pw.println("    Sets the lock screen as PIN, using the given PIN to unlock.");
            pw.println("");
            pw.println("  set-pin [--old <CREDENTIAL>] [--user USER_ID] <PASSWORD>");
            pw.println("    Sets the lock screen as password, using the given PASSOWRD to unlock.");
            pw.println("");
            pw.println("  sp [--old <CREDENTIAL>] [--user USER_ID]");
            pw.println("    Gets whether synthetic password is enabled.");
            pw.println("");
            pw.println("  sp [--old <CREDENTIAL>] [--user USER_ID] <1|0>");
            pw.println("    Enables / disables synthetic password.");
            pw.println("");
            pw.println("  clear [--old <CREDENTIAL>] [--user USER_ID]");
            pw.println("    Clears the lock credentials.");
            pw.println("");
            pw.println("  verify [--old <CREDENTIAL>] [--user USER_ID]");
            pw.println("    Verifies the lock credentials.");
            pw.println("");
            pw.println("  remove-cache [--user USER_ID]");
            pw.println("    Removes cached unified challenge for the managed profile.");
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

    private void parseArgs() {
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                if ("--old".equals(opt)) {
                    this.mOld = getNextArgRequired();
                } else if ("--user".equals(opt)) {
                    this.mCurrentUserId = Integer.parseInt(getNextArgRequired());
                } else {
                    getErrPrintWriter().println("Unknown option: " + opt);
                    throw new IllegalArgumentException();
                }
            } else {
                this.mNew = getNextArg();
                return;
            }
        }
    }

    private void runChangeSp() {
        String str = this.mNew;
        if (str != null) {
            if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(str)) {
                this.mLockPatternUtils.enableSyntheticPassword();
                getOutPrintWriter().println("Synthetic password enabled");
            } else if ("0".equals(this.mNew)) {
                this.mLockPatternUtils.disableSyntheticPassword();
                getOutPrintWriter().println("Synthetic password disabled");
            }
        }
        getOutPrintWriter().println(String.format("SP Enabled = %b", Boolean.valueOf(this.mLockPatternUtils.isSyntheticPasswordEnabled())));
    }

    private LockscreenCredential getOldCredential() {
        if (TextUtils.isEmpty(this.mOld)) {
            return LockscreenCredential.createNone();
        }
        if (this.mLockPatternUtils.isLockPasswordEnabled(this.mCurrentUserId)) {
            int quality = this.mLockPatternUtils.getKeyguardStoredPasswordQuality(this.mCurrentUserId);
            if (LockPatternUtils.isQualityAlphabeticPassword(quality)) {
                return LockscreenCredential.createPassword(this.mOld);
            }
            return LockscreenCredential.createPin(this.mOld);
        }
        if (this.mLockPatternUtils.isLockPatternEnabled(this.mCurrentUserId)) {
            return LockscreenCredential.createPattern(LockPatternUtils.byteArrayToPattern(this.mOld.getBytes()));
        }
        return LockscreenCredential.createPassword(this.mOld);
    }

    private boolean runSetPattern() {
        LockscreenCredential pattern = LockscreenCredential.createPattern(LockPatternUtils.byteArrayToPattern(this.mNew.getBytes()));
        if (!isNewCredentialSufficient(pattern)) {
            return false;
        }
        this.mLockPatternUtils.setLockCredential(pattern, getOldCredential(), this.mCurrentUserId);
        getOutPrintWriter().println("Pattern set to '" + this.mNew + "'");
        return true;
    }

    private boolean runSetPassword() {
        LockscreenCredential password = LockscreenCredential.createPassword(this.mNew);
        if (!isNewCredentialSufficient(password)) {
            return false;
        }
        this.mLockPatternUtils.setLockCredential(password, getOldCredential(), this.mCurrentUserId);
        getOutPrintWriter().println("Password set to '" + this.mNew + "'");
        return true;
    }

    private boolean runSetPin() {
        LockscreenCredential pin = LockscreenCredential.createPin(this.mNew);
        if (!isNewCredentialSufficient(pin)) {
            return false;
        }
        this.mLockPatternUtils.setLockCredential(pin, getOldCredential(), this.mCurrentUserId);
        getOutPrintWriter().println("Pin set to '" + this.mNew + "'");
        return true;
    }

    private boolean runClear() {
        LockscreenCredential none = LockscreenCredential.createNone();
        if (!isNewCredentialSufficient(none)) {
            return false;
        }
        this.mLockPatternUtils.setLockCredential(none, getOldCredential(), this.mCurrentUserId);
        getOutPrintWriter().println("Lock credential cleared");
        return true;
    }

    private boolean isNewCredentialSufficient(LockscreenCredential credential) {
        List<PasswordValidationError> errors;
        PasswordMetrics requiredMetrics = this.mLockPatternUtils.getRequestedPasswordMetrics(this.mCurrentUserId);
        if (credential.isPassword() || credential.isPin()) {
            errors = PasswordMetrics.validatePassword(requiredMetrics, 0, credential.isPin(), credential.getCredential());
        } else {
            PasswordMetrics metrics = new PasswordMetrics(credential.isPattern() ? 1 : -1);
            errors = PasswordMetrics.validatePasswordMetrics(requiredMetrics, 0, false, metrics);
        }
        if (errors.isEmpty()) {
            return true;
        }
        getOutPrintWriter().println("New credential doesn't satisfy admin policies: " + errors.get(0));
        return false;
    }

    private void runSetDisabled() {
        boolean disabled = Boolean.parseBoolean(this.mNew);
        this.mLockPatternUtils.setLockScreenDisabled(disabled, this.mCurrentUserId);
        getOutPrintWriter().println("Lock screen disabled set to " + disabled);
    }

    private void runGetDisabled() {
        boolean isLockScreenDisabled = this.mLockPatternUtils.isLockScreenDisabled(this.mCurrentUserId);
        getOutPrintWriter().println(isLockScreenDisabled);
    }

    private boolean checkCredential() {
        if (this.mLockPatternUtils.isSecure(this.mCurrentUserId)) {
            if (this.mLockPatternUtils.isManagedProfileWithUnifiedChallenge(this.mCurrentUserId)) {
                getOutPrintWriter().println("Profile uses unified challenge");
                return false;
            }
            try {
                boolean result = this.mLockPatternUtils.checkCredential(getOldCredential(), this.mCurrentUserId, (LockPatternUtils.CheckCredentialProgressCallback) null);
                if (!result) {
                    if (!this.mLockPatternUtils.isManagedProfileWithUnifiedChallenge(this.mCurrentUserId)) {
                        this.mLockPatternUtils.reportFailedPasswordAttempt(this.mCurrentUserId);
                    }
                    getOutPrintWriter().println("Old password '" + this.mOld + "' didn't match");
                } else {
                    this.mLockPatternUtils.reportSuccessfulPasswordAttempt(this.mCurrentUserId);
                }
                return result;
            } catch (LockPatternUtils.RequestThrottledException e) {
                getOutPrintWriter().println("Request throttled");
                return false;
            }
        }
        if (!this.mOld.isEmpty()) {
            getOutPrintWriter().println("Old password provided but user has no password");
            return false;
        }
        return true;
    }

    private void runRemoveCache() {
        this.mLockPatternUtils.removeCachedUnifiedChallenge(this.mCurrentUserId);
        getOutPrintWriter().println("Password cached removed for user " + this.mCurrentUserId);
    }
}

package com.android.server.role;

import android.app.role.IRoleManager;
import android.os.Bundle;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.os.ShellCommand;
import android.os.UserHandle;
import android.util.Log;
import java.io.PrintWriter;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
class RoleManagerShellCommand extends ShellCommand {
    private final IRoleManager mRoleManager;

    RoleManagerShellCommand(IRoleManager roleManager) {
        this.mRoleManager = roleManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class CallbackFuture extends CompletableFuture<Void> {
        private CallbackFuture() {
        }

        public RemoteCallback createCallback() {
            return new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.role.-$$Lambda$RoleManagerShellCommand$CallbackFuture$ya02agfKUbaiv_zXc0xWEop421Q
                public final void onResult(Bundle bundle) {
                    this.f$0.lambda$createCallback$0$RoleManagerShellCommand$CallbackFuture(bundle);
                }
            });
        }

        public /* synthetic */ void lambda$createCallback$0$RoleManagerShellCommand$CallbackFuture(Bundle result) {
            boolean successful = result != null;
            if (successful) {
                complete(null);
            } else {
                completeExceptionally(new RuntimeException("Failed"));
            }
        }

        public int waitForResult() {
            try {
                get(5L, TimeUnit.SECONDS);
                return 0;
            } catch (Exception e) {
                RoleManagerShellCommand.this.getErrPrintWriter().println("Error: see logcat for details.\n" + Log.getStackTraceString(e));
                return -1;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0021  */
    public int onCommand(String cmd) {
        byte b;
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        PrintWriter pw = getOutPrintWriter();
        try {
            int iHashCode = cmd.hashCode();
            if (iHashCode != -1831663689) {
                if (iHashCode != -1502066320) {
                    b = (iHashCode == -1274754278 && cmd.equals("remove-role-holder")) ? (byte) 1 : (byte) -1;
                } else if (cmd.equals("clear-role-holders")) {
                    b = 2;
                }
            } else if (cmd.equals("add-role-holder")) {
                b = 0;
            }
            if (b == 0) {
                return runAddRoleHolder();
            }
            if (b == 1) {
                return runRemoveRoleHolder();
            }
            if (b == 2) {
                return runClearRoleHolders();
            }
            return handleDefaultCommands(cmd);
        } catch (RemoteException e) {
            pw.println("Remote exception: " + e);
            return -1;
        }
    }

    private int getUserIdMaybe() {
        String option = getNextOption();
        if (option == null || !option.equals("--user")) {
            return 0;
        }
        int userId = UserHandle.parseUserArg(getNextArgRequired());
        return userId;
    }

    private int getFlagsMaybe() {
        String flags = getNextArg();
        if (flags == null) {
            return 0;
        }
        return Integer.parseInt(flags);
    }

    private int runAddRoleHolder() throws RemoteException {
        int userId = getUserIdMaybe();
        String roleName = getNextArgRequired();
        String packageName = getNextArgRequired();
        int flags = getFlagsMaybe();
        CallbackFuture future = new CallbackFuture();
        this.mRoleManager.addRoleHolderAsUser(roleName, packageName, flags, userId, future.createCallback());
        return future.waitForResult();
    }

    private int runRemoveRoleHolder() throws RemoteException {
        int userId = getUserIdMaybe();
        String roleName = getNextArgRequired();
        String packageName = getNextArgRequired();
        int flags = getFlagsMaybe();
        CallbackFuture future = new CallbackFuture();
        this.mRoleManager.removeRoleHolderAsUser(roleName, packageName, flags, userId, future.createCallback());
        return future.waitForResult();
    }

    private int runClearRoleHolders() throws RemoteException {
        int userId = getUserIdMaybe();
        String roleName = getNextArgRequired();
        int flags = getFlagsMaybe();
        CallbackFuture future = new CallbackFuture();
        this.mRoleManager.clearRoleHoldersAsUser(roleName, flags, userId, future.createCallback());
        return future.waitForResult();
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("Role manager (role) commands:");
        pw.println("  help");
        pw.println("    Print this help text.");
        pw.println();
        pw.println("  add-role-holder [--user USER_ID] ROLE PACKAGE [FLAGS]");
        pw.println("  remove-role-holder [--user USER_ID] ROLE PACKAGE [FLAGS]");
        pw.println("  clear-role-holders [--user USER_ID] ROLE [FLAGS]");
        pw.println();
    }
}

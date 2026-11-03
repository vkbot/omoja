package com.mega.nexus.app.role;

import android.app.role.RoleManager;
import android.os.UserHandle;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class MegaRoleManager {
    public static void addRoleHolderAsUser(RoleManager roleManager, String str, String str2, int i, UserHandle userHandle, Executor executor, Consumer<Boolean> consumer) {
        roleManager.addRoleHolderAsUser(str, str2, i, userHandle, executor, consumer);
    }
}

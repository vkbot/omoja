package com.mega.nexus.os;

import android.os.Binder;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;

/* JADX INFO: loaded from: classes2.dex */
public final class MegaUserHandle {
    public static final UserHandle ALL = UserHandle.ALL;
    public static final UserHandle CURRENT = UserHandle.CURRENT;
    public static final UserHandle CURRENT_OR_SELF = UserHandle.CURRENT_OR_SELF;
    public static final UserHandle CURRENT_OR_SYSTEM = UserHandle.CURRENT;
    public static final UserHandle OWNER = UserHandle.OWNER;
    public static final UserHandle SYSTEM = UserHandle.SYSTEM;
    public static final int USER_ALL = -1;
    public static final int USER_CURRENT = -2;
    public static final int USER_CURRENT_OR_SELF = -3;
    public static final int USER_CURRENT_OR_SYSTEM = -2;
    public static final int USER_NULL = -10000;
    public static final int USER_OWNER = 0;
    public static final int USER_SYSTEM = 0;

    public static boolean isSameApp(int i, int i2) {
        return UserHandle.getAppId(i) == UserHandle.getAppId(i2);
    }

    public static int getAppId(int i) {
        return UserHandle.getAppId(i);
    }

    public static boolean isSplitSystemUser() {
        return UserManager.isSplitSystemUser();
    }

    public static int myUserId() {
        return UserHandle.getUserId(Process.myUid());
    }

    public static UserHandle of(int i) {
        return i == 0 ? SYSTEM : new UserHandle(i);
    }

    public static int getIdentifier(UserHandle userHandle) {
        return userHandle.getIdentifier();
    }

    public static int getCallingUserId() {
        return UserHandle.getUserId(Binder.getCallingUid());
    }

    public static int getUserId(int i) {
        return UserHandle.getUserId(i);
    }
}

package com.android.launcher3.util;

import android.content.pm.ActivityInfo;
import android.os.Process;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import com.android.launcher3.model.data.ItemInfo;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class PackageUserKey {
    private int mHashCode;
    public String mPackageName;
    public UserHandle mUser;

    public int hashCode() {
        return this.mHashCode;
    }

    public static PackageUserKey fromItemInfo(ItemInfo info) {
        if (info.getTargetComponent() == null) {
            return null;
        }
        return new PackageUserKey(info.getTargetComponent().getPackageName(), info.user);
    }

    public static PackageUserKey fromActivityInfo(ActivityInfo info) {
        if (info == null) {
            return null;
        }
        return new PackageUserKey(info.packageName, Process.myUserHandle());
    }

    public static PackageUserKey fromNotification(StatusBarNotification notification) {
        return new PackageUserKey(notification.getPackageName(), notification.getUser());
    }

    public PackageUserKey(String packageName, UserHandle user) {
        update(packageName, user);
    }

    public void update(String packageName, UserHandle user) {
        this.mPackageName = packageName;
        this.mUser = user;
        this.mHashCode = Arrays.hashCode(new Object[]{packageName, user});
    }

    public boolean updateFromItemInfo(ItemInfo info) {
        if (info.getTargetComponent() == null || !ShortcutUtil.supportsShortcuts(info)) {
            return false;
        }
        update(info.getTargetComponent().getPackageName(), info.user);
        return true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PackageUserKey)) {
            return false;
        }
        PackageUserKey packageUserKey = (PackageUserKey) obj;
        return this.mPackageName.equals(packageUserKey.mPackageName) && this.mUser.equals(packageUserKey.mUser);
    }

    public String toString() {
        return this.mPackageName + "#" + this.mUser;
    }
}

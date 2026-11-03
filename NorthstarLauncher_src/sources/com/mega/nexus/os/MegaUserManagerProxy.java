package com.mega.nexus.os;

import android.content.Context;
import android.content.pm.UserInfo;
import android.os.UserHandle;
import android.os.UserManager;
import com.mega.launcherapi.WallpaperConstant;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class MegaUserManagerProxy {
    public static final int RESTRICTION_SOURCE_DEVICE_OWNER = 2;
    public static final int RESTRICTION_SOURCE_PROFILE_OWNER = 4;

    public static UserManager get(Context context) {
        return UserManager.get(context);
    }

    public static List<UserInfo> getUsers(UserManager userManager) {
        return userManager.getUsers();
    }

    public static List<UserInfo> getProfiles(UserManager userManager, int i) {
        return userManager.getProfiles(i);
    }

    public static boolean isManagedProfile(UserManager userManager, int i) {
        return userManager.isManagedProfile(i);
    }

    public static boolean isUserAdmin(UserManager userManager, int i) {
        return userManager.isUserAdmin(i);
    }

    public static int[] getProfileIdsWithDisabled(UserManager userManager, int i) {
        return userManager.getProfileIdsWithDisabled(i);
    }

    public static boolean hasBaseUserRestriction(UserManager userManager, String str, UserHandle userHandle) {
        return userManager.hasBaseUserRestriction(str, userHandle);
    }

    public static Map<String, Integer> getUserRestrictionSources(UserManager userManager, String str, UserHandle userHandle) {
        HashMap map = new HashMap();
        List userRestrictionSources = userManager.getUserRestrictionSources(str, userHandle);
        if (userRestrictionSources.isEmpty()) {
            map.put("size", 0);
            return map;
        }
        if (userRestrictionSources.size() > 1) {
            map.put("size", 2);
            return map;
        }
        int userRestrictionSource = ((UserManager.EnforcingUser) userRestrictionSources.get(0)).getUserRestrictionSource();
        int identifier = ((UserManager.EnforcingUser) userRestrictionSources.get(0)).getUserHandle().getIdentifier();
        map.put("size", 1);
        map.put("source", Integer.valueOf(userRestrictionSource));
        map.put(WallpaperConstant.WALLPAPER_COLUMN_ID, Integer.valueOf(identifier));
        return map;
    }

    public static UserInfo getProfileParent(UserManager userManager, int i) {
        return userManager.getProfileParent(i);
    }

    public static boolean isSplitSystemUser(UserManager userManager) {
        return UserManager.isSplitSystemUser();
    }
}

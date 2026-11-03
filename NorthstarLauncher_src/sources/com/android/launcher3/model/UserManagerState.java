package com.android.launcher3.model;

import android.os.UserHandle;
import android.os.UserManager;
import android.util.LongSparseArray;
import android.util.SparseBooleanArray;
import com.android.launcher3.pm.UserCache;

/* JADX INFO: loaded from: classes.dex */
public class UserManagerState {
    public final LongSparseArray<UserHandle> allUsers = new LongSparseArray<>();
    private final LongSparseArray<Boolean> mQuietUsersSerialNoMap = new LongSparseArray<>();
    private final SparseBooleanArray mQuietUsersHashCodeMap = new SparseBooleanArray();

    public void init(UserCache userCache, UserManager userManager) {
        for (UserHandle userHandle : userCache.getUserProfiles()) {
            long serialNumberForUser = userCache.getSerialNumberForUser(userHandle);
            boolean zIsQuietModeEnabled = userManager.isQuietModeEnabled(userHandle);
            this.allUsers.put(serialNumberForUser, userHandle);
            this.mQuietUsersHashCodeMap.put(userHandle.hashCode(), zIsQuietModeEnabled);
            this.mQuietUsersSerialNoMap.put(serialNumberForUser, Boolean.valueOf(zIsQuietModeEnabled));
        }
    }

    public boolean isUserQuiet(long serialNo) {
        return this.mQuietUsersSerialNoMap.get(serialNo).booleanValue();
    }

    public boolean isUserQuiet(UserHandle user) {
        return this.mQuietUsersHashCodeMap.get(user.hashCode());
    }

    public boolean isAnyProfileQuietModeEnabled() {
        for (int size = this.mQuietUsersHashCodeMap.size() - 1; size >= 0; size--) {
            if (this.mQuietUsersHashCodeMap.valueAt(size)) {
                return true;
            }
        }
        return false;
    }
}

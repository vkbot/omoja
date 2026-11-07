package com.android.server.pm;

import com.android.server.pm.permission.PermissionsState;

/* JADX INFO: loaded from: classes.dex */
public abstract class SettingBase {
    protected final PermissionsState mPermissionsState;
    int pkgFlags;
    int pkgPrivateFlags;

    SettingBase(int pkgFlags, int pkgPrivateFlags) {
        setFlags(pkgFlags);
        setPrivateFlags(pkgPrivateFlags);
        this.mPermissionsState = new PermissionsState();
    }

    SettingBase(SettingBase orig) {
        this.mPermissionsState = new PermissionsState();
        doCopy(orig);
    }

    public void copyFrom(SettingBase orig) {
        doCopy(orig);
    }

    private void doCopy(SettingBase orig) {
        this.pkgFlags = orig.pkgFlags;
        this.pkgPrivateFlags = orig.pkgPrivateFlags;
        this.mPermissionsState.copyFrom(orig.mPermissionsState);
    }

    public PermissionsState getPermissionsState() {
        return this.mPermissionsState;
    }

    void setFlags(int pkgFlags) {
        this.pkgFlags = 262145 & pkgFlags;
    }

    void setPrivateFlags(int pkgPrivateFlags) {
        this.pkgPrivateFlags = 1076757000 & pkgPrivateFlags;
    }
}

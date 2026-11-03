package com.mega.nexus.content.pm;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.RemoteException;
import com.mega.nexus.MegaNexusManager;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MegaIPackageManager extends MegaNexusManager {

    private static final class Holder {
        private static final MegaIPackageManager INSTANCE = new MegaIPackageManager();

        private Holder() {
        }
    }

    private MegaIPackageManager() {
    }

    public static MegaIPackageManager getInstance() {
        return Holder.INSTANCE;
    }

    public List<PackageInfo> getInstalledPackagesAsUser(int i, int i2) {
        List<PackageInfo> installedPackagesAsUser;
        try {
            installedPackagesAsUser = getNexusService().getInstalledPackagesAsUser(i, i2);
        } catch (RemoteException e) {
            e.printStackTrace();
            installedPackagesAsUser = null;
        }
        return installedPackagesAsUser == null ? Collections.emptyList() : installedPackagesAsUser;
    }

    public PackageInfo getPackageInfoAsUser(String str, int i, int i2) {
        try {
            return getNexusService().getPackageInfoAsUser(str, i, i2);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public ApplicationInfo getApplicationInfoAsUser(String str, int i, int i2) {
        try {
            return getNexusService().getApplicationInfoAsUser(str, i, i2);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }
}

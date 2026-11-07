package com.android.server.pm.dex;

import android.content.pm.parsing.PackageInfoWithoutStateUtils;
import android.os.Binder;
import android.os.UserHandle;
import android.util.Log;
import com.android.server.pm.Installer;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class ViewCompiler {
    private final Object mInstallLock;
    private final Installer mInstaller;

    public ViewCompiler(Object installLock, Installer installer) {
        this.mInstallLock = installLock;
        this.mInstaller = installer;
    }

    public boolean compileLayouts(AndroidPackage pkg) {
        boolean zCompileLayouts;
        try {
            String packageName = pkg.getPackageName();
            String apkPath = pkg.getBaseCodePath();
            File dataDir = PackageInfoWithoutStateUtils.getDataDir(pkg, UserHandle.myUserId());
            String outDexFile = dataDir.getAbsolutePath() + "/code_cache/compiled_view.dex";
            Log.i("PackageManager", "Compiling layouts in " + packageName + " (" + apkPath + ") to " + outDexFile);
            long callingId = Binder.clearCallingIdentity();
            try {
                synchronized (this.mInstallLock) {
                    zCompileLayouts = this.mInstaller.compileLayouts(apkPath, packageName, outDexFile, pkg.getUid());
                }
                Binder.restoreCallingIdentity(callingId);
                return zCompileLayouts;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(callingId);
                throw th;
            }
        } catch (Throwable e) {
            Log.e("PackageManager", "Failed to compile layouts", e);
            return false;
        }
    }
}

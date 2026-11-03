package com.mega.nexus.content.om;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.mega.nexus.MegaNexusManager;

/* JADX INFO: loaded from: classes2.dex */
public class MegaOverlayManager extends MegaNexusManager {
    private static final String TAG = "MegaOverlayManager";
    private String mOverlayPackageName;

    public void setOverlayPackageName(String str) {
        this.mOverlayPackageName = str;
    }

    private static final class Holder {
        private static final MegaOverlayManager INSTANCE = new MegaOverlayManager();

        private Holder() {
        }
    }

    private MegaOverlayManager() {
    }

    public static MegaOverlayManager getInstance() {
        return Holder.INSTANCE;
    }

    public boolean setEnabled(String str, boolean z, int i) {
        try {
            return getNexusService().setOverlayEnabled(str, z, i);
        } catch (RemoteException e) {
            Log.e(TAG, e.getMessage());
            return false;
        }
    }

    public boolean setOverlayEnabledExclusive(String str, boolean z, int i) {
        try {
            return getNexusService().setOverlayEnabledExclusive(str, z, i);
        } catch (RemoteException e) {
            Log.e(TAG, e.getMessage());
            return false;
        }
    }

    public int getResourceId(Context context, int i, String str, String str2) {
        int identifier;
        Resources resources = getResources(context);
        return (resources == null || (identifier = resources.getIdentifier(str, str2, this.mOverlayPackageName)) <= 0) ? i : identifier;
    }

    private Resources getResources(Context context) {
        String overlayPackageName = getOverlayPackageName(context);
        this.mOverlayPackageName = overlayPackageName;
        if (TextUtils.isEmpty(overlayPackageName)) {
            return null;
        }
        try {
            return context.getPackageManager().getResourcesForApplication(this.mOverlayPackageName);
        } catch (PackageManager.NameNotFoundException e) {
            Log.w(TAG, e.getMessage());
            return null;
        }
    }

    public String getOverlayPackageName(Context context) {
        if (TextUtils.isEmpty(this.mOverlayPackageName)) {
            try {
                this.mOverlayPackageName = getNexusService().getOverlayPackageName(context.getPackageName());
            } catch (RemoteException e) {
                Log.w(TAG, e.getMessage());
            }
        }
        return this.mOverlayPackageName;
    }
}

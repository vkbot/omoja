package com.android.server.pm;

import android.R;
import android.content.Context;
import android.content.pm.IPackageManager;
import android.content.pm.ModuleInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Slog;
import com.android.internal.util.XmlUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class ModuleInfoProvider {
    private static final String MODULE_METADATA_KEY = "android.content.pm.MODULE_METADATA";
    private static final String TAG = "PackageManager.ModuleInfoProvider";
    private final ApexManager mApexManager;
    private final Context mContext;
    private volatile boolean mMetadataLoaded;
    private final Map<String, ModuleInfo> mModuleInfo;
    private final IPackageManager mPackageManager;
    private volatile String mPackageName;

    ModuleInfoProvider(Context context, IPackageManager packageManager) {
        this.mContext = context;
        this.mPackageManager = packageManager;
        this.mApexManager = ApexManager.getInstance();
        this.mModuleInfo = new ArrayMap();
    }

    public ModuleInfoProvider(XmlResourceParser metadata, Resources resources, ApexManager apexManager) {
        this.mContext = null;
        this.mPackageManager = null;
        this.mApexManager = apexManager;
        this.mModuleInfo = new ArrayMap();
        loadModuleMetadata(metadata, resources);
    }

    public void systemReady() {
        this.mPackageName = this.mContext.getResources().getString(R.string.config_displayWhiteBalanceColorTemperatureSensorName);
        if (TextUtils.isEmpty(this.mPackageName)) {
            Slog.w(TAG, "No configured module metadata provider.");
            return;
        }
        try {
            PackageInfo pi = this.mPackageManager.getPackageInfo(this.mPackageName, 128, 0);
            Context packageContext = this.mContext.createPackageContext(this.mPackageName, 0);
            Resources packageResources = packageContext.getResources();
            XmlResourceParser parser = packageResources.getXml(pi.applicationInfo.metaData.getInt(MODULE_METADATA_KEY));
            loadModuleMetadata(parser, packageResources);
        } catch (PackageManager.NameNotFoundException | RemoteException e) {
            Slog.w(TAG, "Unable to discover metadata package: " + this.mPackageName, e);
        }
    }

    private void loadModuleMetadata(XmlResourceParser parser, Resources packageResources) {
        try {
            try {
                XmlUtils.beginDocument(parser, "module-metadata");
                while (true) {
                    XmlUtils.nextElement(parser);
                    if (parser.getEventType() == 1) {
                        break;
                    }
                    if (!"module".equals(parser.getName())) {
                        Slog.w(TAG, "Unexpected metadata element: " + parser.getName());
                        this.mModuleInfo.clear();
                        break;
                    }
                    CharSequence moduleName = packageResources.getText(Integer.parseInt(parser.getAttributeValue(null, Settings.ATTR_NAME).substring(1)));
                    String modulePackageName = XmlUtils.readStringAttribute(parser, "packageName");
                    boolean isHidden = XmlUtils.readBooleanAttribute(parser, "isHidden");
                    ModuleInfo mi = new ModuleInfo();
                    mi.setHidden(isHidden);
                    mi.setPackageName(modulePackageName);
                    mi.setName(moduleName);
                    mi.setApexModuleName(this.mApexManager.getApexModuleNameForPackageName(modulePackageName));
                    this.mModuleInfo.put(modulePackageName, mi);
                }
            } catch (IOException | XmlPullParserException e) {
                Slog.w(TAG, "Error parsing module metadata", e);
                this.mModuleInfo.clear();
            }
        } finally {
            parser.close();
            this.mMetadataLoaded = true;
        }
    }

    List<ModuleInfo> getInstalledModules(int flags) {
        if (!this.mMetadataLoaded) {
            throw new IllegalStateException("Call to getInstalledModules before metadata loaded");
        }
        if ((131072 & flags) != 0) {
            return new ArrayList(this.mModuleInfo.values());
        }
        try {
            List<PackageInfo> allPackages = this.mPackageManager.getInstalledPackages(1073741824 | flags, 0).getList();
            ArrayList<ModuleInfo> installedModules = new ArrayList<>(allPackages.size());
            for (PackageInfo p : allPackages) {
                ModuleInfo m = this.mModuleInfo.get(p.packageName);
                if (m != null) {
                    installedModules.add(m);
                }
            }
            return installedModules;
        } catch (RemoteException e) {
            Slog.w(TAG, "Unable to retrieve all package names", e);
            return Collections.emptyList();
        }
    }

    ModuleInfo getModuleInfo(String name, int flags) {
        if (!this.mMetadataLoaded) {
            throw new IllegalStateException("Call to getModuleInfo before metadata loaded");
        }
        if ((flags & 1) != 0) {
            for (ModuleInfo moduleInfo : this.mModuleInfo.values()) {
                if (name.equals(moduleInfo.getApexModuleName())) {
                    return moduleInfo;
                }
            }
            return null;
        }
        return this.mModuleInfo.get(name);
    }

    String getPackageName() {
        if (!this.mMetadataLoaded) {
            throw new IllegalStateException("Call to getVersion before metadata loaded");
        }
        return this.mPackageName;
    }
}

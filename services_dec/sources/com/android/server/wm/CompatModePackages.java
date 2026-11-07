package com.android.server.wm;

import android.app.AppGlobals;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.SparseArray;
import android.util.Xml;
import com.android.internal.util.FastXmlSerializer;
import com.android.server.job.controllers.JobStatus;
import com.android.server.pm.Settings;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public final class CompatModePackages {
    private static final int COMPAT_FLAG_DONT_ASK = 1;
    private static final int COMPAT_FLAG_ENABLED = 2;
    private static final int MSG_WRITE = 300;
    private static final String TAG = "ActivityTaskManager";
    private static final String TAG_CONFIGURATION = "ActivityTaskManager";
    private final AtomicFile mFile;
    private final CompatHandler mHandler;
    private final HashMap<String, Integer> mPackages = new HashMap<>();
    private final ActivityTaskManagerService mService;

    private final class CompatHandler extends Handler {
        public CompatHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 300) {
                CompatModePackages.this.saveCompatModes();
            }
        }
    }

    public CompatModePackages(ActivityTaskManagerService service, File systemDir, Handler handler) throws XmlPullParserException, IOException {
        int eventType;
        String pkg;
        this.mService = service;
        this.mFile = new AtomicFile(new File(systemDir, "packages-compat.xml"), "compat-mode");
        this.mHandler = new CompatHandler(handler.getLooper());
        FileInputStream fis = null;
        try {
            try {
                try {
                    try {
                        fis = this.mFile.openRead();
                        XmlPullParser parser = Xml.newPullParser();
                        parser.setInput(fis, StandardCharsets.UTF_8.name());
                        int eventType2 = parser.getEventType();
                        while (true) {
                            eventType = eventType2;
                            if (eventType == 2 || eventType == 1) {
                                break;
                            } else {
                                eventType2 = parser.next();
                            }
                        }
                        if (eventType == 1) {
                            if (fis != null) {
                                try {
                                    fis.close();
                                    return;
                                } catch (IOException e) {
                                    return;
                                }
                            }
                            return;
                        }
                        String tagName = parser.getName();
                        if ("compat-packages".equals(tagName)) {
                            int eventType3 = parser.next();
                            do {
                                if (eventType3 == 2) {
                                    String tagName2 = parser.getName();
                                    if (parser.getDepth() == 2 && "pkg".equals(tagName2) && (pkg = parser.getAttributeValue(null, Settings.ATTR_NAME)) != null) {
                                        String mode = parser.getAttributeValue(null, "mode");
                                        int modeInt = 0;
                                        if (mode != null) {
                                            try {
                                                modeInt = Integer.parseInt(mode);
                                            } catch (NumberFormatException e2) {
                                            }
                                        }
                                        this.mPackages.put(pkg, Integer.valueOf(modeInt));
                                    }
                                }
                                eventType3 = parser.next();
                            } while (eventType3 != 1);
                        }
                        if (fis != null) {
                            fis.close();
                        }
                    } catch (XmlPullParserException e3) {
                        Slog.w("ActivityTaskManager", "Error reading compat-packages", e3);
                        if (fis != null) {
                            fis.close();
                        }
                    }
                } catch (IOException e4) {
                }
            } catch (IOException e5) {
                if (fis != null) {
                    Slog.w("ActivityTaskManager", "Error reading compat-packages", e5);
                }
                if (fis != null) {
                    fis.close();
                }
            }
        } catch (Throwable th) {
            if (0 == 0) {
                throw th;
            }
            try {
                fis.close();
                throw th;
            } catch (IOException e6) {
                throw th;
            }
        }
    }

    public HashMap<String, Integer> getPackages() {
        return this.mPackages;
    }

    private int getPackageFlags(String packageName) {
        Integer flags = this.mPackages.get(packageName);
        if (flags != null) {
            return flags.intValue();
        }
        return 0;
    }

    public void handlePackageDataClearedLocked(String packageName) {
        removePackage(packageName);
    }

    public void handlePackageUninstalledLocked(String packageName) {
        removePackage(packageName);
    }

    private void removePackage(String packageName) {
        if (this.mPackages.containsKey(packageName)) {
            this.mPackages.remove(packageName);
            scheduleWrite();
        }
    }

    public void handlePackageAddedLocked(String packageName, boolean updated) {
        ApplicationInfo ai = null;
        boolean mayCompat = false;
        try {
            ai = AppGlobals.getPackageManager().getApplicationInfo(packageName, 0, 0);
        } catch (RemoteException e) {
        }
        if (ai == null) {
            return;
        }
        CompatibilityInfo ci = compatibilityInfoForPackageLocked(ai);
        if (!ci.alwaysSupportsScreen() && !ci.neverSupportsScreen()) {
            mayCompat = true;
        }
        if (updated && !mayCompat && this.mPackages.containsKey(packageName)) {
            this.mPackages.remove(packageName);
            scheduleWrite();
        }
    }

    private void scheduleWrite() {
        this.mHandler.removeMessages(300);
        Message msg = this.mHandler.obtainMessage(300);
        this.mHandler.sendMessageDelayed(msg, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
    }

    public CompatibilityInfo compatibilityInfoForPackageLocked(ApplicationInfo ai) {
        Configuration globalConfig = this.mService.getGlobalConfiguration();
        CompatibilityInfo ci = new CompatibilityInfo(ai, globalConfig.screenLayout, globalConfig.smallestScreenWidthDp, (getPackageFlags(ai.packageName) & 2) != 0);
        return ci;
    }

    public int computeCompatModeLocked(ApplicationInfo ai) {
        boolean enabled = (getPackageFlags(ai.packageName) & 2) != 0;
        Configuration globalConfig = this.mService.getGlobalConfiguration();
        CompatibilityInfo info = new CompatibilityInfo(ai, globalConfig.screenLayout, globalConfig.smallestScreenWidthDp, enabled);
        if (info.alwaysSupportsScreen()) {
            return -2;
        }
        if (info.neverSupportsScreen()) {
            return -1;
        }
        return enabled ? 1 : 0;
    }

    public boolean getPackageAskCompatModeLocked(String packageName) {
        return (getPackageFlags(packageName) & 1) == 0;
    }

    public void setPackageAskCompatModeLocked(String packageName, boolean ask) {
        setPackageFlagLocked(packageName, 1, ask);
    }

    private void setPackageFlagLocked(String packageName, int flag, boolean set) {
        int curFlags = getPackageFlags(packageName);
        int newFlags = set ? (~flag) & curFlags : curFlags | flag;
        if (curFlags != newFlags) {
            if (newFlags != 0) {
                this.mPackages.put(packageName, Integer.valueOf(newFlags));
            } else {
                this.mPackages.remove(packageName);
            }
            scheduleWrite();
        }
    }

    public int getPackageScreenCompatModeLocked(String packageName) {
        ApplicationInfo ai = null;
        try {
            ai = AppGlobals.getPackageManager().getApplicationInfo(packageName, 0, 0);
        } catch (RemoteException e) {
        }
        if (ai == null) {
            return -3;
        }
        return computeCompatModeLocked(ai);
    }

    public void setPackageScreenCompatModeLocked(String packageName, int mode) {
        ApplicationInfo ai = null;
        try {
            ai = AppGlobals.getPackageManager().getApplicationInfo(packageName, 0, 0);
        } catch (RemoteException e) {
        }
        if (ai == null) {
            Slog.w("ActivityTaskManager", "setPackageScreenCompatMode failed: unknown package " + packageName);
            return;
        }
        setPackageScreenCompatModeLocked(ai, mode);
    }

    void setPackageScreenCompatModeLocked(ApplicationInfo ai, int mode) {
        boolean enable;
        int newFlags;
        String packageName = ai.packageName;
        int curFlags = getPackageFlags(packageName);
        if (mode == 0) {
            enable = false;
        } else if (mode == 1) {
            enable = true;
        } else {
            if (mode != 2) {
                Slog.w("ActivityTaskManager", "Unknown screen compat mode req #" + mode + "; ignoring");
                return;
            }
            enable = (curFlags & 2) == 0;
        }
        if (enable) {
            newFlags = 2 | curFlags;
        } else {
            newFlags = curFlags & (-3);
        }
        CompatibilityInfo ci = compatibilityInfoForPackageLocked(ai);
        if (ci.alwaysSupportsScreen()) {
            Slog.w("ActivityTaskManager", "Ignoring compat mode change of " + packageName + "; compatibility never needed");
            newFlags = 0;
        }
        if (ci.neverSupportsScreen()) {
            Slog.w("ActivityTaskManager", "Ignoring compat mode change of " + packageName + "; compatibility always needed");
            newFlags = 0;
        }
        if (newFlags != curFlags) {
            if (newFlags != 0) {
                this.mPackages.put(packageName, Integer.valueOf(newFlags));
            } else {
                this.mPackages.remove(packageName);
            }
            CompatibilityInfo ci2 = compatibilityInfoForPackageLocked(ai);
            scheduleWrite();
            ActivityStack stack = this.mService.getTopDisplayFocusedStack();
            ActivityRecord starting = stack.restartPackage(packageName);
            SparseArray<WindowProcessController> pidMap = this.mService.mProcessMap.getPidMap();
            for (int i = pidMap.size() - 1; i >= 0; i--) {
                WindowProcessController app = pidMap.valueAt(i);
                if (app.mPkgList.contains(packageName)) {
                    try {
                        if (app.hasThread()) {
                            app.getThread().updatePackageCompatibilityInfo(packageName, ci2);
                        }
                    } catch (Exception e) {
                    }
                }
            }
            if (starting != null) {
                starting.ensureActivityConfiguration(0, false);
                stack.ensureActivitiesVisible(starting, 0, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:39:0x00de  */
    /* JADX WARN: Code duplicated, block: B:66:? A[RETURN, SYNTHETIC] */
    public void saveCompatModes() {
        HashMap<String, Integer> pkgs;
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                pkgs = new HashMap<>(this.mPackages);
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        FileOutputStream fos = null;
        try {
            fos = this.mFile.startWrite();
            FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
            fastXmlSerializer.setOutput(fos, StandardCharsets.UTF_8.name());
            String str = null;
            fastXmlSerializer.startDocument(null, true);
            fastXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
            fastXmlSerializer.startTag(null, "compat-packages");
            IPackageManager pm = AppGlobals.getPackageManager();
            Configuration globalConfig = this.mService.getGlobalConfiguration();
            int screenLayout = globalConfig.screenLayout;
            int smallestScreenWidthDp = globalConfig.smallestScreenWidthDp;
            for (Map.Entry<String, Integer> entry : pkgs.entrySet()) {
                String pkg = entry.getKey();
                int mode = entry.getValue().intValue();
                if (mode != 0) {
                    ApplicationInfo ai = null;
                    try {
                        ai = pm.getApplicationInfo(pkg, 0, 0);
                    } catch (RemoteException e) {
                    } catch (IOException e2) {
                        e1 = e2;
                        Slog.w("ActivityTaskManager", "Error writing compat packages", e1);
                        if (fos != null) {
                            this.mFile.failWrite(fos);
                            return;
                        }
                        return;
                    }
                    if (ai == null) {
                        continue;
                    } else {
                        CompatibilityInfo info = new CompatibilityInfo(ai, screenLayout, smallestScreenWidthDp, false);
                        if (!info.alwaysSupportsScreen() && !info.neverSupportsScreen()) {
                            fastXmlSerializer.startTag(str, "pkg");
                            fastXmlSerializer.attribute(str, Settings.ATTR_NAME, pkg);
                            HashMap<String, Integer> pkgs2 = pkgs;
                            try {
                                fastXmlSerializer.attribute(null, "mode", Integer.toString(mode));
                                fastXmlSerializer.endTag(null, "pkg");
                                pkgs = pkgs2;
                                str = null;
                            } catch (IOException e3) {
                                e1 = e3;
                                Slog.w("ActivityTaskManager", "Error writing compat packages", e1);
                                if (fos != null) {
                                    this.mFile.failWrite(fos);
                                    return;
                                }
                                return;
                            }
                        }
                    }
                }
            }
            fastXmlSerializer.endTag(null, "compat-packages");
            fastXmlSerializer.endDocument();
            this.mFile.finishWrite(fos);
        } catch (IOException e4) {
            e1 = e4;
        }
    }
}

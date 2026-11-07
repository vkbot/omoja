package com.android.server.pm;

import android.content.ComponentName;
import android.metrics.LogMaker;
import android.os.FileUtils;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Slog;
import com.android.internal.logging.MetricsLogger;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Objects;
import java.util.function.Consumer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
class ShortcutUser {
    private static final String ATTR_KNOWN_LOCALES = "locales";
    private static final String ATTR_LAST_APP_SCAN_OS_FINGERPRINT = "last-app-scan-fp";
    private static final String ATTR_LAST_APP_SCAN_TIME = "last-app-scan-time2";
    private static final String ATTR_RESTORE_SOURCE_FINGERPRINT = "restore-from-fp";
    private static final String ATTR_VALUE = "value";
    static final String DIRECTORY_LUANCHERS = "launchers";
    static final String DIRECTORY_PACKAGES = "packages";
    private static final String KEY_LAUNCHERS = "launchers";
    private static final String KEY_PACKAGES = "packages";
    private static final String KEY_USER_ID = "userId";
    private static final String TAG = "ShortcutService";
    private static final String TAG_LAUNCHER = "launcher";
    static final String TAG_ROOT = "user";
    private ComponentName mCachedLauncher;
    private String mKnownLocales;
    private String mLastAppScanOsFingerprint;
    private long mLastAppScanTime;
    private ComponentName mLastKnownLauncher;
    private String mRestoreFromOsFingerprint;
    final ShortcutService mService;
    private final int mUserId;
    private final ArrayMap<String, ShortcutPackage> mPackages = new ArrayMap<>();
    private final ArrayMap<PackageWithUser, ShortcutLauncher> mLaunchers = new ArrayMap<>();

    static final class PackageWithUser {
        final String packageName;
        final int userId;

        private PackageWithUser(int userId, String packageName) {
            this.userId = userId;
            Objects.requireNonNull(packageName);
            this.packageName = packageName;
        }

        public static PackageWithUser of(int userId, String packageName) {
            return new PackageWithUser(userId, packageName);
        }

        public static PackageWithUser of(ShortcutPackageItem spi) {
            return new PackageWithUser(spi.getPackageUserId(), spi.getPackageName());
        }

        public int hashCode() {
            return this.packageName.hashCode() ^ this.userId;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof PackageWithUser)) {
                return false;
            }
            PackageWithUser that = (PackageWithUser) obj;
            return this.userId == that.userId && this.packageName.equals(that.packageName);
        }

        public String toString() {
            return String.format("[Package: %d, %s]", Integer.valueOf(this.userId), this.packageName);
        }
    }

    public ShortcutUser(ShortcutService service, int userId) {
        this.mService = service;
        this.mUserId = userId;
    }

    public int getUserId() {
        return this.mUserId;
    }

    public long getLastAppScanTime() {
        return this.mLastAppScanTime;
    }

    public void setLastAppScanTime(long lastAppScanTime) {
        this.mLastAppScanTime = lastAppScanTime;
    }

    public String getLastAppScanOsFingerprint() {
        return this.mLastAppScanOsFingerprint;
    }

    public void setLastAppScanOsFingerprint(String lastAppScanOsFingerprint) {
        this.mLastAppScanOsFingerprint = lastAppScanOsFingerprint;
    }

    ArrayMap<String, ShortcutPackage> getAllPackagesForTest() {
        return this.mPackages;
    }

    public boolean hasPackage(String packageName) {
        return this.mPackages.containsKey(packageName);
    }

    private void addPackage(ShortcutPackage p) {
        p.replaceUser(this);
        this.mPackages.put(p.getPackageName(), p);
    }

    public ShortcutPackage removePackage(String packageName) {
        ShortcutPackage removed = this.mPackages.remove(packageName);
        this.mService.cleanupBitmapsForPackage(this.mUserId, packageName);
        return removed;
    }

    ArrayMap<PackageWithUser, ShortcutLauncher> getAllLaunchersForTest() {
        return this.mLaunchers;
    }

    private void addLauncher(ShortcutLauncher launcher) {
        launcher.replaceUser(this);
        this.mLaunchers.put(PackageWithUser.of(launcher.getPackageUserId(), launcher.getPackageName()), launcher);
    }

    public ShortcutLauncher removeLauncher(int packageUserId, String packageName) {
        return this.mLaunchers.remove(PackageWithUser.of(packageUserId, packageName));
    }

    public ShortcutPackage getPackageShortcutsIfExists(String packageName) {
        ShortcutPackage ret = this.mPackages.get(packageName);
        if (ret != null) {
            ret.attemptToRestoreIfNeededAndSave();
        }
        return ret;
    }

    public ShortcutPackage getPackageShortcuts(String packageName) {
        ShortcutPackage ret = getPackageShortcutsIfExists(packageName);
        if (ret == null) {
            ShortcutPackage ret2 = new ShortcutPackage(this, this.mUserId, packageName);
            this.mPackages.put(packageName, ret2);
            return ret2;
        }
        return ret;
    }

    public ShortcutLauncher getLauncherShortcuts(String packageName, int launcherUserId) {
        PackageWithUser key = PackageWithUser.of(launcherUserId, packageName);
        ShortcutLauncher ret = this.mLaunchers.get(key);
        if (ret == null) {
            ShortcutLauncher ret2 = new ShortcutLauncher(this, this.mUserId, packageName, launcherUserId);
            this.mLaunchers.put(key, ret2);
            return ret2;
        }
        ret.attemptToRestoreIfNeededAndSave();
        return ret;
    }

    public void forAllPackages(Consumer<? super ShortcutPackage> callback) {
        int size = this.mPackages.size();
        for (int i = 0; i < size; i++) {
            callback.accept(this.mPackages.valueAt(i));
        }
    }

    public void forAllLaunchers(Consumer<? super ShortcutLauncher> callback) {
        int size = this.mLaunchers.size();
        for (int i = 0; i < size; i++) {
            callback.accept(this.mLaunchers.valueAt(i));
        }
    }

    public void forAllPackageItems(Consumer<? super ShortcutPackageItem> callback) {
        forAllLaunchers(callback);
        forAllPackages(callback);
    }

    public void forPackageItem(final String packageName, final int packageUserId, final Consumer<ShortcutPackageItem> callback) {
        forAllPackageItems(new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutUser$XHWlvjfCvG1SoVwGHi3envhmtfM
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ShortcutUser.lambda$forPackageItem$0(packageUserId, packageName, callback, (ShortcutPackageItem) obj);
            }
        });
    }

    static /* synthetic */ void lambda$forPackageItem$0(int packageUserId, String packageName, Consumer callback, ShortcutPackageItem spi) {
        if (spi.getPackageUserId() == packageUserId && spi.getPackageName().equals(packageName)) {
            callback.accept(spi);
        }
    }

    public void onCalledByPublisher(String packageName) {
        detectLocaleChange();
        rescanPackageIfNeeded(packageName, false);
    }

    private String getKnownLocales() {
        if (TextUtils.isEmpty(this.mKnownLocales)) {
            this.mKnownLocales = this.mService.injectGetLocaleTagsForUser(this.mUserId);
            this.mService.scheduleSaveUser(this.mUserId);
        }
        return this.mKnownLocales;
    }

    public void detectLocaleChange() {
        String currentLocales = this.mService.injectGetLocaleTagsForUser(this.mUserId);
        if (!TextUtils.isEmpty(this.mKnownLocales) && this.mKnownLocales.equals(currentLocales)) {
            return;
        }
        this.mKnownLocales = currentLocales;
        forAllPackages(new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutUser$6rBk7xJFaM9dXyyKHFs-DCus0iM
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ShortcutUser.lambda$detectLocaleChange$1((ShortcutPackage) obj);
            }
        });
        this.mService.scheduleSaveUser(this.mUserId);
    }

    static /* synthetic */ void lambda$detectLocaleChange$1(ShortcutPackage pkg) {
        pkg.resetRateLimiting();
        pkg.resolveResourceStrings();
    }

    public void rescanPackageIfNeeded(String packageName, boolean forceRescan) {
        boolean isNewApp = !this.mPackages.containsKey(packageName);
        ShortcutPackage shortcutPackage = getPackageShortcuts(packageName);
        if (!shortcutPackage.rescanPackageIfNeeded(isNewApp, forceRescan) && isNewApp) {
            this.mPackages.remove(packageName);
        }
    }

    public void attemptToRestoreIfNeededAndSave(ShortcutService s, String packageName, int packageUserId) {
        forPackageItem(packageName, packageUserId, new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutUser$bsc89E_40a5X2amehalpqawQ5hY
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ShortcutPackageItem) obj).attemptToRestoreIfNeededAndSave();
            }
        });
    }

    public void saveToXml(XmlSerializer out, boolean forBackup) throws XmlPullParserException, IOException {
        out.startTag(null, TAG_ROOT);
        if (!forBackup) {
            ShortcutService.writeAttr(out, ATTR_KNOWN_LOCALES, this.mKnownLocales);
            ShortcutService.writeAttr(out, ATTR_LAST_APP_SCAN_TIME, this.mLastAppScanTime);
            ShortcutService.writeAttr(out, ATTR_LAST_APP_SCAN_OS_FINGERPRINT, this.mLastAppScanOsFingerprint);
            ShortcutService.writeAttr(out, ATTR_RESTORE_SOURCE_FINGERPRINT, this.mRestoreFromOsFingerprint);
            ShortcutService.writeTagValue(out, TAG_LAUNCHER, this.mLastKnownLauncher);
        } else {
            ShortcutService.writeAttr(out, ATTR_RESTORE_SOURCE_FINGERPRINT, this.mService.injectBuildFingerprint());
        }
        if (!forBackup) {
            File root = this.mService.injectUserDataPath(this.mUserId);
            FileUtils.deleteContents(new File(root, "packages"));
            FileUtils.deleteContents(new File(root, "launchers"));
        }
        int size = this.mLaunchers.size();
        for (int i = 0; i < size; i++) {
            saveShortcutPackageItem(out, this.mLaunchers.valueAt(i), forBackup);
        }
        int size2 = this.mPackages.size();
        for (int i2 = 0; i2 < size2; i2++) {
            saveShortcutPackageItem(out, this.mPackages.valueAt(i2), forBackup);
        }
        out.endTag(null, TAG_ROOT);
    }

    private void saveShortcutPackageItem(XmlSerializer out, ShortcutPackageItem spi, boolean forBackup) throws XmlPullParserException, IOException {
        if (forBackup) {
            if (spi.getPackageUserId() != spi.getOwnerUserId()) {
                return;
            }
            spi.saveToXml(out, forBackup);
        } else {
            File path = getShortcutPackageItemFile(spi);
            path.getParentFile().mkdirs();
            spi.saveToFile(path, forBackup);
        }
    }

    private File getShortcutPackageItemFile(ShortcutPackageItem spi) {
        String fileName;
        boolean isShortcutLauncher = spi instanceof ShortcutLauncher;
        File path = new File(this.mService.injectUserDataPath(this.mUserId), isShortcutLauncher ? "launchers" : "packages");
        if (isShortcutLauncher) {
            fileName = spi.getPackageName() + spi.getPackageUserId() + ".xml";
        } else {
            fileName = spi.getPackageName() + ".xml";
        }
        return new File(path, fileName);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x007a  */
    public static ShortcutUser loadFromXml(final ShortcutService s, XmlPullParser parser, final int userId, final boolean fromBackup) throws XmlPullParserException, IOException, ShortcutService.InvalidFileFormatException {
        byte b;
        final ShortcutUser ret = new ShortcutUser(s, userId);
        boolean readShortcutItems = false;
        try {
            ret.mKnownLocales = ShortcutService.parseStringAttribute(parser, ATTR_KNOWN_LOCALES);
            long lastAppScanTime = ShortcutService.parseLongAttribute(parser, ATTR_LAST_APP_SCAN_TIME);
            long currentTime = s.injectCurrentTimeMillis();
            ret.mLastAppScanTime = lastAppScanTime < currentTime ? lastAppScanTime : 0L;
            ret.mLastAppScanOsFingerprint = ShortcutService.parseStringAttribute(parser, ATTR_LAST_APP_SCAN_OS_FINGERPRINT);
            ret.mRestoreFromOsFingerprint = ShortcutService.parseStringAttribute(parser, ATTR_RESTORE_SOURCE_FINGERPRINT);
            int outerDepth = parser.getDepth();
            while (true) {
                int type = parser.next();
                if (type == 1 || (type == 3 && parser.getDepth() <= outerDepth)) {
                    break;
                    break;
                }
                if (type != 2) {
                    outerDepth = outerDepth;
                } else {
                    int depth = parser.getDepth();
                    String tag = parser.getName();
                    if (depth == outerDepth + 1) {
                        int iHashCode = tag.hashCode();
                        if (iHashCode != -1407250528) {
                            if (iHashCode != -1146595445) {
                                b = (iHashCode == -807062458 && tag.equals(Settings.ATTR_PACKAGE)) ? (byte) 1 : (byte) -1;
                            } else if (tag.equals("launcher-pins")) {
                                b = 2;
                            }
                        } else if (tag.equals(TAG_LAUNCHER)) {
                            b = 0;
                        }
                        if (b == 0) {
                            outerDepth = outerDepth;
                            ret.mLastKnownLauncher = ShortcutService.parseComponentNameAttribute(parser, ATTR_VALUE);
                        } else if (b == 1) {
                            ShortcutPackage shortcuts = ShortcutPackage.loadFromXml(s, ret, parser, fromBackup);
                            ret.mPackages.put(shortcuts.getPackageName(), shortcuts);
                            readShortcutItems = true;
                            outerDepth = outerDepth;
                        } else if (b == 2) {
                            ret.addLauncher(ShortcutLauncher.loadFromXml(parser, ret, userId, fromBackup));
                            readShortcutItems = true;
                        }
                    }
                    ShortcutService.warnForInvalidTag(depth, tag);
                }
                outerDepth = outerDepth;
            }
            if (readShortcutItems) {
                s.scheduleSaveUser(userId);
            } else {
                File root = s.injectUserDataPath(userId);
                forAllFilesIn(new File(root, "packages"), new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutUser$WEqKmk0AyNmC3cTrDBpLnQYS7yQ
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ShortcutUser.lambda$loadFromXml$3(s, ret, fromBackup, (File) obj);
                    }
                });
                forAllFilesIn(new File(root, "launchers"), new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutUser$J226XST5zFAxi7f11OTPtvDbTTE
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ShortcutUser.lambda$loadFromXml$4(this.f$0, userId, fromBackup, (File) obj);
                    }
                });
            }
            return ret;
        } catch (RuntimeException e) {
            throw new ShortcutService.InvalidFileFormatException("Unable to parse file", e);
        }
    }

    static /* synthetic */ void lambda$loadFromXml$3(ShortcutService s, ShortcutUser ret, boolean fromBackup, File f) {
        ShortcutPackage sp = ShortcutPackage.loadFromFile(s, ret, f, fromBackup);
        if (sp != null) {
            ret.mPackages.put(sp.getPackageName(), sp);
        }
    }

    static /* synthetic */ void lambda$loadFromXml$4(ShortcutUser ret, int userId, boolean fromBackup, File f) {
        ShortcutLauncher sl = ShortcutLauncher.loadFromFile(f, ret, userId, fromBackup);
        if (sl != null) {
            ret.addLauncher(sl);
        }
    }

    private static void forAllFilesIn(File path, Consumer<File> callback) {
        if (!path.exists()) {
            return;
        }
        File[] list = path.listFiles();
        for (File f : list) {
            callback.accept(f);
        }
    }

    public ComponentName getLastKnownLauncher() {
        return this.mLastKnownLauncher;
    }

    public void setLauncher(ComponentName launcherComponent) {
        setLauncher(launcherComponent, false);
    }

    public void clearLauncher() {
        setLauncher(null);
    }

    public void forceClearLauncher() {
        setLauncher(null, true);
    }

    private void setLauncher(ComponentName launcherComponent, boolean allowPurgeLastKnown) {
        this.mCachedLauncher = launcherComponent;
        if (Objects.equals(this.mLastKnownLauncher, launcherComponent)) {
            return;
        }
        if (!allowPurgeLastKnown && launcherComponent == null) {
            return;
        }
        this.mLastKnownLauncher = launcherComponent;
        this.mService.scheduleSaveUser(this.mUserId);
    }

    public ComponentName getCachedLauncher() {
        return this.mCachedLauncher;
    }

    public void resetThrottling() {
        for (int i = this.mPackages.size() - 1; i >= 0; i--) {
            this.mPackages.valueAt(i).resetThrottling();
        }
    }

    public void mergeRestoredFile(ShortcutUser restored) {
        final ShortcutService s = this.mService;
        final int[] restoredLaunchers = new int[1];
        final int[] restoredPackages = new int[1];
        final int[] restoredShortcuts = new int[1];
        this.mLaunchers.clear();
        restored.forAllLaunchers(new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutUser$9L9586f0tFIMO5kym3kYgtd-s-4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$mergeRestoredFile$5$ShortcutUser(s, restoredLaunchers, (ShortcutLauncher) obj);
            }
        });
        restored.forAllPackages(new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutUser$1MymUWg2gtFS2o2Ay87xy7GTBD8
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$mergeRestoredFile$6$ShortcutUser(s, restoredPackages, restoredShortcuts, (ShortcutPackage) obj);
            }
        });
        restored.mLaunchers.clear();
        restored.mPackages.clear();
        this.mRestoreFromOsFingerprint = restored.mRestoreFromOsFingerprint;
        Slog.i(TAG, "Restored: L=" + restoredLaunchers[0] + " P=" + restoredPackages[0] + " S=" + restoredShortcuts[0]);
    }

    public /* synthetic */ void lambda$mergeRestoredFile$5$ShortcutUser(ShortcutService s, int[] restoredLaunchers, ShortcutLauncher sl) {
        if (s.isPackageInstalled(sl.getPackageName(), getUserId()) && !s.shouldBackupApp(sl.getPackageName(), getUserId())) {
            return;
        }
        addLauncher(sl);
        restoredLaunchers[0] = restoredLaunchers[0] + 1;
    }

    public /* synthetic */ void lambda$mergeRestoredFile$6$ShortcutUser(ShortcutService s, int[] restoredPackages, int[] restoredShortcuts, ShortcutPackage sp) {
        if (s.isPackageInstalled(sp.getPackageName(), getUserId()) && !s.shouldBackupApp(sp.getPackageName(), getUserId())) {
            return;
        }
        ShortcutPackage previous = getPackageShortcutsIfExists(sp.getPackageName());
        if (previous != null && previous.hasNonManifestShortcuts()) {
            Log.w(TAG, "Shortcuts for package " + sp.getPackageName() + " are being restored. Existing non-manifeset shortcuts will be overwritten.");
        }
        addPackage(sp);
        restoredPackages[0] = restoredPackages[0] + 1;
        restoredShortcuts[0] = restoredShortcuts[0] + sp.getShortcutCount();
    }

    public void dump(PrintWriter pw, String prefix, ShortcutService.DumpFilter filter) {
        if (filter.shouldDumpDetails()) {
            pw.print(prefix);
            pw.print("User: ");
            pw.print(this.mUserId);
            pw.print("  Known locales: ");
            pw.print(this.mKnownLocales);
            pw.print("  Last app scan: [");
            pw.print(this.mLastAppScanTime);
            pw.print("] ");
            pw.println(ShortcutService.formatTime(this.mLastAppScanTime));
            prefix = prefix + prefix + "  ";
            pw.print(prefix);
            pw.print("Last app scan FP: ");
            pw.println(this.mLastAppScanOsFingerprint);
            pw.print(prefix);
            pw.print("Restore from FP: ");
            pw.print(this.mRestoreFromOsFingerprint);
            pw.println();
            pw.print(prefix);
            pw.print("Cached launcher: ");
            pw.print(this.mCachedLauncher);
            pw.println();
            pw.print(prefix);
            pw.print("Last known launcher: ");
            pw.print(this.mLastKnownLauncher);
            pw.println();
        }
        for (int i = 0; i < this.mLaunchers.size(); i++) {
            ShortcutLauncher launcher = this.mLaunchers.valueAt(i);
            if (filter.isPackageMatch(launcher.getPackageName())) {
                launcher.dump(pw, prefix, filter);
            }
        }
        for (int i2 = 0; i2 < this.mPackages.size(); i2++) {
            ShortcutPackage pkg = this.mPackages.valueAt(i2);
            if (filter.isPackageMatch(pkg.getPackageName())) {
                pkg.dump(pw, prefix, filter);
            }
        }
        if (filter.shouldDumpDetails()) {
            pw.println();
            pw.print(prefix);
            pw.println("Bitmap directories: ");
            dumpDirectorySize(pw, prefix + "  ", this.mService.getUserBitmapFilePath(this.mUserId));
        }
    }

    private void dumpDirectorySize(PrintWriter pw, String prefix, File path) {
        int numFiles = 0;
        long size = 0;
        File[] children = path.listFiles();
        if (children != null) {
            for (File child : path.listFiles()) {
                if (child.isFile()) {
                    numFiles++;
                    size += child.length();
                } else if (child.isDirectory()) {
                    dumpDirectorySize(pw, prefix + "  ", child);
                }
            }
        }
        pw.print(prefix);
        pw.print("Path: ");
        pw.print(path.getName());
        pw.print("/ has ");
        pw.print(numFiles);
        pw.print(" files, size=");
        pw.print(size);
        pw.print(" (");
        pw.print(Formatter.formatFileSize(this.mService.mContext, size));
        pw.println(")");
    }

    public JSONObject dumpCheckin(boolean clear) throws JSONException {
        JSONObject result = new JSONObject();
        result.put(KEY_USER_ID, this.mUserId);
        JSONArray launchers = new JSONArray();
        for (int i = 0; i < this.mLaunchers.size(); i++) {
            launchers.put(this.mLaunchers.valueAt(i).dumpCheckin(clear));
        }
        result.put("launchers", launchers);
        JSONArray packages = new JSONArray();
        for (int i2 = 0; i2 < this.mPackages.size(); i2++) {
            packages.put(this.mPackages.valueAt(i2).dumpCheckin(clear));
        }
        result.put("packages", packages);
        return result;
    }

    void logSharingShortcutStats(MetricsLogger logger) {
        int packageWithShareTargetsCount = 0;
        int totalSharingShortcutCount = 0;
        for (int i = 0; i < this.mPackages.size(); i++) {
            if (this.mPackages.valueAt(i).hasShareTargets()) {
                packageWithShareTargetsCount++;
                totalSharingShortcutCount += this.mPackages.valueAt(i).getSharingShortcutCount();
            }
        }
        LogMaker logMaker = new LogMaker(1717);
        logger.write(logMaker.setType(1).setSubtype(this.mUserId));
        logger.write(logMaker.setType(2).setSubtype(packageWithShareTargetsCount));
        logger.write(logMaker.setType(3).setSubtype(totalSharingShortcutCount));
    }
}

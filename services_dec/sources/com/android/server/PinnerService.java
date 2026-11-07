package com.android.server;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.IActivityManager;
import android.app.IUidObserver;
import android.app.SearchManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.UserManager;
import android.provider.DeviceConfig;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import com.android.internal.app.ResolverActivity;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.function.QuadConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.pm.Settings;
import com.android.server.wm.ActivityTaskManagerInternal;
import dalvik.system.DexFile;
import dalvik.system.VMRuntime;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public final class PinnerService extends SystemService {
    private static final boolean DEBUG = false;
    private static final int KEY_ASSISTANT = 2;
    private static final int KEY_CAMERA = 0;
    private static final int KEY_HOME = 1;
    private static final int MATCH_FLAGS = 851968;
    private static final int MAX_ASSISTANT_PIN_SIZE = 62914560;
    private static final int MAX_CAMERA_PIN_SIZE = 83886080;
    private static final int MAX_HOME_PIN_SIZE = 6291456;
    private static final String PIN_META_FILENAME = "pinlist.meta";
    private static final String TAG = "PinnerService";
    private final IActivityManager mAm;
    private final ActivityManagerInternal mAmInternal;
    private final ActivityTaskManagerInternal mAtmInternal;
    private BinderService mBinderService;
    private final BroadcastReceiver mBroadcastReceiver;
    private final Context mContext;
    private final ArrayMap<Integer, Integer> mPendingRepin;
    private final ArraySet<Integer> mPinKeys;
    private final ArrayMap<Integer, PinnedApp> mPinnedApps;
    private final ArrayList<PinnedFile> mPinnedFiles;
    private PinnerHandler mPinnerHandler;
    private SearchManager mSearchManager;
    private final UserManager mUserManager;
    private static final int PAGE_SIZE = (int) Os.sysconf(OsConstants._SC_PAGESIZE);
    private static boolean PROP_PIN_CAMERA = DeviceConfig.getBoolean("runtime_native_boot", "pin_camera", SystemProperties.getBoolean("pinner.pin_camera", false));
    private static boolean PROP_PIN_PINLIST = SystemProperties.getBoolean("pinner.use_pinlist", true);
    private static boolean PROP_PIN_ODEX = SystemProperties.getBoolean("pinner.whole_odex", true);

    @Retention(RetentionPolicy.SOURCE)
    public @interface AppKey {
    }

    public PinnerService(Context context) {
        super(context);
        this.mPinnedFiles = new ArrayList<>();
        this.mPinnedApps = new ArrayMap<>();
        this.mPendingRepin = new ArrayMap<>();
        this.mPinKeys = new ArraySet<>();
        this.mPinnerHandler = null;
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.PinnerService.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if ("android.intent.action.PACKAGE_REPLACED".equals(intent.getAction())) {
                    Uri packageUri = intent.getData();
                    String packageName = packageUri.getSchemeSpecificPart();
                    ArraySet<String> updatedPackages = new ArraySet<>();
                    updatedPackages.add(packageName);
                    PinnerService.this.update(updatedPackages, true);
                }
            }
        };
        this.mContext = context;
        boolean shouldPinCamera = context.getResources().getBoolean(R.bool.config_cecQuerySadMpeg2Enabled_allowed);
        boolean shouldPinHome = context.getResources().getBoolean(R.bool.config_cecQuerySadMpeg2Enabled_default);
        boolean shouldPinAssistant = context.getResources().getBoolean(R.bool.config_cecQuerySadMpeg2Disabled_default);
        if (shouldPinCamera && PROP_PIN_CAMERA) {
            this.mPinKeys.add(0);
        }
        if (shouldPinHome) {
            this.mPinKeys.add(1);
        }
        if (shouldPinAssistant) {
            this.mPinKeys.add(2);
        }
        this.mPinnerHandler = new PinnerHandler(BackgroundThread.get().getLooper());
        this.mAtmInternal = (ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class);
        this.mAmInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        this.mAm = ActivityManager.getService();
        this.mUserManager = (UserManager) this.mContext.getSystemService(UserManager.class);
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.PACKAGE_REPLACED");
        filter.addDataScheme(Settings.ATTR_PACKAGE);
        this.mContext.registerReceiver(this.mBroadcastReceiver, filter);
        registerUidListener();
        registerUserSetupCompleteListener();
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        BinderService binderService = new BinderService();
        this.mBinderService = binderService;
        publishBinderService("pinner", binderService);
        publishLocalService(PinnerService.class, this);
        this.mPinnerHandler.obtainMessage(4001).sendToTarget();
        sendPinAppsMessage(0);
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 500) {
            this.mSearchManager = (SearchManager) this.mContext.getSystemService("search");
            sendPinAppsMessage(0);
        }
    }

    @Override // com.android.server.SystemService
    public void onSwitchUser(int userHandle) {
        if (!this.mUserManager.isManagedProfile(userHandle)) {
            sendPinAppsMessage(userHandle);
        }
    }

    @Override // com.android.server.SystemService
    public void onUnlockUser(int userHandle) {
        if (!this.mUserManager.isManagedProfile(userHandle)) {
            sendPinAppsMessage(userHandle);
        }
    }

    public void update(ArraySet<String> updatedPackages, boolean force) {
        int currentUser = ActivityManager.getCurrentUser();
        for (int i = this.mPinKeys.size() - 1; i >= 0; i--) {
            int key = this.mPinKeys.valueAt(i).intValue();
            ApplicationInfo info = getInfoForKey(key, currentUser);
            if (info != null && updatedPackages.contains(info.packageName)) {
                Slog.i(TAG, "Updating pinned files for " + info.packageName + " force=" + force);
                sendPinAppMessage(key, currentUser, force);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePinOnStart() {
        String[] filesToPin;
        String bootImage = SystemProperties.get("dalvik.vm.boot-image", "");
        if (bootImage.endsWith("boot-image.prof")) {
            filesToPin = this.mContext.getResources().getStringArray(R.array.config_displayWhiteBalanceDisplayPrimaries);
        } else {
            filesToPin = this.mContext.getResources().getStringArray(R.array.config_cell_retries_per_error_code);
        }
        for (String fileToPin : filesToPin) {
            PinnedFile pf = pinFile(fileToPin, Integer.MAX_VALUE, false);
            if (pf == null) {
                Slog.e(TAG, "Failed to pin file = " + fileToPin);
            } else {
                synchronized (this) {
                    this.mPinnedFiles.add(pf);
                }
            }
        }
    }

    private void registerUserSetupCompleteListener() {
        final Uri userSetupCompleteUri = android.provider.Settings.Secure.getUriFor("user_setup_complete");
        this.mContext.getContentResolver().registerContentObserver(userSetupCompleteUri, false, new ContentObserver(null) { // from class: com.android.server.PinnerService.2
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange, Uri uri) {
                if (userSetupCompleteUri.equals(uri)) {
                    PinnerService.this.sendPinAppMessage(1, ActivityManager.getCurrentUser(), true);
                }
            }
        }, -1);
    }

    /* JADX INFO: renamed from: com.android.server.PinnerService$3, reason: invalid class name */
    class AnonymousClass3 extends IUidObserver.Stub {
        AnonymousClass3() {
        }

        public void onUidGone(int uid, boolean disabled) throws RemoteException {
            PinnerService.this.mPinnerHandler.sendMessage(PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.-$$Lambda$PinnerService$3$RQBbrt9b8esLBxJImxDgVTsP34I
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ((PinnerService) obj).handleUidGone(((Integer) obj2).intValue());
                }
            }, PinnerService.this, Integer.valueOf(uid)));
        }

        public void onUidActive(int uid) throws RemoteException {
            PinnerService.this.mPinnerHandler.sendMessage(PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.-$$Lambda$PinnerService$3$3Ta6TX4Jq9YbpUYE5Y0r8Xt8rBw
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ((PinnerService) obj).handleUidActive(((Integer) obj2).intValue());
                }
            }, PinnerService.this, Integer.valueOf(uid)));
        }

        public void onUidIdle(int uid, boolean disabled) throws RemoteException {
        }

        public void onUidStateChanged(int uid, int procState, long procStateSeq, int capability) throws RemoteException {
        }

        public void onUidCachedChanged(int uid, boolean cached) throws RemoteException {
        }
    }

    private void registerUidListener() {
        try {
            this.mAm.registerUidObserver(new AnonymousClass3(), 10, 0, (String) null);
        } catch (RemoteException e) {
            Slog.e(TAG, "Failed to register uid observer", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUidGone(int uid) {
        updateActiveState(uid, false);
        synchronized (this) {
            int key = this.mPendingRepin.getOrDefault(Integer.valueOf(uid), -1).intValue();
            if (key == -1) {
                return;
            }
            this.mPendingRepin.remove(Integer.valueOf(uid));
            pinApp(key, ActivityManager.getCurrentUser(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUidActive(int uid) {
        updateActiveState(uid, true);
    }

    private void updateActiveState(int uid, boolean active) {
        synchronized (this) {
            for (int i = this.mPinnedApps.size() - 1; i >= 0; i--) {
                PinnedApp app = this.mPinnedApps.valueAt(i);
                if (app.uid == uid) {
                    app.active = active;
                }
            }
        }
    }

    private void unpinApp(int key) {
        synchronized (this) {
            PinnedApp app = this.mPinnedApps.get(Integer.valueOf(key));
            if (app == null) {
                return;
            }
            this.mPinnedApps.remove(Integer.valueOf(key));
            ArrayList<PinnedFile> pinnedAppFiles = new ArrayList<>(app.mFiles);
            for (PinnedFile pinnedFile : pinnedAppFiles) {
                pinnedFile.close();
            }
        }
    }

    private boolean isResolverActivity(ActivityInfo info) {
        return ResolverActivity.class.getName().equals(info.name);
    }

    private ApplicationInfo getCameraInfo(int userHandle) {
        Intent cameraIntent = new Intent("android.media.action.STILL_IMAGE_CAMERA");
        ApplicationInfo info = getApplicationInfoForIntent(cameraIntent, userHandle, false);
        if (info == null) {
            Intent cameraIntent2 = new Intent("android.media.action.STILL_IMAGE_CAMERA_SECURE");
            info = getApplicationInfoForIntent(cameraIntent2, userHandle, false);
        }
        if (info == null) {
            Intent cameraIntent3 = new Intent("android.media.action.STILL_IMAGE_CAMERA");
            return getApplicationInfoForIntent(cameraIntent3, userHandle, true);
        }
        return info;
    }

    private ApplicationInfo getHomeInfo(int userHandle) {
        Intent intent = this.mAtmInternal.getHomeIntent();
        return getApplicationInfoForIntent(intent, userHandle, false);
    }

    private ApplicationInfo getAssistantInfo(int userHandle) {
        SearchManager searchManager = this.mSearchManager;
        if (searchManager != null) {
            Intent intent = searchManager.getAssistIntent(false);
            return getApplicationInfoForIntent(intent, userHandle, true);
        }
        return null;
    }

    private ApplicationInfo getApplicationInfoForIntent(Intent intent, int userHandle, boolean defaultToSystemApp) {
        ResolveInfo resolveInfo;
        if (intent == null || (resolveInfo = this.mContext.getPackageManager().resolveActivityAsUser(intent, MATCH_FLAGS, userHandle)) == null) {
            return null;
        }
        if (!isResolverActivity(resolveInfo.activityInfo)) {
            return resolveInfo.activityInfo.applicationInfo;
        }
        if (!defaultToSystemApp) {
            return null;
        }
        List<ResolveInfo> infoList = this.mContext.getPackageManager().queryIntentActivitiesAsUser(intent, MATCH_FLAGS, userHandle);
        ApplicationInfo systemAppInfo = null;
        for (ResolveInfo info : infoList) {
            if ((info.activityInfo.applicationInfo.flags & 1) != 0) {
                if (systemAppInfo != null) {
                    return null;
                }
                systemAppInfo = info.activityInfo.applicationInfo;
            }
        }
        return systemAppInfo;
    }

    private void sendPinAppsMessage(int userHandle) {
        this.mPinnerHandler.sendMessage(PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.-$$Lambda$PinnerService$GeEX-8XoHeV0LEszxat7jOSlrs4
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((PinnerService) obj).pinApps(((Integer) obj2).intValue());
            }
        }, this, Integer.valueOf(userHandle)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pinApps(int userHandle) {
        for (int i = this.mPinKeys.size() - 1; i >= 0; i--) {
            int key = this.mPinKeys.valueAt(i).intValue();
            pinApp(key, userHandle, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPinAppMessage(int key, int userHandle, boolean force) {
        this.mPinnerHandler.sendMessage(PooledLambda.obtainMessage(new QuadConsumer() { // from class: com.android.server.-$$Lambda$PinnerService$6bekYOn4YXi0x7vYNWO40QyA-s8
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                ((PinnerService) obj).pinApp(((Integer) obj2).intValue(), ((Integer) obj3).intValue(), ((Boolean) obj4).booleanValue());
            }
        }, this, Integer.valueOf(key), Integer.valueOf(userHandle), Boolean.valueOf(force)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pinApp(int key, int userHandle, boolean force) {
        int uid = getUidForKey(key);
        if (!force && uid != -1) {
            synchronized (this) {
                this.mPendingRepin.put(Integer.valueOf(uid), Integer.valueOf(key));
            }
            return;
        }
        unpinApp(key);
        ApplicationInfo info = getInfoForKey(key, userHandle);
        if (info != null) {
            pinApp(key, info);
        }
    }

    private int getUidForKey(int key) {
        int i;
        synchronized (this) {
            PinnedApp existing = this.mPinnedApps.get(Integer.valueOf(key));
            if (existing != null && existing.active) {
                i = existing.uid;
            } else {
                i = -1;
            }
        }
        return i;
    }

    private ApplicationInfo getInfoForKey(int key, int userHandle) {
        if (key == 0) {
            return getCameraInfo(userHandle);
        }
        if (key == 1) {
            return getHomeInfo(userHandle);
        }
        if (key == 2) {
            return getAssistantInfo(userHandle);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getNameForKey(int key) {
        if (key == 0) {
            return "Camera";
        }
        if (key == 1) {
            return "Home";
        }
        if (key == 2) {
            return "Assistant";
        }
        return null;
    }

    private int getSizeLimitForKey(int key) {
        if (key == 0) {
            return 83886080;
        }
        if (key == 1) {
            return MAX_HOME_PIN_SIZE;
        }
        if (key == 2) {
            return MAX_ASSISTANT_PIN_SIZE;
        }
        return 0;
    }

    private void pinApp(int key, ApplicationInfo appInfo) {
        if (appInfo == null) {
            return;
        }
        PinnedApp pinnedApp = new PinnedApp(appInfo);
        synchronized (this) {
            this.mPinnedApps.put(Integer.valueOf(key), pinnedApp);
        }
        int pinSizeLimit = getSizeLimitForKey(key);
        String apk = appInfo.sourceDir;
        PinnedFile pf = pinFile(apk, pinSizeLimit, true);
        if (pf == null) {
            Slog.e(TAG, "Failed to pin " + apk);
            return;
        }
        synchronized (this) {
            pinnedApp.mFiles.add(pf);
        }
        String abi = appInfo.primaryCpuAbi != null ? appInfo.primaryCpuAbi : Build.SUPPORTED_ABIS[0];
        String arch = VMRuntime.getInstructionSet(abi);
        String baseCodePath = appInfo.getBaseCodePath();
        String[] files = null;
        try {
            files = DexFile.getDexFileOutputPaths(baseCodePath, arch);
        } catch (IOException e) {
        }
        if (files == null) {
            return;
        }
        for (String file : files) {
            PinnedFile pf2 = pinFile(file, pinSizeLimit, false);
            if (pf2 != null) {
                synchronized (this) {
                    if (PROP_PIN_ODEX) {
                        pinnedApp.mFiles.add(pf2);
                    }
                }
            }
        }
    }

    private static PinnedFile pinFile(String fileToPin, int maxBytesToPin, boolean attemptPinIntrospection) {
        PinRangeSource pinRangeSource;
        ZipFile fileAsZip = null;
        InputStream pinRangeStream = null;
        if (attemptPinIntrospection) {
            try {
                fileAsZip = maybeOpenZip(fileToPin);
            } finally {
                safeClose(pinRangeStream);
                safeClose(fileAsZip);
            }
        }
        if (fileAsZip != null) {
            pinRangeStream = maybeOpenPinMetaInZip(fileAsZip, fileToPin);
        }
        Slog.d(TAG, "pinRangeStream: " + pinRangeStream);
        if (pinRangeStream != null) {
            pinRangeSource = new PinRangeSourceStream(pinRangeStream);
        } else {
            pinRangeSource = new PinRangeSourceStatic(0, Integer.MAX_VALUE);
        }
        return pinFileRanges(fileToPin, maxBytesToPin, pinRangeSource);
    }

    private static ZipFile maybeOpenZip(String fileName) {
        try {
            ZipFile zip = new ZipFile(fileName);
            return zip;
        } catch (IOException ex) {
            Slog.w(TAG, String.format("could not open \"%s\" as zip: pinning as blob", fileName), ex);
            return null;
        }
    }

    private static InputStream maybeOpenPinMetaInZip(ZipFile zipFile, String fileName) {
        ZipEntry pinMetaEntry;
        if (!PROP_PIN_PINLIST || (pinMetaEntry = zipFile.getEntry(PIN_META_FILENAME)) == null) {
            return null;
        }
        try {
            InputStream pinMetaStream = zipFile.getInputStream(pinMetaEntry);
            return pinMetaStream;
        } catch (IOException ex) {
            Slog.w(TAG, String.format("error reading pin metadata \"%s\": pinning as blob", fileName), ex);
            return null;
        }
    }

    private static abstract class PinRangeSource {
        abstract boolean read(PinRange pinRange);

        private PinRangeSource() {
        }
    }

    private static final class PinRangeSourceStatic extends PinRangeSource {
        private boolean mDone;
        private final int mPinLength;
        private final int mPinStart;

        PinRangeSourceStatic(int pinStart, int pinLength) {
            super();
            this.mDone = false;
            this.mPinStart = pinStart;
            this.mPinLength = pinLength;
        }

        @Override // com.android.server.PinnerService.PinRangeSource
        boolean read(PinRange outPinRange) {
            outPinRange.start = this.mPinStart;
            outPinRange.length = this.mPinLength;
            boolean done = this.mDone;
            this.mDone = true;
            return !done;
        }
    }

    private static final class PinRangeSourceStream extends PinRangeSource {
        private boolean mDone;
        private final DataInputStream mStream;

        PinRangeSourceStream(InputStream stream) {
            super();
            this.mDone = false;
            this.mStream = new DataInputStream(stream);
        }

        @Override // com.android.server.PinnerService.PinRangeSource
        boolean read(PinRange outPinRange) {
            if (!this.mDone) {
                try {
                    outPinRange.start = this.mStream.readInt();
                    outPinRange.length = this.mStream.readInt();
                } catch (IOException e) {
                    this.mDone = true;
                }
            }
            return !this.mDone;
        }
    }

    /* JADX WARN: Code duplicated, block: B:66:0x015e  */
    /* JADX WARN: Code duplicated, block: B:71:0x016d  */
    private static PinnedFile pinFileRanges(String fileToPin, int maxBytesToPin, PinRangeSource pinRangeSource) throws ErrnoException {
        int maxBytesToPin2;
        FileDescriptor fd = new FileDescriptor();
        long address = -1;
        int mapSize = 0;
        try {
            int openFlags = OsConstants.O_RDONLY | OsConstants.O_CLOEXEC | OsConstants.O_NOFOLLOW;
            FileDescriptor fd2 = Os.open(fileToPin, openFlags, 0);
            try {
                int mapSize2 = (int) Math.min(Os.fstat(fd2).st_size, 2147483647L);
                try {
                    long address2 = Os.mmap(0L, mapSize2, OsConstants.PROT_READ, OsConstants.MAP_SHARED, fd2, 0L);
                    try {
                        PinRange pinRange = new PinRange();
                        int bytesPinned = 0;
                        if (maxBytesToPin % PAGE_SIZE != 0) {
                            try {
                                maxBytesToPin2 = maxBytesToPin - (maxBytesToPin % PAGE_SIZE);
                            } catch (ErrnoException e) {
                                ex = e;
                                mapSize = mapSize2;
                                address = address2;
                                fd = fd2;
                                try {
                                    Slog.e(TAG, "Could not pin file " + fileToPin, ex);
                                    safeClose(fd);
                                    if (address >= 0) {
                                        safeMunmap(address, mapSize);
                                    }
                                    return null;
                                } catch (Throwable th) {
                                    ex = th;
                                    safeClose(fd);
                                    if (address >= 0) {
                                        safeMunmap(address, mapSize);
                                    }
                                    throw ex;
                                }
                            } catch (Throwable th2) {
                                ex = th2;
                                mapSize = mapSize2;
                                address = address2;
                                fd = fd2;
                                safeClose(fd);
                                if (address >= 0) {
                                    safeMunmap(address, mapSize);
                                }
                                throw ex;
                            }
                        } else {
                            maxBytesToPin2 = maxBytesToPin;
                        }
                        while (bytesPinned < maxBytesToPin2) {
                            try {
                                if (!pinRangeSource.read(pinRange)) {
                                    break;
                                }
                                int pinStart = pinRange.start;
                                int pinLength = pinRange.length;
                                int pinStart2 = clamp(0, pinStart, mapSize2);
                                int pinLength2 = Math.min(maxBytesToPin2 - bytesPinned, clamp(0, pinLength, mapSize2 - pinStart2)) + (pinStart2 % PAGE_SIZE);
                                int pinStart3 = pinStart2 - (pinStart2 % PAGE_SIZE);
                                if (pinLength2 % PAGE_SIZE != 0) {
                                    pinLength2 += PAGE_SIZE - (pinLength2 % PAGE_SIZE);
                                }
                                int pinLength3 = clamp(0, pinLength2, maxBytesToPin2 - bytesPinned);
                                if (pinLength3 > 0) {
                                    Os.mlock(((long) pinStart3) + address2, pinLength3);
                                }
                                bytesPinned += pinLength3;
                            } catch (ErrnoException e2) {
                                ex = e2;
                                mapSize = mapSize2;
                                address = address2;
                                fd = fd2;
                                Slog.e(TAG, "Could not pin file " + fileToPin, ex);
                                safeClose(fd);
                                if (address >= 0) {
                                    safeMunmap(address, mapSize);
                                }
                                return null;
                            } catch (Throwable th3) {
                                ex = th3;
                                mapSize = mapSize2;
                                address = address2;
                                fd = fd2;
                                safeClose(fd);
                                if (address >= 0) {
                                    safeMunmap(address, mapSize);
                                }
                                throw ex;
                            }
                        }
                        try {
                            try {
                                PinnedFile pinnedFile = new PinnedFile(address2, mapSize2, fileToPin, bytesPinned);
                                safeClose(fd2);
                                if (-1 >= 0) {
                                    safeMunmap(-1L, mapSize2);
                                }
                                return pinnedFile;
                            } catch (ErrnoException e3) {
                                ex = e3;
                                mapSize = mapSize2;
                                address = address2;
                                fd = fd2;
                                Slog.e(TAG, "Could not pin file " + fileToPin, ex);
                                safeClose(fd);
                                if (address >= 0) {
                                    safeMunmap(address, mapSize);
                                }
                                return null;
                            } catch (Throwable th4) {
                                ex = th4;
                                mapSize = mapSize2;
                                address = address2;
                                fd = fd2;
                                safeClose(fd);
                                if (address >= 0) {
                                    safeMunmap(address, mapSize);
                                }
                                throw ex;
                            }
                        } catch (ErrnoException e4) {
                            ex = e4;
                            mapSize = mapSize2;
                            address = address2;
                            fd = fd2;
                        } catch (Throwable th5) {
                            ex = th5;
                            mapSize = mapSize2;
                            address = address2;
                            fd = fd2;
                        }
                    } catch (ErrnoException e5) {
                        ex = e5;
                        mapSize = mapSize2;
                        address = address2;
                        fd = fd2;
                    } catch (Throwable th6) {
                        ex = th6;
                        mapSize = mapSize2;
                        address = address2;
                        fd = fd2;
                    }
                } catch (ErrnoException e6) {
                    ex = e6;
                    mapSize = mapSize2;
                    fd = fd2;
                } catch (Throwable th7) {
                    ex = th7;
                    mapSize = mapSize2;
                    fd = fd2;
                }
            } catch (ErrnoException e7) {
                ex = e7;
                fd = fd2;
            } catch (Throwable th8) {
                ex = th8;
                fd = fd2;
            }
        } catch (ErrnoException e8) {
            ex = e8;
        } catch (Throwable th9) {
            ex = th9;
        }
    }

    private static int clamp(int min, int value, int max) {
        return Math.max(min, Math.min(value, max));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void safeMunmap(long address, long mapSize) {
        try {
            Os.munmap(address, mapSize);
        } catch (ErrnoException ex) {
            Slog.w(TAG, "ignoring error in unmap", ex);
        }
    }

    private static void safeClose(FileDescriptor fd) {
        if (fd != null && fd.valid()) {
            try {
                Os.close(fd);
            } catch (ErrnoException ex) {
                if (ex.errno == OsConstants.EBADF) {
                    throw new AssertionError(ex);
                }
            }
        }
    }

    private static void safeClose(Closeable thing) {
        if (thing != null) {
            try {
                thing.close();
            } catch (IOException ex) {
                Slog.w(TAG, "ignoring error closing resource: " + thing, ex);
            }
        }
    }

    private final class BinderService extends Binder {
        private BinderService() {
        }

        @Override // android.os.Binder
        protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            if (DumpUtils.checkDumpPermission(PinnerService.this.mContext, PinnerService.TAG, pw)) {
                synchronized (PinnerService.this) {
                    long totalSize = 0;
                    for (PinnedFile pinnedFile : PinnerService.this.mPinnedFiles) {
                        pw.format("%s %s\n", pinnedFile.fileName, Integer.valueOf(pinnedFile.bytesPinned));
                        totalSize += (long) pinnedFile.bytesPinned;
                    }
                    pw.println();
                    Iterator it = PinnerService.this.mPinnedApps.keySet().iterator();
                    while (it.hasNext()) {
                        int key = ((Integer) it.next()).intValue();
                        PinnedApp app = (PinnedApp) PinnerService.this.mPinnedApps.get(Integer.valueOf(key));
                        pw.print(PinnerService.this.getNameForKey(key));
                        pw.print(" uid=");
                        pw.print(app.uid);
                        pw.print(" active=");
                        pw.print(app.active);
                        pw.println();
                        for (PinnedFile pf : ((PinnedApp) PinnerService.this.mPinnedApps.get(Integer.valueOf(key))).mFiles) {
                            pw.print("  ");
                            pw.format("%s %s\n", pf.fileName, Integer.valueOf(pf.bytesPinned));
                            totalSize += (long) pf.bytesPinned;
                        }
                    }
                    pw.format("Total size: %s\n", Long.valueOf(totalSize));
                    pw.println();
                    if (!PinnerService.this.mPendingRepin.isEmpty()) {
                        pw.print("Pending repin: ");
                        Iterator it2 = PinnerService.this.mPendingRepin.values().iterator();
                        while (it2.hasNext()) {
                            pw.print(PinnerService.this.getNameForKey(((Integer) it2.next()).intValue()));
                            pw.print(' ');
                        }
                        pw.println();
                    }
                }
            }
        }
    }

    private static final class PinnedFile implements AutoCloseable {
        final int bytesPinned;
        final String fileName;
        private long mAddress;
        final int mapSize;

        PinnedFile(long address, int mapSize, String fileName, int bytesPinned) {
            this.mAddress = address;
            this.mapSize = mapSize;
            this.fileName = fileName;
            this.bytesPinned = bytesPinned;
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            long j = this.mAddress;
            if (j >= 0) {
                PinnerService.safeMunmap(j, this.mapSize);
                this.mAddress = -1L;
            }
        }

        public void finalize() {
            close();
        }
    }

    static final class PinRange {
        int length;
        int start;

        PinRange() {
        }
    }

    private final class PinnedApp {
        boolean active;
        final ArrayList<PinnedFile> mFiles;
        final int uid;

        private PinnedApp(ApplicationInfo appInfo) {
            this.mFiles = new ArrayList<>();
            this.uid = appInfo.uid;
            this.active = PinnerService.this.mAmInternal.isUidActive(this.uid);
        }
    }

    final class PinnerHandler extends Handler {
        static final int PIN_ONSTART_MSG = 4001;

        public PinnerHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == PIN_ONSTART_MSG) {
                PinnerService.this.handlePinOnStart();
            } else {
                super.handleMessage(msg);
            }
        }
    }
}

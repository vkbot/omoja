package com.android.server.wm;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManagerInternal;
import android.graphics.Rect;
import android.os.Environment;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.SparseArray;
import android.util.Xml;
import android.view.DisplayInfo;
import com.android.internal.util.FastXmlSerializer;
import com.android.server.LocalServices;
import com.android.server.pm.PackageList;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes2.dex */
class LaunchParamsPersister {
    private static final char ESCAPED_COMPONENT_SEPARATOR = '_';
    private static final String LAUNCH_PARAMS_DIRNAME = "launch_params";
    private static final String LAUNCH_PARAMS_FILE_SUFFIX = ".xml";
    private static final char ORIGINAL_COMPONENT_SEPARATOR = '/';
    private static final String TAG = "LaunchParamsPersister";
    private static final String TAG_LAUNCH_PARAMS = "launch_params";
    private final SparseArray<ArrayMap<ComponentName, PersistableLaunchParams>> mLaunchParamsMap;
    private PackageList mPackageList;
    private final PersisterQueue mPersisterQueue;
    private final ActivityStackSupervisor mSupervisor;
    private final IntFunction<File> mUserFolderGetter;
    private final ArrayMap<String, ArraySet<ComponentName>> mWindowLayoutAffinityMap;

    LaunchParamsPersister(PersisterQueue persisterQueue, ActivityStackSupervisor supervisor) {
        this(persisterQueue, supervisor, new IntFunction() { // from class: com.android.server.wm.-$$Lambda$OuObUsm0bB9g5X0kIXYkBYHvodY
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return Environment.getDataSystemCeDirectory(i);
            }
        });
    }

    LaunchParamsPersister(PersisterQueue persisterQueue, ActivityStackSupervisor supervisor, IntFunction<File> userFolderGetter) {
        this.mLaunchParamsMap = new SparseArray<>();
        this.mWindowLayoutAffinityMap = new ArrayMap<>();
        this.mPersisterQueue = persisterQueue;
        this.mSupervisor = supervisor;
        this.mUserFolderGetter = userFolderGetter;
    }

    void onSystemReady() {
        PackageManagerInternal pmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        this.mPackageList = pmi.getPackageList(new PackageListObserver());
    }

    void onUnlockUser(int userId) {
        loadLaunchParams(userId);
    }

    void onCleanupUser(int userId) {
        this.mLaunchParamsMap.remove(userId);
    }

    private void loadLaunchParams(int userId) throws Throwable {
        List<File> filesToDelete = new ArrayList<>();
        File launchParamsFolder = getLaunchParamFolder(userId);
        if (!launchParamsFolder.isDirectory()) {
            Slog.i(TAG, "Didn't find launch param folder for user " + userId);
            return;
        }
        Set<String> packages = new ArraySet<>(this.mPackageList.getPackageNames());
        File[] paramsFiles = launchParamsFolder.listFiles();
        ArrayMap<ComponentName, PersistableLaunchParams> map = new ArrayMap<>(paramsFiles.length);
        this.mLaunchParamsMap.put(userId, map);
        int length = paramsFiles.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            File paramsFile = paramsFiles[i2];
            if (!paramsFile.isFile()) {
                Slog.w(TAG, paramsFile.getAbsolutePath() + " is not a file.");
                launchParamsFolder = launchParamsFolder;
                packages = packages;
                paramsFiles = paramsFiles;
            } else if (paramsFile.getName().endsWith(LAUNCH_PARAMS_FILE_SUFFIX)) {
                String paramsFileName = paramsFile.getName();
                String componentNameString = paramsFileName.substring(i, paramsFileName.length() - LAUNCH_PARAMS_FILE_SUFFIX.length()).replace(ESCAPED_COMPONENT_SEPARATOR, ORIGINAL_COMPONENT_SEPARATOR);
                ComponentName name = ComponentName.unflattenFromString(componentNameString);
                if (name == null) {
                    Slog.w(TAG, "Unexpected file name: " + paramsFileName);
                    filesToDelete.add(paramsFile);
                    launchParamsFolder = launchParamsFolder;
                    packages = packages;
                    paramsFiles = paramsFiles;
                } else if (packages.contains(name.getPackageName())) {
                    BufferedReader reader = null;
                    try {
                        reader = new BufferedReader(new FileReader(paramsFile));
                        PersistableLaunchParams params = new PersistableLaunchParams();
                        XmlPullParser parser = Xml.newPullParser();
                        parser.setInput(reader);
                        while (true) {
                            launchParamsFolder = launchParamsFolder;
                            try {
                                int event = parser.next();
                                packages = packages;
                                if (event == 1 || event == 3) {
                                    break;
                                    break;
                                }
                                if (event == 2) {
                                    try {
                                        String tagName = parser.getName();
                                        if ("launch_params".equals(tagName)) {
                                            params.restore(paramsFile, parser);
                                            paramsFiles = paramsFiles;
                                        } else {
                                            StringBuilder sb = new StringBuilder();
                                            paramsFiles = paramsFiles;
                                            try {
                                                try {
                                                    sb.append("Unexpected tag name: ");
                                                    sb.append(tagName);
                                                    Slog.w(TAG, sb.toString());
                                                    paramsFiles = paramsFiles;
                                                } catch (Throwable th) {
                                                    th = th;
                                                    IoUtils.closeQuietly(reader);
                                                    throw th;
                                                }
                                            } catch (Exception e) {
                                                e = e;
                                                Slog.w(TAG, "Failed to restore launch params for " + name, e);
                                                filesToDelete.add(paramsFile);
                                                IoUtils.closeQuietly(reader);
                                                i2++;
                                                launchParamsFolder = launchParamsFolder;
                                                packages = packages;
                                                paramsFiles = paramsFiles;
                                                i = 0;
                                            }
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        paramsFiles = paramsFiles;
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                }
                            } catch (Exception e3) {
                                e = e3;
                                packages = packages;
                                paramsFiles = paramsFiles;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        }
                        map.put(name, params);
                        addComponentNameToLaunchParamAffinityMapIfNotNull(name, params.mWindowLayoutAffinity);
                    } catch (Exception e4) {
                        e = e4;
                        launchParamsFolder = launchParamsFolder;
                        packages = packages;
                        paramsFiles = paramsFiles;
                    } catch (Throwable th4) {
                        th = th4;
                    }
                    IoUtils.closeQuietly(reader);
                } else {
                    filesToDelete.add(paramsFile);
                    launchParamsFolder = launchParamsFolder;
                    packages = packages;
                    paramsFiles = paramsFiles;
                }
            } else {
                Slog.w(TAG, "Unexpected params file name: " + paramsFile.getName());
                filesToDelete.add(paramsFile);
                launchParamsFolder = launchParamsFolder;
                packages = packages;
                paramsFiles = paramsFiles;
            }
            i2++;
            launchParamsFolder = launchParamsFolder;
            packages = packages;
            paramsFiles = paramsFiles;
            i = 0;
        }
        if (filesToDelete.isEmpty()) {
            return;
        }
        this.mPersisterQueue.addItem(new CleanUpComponentQueueItem(filesToDelete), true);
    }

    void saveTask(Task task) {
        saveTask(task, task.getDisplayContent());
    }

    void saveTask(Task task, DisplayContent display) {
        ArrayMap<ComponentName, PersistableLaunchParams> map;
        ComponentName name = task.realActivity;
        if (name == null) {
            return;
        }
        int userId = task.mUserId;
        ArrayMap<ComponentName, PersistableLaunchParams> map2 = this.mLaunchParamsMap.get(userId);
        if (map2 != null) {
            map = map2;
        } else {
            ArrayMap<ComponentName, PersistableLaunchParams> map3 = new ArrayMap<>();
            this.mLaunchParamsMap.put(userId, map3);
            map = map3;
        }
        PersistableLaunchParams params = map.computeIfAbsent(name, new Function() { // from class: com.android.server.wm.-$$Lambda$LaunchParamsPersister$zTtSbQ0CQIRmtys80G-dcYpMGXg
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.lambda$saveTask$0$LaunchParamsPersister((ComponentName) obj);
            }
        });
        boolean changed = saveTaskToLaunchParam(task, display, params);
        addComponentNameToLaunchParamAffinityMapIfNotNull(name, params.mWindowLayoutAffinity);
        if (changed) {
            this.mPersisterQueue.updateLastOrAddItem(new LaunchParamsWriteQueueItem(userId, name, params), false);
        }
    }

    public /* synthetic */ PersistableLaunchParams lambda$saveTask$0$LaunchParamsPersister(ComponentName componentName) {
        return new PersistableLaunchParams();
    }

    private boolean saveTaskToLaunchParam(Task task, DisplayContent display, PersistableLaunchParams params) {
        boolean changed;
        DisplayInfo info = new DisplayInfo();
        display.mDisplay.getDisplayInfo(info);
        boolean changed2 = !Objects.equals(params.mDisplayUniqueId, info.uniqueId);
        params.mDisplayUniqueId = info.uniqueId;
        boolean changed3 = changed2 | (params.mWindowingMode != task.getWindowingMode());
        params.mWindowingMode = task.getWindowingMode();
        if (task.mLastNonFullscreenBounds != null) {
            changed = changed3 | (true ^ Objects.equals(params.mBounds, task.mLastNonFullscreenBounds));
            params.mBounds.set(task.mLastNonFullscreenBounds);
        } else {
            changed = changed3 | (true ^ params.mBounds.isEmpty());
            params.mBounds.setEmpty();
        }
        String launchParamAffinity = task.mWindowLayoutAffinity;
        boolean changed4 = changed | Objects.equals(launchParamAffinity, params.mWindowLayoutAffinity);
        params.mWindowLayoutAffinity = launchParamAffinity;
        if (changed4) {
            params.mTimestamp = System.currentTimeMillis();
        }
        return changed4;
    }

    private void addComponentNameToLaunchParamAffinityMapIfNotNull(ComponentName name, String launchParamAffinity) {
        if (launchParamAffinity == null) {
            return;
        }
        this.mWindowLayoutAffinityMap.computeIfAbsent(launchParamAffinity, new Function() { // from class: com.android.server.wm.-$$Lambda$LaunchParamsPersister$1psnjiK_uu40LmSnVTgQlag2QuQ
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return LaunchParamsPersister.lambda$addComponentNameToLaunchParamAffinityMapIfNotNull$1((String) obj);
            }
        }).add(name);
    }

    static /* synthetic */ ArraySet lambda$addComponentNameToLaunchParamAffinityMapIfNotNull$1(String affinity) {
        return new ArraySet();
    }

    void getLaunchParams(Task task, ActivityRecord activity, LaunchParamsController.LaunchParams outParams) {
        String windowLayoutAffinity;
        ComponentName name = task != null ? task.realActivity : activity.mActivityComponent;
        int userId = task != null ? task.mUserId : activity.mUserId;
        if (task != null) {
            windowLayoutAffinity = task.mWindowLayoutAffinity;
        } else {
            ActivityInfo.WindowLayout layout = activity.info.windowLayout;
            windowLayoutAffinity = layout == null ? null : layout.windowLayoutAffinity;
        }
        outParams.reset();
        Map<ComponentName, PersistableLaunchParams> map = this.mLaunchParamsMap.get(userId);
        if (map == null) {
            return;
        }
        PersistableLaunchParams persistableParams = map.get(name);
        if (windowLayoutAffinity != null && this.mWindowLayoutAffinityMap.get(windowLayoutAffinity) != null) {
            ArraySet<ComponentName> candidates = this.mWindowLayoutAffinityMap.get(windowLayoutAffinity);
            for (int i = 0; i < candidates.size(); i++) {
                ComponentName candidate = candidates.valueAt(i);
                PersistableLaunchParams candidateParams = map.get(candidate);
                if (candidateParams != null && (persistableParams == null || candidateParams.mTimestamp > persistableParams.mTimestamp)) {
                    persistableParams = candidateParams;
                }
            }
        }
        if (persistableParams == null) {
            return;
        }
        DisplayContent display = this.mSupervisor.mRootWindowContainer.getDisplayContent(persistableParams.mDisplayUniqueId);
        if (display != null) {
            outParams.mPreferredTaskDisplayArea = display.getDefaultTaskDisplayArea();
        }
        outParams.mWindowingMode = persistableParams.mWindowingMode;
        outParams.mBounds.set(persistableParams.mBounds);
    }

    void removeRecordForPackage(final String packageName) {
        List<File> fileToDelete = new ArrayList<>();
        for (int i = 0; i < this.mLaunchParamsMap.size(); i++) {
            int userId = this.mLaunchParamsMap.keyAt(i);
            File launchParamsFolder = getLaunchParamFolder(userId);
            ArrayMap<ComponentName, PersistableLaunchParams> map = this.mLaunchParamsMap.valueAt(i);
            for (int j = map.size() - 1; j >= 0; j--) {
                ComponentName name = map.keyAt(j);
                if (name.getPackageName().equals(packageName)) {
                    map.removeAt(j);
                    fileToDelete.add(getParamFile(launchParamsFolder, name));
                }
            }
        }
        synchronized (this.mPersisterQueue) {
            this.mPersisterQueue.removeItems(new Predicate() { // from class: com.android.server.wm.-$$Lambda$LaunchParamsPersister$Jn24e8Qu0NiiVH-qAilJf6vgADQ
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((LaunchParamsPersister.LaunchParamsWriteQueueItem) obj).mComponentName.getPackageName().equals(packageName);
                }
            }, LaunchParamsWriteQueueItem.class);
            this.mPersisterQueue.addItem(new CleanUpComponentQueueItem(fileToDelete), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File getParamFile(File launchParamFolder, ComponentName name) {
        String componentNameString = name.flattenToShortString().replace(ORIGINAL_COMPONENT_SEPARATOR, ESCAPED_COMPONENT_SEPARATOR);
        return new File(launchParamFolder, componentNameString + LAUNCH_PARAMS_FILE_SUFFIX);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File getLaunchParamFolder(int userId) {
        File userFolder = this.mUserFolderGetter.apply(userId);
        return new File(userFolder, "launch_params");
    }

    private class PackageListObserver implements PackageManagerInternal.PackageListObserver {
        private PackageListObserver() {
        }

        @Override // android.content.pm.PackageManagerInternal.PackageListObserver
        public void onPackageAdded(String packageName, int uid) {
        }

        @Override // android.content.pm.PackageManagerInternal.PackageListObserver
        public void onPackageRemoved(String packageName, int uid) {
            LaunchParamsPersister.this.removeRecordForPackage(packageName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class LaunchParamsWriteQueueItem implements PersisterQueue.WriteQueueItem<LaunchParamsWriteQueueItem> {
        private final ComponentName mComponentName;
        private PersistableLaunchParams mLaunchParams;
        private final int mUserId;

        private LaunchParamsWriteQueueItem(int userId, ComponentName componentName, PersistableLaunchParams launchParams) {
            this.mUserId = userId;
            this.mComponentName = componentName;
            this.mLaunchParams = launchParams;
        }

        private StringWriter saveParamsToXml() {
            StringWriter writer = new StringWriter();
            XmlSerializer serializer = new FastXmlSerializer();
            try {
                serializer.setOutput(writer);
                serializer.startDocument(null, true);
                serializer.startTag(null, "launch_params");
                this.mLaunchParams.saveToXml(serializer);
                serializer.endTag(null, "launch_params");
                serializer.endDocument();
                serializer.flush();
                return writer;
            } catch (IOException e) {
                return null;
            }
        }

        @Override // com.android.server.wm.PersisterQueue.WriteQueueItem
        public void process() {
            StringWriter writer = saveParamsToXml();
            File launchParamFolder = LaunchParamsPersister.this.getLaunchParamFolder(this.mUserId);
            if (launchParamFolder.isDirectory() || launchParamFolder.mkdirs()) {
                File launchParamFile = LaunchParamsPersister.this.getParamFile(launchParamFolder, this.mComponentName);
                AtomicFile atomicFile = new AtomicFile(launchParamFile);
                FileOutputStream stream = null;
                try {
                    stream = atomicFile.startWrite();
                    stream.write(writer.toString().getBytes());
                    atomicFile.finishWrite(stream);
                    return;
                } catch (Exception e) {
                    Slog.e(LaunchParamsPersister.TAG, "Failed to write param file for " + this.mComponentName, e);
                    if (stream != null) {
                        atomicFile.failWrite(stream);
                        return;
                    }
                    return;
                }
            }
            Slog.w(LaunchParamsPersister.TAG, "Failed to create folder for " + this.mUserId);
        }

        @Override // com.android.server.wm.PersisterQueue.WriteQueueItem
        public boolean matches(LaunchParamsWriteQueueItem item) {
            return this.mUserId == item.mUserId && this.mComponentName.equals(item.mComponentName);
        }

        @Override // com.android.server.wm.PersisterQueue.WriteQueueItem
        public void updateFrom(LaunchParamsWriteQueueItem item) {
            this.mLaunchParams = item.mLaunchParams;
        }
    }

    private class CleanUpComponentQueueItem implements PersisterQueue.WriteQueueItem {
        private final List<File> mComponentFiles;

        private CleanUpComponentQueueItem(List<File> componentFiles) {
            this.mComponentFiles = componentFiles;
        }

        @Override // com.android.server.wm.PersisterQueue.WriteQueueItem
        public void process() {
            for (File file : this.mComponentFiles) {
                if (!file.delete()) {
                    Slog.w(LaunchParamsPersister.TAG, "Failed to delete " + file.getAbsolutePath());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class PersistableLaunchParams {
        private static final String ATTR_BOUNDS = "bounds";
        private static final String ATTR_DISPLAY_UNIQUE_ID = "display_unique_id";
        private static final String ATTR_WINDOWING_MODE = "windowing_mode";
        private static final String ATTR_WINDOW_LAYOUT_AFFINITY = "window_layout_affinity";
        final Rect mBounds;
        String mDisplayUniqueId;
        long mTimestamp;
        String mWindowLayoutAffinity;
        int mWindowingMode;

        private PersistableLaunchParams() {
            this.mBounds = new Rect();
        }

        void saveToXml(XmlSerializer serializer) throws IOException {
            serializer.attribute(null, ATTR_DISPLAY_UNIQUE_ID, this.mDisplayUniqueId);
            serializer.attribute(null, ATTR_WINDOWING_MODE, Integer.toString(this.mWindowingMode));
            serializer.attribute(null, ATTR_BOUNDS, this.mBounds.flattenToString());
            String str = this.mWindowLayoutAffinity;
            if (str != null) {
                serializer.attribute(null, ATTR_WINDOW_LAYOUT_AFFINITY, str);
            }
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        void restore(File xmlFile, XmlPullParser parser) {
            for (int i = 0; i < parser.getAttributeCount(); i++) {
                String attrValue = parser.getAttributeValue(i);
                String attributeName = parser.getAttributeName(i);
                byte b = -1;
                switch (attributeName.hashCode()) {
                    case -1499361012:
                        if (attributeName.equals(ATTR_DISPLAY_UNIQUE_ID)) {
                            b = 0;
                        }
                        break;
                    case -1383205195:
                        if (attributeName.equals(ATTR_BOUNDS)) {
                            b = 2;
                        }
                        break;
                    case 748872656:
                        if (attributeName.equals(ATTR_WINDOWING_MODE)) {
                            b = 1;
                        }
                        break;
                    case 1999609934:
                        if (attributeName.equals(ATTR_WINDOW_LAYOUT_AFFINITY)) {
                            b = 3;
                        }
                        break;
                }
                if (b == 0) {
                    this.mDisplayUniqueId = attrValue;
                } else if (b == 1) {
                    this.mWindowingMode = Integer.parseInt(attrValue);
                } else if (b == 2) {
                    Rect bounds = Rect.unflattenFromString(attrValue);
                    if (bounds != null) {
                        this.mBounds.set(bounds);
                    }
                } else if (b == 3) {
                    this.mWindowLayoutAffinity = attrValue;
                }
            }
            this.mTimestamp = xmlFile.lastModified();
        }

        public String toString() {
            StringBuilder builder = new StringBuilder("PersistableLaunchParams{");
            builder.append(" windowingMode=" + this.mWindowingMode);
            builder.append(" displayUniqueId=" + this.mDisplayUniqueId);
            builder.append(" bounds=" + this.mBounds);
            if (this.mWindowLayoutAffinity != null) {
                builder.append(" launchParamsAffinity=" + this.mWindowLayoutAffinity);
            }
            builder.append(" timestamp=" + this.mTimestamp);
            builder.append(" }");
            return builder.toString();
        }
    }
}

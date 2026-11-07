package com.android.server.pm.dex;

import android.os.Build;
import android.util.AtomicFile;
import android.util.Slog;
import com.android.internal.util.FastPrintWriter;
import com.android.server.notification.SnoozeHelper;
import com.android.server.pm.AbstractStatsBase;
import com.android.server.pm.PackageManagerServiceUtils;
import dalvik.system.VMRuntime;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class PackageDexUsage extends AbstractStatsBase<Void> {
    private static final String CODE_PATH_LINE_CHAR = "+";
    private static final String DEX_LINE_CHAR = "#";
    private static final String LOADING_PACKAGE_CHAR = "@";
    static final int MAX_SECONDARY_FILES_PER_OWNER = 100;
    private static final int PACKAGE_DEX_USAGE_VERSION = 2;
    private static final String PACKAGE_DEX_USAGE_VERSION_HEADER = "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__";
    private static final String SPLIT_CHAR = ",";
    private static final String TAG = "PackageDexUsage";
    static final String UNSUPPORTED_CLASS_LOADER_CONTEXT = "=UnsupportedClassLoaderContext=";
    static final String VARIABLE_CLASS_LOADER_CONTEXT = "=VariableClassLoaderContext=";
    private final Map<String, PackageUseInfo> mPackageUseInfoMap;

    PackageDexUsage() {
        super("package-dex-usage.list", "PackageDexUsage_DiskWriter", false);
        this.mPackageUseInfoMap = new HashMap();
    }

    boolean record(String owningPackageName, String dexPath, int ownerUserId, String loaderIsa, boolean primaryOrSplit, String loadingPackageName, String classLoaderContext) {
        if (!PackageManagerServiceUtils.checkISA(loaderIsa)) {
            throw new IllegalArgumentException("loaderIsa " + loaderIsa + " is unsupported");
        }
        if (classLoaderContext == null) {
            throw new IllegalArgumentException("Null classLoaderContext");
        }
        if (classLoaderContext.equals(UNSUPPORTED_CLASS_LOADER_CONTEXT)) {
            Slog.e(TAG, "Unsupported context?");
            return false;
        }
        boolean isUsedByOtherApps = !owningPackageName.equals(loadingPackageName);
        synchronized (this.mPackageUseInfoMap) {
            PackageUseInfo packageUseInfo = this.mPackageUseInfoMap.get(owningPackageName);
            if (packageUseInfo == null) {
                PackageUseInfo packageUseInfo2 = new PackageUseInfo(owningPackageName);
                if (!primaryOrSplit) {
                    DexUseInfo newData = new DexUseInfo(isUsedByOtherApps, ownerUserId, classLoaderContext, loaderIsa);
                    packageUseInfo2.mDexUseInfoMap.put(dexPath, newData);
                    maybeAddLoadingPackage(owningPackageName, loadingPackageName, newData.mLoadingPackages);
                } else {
                    packageUseInfo2.mergePrimaryCodePaths(dexPath, loadingPackageName);
                }
                this.mPackageUseInfoMap.put(owningPackageName, packageUseInfo2);
                return true;
            }
            if (!primaryOrSplit) {
                DexUseInfo newData2 = new DexUseInfo(isUsedByOtherApps, ownerUserId, classLoaderContext, loaderIsa);
                boolean updateLoadingPackages = maybeAddLoadingPackage(owningPackageName, loadingPackageName, newData2.mLoadingPackages);
                DexUseInfo existingData = (DexUseInfo) packageUseInfo.mDexUseInfoMap.get(dexPath);
                if (existingData == null) {
                    if (packageUseInfo.mDexUseInfoMap.size() >= 100) {
                        return updateLoadingPackages;
                    }
                    packageUseInfo.mDexUseInfoMap.put(dexPath, newData2);
                    return true;
                }
                if (ownerUserId == existingData.mOwnerUserId) {
                    return existingData.merge(newData2) || updateLoadingPackages;
                }
                throw new IllegalArgumentException("Trying to change ownerUserId for  dex path " + dexPath + " from " + existingData.mOwnerUserId + " to " + ownerUserId);
            }
            return packageUseInfo.mergePrimaryCodePaths(dexPath, loadingPackageName);
        }
    }

    void read() {
        read((Void) null);
    }

    void maybeWriteAsync() {
        maybeWriteAsync(null);
    }

    void writeNow() {
        writeInternal((Void) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.server.pm.AbstractStatsBase
    public void writeInternal(Void data) {
        AtomicFile file = getFile();
        FileOutputStream f = null;
        try {
            f = file.startWrite();
            OutputStreamWriter osw = new OutputStreamWriter(f);
            write(osw);
            osw.flush();
            file.finishWrite(f);
        } catch (IOException e) {
            if (f != null) {
                file.failWrite(f);
            }
            Slog.e(TAG, "Failed to write usage for dex files", e);
        }
    }

    void write(Writer out) {
        Map<String, PackageUseInfo> packageUseInfoMapClone = clonePackageUseInfoMap();
        FastPrintWriter fpw = new FastPrintWriter(out);
        fpw.print(PACKAGE_DEX_USAGE_VERSION_HEADER);
        int i = 2;
        fpw.println(2);
        for (Map.Entry<String, PackageUseInfo> pEntry : packageUseInfoMapClone.entrySet()) {
            String packageName = pEntry.getKey();
            PackageUseInfo packageUseInfo = pEntry.getValue();
            fpw.println(packageName);
            for (Map.Entry<String, Set<String>> codeEntry : packageUseInfo.mPrimaryCodePaths.entrySet()) {
                String codePath = codeEntry.getKey();
                Set<String> loadingPackages = codeEntry.getValue();
                fpw.println(CODE_PATH_LINE_CHAR + codePath);
                fpw.println(LOADING_PACKAGE_CHAR + String.join(SPLIT_CHAR, loadingPackages));
            }
            for (Map.Entry<String, DexUseInfo> dEntry : packageUseInfo.mDexUseInfoMap.entrySet()) {
                String dexPath = dEntry.getKey();
                DexUseInfo dexUseInfo = dEntry.getValue();
                fpw.println(DEX_LINE_CHAR + dexPath);
                CharSequence[] charSequenceArr = new CharSequence[i];
                charSequenceArr[0] = Integer.toString(dexUseInfo.mOwnerUserId);
                Map<String, PackageUseInfo> packageUseInfoMapClone2 = packageUseInfoMapClone;
                charSequenceArr[1] = writeBoolean(dexUseInfo.mIsUsedByOtherApps);
                fpw.print(String.join(SPLIT_CHAR, charSequenceArr));
                for (String isa : dexUseInfo.mLoaderIsas) {
                    fpw.print(SPLIT_CHAR + isa);
                }
                fpw.println();
                fpw.println(LOADING_PACKAGE_CHAR + String.join(SPLIT_CHAR, dexUseInfo.mLoadingPackages));
                fpw.println(dexUseInfo.getClassLoaderContext());
                packageUseInfoMapClone = packageUseInfoMapClone2;
                i = 2;
            }
            packageUseInfoMapClone = packageUseInfoMapClone;
            i = 2;
        }
        fpw.flush();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.server.pm.AbstractStatsBase
    public void readInternal(Void data) {
        AtomicFile file = getFile();
        BufferedReader in = null;
        try {
            try {
                in = new BufferedReader(new InputStreamReader(file.openRead()));
                read((Reader) in);
            } catch (FileNotFoundException e) {
            } catch (IOException e2) {
                Slog.w(TAG, "Failed to parse package dex usage.", e2);
            }
        } finally {
            IoUtils.closeQuietly(in);
        }
    }

    void read(Reader reader) throws IOException {
        String currentPackage;
        Map<String, PackageUseInfo> data = new HashMap<>();
        BufferedReader in = new BufferedReader(reader);
        String versionLine = in.readLine();
        if (versionLine == null) {
            throw new IllegalStateException("No version line found.");
        }
        if (!versionLine.startsWith(PACKAGE_DEX_USAGE_VERSION_HEADER)) {
            throw new IllegalStateException("Invalid version line: " + versionLine);
        }
        int version = Integer.parseInt(versionLine.substring(PACKAGE_DEX_USAGE_VERSION_HEADER.length()));
        if (!isSupportedVersion(version)) {
            Slog.w(TAG, "Unexpected package-dex-use version: " + version + ". Not reading from it");
            return;
        }
        Set<String> supportedIsas = new HashSet<>();
        char c = 0;
        for (String abi : Build.SUPPORTED_ABIS) {
            supportedIsas.add(VMRuntime.getInstructionSet(abi));
        }
        PackageUseInfo currentPackageData = null;
        String currentPackage2 = null;
        while (true) {
            String line = in.readLine();
            if (line == null) {
                synchronized (this.mPackageUseInfoMap) {
                    this.mPackageUseInfoMap.clear();
                    this.mPackageUseInfoMap.putAll(data);
                }
                return;
            }
            if (line.startsWith(DEX_LINE_CHAR)) {
                if (currentPackage2 == null) {
                    throw new IllegalStateException("Malformed PackageDexUsage file. Expected package line before dex line.");
                }
                String dexPath = line.substring(DEX_LINE_CHAR.length());
                String line2 = in.readLine();
                if (line2 == null) {
                    throw new IllegalStateException("Could not find dexUseInfo line");
                }
                String[] elems = line2.split(SPLIT_CHAR);
                if (elems.length < 3) {
                    throw new IllegalStateException("Invalid PackageDexUsage line: " + line2);
                }
                Set<String> loadingPackages = readLoadingPackages(in, version);
                String classLoaderContext = readClassLoaderContext(in, version);
                if (UNSUPPORTED_CLASS_LOADER_CONTEXT.equals(classLoaderContext)) {
                    currentPackage = currentPackage2;
                } else {
                    int ownerUserId = Integer.parseInt(elems[c]);
                    boolean isUsedByOtherApps = readBoolean(elems[1]);
                    currentPackage = currentPackage2;
                    DexUseInfo dexUseInfo = new DexUseInfo(isUsedByOtherApps, ownerUserId, classLoaderContext, null);
                    dexUseInfo.mLoadingPackages.addAll(loadingPackages);
                    int i = 2;
                    while (true) {
                        boolean isUsedByOtherApps2 = isUsedByOtherApps;
                        if (i >= elems.length) {
                            break;
                        }
                        String isa = elems[i];
                        if (supportedIsas.contains(isa)) {
                            dexUseInfo.mLoaderIsas.add(elems[i]);
                        } else {
                            Slog.wtf(TAG, "Unsupported ISA when parsing PackageDexUsage: " + isa);
                        }
                        i++;
                        isUsedByOtherApps = isUsedByOtherApps2;
                        loadingPackages = loadingPackages;
                        classLoaderContext = classLoaderContext;
                    }
                    if (supportedIsas.isEmpty()) {
                        Slog.wtf(TAG, "Ignore dexPath when parsing PackageDexUsage because of unsupported isas. dexPath=" + dexPath);
                    } else {
                        currentPackageData.mDexUseInfoMap.put(dexPath, dexUseInfo);
                    }
                }
            } else {
                currentPackage = currentPackage2;
                if (line.startsWith(CODE_PATH_LINE_CHAR)) {
                    String codePath = line.substring(CODE_PATH_LINE_CHAR.length());
                    currentPackageData.mPrimaryCodePaths.put(codePath, readLoadingPackages(in, version));
                } else {
                    currentPackage2 = line;
                    currentPackageData = new PackageUseInfo(currentPackage2);
                    data.put(currentPackage2, currentPackageData);
                    c = 0;
                }
            }
            currentPackage2 = currentPackage;
            c = 0;
        }
    }

    private String readClassLoaderContext(BufferedReader in, int version) throws IOException {
        String context = in.readLine();
        if (context == null) {
            throw new IllegalStateException("Could not find the classLoaderContext line.");
        }
        return context;
    }

    private Set<String> readLoadingPackages(BufferedReader in, int version) throws IOException {
        String line = in.readLine();
        if (line == null) {
            throw new IllegalStateException("Could not find the loadingPackages line.");
        }
        Set<String> result = new HashSet<>();
        if (line.length() != LOADING_PACKAGE_CHAR.length()) {
            Collections.addAll(result, line.substring(LOADING_PACKAGE_CHAR.length()).split(SPLIT_CHAR));
        }
        return result;
    }

    private boolean maybeAddLoadingPackage(String owningPackage, String loadingPackage, Set<String> loadingPackages) {
        return !owningPackage.equals(loadingPackage) && loadingPackages.add(loadingPackage);
    }

    private boolean isSupportedVersion(int version) {
        return version == 2;
    }

    void syncData(Map<String, Set<Integer>> packageToUsersMap, Map<String, Set<String>> packageToCodePaths, List<String> packagesToKeepDataAbout) {
        synchronized (this.mPackageUseInfoMap) {
            try {
                try {
                    Iterator<Map.Entry<String, PackageUseInfo>> pIt = this.mPackageUseInfoMap.entrySet().iterator();
                    while (pIt.hasNext()) {
                        Map.Entry<String, PackageUseInfo> pEntry = pIt.next();
                        String packageName = pEntry.getKey();
                        if (!packagesToKeepDataAbout.contains(packageName)) {
                            PackageUseInfo packageUseInfo = pEntry.getValue();
                            Set<Integer> users = packageToUsersMap.get(packageName);
                            if (users == null) {
                                pIt.remove();
                            } else {
                                Iterator<Map.Entry<String, DexUseInfo>> dIt = packageUseInfo.mDexUseInfoMap.entrySet().iterator();
                                while (dIt.hasNext()) {
                                    DexUseInfo dexUseInfo = dIt.next().getValue();
                                    if (!users.contains(Integer.valueOf(dexUseInfo.mOwnerUserId))) {
                                        dIt.remove();
                                    }
                                }
                                Set<String> codePaths = packageToCodePaths.get(packageName);
                                Iterator<Map.Entry<String, Set<String>>> recordedIt = packageUseInfo.mPrimaryCodePaths.entrySet().iterator();
                                while (recordedIt.hasNext()) {
                                    Map.Entry<String, Set<String>> entry = recordedIt.next();
                                    String recordedCodePath = entry.getKey();
                                    if (!codePaths.contains(recordedCodePath)) {
                                        recordedIt.remove();
                                    } else {
                                        Set<String> recordedLoadingPackages = entry.getValue();
                                        Iterator<String> recordedLoadingPackagesIt = recordedLoadingPackages.iterator();
                                        while (recordedLoadingPackagesIt.hasNext()) {
                                            String recordedLoadingPackage = recordedLoadingPackagesIt.next();
                                            if (!packagesToKeepDataAbout.contains(recordedLoadingPackage) && !packageToUsersMap.containsKey(recordedLoadingPackage)) {
                                                recordedLoadingPackagesIt.remove();
                                            }
                                        }
                                    }
                                }
                                if (!packageUseInfo.isAnyCodePathUsedByOtherApps() && packageUseInfo.mDexUseInfoMap.isEmpty()) {
                                    pIt.remove();
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    boolean clearUsedByOtherApps(String packageName) {
        synchronized (this.mPackageUseInfoMap) {
            PackageUseInfo packageUseInfo = this.mPackageUseInfoMap.get(packageName);
            if (packageUseInfo == null) {
                return false;
            }
            return packageUseInfo.clearCodePathUsedByOtherApps();
        }
    }

    boolean removePackage(String packageName) {
        boolean z;
        synchronized (this.mPackageUseInfoMap) {
            z = this.mPackageUseInfoMap.remove(packageName) != null;
        }
        return z;
    }

    boolean removeUserPackage(String packageName, int userId) {
        synchronized (this.mPackageUseInfoMap) {
            PackageUseInfo packageUseInfo = this.mPackageUseInfoMap.get(packageName);
            if (packageUseInfo == null) {
                return false;
            }
            boolean updated = false;
            Iterator<Map.Entry<String, DexUseInfo>> dIt = packageUseInfo.mDexUseInfoMap.entrySet().iterator();
            while (dIt.hasNext()) {
                DexUseInfo dexUseInfo = dIt.next().getValue();
                if (dexUseInfo.mOwnerUserId == userId) {
                    dIt.remove();
                    updated = true;
                }
            }
            if (packageUseInfo.mDexUseInfoMap.isEmpty() && !packageUseInfo.isAnyCodePathUsedByOtherApps()) {
                this.mPackageUseInfoMap.remove(packageName);
                updated = true;
            }
            return updated;
        }
    }

    boolean removeDexFile(String packageName, String dexFile, int userId) {
        synchronized (this.mPackageUseInfoMap) {
            PackageUseInfo packageUseInfo = this.mPackageUseInfoMap.get(packageName);
            if (packageUseInfo == null) {
                return false;
            }
            return removeDexFile(packageUseInfo, dexFile, userId);
        }
    }

    private boolean removeDexFile(PackageUseInfo packageUseInfo, String dexFile, int userId) {
        DexUseInfo dexUseInfo = (DexUseInfo) packageUseInfo.mDexUseInfoMap.get(dexFile);
        if (dexUseInfo == null || dexUseInfo.mOwnerUserId != userId) {
            return false;
        }
        packageUseInfo.mDexUseInfoMap.remove(dexFile);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    PackageUseInfo getPackageUseInfo(String str) {
        PackageUseInfo packageUseInfo;
        synchronized (this.mPackageUseInfoMap) {
            PackageUseInfo packageUseInfo2 = this.mPackageUseInfoMap.get(str);
            packageUseInfo = null;
            Object[] objArr = 0;
            if (packageUseInfo2 != null) {
                packageUseInfo = new PackageUseInfo(packageUseInfo2);
            }
        }
        return packageUseInfo;
    }

    Set<String> getAllPackagesWithSecondaryDexFiles() {
        Set<String> packages = new HashSet<>();
        synchronized (this.mPackageUseInfoMap) {
            for (Map.Entry<String, PackageUseInfo> entry : this.mPackageUseInfoMap.entrySet()) {
                if (!entry.getValue().mDexUseInfoMap.isEmpty()) {
                    packages.add(entry.getKey());
                }
            }
        }
        return packages;
    }

    void clear() {
        synchronized (this.mPackageUseInfoMap) {
            this.mPackageUseInfoMap.clear();
        }
    }

    private Map<String, PackageUseInfo> clonePackageUseInfoMap() {
        Map<String, PackageUseInfo> clone = new HashMap<>();
        synchronized (this.mPackageUseInfoMap) {
            for (Map.Entry<String, PackageUseInfo> e : this.mPackageUseInfoMap.entrySet()) {
                clone.put(e.getKey(), new PackageUseInfo(e.getValue()));
            }
        }
        return clone;
    }

    private String writeBoolean(boolean bool) {
        return bool ? SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION : "0";
    }

    private boolean readBoolean(String bool) {
        if ("0".equals(bool)) {
            return false;
        }
        if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(bool)) {
            return true;
        }
        throw new IllegalArgumentException("Unknown bool encoding: " + bool);
    }

    String dump() {
        StringWriter sw = new StringWriter();
        write(sw);
        return sw.toString();
    }

    public static class PackageUseInfo {
        private final Map<String, DexUseInfo> mDexUseInfoMap;
        private final String mPackageName;
        private final Map<String, Set<String>> mPrimaryCodePaths;

        PackageUseInfo(String packageName) {
            this.mPrimaryCodePaths = new HashMap();
            this.mDexUseInfoMap = new HashMap();
            this.mPackageName = packageName;
        }

        private PackageUseInfo(PackageUseInfo other) {
            this.mPackageName = other.mPackageName;
            this.mPrimaryCodePaths = new HashMap();
            for (Map.Entry<String, Set<String>> e : other.mPrimaryCodePaths.entrySet()) {
                this.mPrimaryCodePaths.put(e.getKey(), new HashSet(e.getValue()));
            }
            this.mDexUseInfoMap = new HashMap();
            for (Map.Entry<String, DexUseInfo> e2 : other.mDexUseInfoMap.entrySet()) {
                this.mDexUseInfoMap.put(e2.getKey(), new DexUseInfo(e2.getValue()));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean mergePrimaryCodePaths(String codePath, String loadingPackage) {
            Set<String> loadingPackages = this.mPrimaryCodePaths.get(codePath);
            if (loadingPackages == null) {
                loadingPackages = new HashSet();
                this.mPrimaryCodePaths.put(codePath, loadingPackages);
            }
            return loadingPackages.add(loadingPackage);
        }

        public boolean isUsedByOtherApps(String codePath) {
            if (!this.mPrimaryCodePaths.containsKey(codePath)) {
                return false;
            }
            Set<String> loadingPackages = this.mPrimaryCodePaths.get(codePath);
            if (loadingPackages.contains(this.mPackageName)) {
                return loadingPackages.size() > 1;
            }
            return !loadingPackages.isEmpty();
        }

        public Map<String, DexUseInfo> getDexUseInfoMap() {
            return this.mDexUseInfoMap;
        }

        public Set<String> getLoadingPackages(String codePath) {
            return this.mPrimaryCodePaths.getOrDefault(codePath, null);
        }

        public boolean isAnyCodePathUsedByOtherApps() {
            return !this.mPrimaryCodePaths.isEmpty();
        }

        boolean clearCodePathUsedByOtherApps() {
            boolean updated = false;
            List<String> retainOnlyOwningPackage = new ArrayList<>(1);
            retainOnlyOwningPackage.add(this.mPackageName);
            for (Map.Entry<String, Set<String>> entry : this.mPrimaryCodePaths.entrySet()) {
                if (entry.getValue().retainAll(retainOnlyOwningPackage)) {
                    updated = true;
                }
            }
            return updated;
        }
    }

    public static class DexUseInfo {
        private String mClassLoaderContext;
        private boolean mIsUsedByOtherApps;
        private final Set<String> mLoaderIsas;
        private final Set<String> mLoadingPackages;
        private final int mOwnerUserId;

        DexUseInfo(boolean isUsedByOtherApps, int ownerUserId, String classLoaderContext, String loaderIsa) {
            this.mIsUsedByOtherApps = isUsedByOtherApps;
            this.mOwnerUserId = ownerUserId;
            this.mClassLoaderContext = classLoaderContext;
            HashSet hashSet = new HashSet();
            this.mLoaderIsas = hashSet;
            if (loaderIsa != null) {
                hashSet.add(loaderIsa);
            }
            this.mLoadingPackages = new HashSet();
        }

        private DexUseInfo(DexUseInfo other) {
            this.mIsUsedByOtherApps = other.mIsUsedByOtherApps;
            this.mOwnerUserId = other.mOwnerUserId;
            this.mClassLoaderContext = other.mClassLoaderContext;
            this.mLoaderIsas = new HashSet(other.mLoaderIsas);
            this.mLoadingPackages = new HashSet(other.mLoadingPackages);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean merge(DexUseInfo dexUseInfo) {
            boolean oldIsUsedByOtherApps = this.mIsUsedByOtherApps;
            this.mIsUsedByOtherApps = this.mIsUsedByOtherApps || dexUseInfo.mIsUsedByOtherApps;
            boolean updateIsas = this.mLoaderIsas.addAll(dexUseInfo.mLoaderIsas);
            boolean updateLoadingPackages = this.mLoadingPackages.addAll(dexUseInfo.mLoadingPackages);
            String oldClassLoaderContext = this.mClassLoaderContext;
            if (isUnsupportedContext(this.mClassLoaderContext)) {
                this.mClassLoaderContext = dexUseInfo.mClassLoaderContext;
            } else if (!Objects.equals(this.mClassLoaderContext, dexUseInfo.mClassLoaderContext)) {
                this.mClassLoaderContext = PackageDexUsage.VARIABLE_CLASS_LOADER_CONTEXT;
            }
            return updateIsas || oldIsUsedByOtherApps != this.mIsUsedByOtherApps || updateLoadingPackages || !Objects.equals(oldClassLoaderContext, this.mClassLoaderContext);
        }

        private static boolean isUnsupportedContext(String context) {
            return PackageDexUsage.UNSUPPORTED_CLASS_LOADER_CONTEXT.equals(context);
        }

        public boolean isUsedByOtherApps() {
            return this.mIsUsedByOtherApps;
        }

        int getOwnerUserId() {
            return this.mOwnerUserId;
        }

        public Set<String> getLoaderIsas() {
            return this.mLoaderIsas;
        }

        public Set<String> getLoadingPackages() {
            return this.mLoadingPackages;
        }

        public String getClassLoaderContext() {
            return this.mClassLoaderContext;
        }

        public boolean isUnsupportedClassLoaderContext() {
            return isUnsupportedContext(this.mClassLoaderContext);
        }

        public boolean isVariableClassLoaderContext() {
            return PackageDexUsage.VARIABLE_CLASS_LOADER_CONTEXT.equals(this.mClassLoaderContext);
        }
    }
}

package com.android.server.pm;

import android.R;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManagerInternal;
import android.content.pm.PackageParser;
import android.content.pm.UserInfo;
import android.content.pm.parsing.component.ParsedComponent;
import android.content.pm.parsing.component.ParsedInstrumentation;
import android.content.pm.parsing.component.ParsedIntentInfo;
import android.content.pm.parsing.component.ParsedMainComponent;
import android.content.pm.parsing.component.ParsedProvider;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.HandlerThread;
import android.os.Trace;
import android.os.UserHandle;
import android.provider.DeviceConfig;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseSetArray;
import com.android.internal.util.ArrayUtils;
import com.android.server.FgThread;
import com.android.server.compat.CompatChange;
import com.android.server.om.OverlayReferenceMapper;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class AppsFilter {
    private static final boolean DEBUG_ALLOW_ALL = false;
    private static final boolean DEBUG_LOGGING = false;
    private static final String TAG = "AppsFilter";
    private final Executor mBackgroundExecutor;
    private final FeatureConfig mFeatureConfig;
    private final String[] mForceQueryableByDevicePackageNames;
    private final OverlayReferenceMapper mOverlayReferenceMapper;
    private volatile SparseArray<SparseBooleanArray> mShouldFilterCache;
    private final StateProvider mStateProvider;
    private final boolean mSystemAppsQueryable;
    private PackageParser.SigningDetails mSystemSigningDetails;
    private final SparseSetArray<Integer> mImplicitlyQueryable = new SparseSetArray<>();
    private final SparseSetArray<Integer> mQueriesViaPackage = new SparseSetArray<>();
    private final SparseSetArray<Integer> mQueriesViaComponent = new SparseSetArray<>();
    private boolean mQueriesViaComponentRequireRecompute = false;
    private final ArraySet<Integer> mForceQueryable = new ArraySet<>();
    private Set<String> mProtectedBroadcasts = new ArraySet();
    private final Object mCacheLock = new Object();

    public interface FeatureConfig {
        void enableLogging(int i, boolean z);

        boolean isGloballyEnabled();

        boolean isLoggingEnabled(int i);

        void onSystemReady();

        boolean packageIsEnabled(AndroidPackage androidPackage);

        void updatePackageState(PackageSetting packageSetting, boolean z);
    }

    public interface StateProvider {

        public interface CurrentStateCallback {
            void currentState(ArrayMap<String, PackageSetting> arrayMap, UserInfo[] userInfoArr);
        }

        void runWithState(CurrentStateCallback currentStateCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface ToString<T> {
        String toString(T t);
    }

    AppsFilter(StateProvider stateProvider, FeatureConfig featureConfig, String[] forceQueryableWhitelist, boolean systemAppsQueryable, OverlayReferenceMapper.Provider overlayProvider, Executor backgroundExecutor) {
        this.mFeatureConfig = featureConfig;
        this.mForceQueryableByDevicePackageNames = forceQueryableWhitelist;
        this.mSystemAppsQueryable = systemAppsQueryable;
        this.mOverlayReferenceMapper = new OverlayReferenceMapper(true, overlayProvider);
        this.mStateProvider = stateProvider;
        this.mBackgroundExecutor = backgroundExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class FeatureConfigImpl implements FeatureConfig, CompatChange.ChangeListener {
        private static final String FILTERING_ENABLED_NAME = "package_query_filtering_enabled";
        private AppsFilter mAppsFilter;
        private final ArraySet<String> mDisabledPackages;
        private volatile boolean mFeatureEnabled;
        private final PackageManagerService.Injector mInjector;
        private SparseBooleanArray mLoggingEnabled;
        private final PackageManagerInternal mPmInternal;

        private FeatureConfigImpl(PackageManagerInternal pmInternal, PackageManagerService.Injector injector) {
            this.mFeatureEnabled = true;
            this.mDisabledPackages = new ArraySet<>();
            this.mLoggingEnabled = null;
            this.mPmInternal = pmInternal;
            this.mInjector = injector;
        }

        public void setAppsFilter(AppsFilter filter) {
            this.mAppsFilter = filter;
        }

        @Override // com.android.server.pm.AppsFilter.FeatureConfig
        public void onSystemReady() {
            this.mFeatureEnabled = DeviceConfig.getBoolean("package_manager_service", FILTERING_ENABLED_NAME, true);
            DeviceConfig.addOnPropertiesChangedListener("package_manager_service", FgThread.getExecutor(), new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.pm.-$$Lambda$AppsFilter$FeatureConfigImpl$n15whgPRX7bGimHq6-7mgAskIKs
                public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                    this.f$0.lambda$onSystemReady$0$AppsFilter$FeatureConfigImpl(properties);
                }
            });
            this.mInjector.getCompatibility().registerListener(135549675L, this);
        }

        public /* synthetic */ void lambda$onSystemReady$0$AppsFilter$FeatureConfigImpl(DeviceConfig.Properties properties) {
            if (properties.getKeyset().contains(FILTERING_ENABLED_NAME)) {
                synchronized (this) {
                    this.mFeatureEnabled = properties.getBoolean(FILTERING_ENABLED_NAME, true);
                }
            }
        }

        @Override // com.android.server.pm.AppsFilter.FeatureConfig
        public boolean isGloballyEnabled() {
            Trace.traceBegin(262144L, "isGloballyEnabled");
            try {
                return this.mFeatureEnabled;
            } finally {
                Trace.traceEnd(262144L);
            }
        }

        @Override // com.android.server.pm.AppsFilter.FeatureConfig
        public boolean packageIsEnabled(AndroidPackage pkg) {
            Trace.traceBegin(262144L, "packageIsEnabled");
            try {
                return !this.mDisabledPackages.contains(pkg.getPackageName());
            } finally {
                Trace.traceEnd(262144L);
            }
        }

        @Override // com.android.server.pm.AppsFilter.FeatureConfig
        public boolean isLoggingEnabled(int uid) {
            SparseBooleanArray sparseBooleanArray = this.mLoggingEnabled;
            return sparseBooleanArray != null && sparseBooleanArray.indexOfKey(uid) >= 0;
        }

        @Override // com.android.server.pm.AppsFilter.FeatureConfig
        public void enableLogging(int appId, boolean enable) {
            int index;
            if (enable) {
                if (this.mLoggingEnabled == null) {
                    this.mLoggingEnabled = new SparseBooleanArray();
                }
                this.mLoggingEnabled.put(appId, true);
                return;
            }
            SparseBooleanArray sparseBooleanArray = this.mLoggingEnabled;
            if (sparseBooleanArray != null && (index = sparseBooleanArray.indexOfKey(appId)) >= 0) {
                this.mLoggingEnabled.removeAt(index);
                if (this.mLoggingEnabled.size() == 0) {
                    this.mLoggingEnabled = null;
                }
            }
        }

        @Override // com.android.server.compat.CompatChange.ChangeListener
        public void onCompatChange(String packageName) {
            AndroidPackage pkg = this.mPmInternal.getPackage(packageName);
            if (pkg == null) {
                return;
            }
            updateEnabledState(pkg);
            this.mAppsFilter.updateShouldFilterCacheForPackage(packageName);
        }

        private void updateEnabledState(AndroidPackage pkg) {
            boolean enabled = this.mInjector.getCompatibility().isChangeEnabledInternal(135549675L, pkg.toAppInfoWithoutState());
            if (enabled) {
                this.mDisabledPackages.remove(pkg.getPackageName());
            } else {
                this.mDisabledPackages.add(pkg.getPackageName());
            }
        }

        @Override // com.android.server.pm.AppsFilter.FeatureConfig
        public void updatePackageState(PackageSetting setting, boolean removed) {
            boolean enableLogging = (setting.pkg == null || removed || (!setting.pkg.isTestOnly() && !setting.pkg.isDebuggable())) ? false : true;
            enableLogging(setting.appId, enableLogging);
            if (removed) {
                this.mDisabledPackages.remove(setting.name);
            } else if (setting.pkg != null) {
                updateEnabledState(setting.pkg);
            }
        }
    }

    public static AppsFilter create(PackageManagerInternal pms, final PackageManagerService.Injector injector) {
        String[] forcedQueryablePackageNames;
        boolean forceSystemAppsQueryable = injector.getContext().getResources().getBoolean(R.bool.config_cecQuerySadDdpEnabled_default);
        FeatureConfigImpl featureConfig = new FeatureConfigImpl(pms, injector);
        if (forceSystemAppsQueryable) {
            forcedQueryablePackageNames = new String[0];
        } else {
            String[] forcedQueryablePackageNames2 = injector.getContext().getResources().getStringArray(R.array.config_displayUniqueIdArray);
            for (int i = 0; i < forcedQueryablePackageNames2.length; i++) {
                forcedQueryablePackageNames2[i] = forcedQueryablePackageNames2[i].intern();
            }
            forcedQueryablePackageNames = forcedQueryablePackageNames2;
        }
        StateProvider stateProvider = new StateProvider() { // from class: com.android.server.pm.-$$Lambda$AppsFilter$j5cCE_B_k1kV7DMXjxSek18KSPQ
            @Override // com.android.server.pm.AppsFilter.StateProvider
            public final void runWithState(AppsFilter.StateProvider.CurrentStateCallback currentStateCallback) {
                AppsFilter.lambda$create$0(injector, currentStateCallback);
            }
        };
        HandlerThread appsFilterThread = new HandlerThread("appsFilter");
        appsFilterThread.start();
        Handler appsFilterHandler = new Handler(appsFilterThread.getLooper());
        AppsFilter appsFilter = new AppsFilter(stateProvider, featureConfig, forcedQueryablePackageNames, forceSystemAppsQueryable, null, new HandlerExecutor(appsFilterHandler));
        featureConfig.setAppsFilter(appsFilter);
        return appsFilter;
    }

    static /* synthetic */ void lambda$create$0(PackageManagerService.Injector injector, StateProvider.CurrentStateCallback command) {
        synchronized (injector.getLock()) {
            command.currentState(injector.getSettings().mPackages, injector.getUserManagerInternal().getUserInfos());
        }
    }

    public FeatureConfig getFeatureConfig() {
        return this.mFeatureConfig;
    }

    private static boolean canQueryViaComponents(AndroidPackage querying, AndroidPackage potentialTarget, Set<String> protectedBroadcasts) {
        if (!querying.getQueriesIntents().isEmpty()) {
            for (Intent intent : querying.getQueriesIntents()) {
                if (matchesPackage(intent, potentialTarget, protectedBroadcasts)) {
                    return true;
                }
            }
        }
        return !querying.getQueriesProviders().isEmpty() && matchesProviders(querying.getQueriesProviders(), potentialTarget);
    }

    private static boolean canQueryViaPackage(AndroidPackage querying, AndroidPackage potentialTarget) {
        return !querying.getQueriesPackages().isEmpty() && querying.getQueriesPackages().contains(potentialTarget.getPackageName());
    }

    private static boolean canQueryAsInstaller(PackageSetting querying, AndroidPackage potentialTarget) {
        InstallSource installSource = querying.installSource;
        if (potentialTarget.getPackageName().equals(installSource.installerPackageName)) {
            return true;
        }
        return !installSource.isInitiatingPackageUninstalled && potentialTarget.getPackageName().equals(installSource.initiatingPackageName);
    }

    private static boolean matchesProviders(Set<String> queriesAuthorities, AndroidPackage potentialTarget) {
        for (int p = ArrayUtils.size(potentialTarget.getProviders()) - 1; p >= 0; p--) {
            ParsedProvider provider = potentialTarget.getProviders().get(p);
            if (provider.isExported() && provider.getAuthority() != null) {
                StringTokenizer authorities = new StringTokenizer(provider.getAuthority(), ";", false);
                while (authorities.hasMoreElements()) {
                    if (queriesAuthorities.contains(authorities.nextToken())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private static boolean matchesPackage(Intent intent, AndroidPackage potentialTarget, Set<String> protectedBroadcasts) {
        return matchesAnyComponents(intent, potentialTarget.getServices(), null) || matchesAnyComponents(intent, potentialTarget.getActivities(), null) || matchesAnyComponents(intent, potentialTarget.getReceivers(), protectedBroadcasts) || matchesAnyComponents(intent, potentialTarget.getProviders(), null);
    }

    private static boolean matchesAnyComponents(Intent intent, List<? extends ParsedMainComponent> components, Set<String> protectedBroadcasts) {
        for (int i = ArrayUtils.size(components) - 1; i >= 0; i--) {
            ParsedMainComponent component = components.get(i);
            if (component.isExported() && matchesAnyFilter(intent, component, protectedBroadcasts)) {
                return true;
            }
        }
        return false;
    }

    private static boolean matchesAnyFilter(Intent intent, ParsedComponent component, Set<String> protectedBroadcasts) {
        List<ParsedIntentInfo> intents = component.getIntents();
        for (int i = ArrayUtils.size(intents) - 1; i >= 0; i--) {
            IntentFilter intentFilter = (IntentFilter) intents.get(i);
            if (matchesIntentFilter(intent, intentFilter, protectedBroadcasts)) {
                return true;
            }
        }
        return false;
    }

    private static boolean matchesIntentFilter(Intent intent, IntentFilter intentFilter, Set<String> protectedBroadcasts) {
        return intentFilter.match(intent.getAction(), intent.getType(), intent.getScheme(), intent.getData(), intent.getCategories(), TAG, true, protectedBroadcasts) > 0;
    }

    public void grantImplicitAccess(int recipientUid, int visibleUid) {
        if (recipientUid != visibleUid) {
            this.mImplicitlyQueryable.add(recipientUid, Integer.valueOf(visibleUid));
            synchronized (this.mCacheLock) {
                if (this.mShouldFilterCache != null) {
                    SparseBooleanArray visibleUids = this.mShouldFilterCache.get(recipientUid);
                    if (visibleUids == null) {
                        visibleUids = new SparseBooleanArray();
                        this.mShouldFilterCache.put(recipientUid, visibleUids);
                    }
                    visibleUids.put(visibleUid, false);
                }
            }
        }
    }

    public void onSystemReady() {
        this.mOverlayReferenceMapper.rebuildIfDeferred();
        this.mFeatureConfig.onSystemReady();
        updateEntireShouldFilterCacheAsync();
    }

    public void addPackage(final PackageSetting newPkgSetting, boolean isReplace) {
        Trace.traceBegin(262144L, "filter.addPackage");
        if (isReplace) {
            try {
                removePackage(newPkgSetting);
            } finally {
                Trace.traceEnd(262144L);
            }
        }
        this.mStateProvider.runWithState(new StateProvider.CurrentStateCallback() { // from class: com.android.server.pm.-$$Lambda$AppsFilter$Dxw_XmZrEzzBQvW2GyGYmM8TilU
            @Override // com.android.server.pm.AppsFilter.StateProvider.CurrentStateCallback
            public final void currentState(ArrayMap arrayMap, UserInfo[] userInfoArr) {
                this.f$0.lambda$addPackage$1$AppsFilter(newPkgSetting, arrayMap, userInfoArr);
            }
        });
    }

    public /* synthetic */ void lambda$addPackage$1$AppsFilter(PackageSetting newPkgSetting, ArrayMap settings, UserInfo[] users) {
        addPackageInternal(newPkgSetting, settings);
        synchronized (this.mCacheLock) {
            if (this.mShouldFilterCache != null) {
                updateShouldFilterCacheForPackage(this.mShouldFilterCache, null, newPkgSetting, settings, users, settings.size());
            }
        }
    }

    private void addPackageInternal(PackageSetting newPkgSetting, ArrayMap<String, PackageSetting> existingSettings) {
        PackageParser.SigningDetails signingDetails;
        if (Objects.equals(PackageManagerService.PLATFORM_PACKAGE_NAME, newPkgSetting.name)) {
            this.mSystemSigningDetails = newPkgSetting.signatures.mSigningDetails;
            for (PackageSetting setting : existingSettings.values()) {
                if (isSystemSigned(this.mSystemSigningDetails, setting)) {
                    this.mForceQueryable.add(Integer.valueOf(setting.appId));
                }
            }
        }
        AndroidPackage newPkg = newPkgSetting.pkg;
        if (newPkg == null) {
            return;
        }
        if (this.mProtectedBroadcasts.addAll(newPkg.getProtectedBroadcasts())) {
            this.mQueriesViaComponentRequireRecompute = true;
        }
        boolean newIsForceQueryable = this.mForceQueryable.contains(Integer.valueOf(newPkgSetting.appId)) || newPkgSetting.forceQueryableOverride || (newPkgSetting.isSystem() && (this.mSystemAppsQueryable || newPkg.isForceQueryable() || ArrayUtils.contains(this.mForceQueryableByDevicePackageNames, newPkg.getPackageName())));
        if (newIsForceQueryable || ((signingDetails = this.mSystemSigningDetails) != null && isSystemSigned(signingDetails, newPkgSetting))) {
            this.mForceQueryable.add(Integer.valueOf(newPkgSetting.appId));
        }
        for (int i = existingSettings.size() - 1; i >= 0; i--) {
            PackageSetting existingSetting = existingSettings.valueAt(i);
            if (existingSetting.appId != newPkgSetting.appId && existingSetting.pkg != null) {
                AndroidPackage existingPkg = existingSetting.pkg;
                if (!newIsForceQueryable) {
                    if (!this.mQueriesViaComponentRequireRecompute && canQueryViaComponents(existingPkg, newPkg, this.mProtectedBroadcasts)) {
                        this.mQueriesViaComponent.add(existingSetting.appId, Integer.valueOf(newPkgSetting.appId));
                    }
                    if (canQueryViaPackage(existingPkg, newPkg) || canQueryAsInstaller(existingSetting, newPkg)) {
                        this.mQueriesViaPackage.add(existingSetting.appId, Integer.valueOf(newPkgSetting.appId));
                    }
                }
                if (!this.mForceQueryable.contains(Integer.valueOf(existingSetting.appId))) {
                    if (!this.mQueriesViaComponentRequireRecompute && canQueryViaComponents(newPkg, existingPkg, this.mProtectedBroadcasts)) {
                        this.mQueriesViaComponent.add(newPkgSetting.appId, Integer.valueOf(existingSetting.appId));
                    }
                    if (canQueryViaPackage(newPkg, existingPkg) || canQueryAsInstaller(newPkgSetting, existingPkg)) {
                        this.mQueriesViaPackage.add(newPkgSetting.appId, Integer.valueOf(existingSetting.appId));
                    }
                }
                if (newPkgSetting.pkg != null && existingSetting.pkg != null && (pkgInstruments(newPkgSetting.pkg, existingSetting.pkg) || pkgInstruments(existingSetting.pkg, newPkgSetting.pkg))) {
                    this.mQueriesViaPackage.add(newPkgSetting.appId, Integer.valueOf(existingSetting.appId));
                    this.mQueriesViaPackage.add(existingSetting.appId, Integer.valueOf(newPkgSetting.appId));
                }
            }
        }
        int existingSize = existingSettings.size();
        ArrayMap<String, AndroidPackage> existingPkgs = new ArrayMap<>(existingSize);
        for (int index = 0; index < existingSize; index++) {
            PackageSetting pkgSetting = existingSettings.valueAt(index);
            if (pkgSetting.pkg != null) {
                existingPkgs.put(pkgSetting.name, pkgSetting.pkg);
            }
        }
        this.mOverlayReferenceMapper.addPkg(newPkgSetting.pkg, existingPkgs);
        this.mFeatureConfig.updatePackageState(newPkgSetting, false);
    }

    private void removeAppIdFromVisibilityCache(int appId) {
        if (this.mShouldFilterCache == null) {
            return;
        }
        for (int i = this.mShouldFilterCache.size() - 1; i >= 0; i--) {
            if (UserHandle.getAppId(this.mShouldFilterCache.keyAt(i)) == appId) {
                this.mShouldFilterCache.removeAt(i);
            } else {
                SparseBooleanArray targetSparseArray = this.mShouldFilterCache.valueAt(i);
                for (int j = targetSparseArray.size() - 1; j >= 0; j--) {
                    if (UserHandle.getAppId(targetSparseArray.keyAt(j)) == appId) {
                        targetSparseArray.removeAt(j);
                    }
                }
            }
        }
    }

    private void updateEntireShouldFilterCache() {
        this.mStateProvider.runWithState(new StateProvider.CurrentStateCallback() { // from class: com.android.server.pm.-$$Lambda$AppsFilter$TlAUz3n4SFG3Fzpx_ztukhvAHaI
            @Override // com.android.server.pm.AppsFilter.StateProvider.CurrentStateCallback
            public final void currentState(ArrayMap arrayMap, UserInfo[] userInfoArr) {
                this.f$0.lambda$updateEntireShouldFilterCache$2$AppsFilter(arrayMap, userInfoArr);
            }
        });
    }

    public /* synthetic */ void lambda$updateEntireShouldFilterCache$2$AppsFilter(ArrayMap settings, UserInfo[] users) {
        SparseArray<SparseBooleanArray> cache = updateEntireShouldFilterCacheInner(settings, users);
        synchronized (this.mCacheLock) {
            this.mShouldFilterCache = cache;
        }
    }

    private SparseArray<SparseBooleanArray> updateEntireShouldFilterCacheInner(ArrayMap<String, PackageSetting> settings, UserInfo[] users) {
        SparseArray<SparseBooleanArray> cache = new SparseArray<>(users.length * settings.size());
        for (int i = settings.size() - 1; i >= 0; i--) {
            updateShouldFilterCacheForPackage(cache, null, settings.valueAt(i), settings, users, i);
        }
        return cache;
    }

    private void updateEntireShouldFilterCacheAsync() {
        this.mBackgroundExecutor.execute(new Runnable() { // from class: com.android.server.pm.-$$Lambda$AppsFilter$KnqU6hxjaMrozBA1Ezyv4QavzxI
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateEntireShouldFilterCacheAsync$5$AppsFilter();
            }
        });
    }

    public /* synthetic */ void lambda$updateEntireShouldFilterCacheAsync$5$AppsFilter() {
        final ArrayMap<String, PackageSetting> settingsCopy = new ArrayMap<>();
        final ArrayMap<String, AndroidPackage> packagesCache = new ArrayMap<>();
        final UserInfo[][] usersRef = new UserInfo[1][];
        this.mStateProvider.runWithState(new StateProvider.CurrentStateCallback() { // from class: com.android.server.pm.-$$Lambda$AppsFilter$Ka0dVk-GezrqDhfgjEyDQxmM9Ww
            @Override // com.android.server.pm.AppsFilter.StateProvider.CurrentStateCallback
            public final void currentState(ArrayMap arrayMap, UserInfo[] userInfoArr) {
                AppsFilter.lambda$updateEntireShouldFilterCacheAsync$3(packagesCache, settingsCopy, usersRef, arrayMap, userInfoArr);
            }
        });
        SparseArray<SparseBooleanArray> cache = updateEntireShouldFilterCacheInner(settingsCopy, usersRef[0]);
        final boolean[] changed = new boolean[1];
        this.mStateProvider.runWithState(new StateProvider.CurrentStateCallback() { // from class: com.android.server.pm.-$$Lambda$AppsFilter$qJp_oOatcHh0MBvABBIIUuEII5Y
            @Override // com.android.server.pm.AppsFilter.StateProvider.CurrentStateCallback
            public final void currentState(ArrayMap arrayMap, UserInfo[] userInfoArr) {
                AppsFilter.lambda$updateEntireShouldFilterCacheAsync$4(settingsCopy, changed, packagesCache, arrayMap, userInfoArr);
            }
        });
        if (changed[0]) {
            updateEntireShouldFilterCache();
            return;
        }
        synchronized (this.mCacheLock) {
            this.mShouldFilterCache = cache;
        }
    }

    static /* synthetic */ void lambda$updateEntireShouldFilterCacheAsync$3(ArrayMap packagesCache, ArrayMap settingsCopy, UserInfo[][] usersRef, ArrayMap settings, UserInfo[] users) {
        packagesCache.ensureCapacity(settings.size());
        settingsCopy.putAll(settings);
        usersRef[0] = users;
        int max = settings.size();
        for (int i = 0; i < max; i++) {
            AndroidPackage pkg = ((PackageSetting) settings.valueAt(i)).pkg;
            packagesCache.put((String) settings.keyAt(i), pkg);
        }
    }

    static /* synthetic */ void lambda$updateEntireShouldFilterCacheAsync$4(ArrayMap settingsCopy, boolean[] changed, ArrayMap packagesCache, ArrayMap settings, UserInfo[] users) {
        if (settings.size() != settingsCopy.size()) {
            changed[0] = true;
            return;
        }
        int max = settings.size();
        for (int i = 0; i < max; i++) {
            AndroidPackage pkg = ((PackageSetting) settings.valueAt(i)).pkg;
            if (!Objects.equals(pkg, packagesCache.get(settings.keyAt(i)))) {
                changed[0] = true;
                return;
            }
        }
    }

    public void onUsersChanged() {
        synchronized (this.mCacheLock) {
            if (this.mShouldFilterCache != null) {
                updateEntireShouldFilterCache();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateShouldFilterCacheForPackage(final String packageName) {
        synchronized (this.mCacheLock) {
            if (this.mShouldFilterCache != null) {
                this.mStateProvider.runWithState(new StateProvider.CurrentStateCallback() { // from class: com.android.server.pm.-$$Lambda$AppsFilter$ZwENiwgbQCKlX7qyWD4DAQdqrG0
                    @Override // com.android.server.pm.AppsFilter.StateProvider.CurrentStateCallback
                    public final void currentState(ArrayMap arrayMap, UserInfo[] userInfoArr) {
                        this.f$0.lambda$updateShouldFilterCacheForPackage$6$AppsFilter(packageName, arrayMap, userInfoArr);
                    }
                });
            }
        }
    }

    public /* synthetic */ void lambda$updateShouldFilterCacheForPackage$6$AppsFilter(String packageName, ArrayMap settings, UserInfo[] users) {
        updateShouldFilterCacheForPackage(this.mShouldFilterCache, null, (PackageSetting) settings.get(packageName), settings, users, settings.size());
    }

    private void updateShouldFilterCacheForPackage(SparseArray<SparseBooleanArray> cache, String skipPackageName, PackageSetting subjectSetting, ArrayMap<String, PackageSetting> allSettings, UserInfo[] allUsers, int maxIndex) {
        for (int i = Math.min(maxIndex, allSettings.size() - 1); i >= 0; i--) {
            PackageSetting otherSetting = allSettings.valueAt(i);
            if (subjectSetting.appId != otherSetting.appId && subjectSetting.name != skipPackageName && otherSetting.name != skipPackageName) {
                int userCount = allUsers.length;
                int appxUidCount = allSettings.size() * userCount;
                int su = 0;
                while (su < userCount) {
                    int subjectUser = allUsers[su].id;
                    int ou = 0;
                    while (ou < userCount) {
                        int otherUser = allUsers[ou].id;
                        int subjectUid = UserHandle.getUid(subjectUser, subjectSetting.appId);
                        if (!cache.contains(subjectUid)) {
                            cache.put(subjectUid, new SparseBooleanArray(appxUidCount));
                        }
                        int otherUid = UserHandle.getUid(otherUser, otherSetting.appId);
                        if (!cache.contains(otherUid)) {
                            cache.put(otherUid, new SparseBooleanArray(appxUidCount));
                        }
                        cache.get(subjectUid).put(otherUid, shouldFilterApplicationInternal(subjectUid, subjectSetting, otherSetting, otherUser));
                        cache.get(otherUid).put(subjectUid, shouldFilterApplicationInternal(otherUid, otherSetting, subjectSetting, subjectUser));
                        ou++;
                        allUsers = allUsers;
                    }
                    su++;
                    allUsers = allUsers;
                }
            }
        }
    }

    private static boolean isSystemSigned(PackageParser.SigningDetails sysSigningDetails, PackageSetting pkgSetting) {
        return pkgSetting.isSystem() && pkgSetting.signatures.mSigningDetails.signaturesMatchExactly(sysSigningDetails);
    }

    private ArraySet<String> collectProtectedBroadcasts(ArrayMap<String, PackageSetting> existingSettings, String excludePackage) {
        ArraySet<String> ret = new ArraySet<>();
        for (int i = existingSettings.size() - 1; i >= 0; i--) {
            PackageSetting setting = existingSettings.valueAt(i);
            if (setting.pkg != null && !setting.pkg.getPackageName().equals(excludePackage)) {
                List<String> protectedBroadcasts = setting.pkg.getProtectedBroadcasts();
                if (!protectedBroadcasts.isEmpty()) {
                    ret.addAll(protectedBroadcasts);
                }
            }
        }
        return ret;
    }

    private void recomputeComponentVisibility(ArrayMap<String, PackageSetting> existingSettings) {
        this.mQueriesViaComponent.clear();
        for (int i = existingSettings.size() - 1; i >= 0; i--) {
            PackageSetting setting = existingSettings.valueAt(i);
            if (setting.pkg != null && !requestsQueryAllPackages(setting.pkg)) {
                for (int j = existingSettings.size() - 1; j >= 0; j--) {
                    if (i != j) {
                        PackageSetting otherSetting = existingSettings.valueAt(j);
                        if (otherSetting.pkg != null && !this.mForceQueryable.contains(Integer.valueOf(otherSetting.appId)) && canQueryViaComponents(setting.pkg, otherSetting.pkg, this.mProtectedBroadcasts)) {
                            this.mQueriesViaComponent.add(setting.appId, Integer.valueOf(otherSetting.appId));
                        }
                    }
                }
            }
        }
        this.mQueriesViaComponentRequireRecompute = false;
    }

    public SparseArray<int[]> getVisibilityWhitelist(PackageSetting setting, int[] users, ArrayMap<String, PackageSetting> existingSettings) {
        int loc;
        AppsFilter appsFilter = this;
        PackageSetting packageSetting = setting;
        int[] iArr = users;
        if (appsFilter.mForceQueryable.contains(Integer.valueOf(packageSetting.appId))) {
            return null;
        }
        SparseArray<int[]> result = new SparseArray<>(iArr.length);
        int u = 0;
        while (u < iArr.length) {
            int userId = iArr[u];
            int[] appIds = new int[existingSettings.size()];
            int[] buffer = null;
            int whitelistSize = 0;
            int i = existingSettings.size() - 1;
            while (i >= 0) {
                PackageSetting existingSetting = existingSettings.valueAt(i);
                int existingAppId = existingSetting.appId;
                if (existingAppId >= 10000 && (loc = Arrays.binarySearch(appIds, 0, whitelistSize, existingAppId)) < 0) {
                    int existingUid = UserHandle.getUid(userId, existingAppId);
                    if (!appsFilter.shouldFilterApplication(existingUid, existingSetting, packageSetting, userId)) {
                        if (buffer == null) {
                            buffer = new int[appIds.length];
                        }
                        int insert = ~loc;
                        System.arraycopy(appIds, insert, buffer, 0, whitelistSize - insert);
                        appIds[insert] = existingAppId;
                        System.arraycopy(buffer, 0, appIds, insert + 1, whitelistSize - insert);
                        whitelistSize++;
                    }
                }
                i--;
                appsFilter = this;
                packageSetting = setting;
            }
            result.put(userId, Arrays.copyOf(appIds, whitelistSize));
            u++;
            appsFilter = this;
            packageSetting = setting;
            iArr = users;
        }
        return result;
    }

    public void addPackage(PackageSetting newPkgSetting) {
        addPackage(newPkgSetting, false);
    }

    public void removePackage(final PackageSetting setting) {
        this.mStateProvider.runWithState(new StateProvider.CurrentStateCallback() { // from class: com.android.server.pm.-$$Lambda$AppsFilter$m9e6KveD-qG6Qk2Uvzs81pEsBCc
            @Override // com.android.server.pm.AppsFilter.StateProvider.CurrentStateCallback
            public final void currentState(ArrayMap arrayMap, UserInfo[] userInfoArr) {
                this.f$0.lambda$removePackage$7$AppsFilter(setting, arrayMap, userInfoArr);
            }
        });
    }

    public /* synthetic */ void lambda$removePackage$7$AppsFilter(PackageSetting setting, ArrayMap settings, UserInfo[] users) {
        for (UserInfo userInfo : users) {
            int userId = userInfo.id;
            int removingUid = UserHandle.getUid(userId, setting.appId);
            this.mImplicitlyQueryable.remove(removingUid);
            for (int i = this.mImplicitlyQueryable.size() - 1; i >= 0; i--) {
                SparseSetArray<Integer> sparseSetArray = this.mImplicitlyQueryable;
                sparseSetArray.remove(sparseSetArray.keyAt(i), Integer.valueOf(removingUid));
            }
        }
        if (!this.mQueriesViaComponentRequireRecompute) {
            this.mQueriesViaComponent.remove(setting.appId);
            for (int i2 = this.mQueriesViaComponent.size() - 1; i2 >= 0; i2--) {
                SparseSetArray<Integer> sparseSetArray2 = this.mQueriesViaComponent;
                sparseSetArray2.remove(sparseSetArray2.keyAt(i2), Integer.valueOf(setting.appId));
            }
        }
        this.mQueriesViaPackage.remove(setting.appId);
        for (int i3 = this.mQueriesViaPackage.size() - 1; i3 >= 0; i3--) {
            SparseSetArray<Integer> sparseSetArray3 = this.mQueriesViaPackage;
            sparseSetArray3.remove(sparseSetArray3.keyAt(i3), Integer.valueOf(setting.appId));
        }
        this.mForceQueryable.remove(Integer.valueOf(setting.appId));
        if (setting.pkg != null && !setting.pkg.getProtectedBroadcasts().isEmpty()) {
            String removingPackageName = setting.pkg.getPackageName();
            Set<String> protectedBroadcasts = this.mProtectedBroadcasts;
            ArraySet<String> arraySetCollectProtectedBroadcasts = collectProtectedBroadcasts(settings, removingPackageName);
            this.mProtectedBroadcasts = arraySetCollectProtectedBroadcasts;
            if (!arraySetCollectProtectedBroadcasts.containsAll(protectedBroadcasts)) {
                this.mQueriesViaComponentRequireRecompute = true;
            }
        }
        this.mOverlayReferenceMapper.removePkg(setting.name);
        this.mFeatureConfig.updatePackageState(setting, true);
        if (setting.sharedUser != null) {
            for (int i4 = setting.sharedUser.packages.size() - 1; i4 >= 0; i4--) {
                if (setting.sharedUser.packages.valueAt(i4) != setting) {
                    addPackageInternal(setting.sharedUser.packages.valueAt(i4), settings);
                }
            }
        }
        synchronized (this.mCacheLock) {
            removeAppIdFromVisibilityCache(setting.appId);
            if (this.mShouldFilterCache != null && setting.sharedUser != null) {
                for (int i5 = setting.sharedUser.packages.size() - 1; i5 >= 0; i5--) {
                    PackageSetting siblingSetting = setting.sharedUser.packages.valueAt(i5);
                    if (siblingSetting != setting) {
                        updateShouldFilterCacheForPackage(this.mShouldFilterCache, setting.name, siblingSetting, settings, users, settings.size());
                    }
                }
            }
        }
    }

    public boolean shouldFilterApplication(int callingUid, SettingBase callingSetting, PackageSetting targetPkgSetting, int userId) {
        Trace.traceBegin(262144L, "shouldFilterApplication");
        try {
            int callingAppId = UserHandle.getAppId(callingUid);
            if (callingAppId >= 10000 && targetPkgSetting.appId >= 10000 && callingAppId != targetPkgSetting.appId) {
                synchronized (this.mCacheLock) {
                    if (this.mShouldFilterCache != null) {
                        SparseBooleanArray shouldFilterTargets = this.mShouldFilterCache.get(callingUid);
                        int targetUid = UserHandle.getUid(userId, targetPkgSetting.appId);
                        if (shouldFilterTargets == null) {
                            Slog.wtf(TAG, "Encountered calling uid with no cached rules: " + callingUid);
                            Trace.traceEnd(262144L);
                            return true;
                        }
                        int indexOfTargetUid = shouldFilterTargets.indexOfKey(targetUid);
                        if (indexOfTargetUid < 0) {
                            Slog.w(TAG, "Encountered calling -> target with no cached rules: " + callingUid + " -> " + targetUid);
                            Trace.traceEnd(262144L);
                            return true;
                        }
                        if (!shouldFilterTargets.valueAt(indexOfTargetUid)) {
                            Trace.traceEnd(262144L);
                            return false;
                        }
                    } else if (!shouldFilterApplicationInternal(callingUid, callingSetting, targetPkgSetting, userId)) {
                        Trace.traceEnd(262144L);
                        return false;
                    }
                    if (this.mFeatureConfig.isLoggingEnabled(callingAppId)) {
                        log(callingSetting, targetPkgSetting, "BLOCKED");
                    }
                    Trace.traceEnd(262144L);
                    return true;
                }
            }
            Trace.traceEnd(262144L);
            return false;
        } catch (Throwable th) {
            Trace.traceEnd(262144L);
            throw th;
        }
    }

    private boolean shouldFilterApplicationInternal(int callingUid, SettingBase callingSetting, PackageSetting targetPkgSetting, int targetUserId) throws Throwable {
        PackageSetting callingPkgSetting;
        ArraySet<PackageSetting> callingSharedPkgSettings;
        long j;
        Trace.traceBegin(262144L, "shouldFilterApplicationInternal");
        try {
            boolean featureEnabled = this.mFeatureConfig.isGloballyEnabled();
            if (!featureEnabled) {
                Trace.traceEnd(262144L);
                return false;
            }
            if (callingSetting == null) {
                Slog.wtf(TAG, "No setting found for non system uid " + callingUid);
                Trace.traceEnd(262144L);
                return true;
            }
            Trace.traceBegin(262144L, "callingSetting instanceof");
            if (!(callingSetting instanceof PackageSetting)) {
                callingPkgSetting = null;
                callingSharedPkgSettings = ((SharedUserSetting) callingSetting).packages;
            } else if (((PackageSetting) callingSetting).sharedUser == null) {
                callingPkgSetting = (PackageSetting) callingSetting;
                callingSharedPkgSettings = null;
            } else {
                callingPkgSetting = null;
                callingSharedPkgSettings = ((PackageSetting) callingSetting).sharedUser.packages;
            }
            Trace.traceEnd(262144L);
            if (callingPkgSetting == null) {
                for (int i = callingSharedPkgSettings.size() - 1; i >= 0; i--) {
                    AndroidPackage pkg = callingSharedPkgSettings.valueAt(i).pkg;
                    if (pkg != null && !this.mFeatureConfig.packageIsEnabled(pkg)) {
                        Trace.traceEnd(262144L);
                        return false;
                    }
                }
            } else if (callingPkgSetting.pkg != null && !this.mFeatureConfig.packageIsEnabled(callingPkgSetting.pkg)) {
                Trace.traceEnd(262144L);
                return false;
            }
            AndroidPackage targetPkg = targetPkgSetting.pkg;
            if (targetPkg == null) {
                Trace.traceEnd(262144L);
                return true;
            }
            if (targetPkg.isStaticSharedLibrary()) {
                Trace.traceEnd(262144L);
                return false;
            }
            String targetName = targetPkg.getPackageName();
            Trace.traceBegin(262144L, "getAppId");
            int callingAppId = callingPkgSetting != null ? callingPkgSetting.appId : callingSharedPkgSettings.valueAt(0).appId;
            int targetAppId = targetPkgSetting.appId;
            Trace.traceEnd(262144L);
            try {
                if (callingAppId == targetAppId) {
                    Trace.traceEnd(262144L);
                    return false;
                }
                try {
                    Trace.traceBegin(262144L, "requestsQueryAllPackages");
                    if (callingPkgSetting == null) {
                        for (int i2 = callingSharedPkgSettings.size() - 1; i2 >= 0; i2--) {
                            AndroidPackage pkg2 = callingSharedPkgSettings.valueAt(i2).pkg;
                            if (pkg2 != null && requestsQueryAllPackages(pkg2)) {
                                Trace.traceEnd(262144L);
                                Trace.traceEnd(262144L);
                                return false;
                            }
                        }
                    } else if (callingPkgSetting.pkg != null && requestsQueryAllPackages(callingPkgSetting.pkg)) {
                        Trace.traceEnd(262144L);
                        Trace.traceEnd(262144L);
                        return false;
                    }
                    Trace.traceEnd(262144L);
                    try {
                        Trace.traceBegin(262144L, "mForceQueryable");
                        if (this.mForceQueryable.contains(Integer.valueOf(targetAppId))) {
                            Trace.traceEnd(262144L);
                            Trace.traceEnd(262144L);
                            return false;
                        }
                        Trace.traceEnd(262144L);
                        try {
                            Trace.traceBegin(262144L, "mQueriesViaPackage");
                            if (this.mQueriesViaPackage.contains(callingAppId, Integer.valueOf(targetAppId))) {
                                Trace.traceEnd(262144L);
                                Trace.traceEnd(262144L);
                                return false;
                            }
                            Trace.traceEnd(262144L);
                            try {
                                Trace.traceBegin(262144L, "mQueriesViaComponent");
                                if (this.mQueriesViaComponentRequireRecompute) {
                                    this.mStateProvider.runWithState(new StateProvider.CurrentStateCallback() { // from class: com.android.server.pm.-$$Lambda$AppsFilter$tFR_Ddtm4Okb0TEuclx_x3mhL70
                                        @Override // com.android.server.pm.AppsFilter.StateProvider.CurrentStateCallback
                                        public final void currentState(ArrayMap arrayMap, UserInfo[] userInfoArr) {
                                            this.f$0.lambda$shouldFilterApplicationInternal$8$AppsFilter(arrayMap, userInfoArr);
                                        }
                                    });
                                }
                                if (this.mQueriesViaComponent.contains(callingAppId, Integer.valueOf(targetAppId))) {
                                    Trace.traceEnd(262144L);
                                    Trace.traceEnd(262144L);
                                    return false;
                                }
                                Trace.traceEnd(262144L);
                                try {
                                    Trace.traceBegin(262144L, "mImplicitlyQueryable");
                                    try {
                                        int targetUid = UserHandle.getUid(targetUserId, targetAppId);
                                        if (this.mImplicitlyQueryable.contains(callingUid, Integer.valueOf(targetUid))) {
                                            Trace.traceEnd(262144L);
                                            Trace.traceEnd(262144L);
                                            return false;
                                        }
                                        Trace.traceEnd(262144L);
                                        try {
                                            Trace.traceBegin(262144L, "mOverlayReferenceMapper");
                                            if (callingSharedPkgSettings != null) {
                                                int size = callingSharedPkgSettings.size();
                                                int index = 0;
                                                while (index < size) {
                                                    PackageSetting pkgSetting = callingSharedPkgSettings.valueAt(index);
                                                    int size2 = size;
                                                    if (this.mOverlayReferenceMapper.isValidActor(targetName, pkgSetting.name)) {
                                                        Trace.traceEnd(262144L);
                                                        Trace.traceEnd(262144L);
                                                        return false;
                                                    }
                                                    index++;
                                                    size = size2;
                                                }
                                                j = 262144;
                                            } else {
                                                if (this.mOverlayReferenceMapper.isValidActor(targetName, callingPkgSetting.name)) {
                                                    Trace.traceEnd(262144L);
                                                    Trace.traceEnd(262144L);
                                                    return false;
                                                }
                                                j = 262144;
                                            }
                                            Trace.traceEnd(j);
                                            Trace.traceEnd(j);
                                            return true;
                                        } catch (Throwable th) {
                                            Trace.traceEnd(262144L);
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        Trace.traceEnd(262144L);
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            } catch (Throwable th4) {
                                Trace.traceEnd(262144L);
                                throw th4;
                            }
                        } catch (Throwable th5) {
                            Trace.traceEnd(262144L);
                            throw th5;
                        }
                    } catch (Throwable th6) {
                        Trace.traceEnd(262144L);
                        throw th6;
                    }
                } catch (Throwable th7) {
                    Trace.traceEnd(262144L);
                    throw th7;
                }
            } catch (Throwable th8) {
                th = th8;
                Trace.traceEnd(262144L);
                throw th;
            }
        } catch (Throwable th9) {
            th = th9;
        }
    }

    public /* synthetic */ void lambda$shouldFilterApplicationInternal$8$AppsFilter(ArrayMap settings, UserInfo[] users) {
        recomputeComponentVisibility(settings);
    }

    private static boolean requestsQueryAllPackages(AndroidPackage pkg) {
        return pkg.getRequestedPermissions().contains("android.permission.QUERY_ALL_PACKAGES");
    }

    private static boolean pkgInstruments(AndroidPackage source, AndroidPackage target) {
        try {
            Trace.traceBegin(262144L, "pkgInstruments");
            String packageName = target.getPackageName();
            List<ParsedInstrumentation> inst = source.getInstrumentations();
            for (int i = ArrayUtils.size(inst) - 1; i >= 0; i--) {
                if (Objects.equals(inst.get(i).getTargetPackage(), packageName)) {
                    return true;
                }
            }
            return false;
        } finally {
            Trace.traceEnd(262144L);
        }
    }

    private static void log(SettingBase callingSetting, PackageSetting targetPkgSetting, String description) {
        StringBuilder sb = new StringBuilder();
        sb.append("interaction: ");
        sb.append(callingSetting == null ? "system" : callingSetting);
        sb.append(" -> ");
        sb.append(targetPkgSetting);
        sb.append(" ");
        sb.append(description);
        Slog.i(TAG, sb.toString());
    }

    public void dumpQueries(PrintWriter pw, final PackageManagerService pms, Integer filteringAppId, DumpState dumpState, int[] users) {
        final SparseArray<String> cache = new SparseArray<>();
        ToString<Integer> expandPackages = new ToString() { // from class: com.android.server.pm.-$$Lambda$AppsFilter$gPylZb4-6_L0iaEHe8NiXYBawzs
            @Override // com.android.server.pm.AppsFilter.ToString
            public final String toString(Object obj) {
                return AppsFilter.lambda$dumpQueries$9(cache, pms, (Integer) obj);
            }
        };
        pw.println();
        pw.println("Queries:");
        dumpState.onTitlePrinted();
        if (!this.mFeatureConfig.isGloballyEnabled()) {
            pw.println("  DISABLED");
            return;
        }
        pw.println("  system apps queryable: " + this.mSystemAppsQueryable);
        dumpPackageSet(pw, filteringAppId, this.mForceQueryable, "forceQueryable", "  ", expandPackages);
        pw.println("  queries via package name:");
        dumpQueriesMap(pw, filteringAppId, this.mQueriesViaPackage, "    ", expandPackages);
        pw.println("  queries via intent:");
        dumpQueriesMap(pw, filteringAppId, this.mQueriesViaComponent, "    ", expandPackages);
        pw.println("  queryable via interaction:");
        for (int user : users) {
            pw.append("    User ").append((CharSequence) Integer.toString(user)).println(":");
            dumpQueriesMap(pw, filteringAppId == null ? null : Integer.valueOf(UserHandle.getUid(user, filteringAppId.intValue())), this.mImplicitlyQueryable, "      ", expandPackages);
        }
    }

    static /* synthetic */ String lambda$dumpQueries$9(SparseArray cache, PackageManagerService pms, Integer input) {
        String str;
        String cachedValue = (String) cache.get(input.intValue());
        if (cachedValue == null) {
            String[] packagesForUid = pms.getPackagesForUid(input.intValue());
            if (packagesForUid == null) {
                cachedValue = "[unknown app id " + input + "]";
            } else {
                if (packagesForUid.length == 1) {
                    str = packagesForUid[0];
                } else {
                    str = "[" + TextUtils.join(",", packagesForUid) + "]";
                }
                cachedValue = str;
            }
            cache.put(input.intValue(), cachedValue);
        }
        return cachedValue;
    }

    private static void dumpQueriesMap(PrintWriter pw, Integer filteringId, SparseSetArray<Integer> queriesMap, String spacing, ToString<Integer> toString) {
        String string;
        String string2;
        for (int i = 0; i < queriesMap.size(); i++) {
            Integer callingId = Integer.valueOf(queriesMap.keyAt(i));
            if (Objects.equals(callingId, filteringId)) {
                ArraySet arraySet = queriesMap.get(callingId.intValue());
                if (toString == null) {
                    string2 = callingId.toString();
                } else {
                    string2 = toString.toString(callingId);
                }
                dumpPackageSet(pw, null, arraySet, string2, spacing, toString);
            } else {
                ArraySet arraySet2 = queriesMap.get(callingId.intValue());
                if (toString == null) {
                    string = callingId.toString();
                } else {
                    string = toString.toString(callingId);
                }
                dumpPackageSet(pw, filteringId, arraySet2, string, spacing, toString);
            }
        }
    }

    private static <T> void dumpPackageSet(PrintWriter pw, T filteringId, Set<T> targetPkgSet, String subTitle, String spacing, ToString<T> toString) {
        if (targetPkgSet != null && targetPkgSet.size() > 0) {
            if (filteringId == null || targetPkgSet.contains(filteringId)) {
                pw.append((CharSequence) spacing).append((CharSequence) subTitle).println(":");
                for (T item : targetPkgSet) {
                    if (filteringId == null || Objects.equals(filteringId, item)) {
                        pw.append((CharSequence) spacing).append("  ").println(toString == null ? item : toString.toString(item));
                    }
                }
            }
        }
    }
}

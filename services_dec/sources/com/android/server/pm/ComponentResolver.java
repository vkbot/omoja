package com.android.server.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.AuxiliaryResolveInfo;
import android.content.pm.InstantAppResolveInfo;
import android.content.pm.PackageManagerInternal;
import android.content.pm.PackageUserState;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.parsing.component.ParsedActivity;
import android.content.pm.parsing.component.ParsedComponent;
import android.content.pm.parsing.component.ParsedIntentInfo;
import android.content.pm.parsing.component.ParsedMainComponent;
import android.content.pm.parsing.component.ParsedProvider;
import android.content.pm.parsing.component.ParsedService;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.DebugUtils;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import com.android.internal.util.ArrayUtils;
import com.android.server.IntentResolver;
import com.android.server.pm.parsing.PackageInfoUtils;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
public class ComponentResolver {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_FILTERS = false;
    private static final boolean DEBUG_SHOW_INFO = false;
    private static final Set<String> PROTECTED_ACTIONS;
    static final Comparator<ResolveInfo> RESOLVE_PRIORITY_SORTER;
    private static final String TAG = "PackageManager";
    private static PackageManagerInternal sPackageManagerInternal;
    private static UserManagerService sUserManager;
    private final ActivityIntentResolver mActivities;
    private final Object mLock;
    private List<Pair<ParsedMainComponent, ParsedIntentInfo>> mProtectedFilters;
    private final ProviderIntentResolver mProviders;
    private final ActivityIntentResolver mReceivers;
    private final ServiceIntentResolver mServices;
    private final ArrayMap<String, ParsedProvider> mProvidersByAuthority = new ArrayMap<>();
    private boolean mDeferProtectedFilters = true;

    static {
        ArraySet arraySet = new ArraySet();
        PROTECTED_ACTIONS = arraySet;
        arraySet.add("android.intent.action.SEND");
        PROTECTED_ACTIONS.add("android.intent.action.SENDTO");
        PROTECTED_ACTIONS.add("android.intent.action.SEND_MULTIPLE");
        PROTECTED_ACTIONS.add("android.intent.action.VIEW");
        RESOLVE_PRIORITY_SORTER = new Comparator() { // from class: com.android.server.pm.-$$Lambda$ComponentResolver$PuHbZd5KEOMGjkH8xDOhOwfLtC0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ComponentResolver.lambda$static$0((ResolveInfo) obj, (ResolveInfo) obj2);
            }
        };
    }

    static /* synthetic */ int lambda$static$0(ResolveInfo r1, ResolveInfo r2) {
        int v1 = r1.priority;
        int v2 = r2.priority;
        if (v1 != v2) {
            return v1 > v2 ? -1 : 1;
        }
        int v3 = r1.preferredOrder;
        int v4 = r2.preferredOrder;
        if (v3 != v4) {
            return v3 > v4 ? -1 : 1;
        }
        if (r1.isDefault != r2.isDefault) {
            return r1.isDefault ? -1 : 1;
        }
        int v5 = r1.match;
        int v6 = r2.match;
        if (v5 != v6) {
            return v5 > v6 ? -1 : 1;
        }
        if (r1.system != r2.system) {
            return r1.system ? -1 : 1;
        }
        if (r1.activityInfo != null) {
            return r1.activityInfo.packageName.compareTo(r2.activityInfo.packageName);
        }
        if (r1.serviceInfo != null) {
            return r1.serviceInfo.packageName.compareTo(r2.serviceInfo.packageName);
        }
        if (r1.providerInfo != null) {
            return r1.providerInfo.packageName.compareTo(r2.providerInfo.packageName);
        }
        return 0;
    }

    ComponentResolver(UserManagerService userManager, PackageManagerInternal packageManagerInternal, Object lock) {
        this.mActivities = new ActivityIntentResolver();
        this.mProviders = new ProviderIntentResolver();
        this.mReceivers = new ReceiverIntentResolver();
        this.mServices = new ServiceIntentResolver();
        sPackageManagerInternal = packageManagerInternal;
        sUserManager = userManager;
        this.mLock = lock;
    }

    public ParsedActivity getActivity(ComponentName component) {
        ParsedActivity parsedActivity;
        synchronized (this.mLock) {
            parsedActivity = (ParsedActivity) this.mActivities.mActivities.get(component);
        }
        return parsedActivity;
    }

    ParsedProvider getProvider(ComponentName component) {
        ParsedProvider parsedProvider;
        synchronized (this.mLock) {
            parsedProvider = (ParsedProvider) this.mProviders.mProviders.get(component);
        }
        return parsedProvider;
    }

    ParsedActivity getReceiver(ComponentName component) {
        ParsedActivity parsedActivity;
        synchronized (this.mLock) {
            parsedActivity = (ParsedActivity) this.mReceivers.mActivities.get(component);
        }
        return parsedActivity;
    }

    ParsedService getService(ComponentName component) {
        ParsedService parsedService;
        synchronized (this.mLock) {
            parsedService = (ParsedService) this.mServices.mServices.get(component);
        }
        return parsedService;
    }

    public boolean componentExists(ComponentName componentName) {
        synchronized (this.mLock) {
            ParsedMainComponent component = (ParsedMainComponent) this.mActivities.mActivities.get(componentName);
            boolean z = true;
            if (component != null) {
                return true;
            }
            ParsedMainComponent component2 = (ParsedMainComponent) this.mReceivers.mActivities.get(componentName);
            if (component2 != null) {
                return true;
            }
            ParsedMainComponent component3 = (ParsedMainComponent) this.mServices.mServices.get(componentName);
            if (component3 != null) {
                return true;
            }
            if (this.mProviders.mProviders.get(componentName) == null) {
                z = false;
            }
            return z;
        }
    }

    List<ResolveInfo> queryActivities(Intent intent, String resolvedType, int flags, int userId) {
        List<ResolveInfo> listQueryIntent;
        synchronized (this.mLock) {
            listQueryIntent = this.mActivities.queryIntent(intent, resolvedType, flags, userId);
        }
        return listQueryIntent;
    }

    List<ResolveInfo> queryActivities(Intent intent, String resolvedType, int flags, List<ParsedActivity> activities, int userId) {
        List<ResolveInfo> listQueryIntentForPackage;
        synchronized (this.mLock) {
            listQueryIntentForPackage = this.mActivities.queryIntentForPackage(intent, resolvedType, flags, activities, userId);
        }
        return listQueryIntentForPackage;
    }

    List<ResolveInfo> queryProviders(Intent intent, String resolvedType, int flags, int userId) {
        List<ResolveInfo> listQueryIntent;
        synchronized (this.mLock) {
            listQueryIntent = this.mProviders.queryIntent(intent, resolvedType, flags, userId);
        }
        return listQueryIntent;
    }

    List<ResolveInfo> queryProviders(Intent intent, String resolvedType, int flags, List<ParsedProvider> providers, int userId) {
        List<ResolveInfo> listQueryIntentForPackage;
        synchronized (this.mLock) {
            listQueryIntentForPackage = this.mProviders.queryIntentForPackage(intent, resolvedType, flags, providers, userId);
        }
        return listQueryIntentForPackage;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0107 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.util.List<android.content.pm.ProviderInfo> queryProviders(java.lang.String r21, java.lang.String r22, int r23, int r24, int r25) {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.ComponentResolver.queryProviders(java.lang.String, java.lang.String, int, int, int):java.util.List");
    }

    ProviderInfo queryProvider(String authority, int flags, int userId) {
        synchronized (this.mLock) {
            try {
                try {
                    try {
                        ParsedProvider p = this.mProvidersByAuthority.get(authority);
                        if (p == null) {
                            return null;
                        }
                        PackageSetting ps = sPackageManagerInternal.getPackageSetting(p.getPackageName());
                        if (ps == null) {
                            return null;
                        }
                        AndroidPackage pkg = sPackageManagerInternal.getPackage(p.getPackageName());
                        if (pkg == null) {
                            return null;
                        }
                        PackageUserState state = ps.readUserState(userId);
                        ApplicationInfo appInfo = PackageInfoUtils.generateApplicationInfo(pkg, flags, state, userId, ps);
                        if (appInfo == null) {
                            return null;
                        }
                        return PackageInfoUtils.generateProviderInfo(pkg, p, flags, state, appInfo, userId, ps);
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    void querySyncProviders(List<String> outNames, List<ProviderInfo> outInfo, boolean safeMode, int userId) {
        PackageSetting ps;
        AndroidPackage pkg;
        ProviderInfo info;
        synchronized (this.mLock) {
            PackageInfoUtils.CachedApplicationInfoGenerator appInfoGenerator = null;
            try {
                for (int i = this.mProvidersByAuthority.size() - 1; i >= 0; i--) {
                    ParsedProvider p = this.mProvidersByAuthority.valueAt(i);
                    if (p.isSyncable() && (ps = sPackageManagerInternal.getPackageSetting(p.getPackageName())) != null && (pkg = sPackageManagerInternal.getPackage(p.getPackageName())) != null && (!safeMode || pkg.isSystem())) {
                        if (appInfoGenerator == null) {
                            appInfoGenerator = new PackageInfoUtils.CachedApplicationInfoGenerator();
                        }
                        PackageUserState state = ps.readUserState(userId);
                        ApplicationInfo appInfo = appInfoGenerator.generate(pkg, 0, state, userId, ps);
                        if (appInfo != null && (info = PackageInfoUtils.generateProviderInfo(pkg, p, 0, state, appInfo, userId, ps)) != null) {
                            try {
                                outNames.add(this.mProvidersByAuthority.keyAt(i));
                                outInfo.add(info);
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    List<ResolveInfo> queryReceivers(Intent intent, String resolvedType, int flags, int userId) {
        List<ResolveInfo> listQueryIntent;
        synchronized (this.mLock) {
            listQueryIntent = this.mReceivers.queryIntent(intent, resolvedType, flags, userId);
        }
        return listQueryIntent;
    }

    List<ResolveInfo> queryReceivers(Intent intent, String resolvedType, int flags, List<ParsedActivity> receivers, int userId) {
        List<ResolveInfo> listQueryIntentForPackage;
        synchronized (this.mLock) {
            listQueryIntentForPackage = this.mReceivers.queryIntentForPackage(intent, resolvedType, flags, receivers, userId);
        }
        return listQueryIntentForPackage;
    }

    List<ResolveInfo> queryServices(Intent intent, String resolvedType, int flags, int userId) {
        List<ResolveInfo> listQueryIntent;
        synchronized (this.mLock) {
            listQueryIntent = this.mServices.queryIntent(intent, resolvedType, flags, userId);
        }
        return listQueryIntent;
    }

    List<ResolveInfo> queryServices(Intent intent, String resolvedType, int flags, List<ParsedService> services, int userId) {
        List<ResolveInfo> listQueryIntentForPackage;
        synchronized (this.mLock) {
            listQueryIntentForPackage = this.mServices.queryIntentForPackage(intent, resolvedType, flags, services, userId);
        }
        return listQueryIntentForPackage;
    }

    boolean isActivityDefined(ComponentName component) {
        boolean z;
        synchronized (this.mLock) {
            z = this.mActivities.mActivities.get(component) != null;
        }
        return z;
    }

    void assertProvidersNotDefined(AndroidPackage pkg) throws PackageManagerException {
        synchronized (this.mLock) {
            assertProvidersNotDefinedLocked(pkg);
        }
    }

    void addAllComponents(AndroidPackage pkg, boolean chatty) {
        ArrayList<Pair<ParsedActivity, ParsedIntentInfo>> newIntents = new ArrayList<>();
        synchronized (this.mLock) {
            addActivitiesLocked(pkg, newIntents, chatty);
            addReceiversLocked(pkg, chatty);
            addProvidersLocked(pkg, chatty);
            addServicesLocked(pkg, chatty);
        }
        String setupWizardPackage = (String) ArrayUtils.firstOrNull(sPackageManagerInternal.getKnownPackageNames(1, 0));
        for (int i = newIntents.size() - 1; i >= 0; i--) {
            Pair<ParsedActivity, ParsedIntentInfo> pair = newIntents.get(i);
            PackageSetting disabledPkgSetting = sPackageManagerInternal.getDisabledSystemPackage(((ParsedActivity) pair.first).getPackageName());
            List<ParsedActivity> systemActivities = null;
            AndroidPackage disabledPkg = disabledPkgSetting == null ? null : disabledPkgSetting.pkg;
            if (disabledPkg != null) {
                systemActivities = disabledPkg.getActivities();
            }
            adjustPriority(systemActivities, (ParsedActivity) pair.first, (ParsedIntentInfo) pair.second, setupWizardPackage);
        }
    }

    void removeAllComponents(AndroidPackage pkg, boolean chatty) {
        synchronized (this.mLock) {
            removeAllComponentsLocked(pkg, chatty);
        }
    }

    void fixProtectedFilterPriorities() {
        if (!this.mDeferProtectedFilters) {
            return;
        }
        this.mDeferProtectedFilters = false;
        List<Pair<ParsedMainComponent, ParsedIntentInfo>> list = this.mProtectedFilters;
        if (list == null || list.size() == 0) {
            return;
        }
        List<Pair<ParsedMainComponent, ParsedIntentInfo>> protectedFilters = this.mProtectedFilters;
        this.mProtectedFilters = null;
        String setupWizardPackage = (String) ArrayUtils.firstOrNull(sPackageManagerInternal.getKnownPackageNames(1, 0));
        for (int i = protectedFilters.size() - 1; i >= 0; i--) {
            Pair<ParsedMainComponent, ParsedIntentInfo> pair = protectedFilters.get(i);
            ParsedMainComponent component = (ParsedMainComponent) pair.first;
            ParsedIntentInfo filter = (ParsedIntentInfo) pair.second;
            String packageName = component.getPackageName();
            component.getClassName();
            if (!packageName.equals(setupWizardPackage)) {
                filter.setPriority(0);
            }
        }
    }

    void dumpActivityResolvers(PrintWriter pw, DumpState dumpState, String packageName) {
        if (this.mActivities.dump(pw, dumpState.getTitlePrinted() ? "\nActivity Resolver Table:" : "Activity Resolver Table:", "  ", packageName, dumpState.isOptionEnabled(1), true)) {
            dumpState.setTitlePrinted(true);
        }
    }

    void dumpProviderResolvers(PrintWriter pw, DumpState dumpState, String packageName) {
        if (this.mProviders.dump(pw, dumpState.getTitlePrinted() ? "\nProvider Resolver Table:" : "Provider Resolver Table:", "  ", packageName, dumpState.isOptionEnabled(1), true)) {
            dumpState.setTitlePrinted(true);
        }
    }

    void dumpReceiverResolvers(PrintWriter pw, DumpState dumpState, String packageName) {
        if (this.mReceivers.dump(pw, dumpState.getTitlePrinted() ? "\nReceiver Resolver Table:" : "Receiver Resolver Table:", "  ", packageName, dumpState.isOptionEnabled(1), true)) {
            dumpState.setTitlePrinted(true);
        }
    }

    void dumpServiceResolvers(PrintWriter pw, DumpState dumpState, String packageName) {
        if (this.mServices.dump(pw, dumpState.getTitlePrinted() ? "\nService Resolver Table:" : "Service Resolver Table:", "  ", packageName, dumpState.isOptionEnabled(1), true)) {
            dumpState.setTitlePrinted(true);
        }
    }

    void dumpContentProviders(PrintWriter pw, DumpState dumpState, String packageName) {
        boolean printedSomething = false;
        for (ParsedProvider p : this.mProviders.mProviders.values()) {
            if (packageName == null || packageName.equals(p.getPackageName())) {
                if (!printedSomething) {
                    if (dumpState.onTitlePrinted()) {
                        pw.println();
                    }
                    pw.println("Registered ContentProviders:");
                    printedSomething = true;
                }
                pw.print("  ");
                ComponentName.printShortString(pw, p.getPackageName(), p.getName());
                pw.println(":");
                pw.print("    ");
                pw.println(p.toString());
            }
        }
        boolean printedSomething2 = false;
        for (Map.Entry<String, ParsedProvider> entry : this.mProvidersByAuthority.entrySet()) {
            ParsedProvider p2 = entry.getValue();
            if (packageName == null || packageName.equals(p2.getPackageName())) {
                if (!printedSomething2) {
                    if (dumpState.onTitlePrinted()) {
                        pw.println();
                    }
                    pw.println("ContentProvider Authorities:");
                    printedSomething2 = true;
                }
                pw.print("  [");
                pw.print(entry.getKey());
                pw.println("]:");
                pw.print("    ");
                pw.println(p2.toString());
                AndroidPackage pkg = sPackageManagerInternal.getPackage(p2.getPackageName());
                if (pkg != null) {
                    pw.print("      applicationInfo=");
                    pw.println(pkg.toAppInfoWithoutState());
                }
            }
        }
    }

    void dumpServicePermissions(PrintWriter pw, DumpState dumpState) {
        if (dumpState.onTitlePrinted()) {
            pw.println();
        }
        pw.println("Service permissions:");
        Iterator<F> itFilterIterator = this.mServices.filterIterator();
        while (itFilterIterator.hasNext()) {
            Pair<ParsedService, ParsedIntentInfo> pair = (Pair) itFilterIterator.next();
            ParsedService service = (ParsedService) pair.first;
            String permission = service.getPermission();
            if (permission != null) {
                pw.print("    ");
                pw.print(service.getComponentName().flattenToShortString());
                pw.print(": ");
                pw.println(permission);
            }
        }
    }

    private void addActivitiesLocked(AndroidPackage pkg, List<Pair<ParsedActivity, ParsedIntentInfo>> newIntents, boolean chatty) {
        int activitiesSize = ArrayUtils.size(pkg.getActivities());
        for (int i = 0; i < activitiesSize; i++) {
            ParsedActivity a = pkg.getActivities().get(i);
            this.mActivities.addActivity(a, "activity", newIntents);
        }
    }

    private void addProvidersLocked(AndroidPackage pkg, boolean chatty) {
        ComponentName component;
        int providersSize = ArrayUtils.size(pkg.getProviders());
        for (int i = 0; i < providersSize; i++) {
            ParsedProvider p = pkg.getProviders().get(i);
            this.mProviders.addProvider(p);
            if (p.getAuthority() != null) {
                String[] names = p.getAuthority().split(";");
                p.setAuthority((String) null);
                for (int j = 0; j < names.length; j++) {
                    if (j == 1 && p.isSyncable()) {
                        p = new ParsedProvider(p);
                        p.setSyncable(false);
                    }
                    if (!this.mProvidersByAuthority.containsKey(names[j])) {
                        this.mProvidersByAuthority.put(names[j], p);
                        if (p.getAuthority() == null) {
                            p.setAuthority(names[j]);
                        } else {
                            p.setAuthority(p.getAuthority() + ";" + names[j]);
                        }
                    } else {
                        ParsedProvider other = this.mProvidersByAuthority.get(names[j]);
                        if (other == null || other.getComponentName() == null) {
                            component = null;
                        } else {
                            component = other.getComponentName();
                        }
                        String packageName = component != null ? component.getPackageName() : "?";
                        Slog.w(TAG, "Skipping provider name " + names[j] + " (in package " + pkg.getPackageName() + "): name already used by " + packageName);
                    }
                }
            }
        }
    }

    private void addReceiversLocked(AndroidPackage pkg, boolean chatty) {
        int receiversSize = ArrayUtils.size(pkg.getReceivers());
        for (int i = 0; i < receiversSize; i++) {
            ParsedActivity a = pkg.getReceivers().get(i);
            this.mReceivers.addActivity(a, "receiver", null);
        }
    }

    private void addServicesLocked(AndroidPackage pkg, boolean chatty) {
        int servicesSize = ArrayUtils.size(pkg.getServices());
        for (int i = 0; i < servicesSize; i++) {
            ParsedService s = pkg.getServices().get(i);
            this.mServices.addService(s);
        }
    }

    private static <T> void getIntentListSubset(List<ParsedIntentInfo> intentList, Function<ParsedIntentInfo, Iterator<T>> generator, Iterator<T> searchIterator) {
        while (searchIterator.hasNext() && intentList.size() != 0) {
            T searchAction = searchIterator.next();
            Iterator<ParsedIntentInfo> intentIter = intentList.iterator();
            while (intentIter.hasNext()) {
                ParsedIntentInfo intentInfo = intentIter.next();
                boolean selectionFound = false;
                Iterator<T> intentSelectionIter = generator.apply(intentInfo);
                while (intentSelectionIter != null && intentSelectionIter.hasNext()) {
                    T intentSelection = intentSelectionIter.next();
                    if (intentSelection != null && intentSelection.equals(searchAction)) {
                        selectionFound = true;
                        break;
                    }
                }
                if (!selectionFound) {
                    intentIter.remove();
                }
            }
        }
    }

    private static boolean isProtectedAction(ParsedIntentInfo filter) {
        Iterator<String> actionsIter = filter.actionsIterator();
        while (actionsIter != null && actionsIter.hasNext()) {
            String filterAction = actionsIter.next();
            if (PROTECTED_ACTIONS.contains(filterAction)) {
                return true;
            }
        }
        return false;
    }

    private static ParsedActivity findMatchingActivity(List<ParsedActivity> activityList, ParsedActivity activityInfo) {
        for (ParsedActivity sysActivity : activityList) {
            if (sysActivity.getName().equals(activityInfo.getName())) {
                return sysActivity;
            }
            if (sysActivity.getName().equals(activityInfo.getTargetActivity())) {
                return sysActivity;
            }
            if (sysActivity.getTargetActivity() != null) {
                if (sysActivity.getTargetActivity().equals(activityInfo.getName())) {
                    return sysActivity;
                }
                if (sysActivity.getTargetActivity().equals(activityInfo.getTargetActivity())) {
                    return sysActivity;
                }
            }
        }
        return null;
    }

    private void adjustPriority(List<ParsedActivity> systemActivities, ParsedActivity activity, ParsedIntentInfo intent, String setupWizardPackage) {
        if (intent.getPriority() <= 0) {
            return;
        }
        String packageName = activity.getPackageName();
        AndroidPackage pkg = sPackageManagerInternal.getPackage(packageName);
        boolean privilegedApp = pkg.isPrivileged();
        activity.getClassName();
        if (!privilegedApp) {
            intent.setPriority(0);
            return;
        }
        if (systemActivities == null) {
            if (isProtectedAction(intent)) {
                if (this.mDeferProtectedFilters) {
                    if (this.mProtectedFilters == null) {
                        this.mProtectedFilters = new ArrayList();
                    }
                    this.mProtectedFilters.add(Pair.create(activity, intent));
                    return;
                } else {
                    if (packageName.equals(setupWizardPackage)) {
                        return;
                    }
                    intent.setPriority(0);
                    return;
                }
            }
            return;
        }
        ParsedActivity foundActivity = findMatchingActivity(systemActivities, activity);
        if (foundActivity == null) {
            intent.setPriority(0);
            return;
        }
        List<ParsedIntentInfo> intentListCopy = new ArrayList<>(foundActivity.getIntents());
        Iterator<String> actionsIterator = intent.actionsIterator();
        if (actionsIterator != null) {
            getIntentListSubset(intentListCopy, new Function() { // from class: com.android.server.pm.-$$Lambda$YY245IBQr5Qygm_NJ7MG_oIzCHk
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((ParsedIntentInfo) obj).actionsIterator();
                }
            }, actionsIterator);
            if (intentListCopy.size() == 0) {
                intent.setPriority(0);
                return;
            }
        }
        Iterator<String> categoriesIterator = intent.categoriesIterator();
        if (categoriesIterator != null) {
            getIntentListSubset(intentListCopy, new Function() { // from class: com.android.server.pm.-$$Lambda$DpkuTFpeWPmvN7iGgFrn8VkMVd4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((ParsedIntentInfo) obj).categoriesIterator();
                }
            }, categoriesIterator);
            if (intentListCopy.size() == 0) {
                intent.setPriority(0);
                return;
            }
        }
        Iterator<String> schemesIterator = intent.schemesIterator();
        if (schemesIterator != null) {
            getIntentListSubset(intentListCopy, new Function() { // from class: com.android.server.pm.-$$Lambda$bpFcEVMboFCYFnC3BHdOPCQV19Y
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((ParsedIntentInfo) obj).schemesIterator();
                }
            }, schemesIterator);
            if (intentListCopy.size() == 0) {
                intent.setPriority(0);
                return;
            }
        }
        Iterator<IntentFilter.AuthorityEntry> authoritiesIterator = intent.authoritiesIterator();
        if (authoritiesIterator != null) {
            getIntentListSubset(intentListCopy, new Function() { // from class: com.android.server.pm.-$$Lambda$mI6eiz-cSKp3gDx4_MNMYKTJXG4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((ParsedIntentInfo) obj).authoritiesIterator();
                }
            }, authoritiesIterator);
            if (intentListCopy.size() == 0) {
                intent.setPriority(0);
                return;
            }
        }
        int cappedPriority = 0;
        for (int i = intentListCopy.size() - 1; i >= 0; i--) {
            cappedPriority = Math.max(cappedPriority, intentListCopy.get(i).getPriority());
        }
        int i2 = intent.getPriority();
        if (i2 > cappedPriority) {
            intent.setPriority(cappedPriority);
        }
    }

    private void removeAllComponentsLocked(AndroidPackage pkg, boolean chatty) {
        int componentSize = ArrayUtils.size(pkg.getActivities());
        for (int i = 0; i < componentSize; i++) {
            ParsedActivity a = pkg.getActivities().get(i);
            this.mActivities.removeActivity(a, "activity");
        }
        int componentSize2 = ArrayUtils.size(pkg.getProviders());
        for (int i2 = 0; i2 < componentSize2; i2++) {
            ParsedProvider p = pkg.getProviders().get(i2);
            this.mProviders.removeProvider(p);
            if (p.getAuthority() != null) {
                String[] names = p.getAuthority().split(";");
                for (int j = 0; j < names.length; j++) {
                    if (this.mProvidersByAuthority.get(names[j]) == p) {
                        this.mProvidersByAuthority.remove(names[j]);
                    }
                }
            }
        }
        int componentSize3 = ArrayUtils.size(pkg.getReceivers());
        for (int i3 = 0; i3 < componentSize3; i3++) {
            ParsedActivity a2 = pkg.getReceivers().get(i3);
            this.mReceivers.removeActivity(a2, "receiver");
        }
        int componentSize4 = ArrayUtils.size(pkg.getServices());
        for (int i4 = 0; i4 < componentSize4; i4++) {
            ParsedService s = pkg.getServices().get(i4);
            this.mServices.removeService(s);
        }
    }

    private void assertProvidersNotDefinedLocked(AndroidPackage pkg) throws PackageManagerException {
        int providersSize = ArrayUtils.size(pkg.getProviders());
        for (int i = 0; i < providersSize; i++) {
            ParsedProvider p = pkg.getProviders().get(i);
            if (p.getAuthority() != null) {
                String[] names = p.getAuthority().split(";");
                for (int j = 0; j < names.length; j++) {
                    if (this.mProvidersByAuthority.containsKey(names[j])) {
                        ParsedProvider other = this.mProvidersByAuthority.get(names[j]);
                        String otherPackageName = (other == null || other.getComponentName() == null) ? "?" : other.getComponentName().getPackageName();
                        if (!otherPackageName.equals(pkg.getPackageName())) {
                            throw new PackageManagerException(-13, "Can't install because provider name " + names[j] + " (in package " + pkg.getPackageName() + ") is already used by " + otherPackageName);
                        }
                    }
                }
            }
        }
    }

    private static abstract class MimeGroupsAwareIntentResolver<F extends Pair<? extends ParsedComponent, ParsedIntentInfo>, R> extends IntentResolver<F, R> {
        private boolean mIsUpdatingMimeGroup;
        private ArrayMap<String, F[]> mMimeGroupToFilter;

        private MimeGroupsAwareIntentResolver() {
            this.mMimeGroupToFilter = new ArrayMap<>();
            this.mIsUpdatingMimeGroup = false;
        }

        @Override // com.android.server.IntentResolver
        public void addFilter(F f) {
            IntentFilter intentFilter = getIntentFilter(f);
            applyMimeGroups(f);
            super.addFilter(f);
            if (!this.mIsUpdatingMimeGroup) {
                register_intent_filter(f, intentFilter.mimeGroupsIterator(), this.mMimeGroupToFilter, "      MimeGroup: ");
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public void removeFilterInternal(F f) {
            IntentFilter intentFilter = getIntentFilter(f);
            if (!this.mIsUpdatingMimeGroup) {
                unregister_intent_filter(f, intentFilter.mimeGroupsIterator(), this.mMimeGroupToFilter, "      MimeGroup: ");
            }
            super.removeFilterInternal(f);
            intentFilter.clearDynamicDataTypes();
        }

        public boolean updateMimeGroup(String packageName, String mimeGroup) {
            F[] filters = this.mMimeGroupToFilter.get(mimeGroup);
            int n = filters != null ? filters.length : 0;
            this.mIsUpdatingMimeGroup = true;
            boolean hasChanges = false;
            for (int i = 0; i < n; i++) {
                F filter = filters[i];
                if (filter == null) {
                    break;
                }
                if (isPackageForFilter(packageName, filter)) {
                    hasChanges |= updateFilter(filter);
                }
            }
            this.mIsUpdatingMimeGroup = false;
            return hasChanges;
        }

        private boolean updateFilter(F f) {
            IntentFilter intentFilter = getIntentFilter(f);
            List oldTypes = intentFilter.dataTypes();
            removeFilter(f);
            addFilter((Pair) f);
            List newTypes = intentFilter.dataTypes();
            return !equalLists(oldTypes, newTypes);
        }

        private boolean equalLists(List<String> first, List<String> second) {
            if (first == null) {
                return second == null;
            }
            if (second == null || first.size() != second.size()) {
                return false;
            }
            Collections.sort(first);
            Collections.sort(second);
            return first.equals(second);
        }

        private void applyMimeGroups(F f) {
            IntentFilter filter = getIntentFilter(f);
            for (int i = filter.countMimeGroups() - 1; i >= 0; i--) {
                List<String> mimeTypes = ComponentResolver.sPackageManagerInternal.getMimeGroup(((ParsedComponent) ((Pair) f).first).getPackageName(), filter.getMimeGroup(i));
                for (int typeIndex = mimeTypes.size() - 1; typeIndex >= 0; typeIndex--) {
                    String mimeType = mimeTypes.get(typeIndex);
                    try {
                        filter.addDynamicDataType(mimeType);
                    } catch (IntentFilter.MalformedMimeTypeException e) {
                    }
                }
            }
        }
    }

    private static class ActivityIntentResolver extends MimeGroupsAwareIntentResolver<Pair<ParsedActivity, ParsedIntentInfo>, ResolveInfo> {
        private final ArrayMap<ComponentName, ParsedActivity> mActivities;
        private int mFlags;

        private ActivityIntentResolver() {
            super();
            this.mActivities = new ArrayMap<>();
        }

        @Override // com.android.server.IntentResolver
        protected /* bridge */ /* synthetic */ boolean allowFilterResult(Object obj, List list) {
            return allowFilterResult((Pair<ParsedActivity, ParsedIntentInfo>) obj, (List<ResolveInfo>) list);
        }

        @Override // com.android.server.IntentResolver
        public List<ResolveInfo> queryIntent(Intent intent, String resolvedType, boolean defaultOnly, int userId) {
            if (!ComponentResolver.sUserManager.exists(userId)) {
                return null;
            }
            this.mFlags = defaultOnly ? 65536 : 0;
            return super.queryIntent(intent, resolvedType, defaultOnly, userId);
        }

        List<ResolveInfo> queryIntent(Intent intent, String resolvedType, int flags, int userId) {
            if (!ComponentResolver.sUserManager.exists(userId)) {
                return null;
            }
            this.mFlags = flags;
            return super.queryIntent(intent, resolvedType, (65536 & flags) != 0, userId);
        }

        List<ResolveInfo> queryIntentForPackage(Intent intent, String resolvedType, int flags, List<ParsedActivity> packageActivities, int userId) {
            if (!ComponentResolver.sUserManager.exists(userId)) {
                return null;
            }
            if (packageActivities == null) {
                return Collections.emptyList();
            }
            this.mFlags = flags;
            boolean defaultOnly = (65536 & flags) != 0;
            int activitiesSize = packageActivities.size();
            ArrayList<Pair<ParsedActivity, ParsedIntentInfo>[]> listCut = new ArrayList<>(activitiesSize);
            for (int i = 0; i < activitiesSize; i++) {
                ParsedActivity activity = packageActivities.get(i);
                List<ParsedIntentInfo> intentFilters = activity.getIntents();
                if (!intentFilters.isEmpty()) {
                    Pair<ParsedActivity, ParsedIntentInfo>[] array = newArray(intentFilters.size());
                    for (int arrayIndex = 0; arrayIndex < intentFilters.size(); arrayIndex++) {
                        array[arrayIndex] = Pair.create(activity, intentFilters.get(arrayIndex));
                    }
                    listCut.add(array);
                }
            }
            return super.queryIntentFromList(intent, resolvedType, defaultOnly, listCut, userId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addActivity(ParsedActivity a, String type, List<Pair<ParsedActivity, ParsedIntentInfo>> newIntents) {
            this.mActivities.put(a.getComponentName(), a);
            int intentsSize = a.getIntents().size();
            for (int j = 0; j < intentsSize; j++) {
                ParsedIntentInfo intent = (ParsedIntentInfo) a.getIntents().get(j);
                if (newIntents != null && "activity".equals(type)) {
                    newIntents.add(Pair.create(a, intent));
                }
                if (!intent.debugCheck()) {
                    Log.w(ComponentResolver.TAG, "==> For Activity " + a.getName());
                }
                addFilter(Pair.create(a, intent));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeActivity(ParsedActivity a, String type) {
            this.mActivities.remove(a.getComponentName());
            int intentsSize = a.getIntents().size();
            for (int j = 0; j < intentsSize; j++) {
                ParsedIntentInfo intent = (ParsedIntentInfo) a.getIntents().get(j);
                removeFilter(Pair.create(a, intent));
            }
        }

        protected boolean allowFilterResult(Pair<ParsedActivity, ParsedIntentInfo> filter, List<ResolveInfo> dest) {
            for (int i = dest.size() - 1; i >= 0; i--) {
                ActivityInfo destAi = dest.get(i).activityInfo;
                if (Objects.equals(destAi.name, ((ParsedActivity) filter.first).getName()) && Objects.equals(destAi.packageName, ((ParsedActivity) filter.first).getPackageName())) {
                    return false;
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public Pair<ParsedActivity, ParsedIntentInfo>[] newArray(int size) {
            return new Pair[size];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public boolean isFilterStopped(Pair<ParsedActivity, ParsedIntentInfo> filter, int userId) {
            return ComponentResolver.isFilterStopped(filter, userId);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public boolean isPackageForFilter(String packageName, Pair<ParsedActivity, ParsedIntentInfo> info) {
            return packageName.equals(((ParsedActivity) info.first).getPackageName());
        }

        private void log(String reason, ParsedIntentInfo info, int match, int userId) {
            Slog.w(ComponentResolver.TAG, reason + "; match: " + DebugUtils.flagsToString(IntentFilter.class, "MATCH_", match) + "; userId: " + userId + "; intent info: " + info);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public ResolveInfo newResult(Pair<ParsedActivity, ParsedIntentInfo> pair, int match, int userId) {
            AndroidPackage pkg;
            PackageSetting ps;
            ParsedMainComponent parsedMainComponent = (ParsedActivity) pair.first;
            ParsedIntentInfo info = (ParsedIntentInfo) pair.second;
            if (!ComponentResolver.sUserManager.exists(userId) || (pkg = ComponentResolver.sPackageManagerInternal.getPackage(parsedMainComponent.getPackageName())) == null || !ComponentResolver.sPackageManagerInternal.isEnabledAndMatches(parsedMainComponent, this.mFlags, userId) || (ps = ComponentResolver.sPackageManagerInternal.getPackageSetting(parsedMainComponent.getPackageName())) == null) {
                return null;
            }
            PackageUserState userState = ps.readUserState(userId);
            ActivityInfo ai = PackageInfoUtils.generateActivityInfo(pkg, parsedMainComponent, this.mFlags, userState, userId, ps);
            if (ai == null) {
                return null;
            }
            boolean matchExplicitlyVisibleOnly = (this.mFlags & 33554432) != 0;
            boolean matchVisibleToInstantApp = (this.mFlags & 16777216) != 0;
            boolean componentVisible = matchVisibleToInstantApp && info.isVisibleToInstantApp() && (!matchExplicitlyVisibleOnly || info.isExplicitlyVisibleToInstantApp());
            boolean matchInstantApp = (this.mFlags & 8388608) != 0;
            if (matchVisibleToInstantApp && !componentVisible && !userState.instantApp) {
                return null;
            }
            if (!matchInstantApp && userState.instantApp) {
                return null;
            }
            if (userState.instantApp && ps.isUpdateAvailable()) {
                return null;
            }
            ResolveInfo res = new ResolveInfo();
            res.activityInfo = ai;
            if ((this.mFlags & 64) != 0) {
                res.filter = info;
            }
            res.handleAllWebDataURI = info.handleAllWebDataURI();
            res.priority = info.getPriority();
            res.match = match;
            res.isDefault = info.isHasDefault();
            res.labelRes = info.getLabelRes();
            res.nonLocalizedLabel = info.getNonLocalizedLabel();
            if (ComponentResolver.sPackageManagerInternal.userNeedsBadging(userId)) {
                res.noResourceId = true;
            } else {
                res.icon = info.getIcon();
            }
            res.iconResourceId = info.getIcon();
            res.system = res.activityInfo.applicationInfo.isSystemApp();
            res.isInstantAppAvailable = userState.instantApp;
            return res;
        }

        @Override // com.android.server.IntentResolver
        protected void sortResults(List<ResolveInfo> results) {
            results.sort(ComponentResolver.RESOLVE_PRIORITY_SORTER);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public void dumpFilter(PrintWriter out, String prefix, Pair<ParsedActivity, ParsedIntentInfo> pair) {
            ParsedActivity activity = (ParsedActivity) pair.first;
            ParsedIntentInfo filter = (ParsedIntentInfo) pair.second;
            out.print(prefix);
            out.print(Integer.toHexString(System.identityHashCode(activity)));
            out.print(' ');
            ComponentName.printShortString(out, activity.getPackageName(), activity.getClassName());
            out.print(" filter ");
            out.println(Integer.toHexString(System.identityHashCode(filter)));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public Object filterToLabel(Pair<ParsedActivity, ParsedIntentInfo> filter) {
            return filter;
        }

        @Override // com.android.server.IntentResolver
        protected void dumpFilterLabel(PrintWriter out, String prefix, Object label, int count) {
            Pair<ParsedActivity, ParsedIntentInfo> pair = (Pair) label;
            out.print(prefix);
            out.print(Integer.toHexString(System.identityHashCode(pair.first)));
            out.print(' ');
            ComponentName.printShortString(out, ((ParsedActivity) pair.first).getPackageName(), ((ParsedActivity) pair.first).getClassName());
            if (count > 1) {
                out.print(" (");
                out.print(count);
                out.print(" filters)");
            }
            out.println();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public IntentFilter getIntentFilter(Pair<ParsedActivity, ParsedIntentInfo> input) {
            return (IntentFilter) input.second;
        }

        protected List<ParsedActivity> getResolveList(AndroidPackage pkg) {
            return pkg.getActivities();
        }
    }

    private static final class ReceiverIntentResolver extends ActivityIntentResolver {
        private ReceiverIntentResolver() {
            super();
        }

        @Override // com.android.server.pm.ComponentResolver.ActivityIntentResolver
        protected List<ParsedActivity> getResolveList(AndroidPackage pkg) {
            return pkg.getReceivers();
        }
    }

    private static final class ProviderIntentResolver extends MimeGroupsAwareIntentResolver<Pair<ParsedProvider, ParsedIntentInfo>, ResolveInfo> {
        private int mFlags;
        private final ArrayMap<ComponentName, ParsedProvider> mProviders;

        private ProviderIntentResolver() {
            super();
            this.mProviders = new ArrayMap<>();
        }

        @Override // com.android.server.IntentResolver
        protected /* bridge */ /* synthetic */ boolean allowFilterResult(Object obj, List list) {
            return allowFilterResult((Pair<ParsedProvider, ParsedIntentInfo>) obj, (List<ResolveInfo>) list);
        }

        @Override // com.android.server.IntentResolver
        public List<ResolveInfo> queryIntent(Intent intent, String resolvedType, boolean defaultOnly, int userId) {
            this.mFlags = defaultOnly ? 65536 : 0;
            return super.queryIntent(intent, resolvedType, defaultOnly, userId);
        }

        List<ResolveInfo> queryIntent(Intent intent, String resolvedType, int flags, int userId) {
            if (!ComponentResolver.sUserManager.exists(userId)) {
                return null;
            }
            this.mFlags = flags;
            return super.queryIntent(intent, resolvedType, (65536 & flags) != 0, userId);
        }

        List<ResolveInfo> queryIntentForPackage(Intent intent, String resolvedType, int flags, List<ParsedProvider> packageProviders, int userId) {
            if (!ComponentResolver.sUserManager.exists(userId)) {
                return null;
            }
            if (packageProviders == null) {
                return Collections.emptyList();
            }
            this.mFlags = flags;
            boolean defaultOnly = (65536 & flags) != 0;
            int providersSize = packageProviders.size();
            ArrayList<Pair<ParsedProvider, ParsedIntentInfo>[]> listCut = new ArrayList<>(providersSize);
            for (int i = 0; i < providersSize; i++) {
                ParsedProvider provider = packageProviders.get(i);
                List<ParsedIntentInfo> intentFilters = provider.getIntents();
                if (!intentFilters.isEmpty()) {
                    Pair<ParsedProvider, ParsedIntentInfo>[] array = newArray(intentFilters.size());
                    for (int arrayIndex = 0; arrayIndex < intentFilters.size(); arrayIndex++) {
                        array[arrayIndex] = Pair.create(provider, intentFilters.get(arrayIndex));
                    }
                    listCut.add(array);
                }
            }
            return super.queryIntentFromList(intent, resolvedType, defaultOnly, listCut, userId);
        }

        void addProvider(ParsedProvider p) {
            if (this.mProviders.containsKey(p.getComponentName())) {
                Slog.w(ComponentResolver.TAG, "Provider " + p.getComponentName() + " already defined; ignoring");
                return;
            }
            this.mProviders.put(p.getComponentName(), p);
            int intentsSize = p.getIntents().size();
            for (int j = 0; j < intentsSize; j++) {
                ParsedIntentInfo intent = (ParsedIntentInfo) p.getIntents().get(j);
                if (!intent.debugCheck()) {
                    Log.w(ComponentResolver.TAG, "==> For Provider " + p.getName());
                }
                addFilter(Pair.create(p, intent));
            }
        }

        void removeProvider(ParsedProvider p) {
            this.mProviders.remove(p.getComponentName());
            int intentsSize = p.getIntents().size();
            for (int j = 0; j < intentsSize; j++) {
                ParsedIntentInfo intent = (ParsedIntentInfo) p.getIntents().get(j);
                removeFilter(Pair.create(p, intent));
            }
        }

        protected boolean allowFilterResult(Pair<ParsedProvider, ParsedIntentInfo> filter, List<ResolveInfo> dest) {
            for (int i = dest.size() - 1; i >= 0; i--) {
                ProviderInfo destPi = dest.get(i).providerInfo;
                if (Objects.equals(destPi.name, ((ParsedProvider) filter.first).getClassName()) && Objects.equals(destPi.packageName, ((ParsedProvider) filter.first).getPackageName())) {
                    return false;
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public Pair<ParsedProvider, ParsedIntentInfo>[] newArray(int size) {
            return new Pair[size];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public boolean isFilterStopped(Pair<ParsedProvider, ParsedIntentInfo> filter, int userId) {
            return ComponentResolver.isFilterStopped(filter, userId);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public boolean isPackageForFilter(String packageName, Pair<ParsedProvider, ParsedIntentInfo> info) {
            return packageName.equals(((ParsedProvider) info.first).getPackageName());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public ResolveInfo newResult(Pair<ParsedProvider, ParsedIntentInfo> pair, int match, int userId) {
            PackageSetting ps;
            ApplicationInfo appInfo;
            ProviderInfo pi;
            if (!ComponentResolver.sUserManager.exists(userId)) {
                return null;
            }
            ParsedMainComponent parsedMainComponent = (ParsedProvider) pair.first;
            ParsedIntentInfo filter = (ParsedIntentInfo) pair.second;
            AndroidPackage pkg = ComponentResolver.sPackageManagerInternal.getPackage(parsedMainComponent.getPackageName());
            if (pkg == null || !ComponentResolver.sPackageManagerInternal.isEnabledAndMatches(parsedMainComponent, this.mFlags, userId) || (ps = ComponentResolver.sPackageManagerInternal.getPackageSetting(parsedMainComponent.getPackageName())) == null) {
                return null;
            }
            PackageUserState userState = ps.readUserState(userId);
            boolean matchVisibleToInstantApp = (this.mFlags & 16777216) != 0;
            boolean isInstantApp = (this.mFlags & 8388608) != 0;
            if (matchVisibleToInstantApp && !filter.isVisibleToInstantApp() && !userState.instantApp) {
                return null;
            }
            if (!isInstantApp && userState.instantApp) {
                return null;
            }
            if ((userState.instantApp && ps.isUpdateAvailable()) || (appInfo = PackageInfoUtils.generateApplicationInfo(pkg, this.mFlags, userState, userId, ps)) == null || (pi = PackageInfoUtils.generateProviderInfo(pkg, parsedMainComponent, this.mFlags, userState, appInfo, userId, ps)) == null) {
                return null;
            }
            ResolveInfo res = new ResolveInfo();
            res.providerInfo = pi;
            if ((this.mFlags & 64) != 0) {
                res.filter = filter;
            }
            res.priority = filter.getPriority();
            res.match = match;
            res.isDefault = filter.isHasDefault();
            res.labelRes = filter.getLabelRes();
            res.nonLocalizedLabel = filter.getNonLocalizedLabel();
            res.icon = filter.getIcon();
            res.system = res.providerInfo.applicationInfo.isSystemApp();
            return res;
        }

        @Override // com.android.server.IntentResolver
        protected void sortResults(List<ResolveInfo> results) {
            results.sort(ComponentResolver.RESOLVE_PRIORITY_SORTER);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public void dumpFilter(PrintWriter out, String prefix, Pair<ParsedProvider, ParsedIntentInfo> pair) {
            ParsedProvider provider = (ParsedProvider) pair.first;
            ParsedIntentInfo filter = (ParsedIntentInfo) pair.second;
            out.print(prefix);
            out.print(Integer.toHexString(System.identityHashCode(provider)));
            out.print(' ');
            ComponentName.printShortString(out, provider.getPackageName(), provider.getClassName());
            out.print(" filter ");
            out.println(Integer.toHexString(System.identityHashCode(filter)));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public Object filterToLabel(Pair<ParsedProvider, ParsedIntentInfo> filter) {
            return filter;
        }

        @Override // com.android.server.IntentResolver
        protected void dumpFilterLabel(PrintWriter out, String prefix, Object label, int count) {
            Pair<ParsedProvider, ParsedIntentInfo> pair = (Pair) label;
            out.print(prefix);
            out.print(Integer.toHexString(System.identityHashCode(pair.first)));
            out.print(' ');
            ComponentName.printShortString(out, ((ParsedProvider) pair.first).getPackageName(), ((ParsedProvider) pair.first).getClassName());
            if (count > 1) {
                out.print(" (");
                out.print(count);
                out.print(" filters)");
            }
            out.println();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public IntentFilter getIntentFilter(Pair<ParsedProvider, ParsedIntentInfo> input) {
            return (IntentFilter) input.second;
        }
    }

    private static final class ServiceIntentResolver extends MimeGroupsAwareIntentResolver<Pair<ParsedService, ParsedIntentInfo>, ResolveInfo> {
        private int mFlags;
        private final ArrayMap<ComponentName, ParsedService> mServices;

        private ServiceIntentResolver() {
            super();
            this.mServices = new ArrayMap<>();
        }

        @Override // com.android.server.IntentResolver
        protected /* bridge */ /* synthetic */ boolean allowFilterResult(Object obj, List list) {
            return allowFilterResult((Pair<ParsedService, ParsedIntentInfo>) obj, (List<ResolveInfo>) list);
        }

        @Override // com.android.server.IntentResolver
        public List<ResolveInfo> queryIntent(Intent intent, String resolvedType, boolean defaultOnly, int userId) {
            this.mFlags = defaultOnly ? 65536 : 0;
            return super.queryIntent(intent, resolvedType, defaultOnly, userId);
        }

        List<ResolveInfo> queryIntent(Intent intent, String resolvedType, int flags, int userId) {
            if (!ComponentResolver.sUserManager.exists(userId)) {
                return null;
            }
            this.mFlags = flags;
            return super.queryIntent(intent, resolvedType, (65536 & flags) != 0, userId);
        }

        List<ResolveInfo> queryIntentForPackage(Intent intent, String resolvedType, int flags, List<ParsedService> packageServices, int userId) {
            if (!ComponentResolver.sUserManager.exists(userId)) {
                return null;
            }
            if (packageServices == null) {
                return Collections.emptyList();
            }
            this.mFlags = flags;
            boolean defaultOnly = (65536 & flags) != 0;
            int servicesSize = packageServices.size();
            ArrayList<Pair<ParsedService, ParsedIntentInfo>[]> listCut = new ArrayList<>(servicesSize);
            for (int i = 0; i < servicesSize; i++) {
                ParsedService service = packageServices.get(i);
                List<ParsedIntentInfo> intentFilters = service.getIntents();
                if (intentFilters.size() > 0) {
                    Pair<ParsedService, ParsedIntentInfo>[] array = newArray(intentFilters.size());
                    for (int arrayIndex = 0; arrayIndex < intentFilters.size(); arrayIndex++) {
                        array[arrayIndex] = Pair.create(service, intentFilters.get(arrayIndex));
                    }
                    listCut.add(array);
                }
            }
            return super.queryIntentFromList(intent, resolvedType, defaultOnly, listCut, userId);
        }

        void addService(ParsedService s) {
            this.mServices.put(s.getComponentName(), s);
            int intentsSize = s.getIntents().size();
            for (int j = 0; j < intentsSize; j++) {
                ParsedIntentInfo intent = (ParsedIntentInfo) s.getIntents().get(j);
                if (!intent.debugCheck()) {
                    Log.w(ComponentResolver.TAG, "==> For Service " + s.getName());
                }
                addFilter(Pair.create(s, intent));
            }
        }

        void removeService(ParsedService s) {
            this.mServices.remove(s.getComponentName());
            int intentsSize = s.getIntents().size();
            for (int j = 0; j < intentsSize; j++) {
                ParsedIntentInfo intent = (ParsedIntentInfo) s.getIntents().get(j);
                removeFilter(Pair.create(s, intent));
            }
        }

        protected boolean allowFilterResult(Pair<ParsedService, ParsedIntentInfo> filter, List<ResolveInfo> dest) {
            for (int i = dest.size() - 1; i >= 0; i--) {
                ServiceInfo destAi = dest.get(i).serviceInfo;
                if (Objects.equals(destAi.name, ((ParsedService) filter.first).getClassName()) && Objects.equals(destAi.packageName, ((ParsedService) filter.first).getPackageName())) {
                    return false;
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public Pair<ParsedService, ParsedIntentInfo>[] newArray(int size) {
            return new Pair[size];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public boolean isFilterStopped(Pair<ParsedService, ParsedIntentInfo> filter, int userId) {
            return ComponentResolver.isFilterStopped(filter, userId);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public boolean isPackageForFilter(String packageName, Pair<ParsedService, ParsedIntentInfo> info) {
            return packageName.equals(((ParsedService) info.first).getPackageName());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public ResolveInfo newResult(Pair<ParsedService, ParsedIntentInfo> pair, int match, int userId) {
            PackageSetting ps;
            if (!ComponentResolver.sUserManager.exists(userId)) {
                return null;
            }
            ParsedMainComponent parsedMainComponent = (ParsedService) pair.first;
            ParsedIntentInfo filter = (ParsedIntentInfo) pair.second;
            AndroidPackage pkg = ComponentResolver.sPackageManagerInternal.getPackage(parsedMainComponent.getPackageName());
            if (pkg == null || !ComponentResolver.sPackageManagerInternal.isEnabledAndMatches(parsedMainComponent, this.mFlags, userId) || (ps = ComponentResolver.sPackageManagerInternal.getPackageSetting(parsedMainComponent.getPackageName())) == null) {
                return null;
            }
            PackageUserState userState = ps.readUserState(userId);
            ServiceInfo si = PackageInfoUtils.generateServiceInfo(pkg, parsedMainComponent, this.mFlags, userState, userId, ps);
            if (si == null) {
                return null;
            }
            boolean matchVisibleToInstantApp = (this.mFlags & 16777216) != 0;
            boolean isInstantApp = (this.mFlags & 8388608) != 0;
            if (matchVisibleToInstantApp && !filter.isVisibleToInstantApp() && !userState.instantApp) {
                return null;
            }
            if (!isInstantApp && userState.instantApp) {
                return null;
            }
            if (userState.instantApp && ps.isUpdateAvailable()) {
                return null;
            }
            ResolveInfo res = new ResolveInfo();
            res.serviceInfo = si;
            if ((this.mFlags & 64) != 0) {
                res.filter = filter;
            }
            res.priority = filter.getPriority();
            res.match = match;
            res.isDefault = filter.isHasDefault();
            res.labelRes = filter.getLabelRes();
            res.nonLocalizedLabel = filter.getNonLocalizedLabel();
            res.icon = filter.getIcon();
            res.system = res.serviceInfo.applicationInfo.isSystemApp();
            return res;
        }

        @Override // com.android.server.IntentResolver
        protected void sortResults(List<ResolveInfo> results) {
            results.sort(ComponentResolver.RESOLVE_PRIORITY_SORTER);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public void dumpFilter(PrintWriter out, String prefix, Pair<ParsedService, ParsedIntentInfo> pair) {
            ParsedService service = (ParsedService) pair.first;
            ParsedIntentInfo filter = (ParsedIntentInfo) pair.second;
            out.print(prefix);
            out.print(Integer.toHexString(System.identityHashCode(service)));
            out.print(' ');
            ComponentName.printShortString(out, service.getPackageName(), service.getClassName());
            out.print(" filter ");
            out.print(Integer.toHexString(System.identityHashCode(filter)));
            if (service.getPermission() != null) {
                out.print(" permission ");
                out.println(service.getPermission());
            } else {
                out.println();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public Object filterToLabel(Pair<ParsedService, ParsedIntentInfo> filter) {
            return filter;
        }

        @Override // com.android.server.IntentResolver
        protected void dumpFilterLabel(PrintWriter out, String prefix, Object label, int count) {
            Pair<ParsedService, ParsedIntentInfo> pair = (Pair) label;
            out.print(prefix);
            out.print(Integer.toHexString(System.identityHashCode(pair.first)));
            out.print(' ');
            ComponentName.printShortString(out, ((ParsedService) pair.first).getPackageName(), ((ParsedService) pair.first).getClassName());
            if (count > 1) {
                out.print(" (");
                out.print(count);
                out.print(" filters)");
            }
            out.println();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public IntentFilter getIntentFilter(Pair<ParsedService, ParsedIntentInfo> input) {
            return (IntentFilter) input.second;
        }
    }

    static final class InstantAppIntentResolver extends IntentResolver<AuxiliaryResolveInfo.AuxiliaryFilter, AuxiliaryResolveInfo.AuxiliaryFilter> {
        final ArrayMap<String, Pair<Integer, InstantAppResolveInfo>> mOrderResult = new ArrayMap<>();

        InstantAppIntentResolver() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.android.server.IntentResolver
        public AuxiliaryResolveInfo.AuxiliaryFilter[] newArray(int size) {
            return new AuxiliaryResolveInfo.AuxiliaryFilter[size];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public boolean isPackageForFilter(String packageName, AuxiliaryResolveInfo.AuxiliaryFilter responseObj) {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public AuxiliaryResolveInfo.AuxiliaryFilter newResult(AuxiliaryResolveInfo.AuxiliaryFilter responseObj, int match, int userId) {
            if (!ComponentResolver.sUserManager.exists(userId)) {
                return null;
            }
            String packageName = responseObj.resolveInfo.getPackageName();
            Integer order = Integer.valueOf(responseObj.getOrder());
            Pair<Integer, InstantAppResolveInfo> lastOrderResult = this.mOrderResult.get(packageName);
            if (lastOrderResult != null && ((Integer) lastOrderResult.first).intValue() >= order.intValue()) {
                return null;
            }
            InstantAppResolveInfo res = responseObj.resolveInfo;
            if (order.intValue() > 0) {
                this.mOrderResult.put(packageName, new Pair<>(order, res));
            }
            return responseObj;
        }

        @Override // com.android.server.IntentResolver
        protected void filterResults(List<AuxiliaryResolveInfo.AuxiliaryFilter> results) {
            if (this.mOrderResult.size() == 0) {
                return;
            }
            int resultSize = results.size();
            int i = 0;
            while (i < resultSize) {
                InstantAppResolveInfo info = results.get(i).resolveInfo;
                String packageName = info.getPackageName();
                Pair<Integer, InstantAppResolveInfo> savedInfo = this.mOrderResult.get(packageName);
                if (savedInfo != null) {
                    if (savedInfo.second == info) {
                        this.mOrderResult.remove(packageName);
                        if (this.mOrderResult.size() == 0) {
                            return;
                        }
                    } else {
                        results.remove(i);
                        resultSize--;
                        i--;
                    }
                }
                i++;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.server.IntentResolver
        public IntentFilter getIntentFilter(AuxiliaryResolveInfo.AuxiliaryFilter input) {
            return input;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isFilterStopped(Pair<? extends ParsedComponent, ParsedIntentInfo> pair, int userId) {
        PackageSetting ps;
        if (!sUserManager.exists(userId)) {
            return true;
        }
        AndroidPackage pkg = sPackageManagerInternal.getPackage(((ParsedComponent) pair.first).getPackageName());
        if (pkg == null || (ps = sPackageManagerInternal.getPackageSetting(((ParsedComponent) pair.first).getPackageName())) == null) {
            return false;
        }
        return !ps.isSystem() && ps.getStopped(userId);
    }

    static class IterGenerator<E> {
        IterGenerator() {
        }

        public Iterator<E> generate(ParsedIntentInfo info) {
            return null;
        }
    }

    static class ActionIterGenerator extends IterGenerator<String> {
        ActionIterGenerator() {
        }

        @Override // com.android.server.pm.ComponentResolver.IterGenerator
        public Iterator<String> generate(ParsedIntentInfo info) {
            return info.actionsIterator();
        }
    }

    static class CategoriesIterGenerator extends IterGenerator<String> {
        CategoriesIterGenerator() {
        }

        @Override // com.android.server.pm.ComponentResolver.IterGenerator
        public Iterator<String> generate(ParsedIntentInfo info) {
            return info.categoriesIterator();
        }
    }

    static class SchemesIterGenerator extends IterGenerator<String> {
        SchemesIterGenerator() {
        }

        @Override // com.android.server.pm.ComponentResolver.IterGenerator
        public Iterator<String> generate(ParsedIntentInfo info) {
            return info.schemesIterator();
        }
    }

    static class AuthoritiesIterGenerator extends IterGenerator<IntentFilter.AuthorityEntry> {
        AuthoritiesIterGenerator() {
        }

        @Override // com.android.server.pm.ComponentResolver.IterGenerator
        public Iterator<IntentFilter.AuthorityEntry> generate(ParsedIntentInfo info) {
            return info.authoritiesIterator();
        }
    }

    boolean updateMimeGroup(String packageName, String group) {
        boolean hasChanges = this.mActivities.updateMimeGroup(packageName, group);
        return hasChanges | this.mProviders.updateMimeGroup(packageName, group) | this.mReceivers.updateMimeGroup(packageName, group) | this.mServices.updateMimeGroup(packageName, group);
    }
}

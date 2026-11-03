package com.android.launcher3.settings;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.util.ArrayMap;
import android.util.Pair;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceDataStore;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceScreen;
import androidx.preference.PreferenceViewHolder;
import androidx.preference.SwitchPreference;
import com.android.launcher3.R;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.config.FlagTogglerPrefUi;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.mega.nexus.content.pm.MegaPackageManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class DeveloperOptionsFragment extends PreferenceFragmentCompat {
    private static final String ACTION_PLUGIN_SETTINGS = "com.android.systemui.action.PLUGIN_SETTINGS";
    private static final String PLUGIN_PERMISSION = "com.android.systemui.permission.PLUGIN";
    private FlagTogglerPrefUi mFlagTogglerPrefUi;
    private final BroadcastReceiver mPluginReceiver = new BroadcastReceiver() { // from class: com.android.launcher3.settings.DeveloperOptionsFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DeveloperOptionsFragment.this.loadPluginPrefs();
        }
    };
    private PreferenceCategory mPluginsCategory;
    private PreferenceScreen mPreferenceScreen;

    @Override // androidx.preference.PreferenceFragmentCompat
    public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        getContext().registerReceiver(this.mPluginReceiver, intentFilter);
        getContext().registerReceiver(this.mPluginReceiver, new IntentFilter("android.intent.action.USER_UNLOCKED"));
        PreferenceScreen preferenceScreenCreatePreferenceScreen = getPreferenceManager().createPreferenceScreen(getContext());
        this.mPreferenceScreen = preferenceScreenCreatePreferenceScreen;
        setPreferenceScreen(preferenceScreenCreatePreferenceScreen);
        initFlags();
        loadPluginPrefs();
        maybeAddSandboxCategory();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        getContext().unregisterReceiver(this.mPluginReceiver);
    }

    private PreferenceCategory newCategory(String title) {
        PreferenceCategory preferenceCategory = new PreferenceCategory(getContext());
        preferenceCategory.setOrder(Integer.MAX_VALUE);
        preferenceCategory.setTitle(title);
        this.mPreferenceScreen.addPreference(preferenceCategory);
        return preferenceCategory;
    }

    private void initFlags() {
        if (FeatureFlags.showFlagTogglerUi(getContext())) {
            FlagTogglerPrefUi flagTogglerPrefUi = new FlagTogglerPrefUi(this);
            this.mFlagTogglerPrefUi = flagTogglerPrefUi;
            flagTogglerPrefUi.applyTo(newCategory("Feature flags"));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        FlagTogglerPrefUi flagTogglerPrefUi = this.mFlagTogglerPrefUi;
        if (flagTogglerPrefUi != null) {
            flagTogglerPrefUi.onCreateOptionsMenu(menu);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem item) {
        FlagTogglerPrefUi flagTogglerPrefUi = this.mFlagTogglerPrefUi;
        if (flagTogglerPrefUi != null) {
            flagTogglerPrefUi.onOptionsItemSelected(item);
        }
        return super.onOptionsItemSelected(item);
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public void onStop() {
        FlagTogglerPrefUi flagTogglerPrefUi = this.mFlagTogglerPrefUi;
        if (flagTogglerPrefUi != null) {
            flagTogglerPrefUi.onStop();
        }
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadPluginPrefs() {
        PreferenceCategory preferenceCategory = this.mPluginsCategory;
        if (preferenceCategory != null) {
            this.mPreferenceScreen.removePreference(preferenceCategory);
        }
        if (!PluginManagerWrapper.hasPlugins(getActivity())) {
            this.mPluginsCategory = null;
            return;
        }
        this.mPluginsCategory = newCategory("Plugins");
        PluginManagerWrapper pluginManagerWrapperM166x39265fe7 = PluginManagerWrapper.INSTANCE.m166x39265fe7(getContext());
        final Context context = getContext();
        PackageManager packageManager = getContext().getPackageManager();
        Set<String> pluginActions = pluginManagerWrapperM166x39265fe7.getPluginActions();
        ArrayMap arrayMap = new ArrayMap();
        Set set = (Set) packageManager.getPackagesHoldingPermissions(new String[]{PLUGIN_PERMISSION}, 512).stream().map(new Function() { // from class: com.android.launcher3.settings.DeveloperOptionsFragment$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((PackageInfo) obj).packageName;
            }
        }).collect(Collectors.toSet());
        for (String str : pluginActions) {
            String name = toName(str);
            for (ResolveInfo resolveInfo : packageManager.queryIntentServices(new Intent(str), 512)) {
                String str2 = resolveInfo.serviceInfo.packageName;
                if (set.contains(str2)) {
                    Pair pairCreate = Pair.create(str2, resolveInfo.serviceInfo.processName);
                    if (!arrayMap.containsKey(pairCreate)) {
                        arrayMap.put(pairCreate, new ArrayList());
                    }
                    ((ArrayList) arrayMap.get(pairCreate)).add(Pair.create(name, resolveInfo.serviceInfo));
                }
            }
        }
        final PreferenceDataStore pluginEnabler = pluginManagerWrapperM166x39265fe7.getPluginEnabler();
        arrayMap.forEach(new BiConsumer() { // from class: com.android.launcher3.settings.DeveloperOptionsFragment$$ExternalSyntheticLambda3
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                this.f$0.m145xe42b3b0f(context, pluginEnabler, (Pair) obj, (ArrayList) obj2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$loadPluginPrefs$3$com-android-launcher3-settings-DeveloperOptionsFragment, reason: not valid java name */
    /* synthetic */ void m145xe42b3b0f(Context context, PreferenceDataStore preferenceDataStore, Pair pair, ArrayList arrayList) {
        final String str = (String) pair.first;
        List list = (List) arrayList.stream().map(new Function() { // from class: com.android.launcher3.settings.DeveloperOptionsFragment$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DeveloperOptionsFragment.lambda$loadPluginPrefs$1(str, (Pair) obj);
            }
        }).collect(Collectors.toList());
        if (list.isEmpty()) {
            return;
        }
        PluginPreference pluginPreference = new PluginPreference(context, ((ServiceInfo) ((Pair) arrayList.get(0)).second).applicationInfo, preferenceDataStore, list);
        pluginPreference.setSummary("Plugins: " + ((String) arrayList.stream().map(new Function() { // from class: com.android.launcher3.settings.DeveloperOptionsFragment$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DeveloperOptionsFragment.lambda$loadPluginPrefs$2((Pair) obj);
            }
        }).collect(Collectors.joining(", "))));
        this.mPluginsCategory.addPreference(pluginPreference);
    }

    static /* synthetic */ ComponentName lambda$loadPluginPrefs$1(String str, Pair pair) {
        return new ComponentName(str, ((ServiceInfo) pair.second).name);
    }

    static /* synthetic */ String lambda$loadPluginPrefs$2(Pair pair) {
        return (String) pair.first;
    }

    private void maybeAddSandboxCategory() {
        Context context = getContext();
        if (context == null) {
            return;
        }
        final Intent intentAddFlags = new Intent("com.android.quickstep.action.GESTURE_SANDBOX").setPackage(context.getPackageName()).addFlags(MegaPackageManager.MATCH_DEBUG_TRIAGED_MISSING);
        if (intentAddFlags.resolveActivity(context.getPackageManager()) == null) {
            return;
        }
        PreferenceCategory preferenceCategoryNewCategory = newCategory("Gesture Navigation Sandbox");
        preferenceCategoryNewCategory.setSummary("Learn and practice navigation gestures");
        Preference preference = new Preference(context);
        preference.setKey("launchBackTutorial");
        preference.setTitle("Launch Back Tutorial");
        preference.setSummary("Learn how to use the Back gesture");
        preference.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.android.launcher3.settings.DeveloperOptionsFragment$$ExternalSyntheticLambda4
            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference2) {
                return this.f$0.m146xf5a90ae5(intentAddFlags, preference2);
            }
        });
        preferenceCategoryNewCategory.addPreference(preference);
        Preference preference2 = new Preference(context);
        preference2.setKey("launchHomeTutorial");
        preference2.setTitle("Launch Home Tutorial");
        preference2.setSummary("Learn how to use the Home gesture");
        preference2.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.android.launcher3.settings.DeveloperOptionsFragment$$ExternalSyntheticLambda5
            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference3) {
                return this.f$0.m147x1b3d13e6(intentAddFlags, preference3);
            }
        });
        preferenceCategoryNewCategory.addPreference(preference2);
        Preference preference3 = new Preference(context);
        preference3.setKey("launchOverviewTutorial");
        preference3.setTitle("Launch Overview Tutorial");
        preference3.setSummary("Learn how to use the Overview gesture");
        preference3.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.android.launcher3.settings.DeveloperOptionsFragment$$ExternalSyntheticLambda6
            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference4) {
                return this.f$0.m148x40d11ce7(intentAddFlags, preference4);
            }
        });
        preferenceCategoryNewCategory.addPreference(preference3);
        Preference preference4 = new Preference(context);
        preference4.setKey("launchAssistantTutorial");
        preference4.setTitle("Launch Assistant Tutorial");
        preference4.setSummary("Learn how to use the Assistant gesture");
        preference4.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.android.launcher3.settings.DeveloperOptionsFragment$$ExternalSyntheticLambda7
            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference5) {
                return this.f$0.m149x666525e8(intentAddFlags, preference5);
            }
        });
        preferenceCategoryNewCategory.addPreference(preference4);
    }

    /* JADX INFO: renamed from: lambda$maybeAddSandboxCategory$4$com-android-launcher3-settings-DeveloperOptionsFragment, reason: not valid java name */
    /* synthetic */ boolean m146xf5a90ae5(Intent intent, Preference preference) {
        startActivity(intent.putExtra("tutorial_type", "RIGHT_EDGE_BACK_NAVIGATION"));
        return true;
    }

    /* JADX INFO: renamed from: lambda$maybeAddSandboxCategory$5$com-android-launcher3-settings-DeveloperOptionsFragment, reason: not valid java name */
    /* synthetic */ boolean m147x1b3d13e6(Intent intent, Preference preference) {
        startActivity(intent.putExtra("tutorial_type", "HOME_NAVIGATION"));
        return true;
    }

    /* JADX INFO: renamed from: lambda$maybeAddSandboxCategory$6$com-android-launcher3-settings-DeveloperOptionsFragment, reason: not valid java name */
    /* synthetic */ boolean m148x40d11ce7(Intent intent, Preference preference) {
        startActivity(intent.putExtra("tutorial_type", "OVERVIEW_NAVIGATION"));
        return true;
    }

    /* JADX INFO: renamed from: lambda$maybeAddSandboxCategory$7$com-android-launcher3-settings-DeveloperOptionsFragment, reason: not valid java name */
    /* synthetic */ boolean m149x666525e8(Intent intent, Preference preference) {
        startActivity(intent.putExtra("tutorial_type", "ASSISTANT"));
        return true;
    }

    private String toName(String action) {
        String strReplace = action.replace("com.android.systemui.action.PLUGIN_", "").replace("com.android.launcher3.action.PLUGIN_", "");
        StringBuilder sb = new StringBuilder();
        for (String str : strReplace.split("_")) {
            if (sb.length() != 0) {
                sb.append(' ');
            }
            sb.append(str.substring(0, 1));
            sb.append(str.substring(1).toLowerCase());
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class PluginPreference extends SwitchPreference {
        private final List<ComponentName> mComponentNames;
        private final boolean mHasSettings;
        private final String mPackageName;
        private final PreferenceDataStore mPluginEnabler;

        PluginPreference(Context prefContext, ApplicationInfo info, PreferenceDataStore pluginEnabler, List<ComponentName> componentNames) {
            super(prefContext);
            PackageManager packageManager = prefContext.getPackageManager();
            this.mHasSettings = packageManager.resolveActivity(new Intent(DeveloperOptionsFragment.ACTION_PLUGIN_SETTINGS).setPackage(info.packageName), 0) != null;
            this.mPackageName = info.packageName;
            this.mComponentNames = componentNames;
            this.mPluginEnabler = pluginEnabler;
            setTitle(info.loadLabel(packageManager));
            setChecked(isPluginEnabled());
            setWidgetLayoutResource(R.layout.switch_preference_with_settings);
        }

        private boolean isEnabled(ComponentName cn) {
            return this.mPluginEnabler.getBoolean(PluginManagerWrapper.pluginEnabledKey(cn), true);
        }

        private boolean isPluginEnabled() {
            Iterator<ComponentName> it = this.mComponentNames.iterator();
            while (it.hasNext()) {
                if (!isEnabled(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // androidx.preference.Preference
        protected boolean persistBoolean(boolean isEnabled) {
            boolean z = false;
            for (ComponentName componentName : this.mComponentNames) {
                if (isEnabled(componentName) != isEnabled) {
                    this.mPluginEnabler.putBoolean(PluginManagerWrapper.pluginEnabledKey(componentName), isEnabled);
                    z = true;
                }
            }
            if (z) {
                String str = this.mPackageName;
                getContext().sendBroadcast(new Intent(PluginManagerWrapper.PLUGIN_CHANGED, str != null ? Uri.fromParts("package", str, null) : null));
            }
            setChecked(isEnabled);
            return true;
        }

        @Override // androidx.preference.SwitchPreference, androidx.preference.Preference
        public void onBindViewHolder(PreferenceViewHolder holder) {
            super.onBindViewHolder(holder);
            holder.findViewById(R.id.settings).setVisibility(this.mHasSettings ? 0 : 8);
            holder.findViewById(R.id.divider).setVisibility(this.mHasSettings ? 0 : 8);
            holder.findViewById(R.id.settings).setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.settings.DeveloperOptionsFragment$PluginPreference$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m150xf9ccc7f6(view);
                }
            });
            holder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.launcher3.settings.DeveloperOptionsFragment$PluginPreference$$ExternalSyntheticLambda1
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return this.f$0.m151x143dc115(view);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onBindViewHolder$0$com-android-launcher3-settings-DeveloperOptionsFragment$PluginPreference, reason: not valid java name */
        /* synthetic */ void m150xf9ccc7f6(View view) {
            ResolveInfo resolveInfoResolveActivity = view.getContext().getPackageManager().resolveActivity(new Intent(DeveloperOptionsFragment.ACTION_PLUGIN_SETTINGS).setPackage(this.mPackageName), 0);
            if (resolveInfoResolveActivity != null) {
                view.getContext().startActivity(new Intent().setComponent(new ComponentName(resolveInfoResolveActivity.activityInfo.packageName, resolveInfoResolveActivity.activityInfo.name)));
            }
        }

        /* JADX INFO: renamed from: lambda$onBindViewHolder$1$com-android-launcher3-settings-DeveloperOptionsFragment$PluginPreference, reason: not valid java name */
        /* synthetic */ boolean m151x143dc115(View view) {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", this.mPackageName, null));
            getContext().startActivity(intent);
            return true;
        }
    }
}

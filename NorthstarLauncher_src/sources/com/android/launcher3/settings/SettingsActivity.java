package com.android.launcher3.settings;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.LauncherFiles;
import com.android.launcher3.R;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.SecureSettingsObserver;

/* JADX INFO: loaded from: classes.dex */
public class SettingsActivity extends FragmentActivity implements PreferenceFragmentCompat.OnPreferenceStartFragmentCallback, PreferenceFragmentCompat.OnPreferenceStartScreenCallback, SharedPreferences.OnSharedPreferenceChangeListener {
    private static final int DELAY_HIGHLIGHT_DURATION_MILLIS = 600;
    private static final String DEVELOPER_OPTIONS_KEY = "pref_developer_options";
    public static final String EXTRA_FRAGMENT_ARG_KEY = ":settings:fragment_args_key";
    public static final String EXTRA_SHOW_FRAGMENT_ARGS = ":settings:show_fragment_args";
    private static final String FLAGS_PREFERENCE_KEY = "flag_toggler";
    private static final String NOTIFICATION_DOTS_PREFERENCE_KEY = "pref_icon_badging";
    private static final String NOTIFICATION_ENABLED_LISTENERS = "enabled_notification_listeners";
    public static final String SAVE_HIGHLIGHTED_KEY = "android:preference_highlighted";

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (savedInstanceState == null) {
            Bundle bundle = new Bundle();
            String stringExtra = getIntent().getStringExtra(EXTRA_FRAGMENT_ARG_KEY);
            if (!TextUtils.isEmpty(stringExtra)) {
                bundle.putString(EXTRA_FRAGMENT_ARG_KEY, stringExtra);
            }
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            Fragment fragmentInstantiate = supportFragmentManager.getFragmentFactory().instantiate(getClassLoader(), getString(R.string.settings_fragment_name));
            fragmentInstantiate.setArguments(bundle);
            supportFragmentManager.beginTransaction().replace(android.R.id.content, fragmentInstantiate).commit();
        }
        Utilities.getPrefs(getApplicationContext()).registerOnSharedPreferenceChangeListener(this);
    }

    private boolean startFragment(String fragment, Bundle args, String key) {
        if (Utilities.ATLEAST_P && getSupportFragmentManager().isStateSaved()) {
            return false;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment fragmentInstantiate = supportFragmentManager.getFragmentFactory().instantiate(getClassLoader(), fragment);
        fragmentInstantiate.setArguments(args);
        if (fragmentInstantiate instanceof DialogFragment) {
            ((DialogFragment) fragmentInstantiate).show(getSupportFragmentManager(), key);
            return true;
        }
        supportFragmentManager.beginTransaction().replace(android.R.id.content, fragmentInstantiate).addToBackStack(key).commit();
        return true;
    }

    @Override // androidx.preference.PreferenceFragmentCompat.OnPreferenceStartFragmentCallback
    public boolean onPreferenceStartFragment(PreferenceFragmentCompat preferenceFragment, Preference pref) {
        return startFragment(pref.getFragment(), pref.getExtras(), pref.getKey());
    }

    @Override // androidx.preference.PreferenceFragmentCompat.OnPreferenceStartScreenCallback
    public boolean onPreferenceStartScreen(PreferenceFragmentCompat caller, PreferenceScreen pref) {
        Bundle bundle = new Bundle();
        bundle.putString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT", pref.getKey());
        return startFragment(getString(R.string.settings_fragment_name), bundle, pref.getKey());
    }

    public static class LauncherSettingsFragment extends PreferenceFragmentCompat {
        private String mHighLightKey;
        private SecureSettingsObserver mNotificationDotsObserver;
        private boolean mPreferenceHighlighted = false;

        protected String getParentKeyForPref(String key) {
            return null;
        }

        @Override // androidx.preference.PreferenceFragmentCompat
        public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
            Bundle arguments = getArguments();
            String string = arguments == null ? null : arguments.getString(SettingsActivity.EXTRA_FRAGMENT_ARG_KEY);
            this.mHighLightKey = string;
            if (rootKey == null && !TextUtils.isEmpty(string)) {
                rootKey = getParentKeyForPref(this.mHighLightKey);
            }
            if (savedInstanceState != null) {
                this.mPreferenceHighlighted = savedInstanceState.getBoolean(SettingsActivity.SAVE_HIGHLIGHTED_KEY);
            }
            getPreferenceManager().setSharedPreferencesName(LauncherFiles.SHARED_PREFERENCES_KEY);
            setPreferencesFromResource(R.xml.launcher_preferences, rootKey);
            PreferenceScreen preferenceScreen = getPreferenceScreen();
            for (int preferenceCount = preferenceScreen.getPreferenceCount() - 1; preferenceCount >= 0; preferenceCount--) {
                Preference preference = preferenceScreen.getPreference(preferenceCount);
                if (!initPreference(preference)) {
                    preferenceScreen.removePreference(preference);
                }
            }
        }

        @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
        public void onSaveInstanceState(Bundle outState) {
            super.onSaveInstanceState(outState);
            outState.putBoolean(SettingsActivity.SAVE_HIGHLIGHTED_KEY, this.mPreferenceHighlighted);
        }

        protected boolean initPreference(Preference preference) {
            String key = preference.getKey();
            key.hashCode();
            switch (key) {
                case "pref_icon_badging":
                    if (!Utilities.ATLEAST_OREO || !getResources().getBoolean(R.bool.notification_dots_enabled)) {
                        return false;
                    }
                    SecureSettingsObserver secureSettingsObserverNewNotificationSettingsObserver = SecureSettingsObserver.newNotificationSettingsObserver(getActivity(), (NotificationDotsPreference) preference);
                    this.mNotificationDotsObserver = secureSettingsObserverNewNotificationSettingsObserver;
                    secureSettingsObserverNewNotificationSettingsObserver.register();
                    this.mNotificationDotsObserver.getResolver().registerContentObserver(Settings.Secure.getUriFor(SettingsActivity.NOTIFICATION_ENABLED_LISTENERS), false, this.mNotificationDotsObserver);
                    this.mNotificationDotsObserver.dispatchOnChange();
                    return true;
                case "pref_developer_options":
                    return FeatureFlags.showFlagTogglerUi(getContext()) || PluginManagerWrapper.hasPlugins(getContext());
                case "flag_toggler":
                    return FeatureFlags.showFlagTogglerUi(getContext());
                default:
                    return true;
            }
        }

        @Override // androidx.fragment.app.Fragment
        public void onResume() {
            super.onResume();
            if (!isAdded() || this.mPreferenceHighlighted) {
                return;
            }
            PreferenceHighlighter preferenceHighlighterCreateHighlighter = createHighlighter();
            if (preferenceHighlighterCreateHighlighter != null) {
                getView().postDelayed(preferenceHighlighterCreateHighlighter, 600L);
                this.mPreferenceHighlighted = true;
            } else {
                requestAccessibilityFocus(getListView());
            }
        }

        private PreferenceHighlighter createHighlighter() {
            if (TextUtils.isEmpty(this.mHighLightKey) || getPreferenceScreen() == null) {
                return null;
            }
            RecyclerView listView = getListView();
            int preferenceAdapterPosition = ((PreferenceGroup.PreferencePositionCallback) listView.getAdapter()).getPreferenceAdapterPosition(this.mHighLightKey);
            if (preferenceAdapterPosition >= 0) {
                return new PreferenceHighlighter(listView, preferenceAdapterPosition);
            }
            return null;
        }

        private void requestAccessibilityFocus(final RecyclerView rv) {
            rv.post(new Runnable() { // from class: com.android.launcher3.settings.SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SettingsActivity.LauncherSettingsFragment.lambda$requestAccessibilityFocus$0(rv);
                }
            });
        }

        static /* synthetic */ void lambda$requestAccessibilityFocus$0(RecyclerView recyclerView) {
            if (recyclerView.hasFocus() || recyclerView.getChildCount() <= 0) {
                return;
            }
            recyclerView.getChildAt(0).performAccessibilityAction(64, null);
        }

        @Override // androidx.fragment.app.Fragment
        public void onDestroy() {
            SecureSettingsObserver secureSettingsObserver = this.mNotificationDotsObserver;
            if (secureSettingsObserver != null) {
                secureSettingsObserver.unregister();
                this.mNotificationDotsObserver = null;
            }
            super.onDestroy();
        }
    }
}

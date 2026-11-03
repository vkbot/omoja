package com.android.launcher3.config;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Process;
import android.text.Html;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.PreferenceDataStore;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceGroup;
import androidx.preference.SwitchPreference;
import com.android.launcher3.R;
import com.mega.chery.utils.ToastViewUtils;

/* JADX INFO: loaded from: classes.dex */
public final class FlagTogglerPrefUi {
    private static final String TAG = "FlagTogglerPrefFrag";
    private final Context mContext;
    private final PreferenceDataStore mDataStore = new PreferenceDataStore() { // from class: com.android.launcher3.config.FlagTogglerPrefUi.1
        @Override // androidx.preference.PreferenceDataStore
        public void putBoolean(String key, boolean value) {
            for (FeatureFlags.DebugFlag debugFlag : FeatureFlags.getDebugFlags()) {
                if (debugFlag.key.equals(key)) {
                    SharedPreferences.Editor editorEdit = FlagTogglerPrefUi.this.mContext.getSharedPreferences(FeatureFlags.FLAGS_PREF_NAME, 0).edit();
                    if (value == debugFlag.defaultValue) {
                        editorEdit.remove(key).apply();
                    } else {
                        editorEdit.putBoolean(key, value).apply();
                    }
                    FlagTogglerPrefUi.this.updateMenu();
                }
            }
        }

        @Override // androidx.preference.PreferenceDataStore
        public boolean getBoolean(String key, boolean defaultValue) {
            for (FeatureFlags.DebugFlag debugFlag : FeatureFlags.getDebugFlags()) {
                if (debugFlag.key.equals(key)) {
                    return FlagTogglerPrefUi.this.mContext.getSharedPreferences(FeatureFlags.FLAGS_PREF_NAME, 0).getBoolean(key, debugFlag.defaultValue);
                }
            }
            return defaultValue;
        }
    };
    private final PreferenceFragmentCompat mFragment;
    private final SharedPreferences mSharedPreferences;

    public FlagTogglerPrefUi(PreferenceFragmentCompat fragment) {
        this.mFragment = fragment;
        FragmentActivity activity = fragment.getActivity();
        this.mContext = activity;
        this.mSharedPreferences = activity.getSharedPreferences(FeatureFlags.FLAGS_PREF_NAME, 0);
    }

    public void applyTo(PreferenceGroup parent) {
        for (FeatureFlags.DebugFlag debugFlag : FeatureFlags.getDebugFlags()) {
            SwitchPreference switchPreference = new SwitchPreference(this.mContext);
            switchPreference.setKey(debugFlag.key);
            switchPreference.setDefaultValue(Boolean.valueOf(debugFlag.defaultValue));
            switchPreference.setChecked(getFlagStateFromSharedPrefs(debugFlag));
            switchPreference.setTitle(debugFlag.key);
            updateSummary(switchPreference, debugFlag);
            switchPreference.setPreferenceDataStore(this.mDataStore);
            parent.addPreference(switchPreference);
        }
        updateMenu();
    }

    private void updateSummary(SwitchPreference switchPreference, FeatureFlags.DebugFlag flag) {
        String str = flag.defaultValue ? "" : "<b>OVERRIDDEN</b><br>";
        String str2 = flag.defaultValue ? "<b>OVERRIDDEN</b><br>" : "";
        switchPreference.setSummaryOn(Html.fromHtml(str + flag.description));
        switchPreference.setSummaryOff(Html.fromHtml(str2 + flag.description));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMenu() {
        this.mFragment.setHasOptionsMenu(anyChanged());
        this.mFragment.getActivity().invalidateOptionsMenu();
    }

    public void onCreateOptionsMenu(Menu menu) {
        if (anyChanged()) {
            menu.add(0, R.id.menu_apply_flags, 0, "Apply").setShowAsAction(2);
        }
    }

    public void onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.menu_apply_flags) {
            this.mSharedPreferences.edit().commit();
            Log.e(TAG, "Killing launcher process " + Process.myPid() + " to apply new flag values");
            System.exit(0);
        }
    }

    public void onStop() {
        if (anyChanged()) {
            ToastViewUtils.makeText(this.mContext, "Flag won't be applied until you restart launcher", 3000L).show();
        }
    }

    private boolean getFlagStateFromSharedPrefs(FeatureFlags.DebugFlag flag) {
        return this.mDataStore.getBoolean(flag.key, flag.defaultValue);
    }

    private boolean anyChanged() {
        for (FeatureFlags.DebugFlag debugFlag : FeatureFlags.getDebugFlags()) {
            if (getFlagStateFromSharedPrefs(debugFlag) != debugFlag.get()) {
                return true;
            }
        }
        return false;
    }
}

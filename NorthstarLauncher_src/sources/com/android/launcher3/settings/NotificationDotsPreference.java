package com.android.launcher3.settings;

import android.R;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.View;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.util.SecureSettingsObserver;
import com.mega.nexus.content.pm.MegaPackageManager;

/* JADX INFO: loaded from: classes.dex */
public class NotificationDotsPreference extends Preference implements SecureSettingsObserver.OnChangeListener {
    private static final String NOTIFICATION_ENABLED_LISTENERS = "enabled_notification_listeners";
    private boolean mWidgetFrameVisible;

    public NotificationDotsPreference(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.mWidgetFrameVisible = false;
    }

    public NotificationDotsPreference(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mWidgetFrameVisible = false;
    }

    public NotificationDotsPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mWidgetFrameVisible = false;
    }

    public NotificationDotsPreference(Context context) {
        super(context);
        this.mWidgetFrameVisible = false;
    }

    private void setWidgetFrameVisible(boolean isVisible) {
        if (this.mWidgetFrameVisible != isVisible) {
            this.mWidgetFrameVisible = isVisible;
            notifyChanged();
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder holder) {
        super.onBindViewHolder(holder);
        View viewFindViewById = holder.findViewById(R.id.widget_frame);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(this.mWidgetFrameVisible ? 0 : 8);
        }
    }

    @Override // com.android.launcher3.util.SecureSettingsObserver.OnChangeListener
    public void onSettingsChanged(boolean enabled) {
        int i = enabled ? com.android.launcher3.R.string.notification_dots_desc_on : com.android.launcher3.R.string.notification_dots_desc_off;
        boolean z = true;
        if (enabled) {
            String string = Settings.Secure.getString(getContext().getContentResolver(), NOTIFICATION_ENABLED_LISTENERS);
            ComponentName componentName = new ComponentName(getContext(), (Class<?>) NotificationListener.class);
            if (string == null || (!string.contains(componentName.flattenToString()) && !string.contains(componentName.flattenToShortString()))) {
                z = false;
            }
            if (!z) {
                i = com.android.launcher3.R.string.title_missing_notification_access;
            }
        }
        setWidgetFrameVisible(!z);
        setFragment(z ? null : NotificationAccessConfirmation.class.getName());
        setSummary(i);
    }

    public static class NotificationAccessConfirmation extends DialogFragment implements DialogInterface.OnClickListener {
        @Override // androidx.fragment.app.DialogFragment
        public Dialog onCreateDialog(Bundle savedInstanceState) {
            FragmentActivity activity = getActivity();
            return new AlertDialog.Builder(activity).setTitle(com.android.launcher3.R.string.title_missing_notification_access).setMessage(activity.getString(com.android.launcher3.R.string.msg_missing_notification_access, activity.getString(com.android.launcher3.R.string.derived_app_name))).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(com.android.launcher3.R.string.title_change_settings, this).create();
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ComponentName componentName = new ComponentName(getActivity(), (Class<?>) NotificationListener.class);
            Bundle bundle = new Bundle();
            bundle.putString(SettingsActivity.EXTRA_FRAGMENT_ARG_KEY, componentName.flattenToString());
            getActivity().startActivity(new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS").addFlags(MegaPackageManager.MATCH_DEBUG_TRIAGED_MISSING).putExtra(SettingsActivity.EXTRA_FRAGMENT_ARG_KEY, componentName.flattenToString()).putExtra(SettingsActivity.EXTRA_SHOW_FRAGMENT_ARGS, bundle));
        }
    }
}

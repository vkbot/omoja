package com.android.launcher3.activity.model;

import android.content.Context;
import android.content.SharedPreferences;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class PrivacyDataSp {
    private static final String PRIVACY_POLICY = "privacy_policy_sp";
    private static final String PRIVACY_SHOW_TAG = "privacy_policy_sp";
    private static PrivacyDataSp sPrivacyDataSp;
    private SharedPreferences.Editor mPrivacyEditor;
    private SharedPreferences mPrivacySp;

    public static synchronized PrivacyDataSp getInstance() {
        if (sPrivacyDataSp == null) {
            sPrivacyDataSp = new PrivacyDataSp();
        }
        return sPrivacyDataSp;
    }

    private PrivacyDataSp() {
    }

    public void initData(Context context) {
        if (this.mPrivacySp == null) {
            this.mPrivacySp = context.getSharedPreferences("privacy_policy_sp", 0);
        }
    }

    public void notifyShowPrivacy(boolean show) {
        MLog.d("notifyShowPrivacy " + show);
        SharedPreferences.Editor editorEdit = this.mPrivacySp.edit();
        this.mPrivacyEditor = editorEdit;
        editorEdit.clear();
        this.mPrivacyEditor.putBoolean("privacy_policy_sp", show);
        this.mPrivacyEditor.apply();
    }

    public boolean isShowPrivacy() {
        boolean z = this.mPrivacySp.getBoolean("privacy_policy_sp", true);
        MLog.d("isShowPrivacy " + z);
        return z;
    }
}

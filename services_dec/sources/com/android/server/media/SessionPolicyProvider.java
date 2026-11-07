package com.android.server.media;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public abstract class SessionPolicyProvider {
    static final int SESSION_POLICY_IGNORE_BUTTON_RECEIVER = 1;
    static final int SESSION_POLICY_IGNORE_BUTTON_SESSION = 2;

    @Retention(RetentionPolicy.SOURCE)
    @interface SessionPolicy {
    }

    int getSessionPoliciesForApplication(int uid, String packageName) {
        return 0;
    }
}

package com.android.server.integrity.model;

/* JADX INFO: loaded from: classes.dex */
public class RuleMetadata {
    private final String mRuleProvider;
    private final String mVersion;

    public RuleMetadata(String ruleProvider, String version) {
        this.mRuleProvider = ruleProvider;
        this.mVersion = version;
    }

    public String getRuleProvider() {
        return this.mRuleProvider;
    }

    public String getVersion() {
        return this.mVersion;
    }
}

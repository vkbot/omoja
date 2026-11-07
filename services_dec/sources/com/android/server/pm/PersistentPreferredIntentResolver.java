package com.android.server.pm;

import android.content.IntentFilter;
import com.android.server.IntentResolver;

/* JADX INFO: loaded from: classes.dex */
public class PersistentPreferredIntentResolver extends IntentResolver<PersistentPreferredActivity, PersistentPreferredActivity> {
    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.android.server.IntentResolver
    public PersistentPreferredActivity[] newArray(int size) {
        return new PersistentPreferredActivity[size];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.server.IntentResolver
    public IntentFilter getIntentFilter(PersistentPreferredActivity input) {
        return input;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.server.IntentResolver
    public boolean isPackageForFilter(String packageName, PersistentPreferredActivity filter) {
        return packageName.equals(filter.mComponent.getPackageName());
    }
}

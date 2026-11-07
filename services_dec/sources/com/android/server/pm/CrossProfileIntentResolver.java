package com.android.server.pm;

import android.content.IntentFilter;
import com.android.server.IntentResolver;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class CrossProfileIntentResolver extends IntentResolver<CrossProfileIntentFilter, CrossProfileIntentFilter> {
    CrossProfileIntentResolver() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.android.server.IntentResolver
    public CrossProfileIntentFilter[] newArray(int size) {
        return new CrossProfileIntentFilter[size];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.server.IntentResolver
    public boolean isPackageForFilter(String packageName, CrossProfileIntentFilter filter) {
        return false;
    }

    @Override // com.android.server.IntentResolver
    protected void sortResults(List<CrossProfileIntentFilter> results) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.server.IntentResolver
    public IntentFilter getIntentFilter(CrossProfileIntentFilter input) {
        return input;
    }
}

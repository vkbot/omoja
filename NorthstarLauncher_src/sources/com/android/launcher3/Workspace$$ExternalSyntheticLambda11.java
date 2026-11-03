package com.android.launcher3;

import com.android.launcher3.model.data.WorkspaceItemInfo;
import java.util.HashSet;
import java.util.function.Predicate;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Workspace$$ExternalSyntheticLambda11 implements Predicate {
    public final /* synthetic */ HashSet f$0;

    public /* synthetic */ Workspace$$ExternalSyntheticLambda11(HashSet hashSet) {
        this.f$0 = hashSet;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return this.f$0.contains((WorkspaceItemInfo) obj);
    }
}

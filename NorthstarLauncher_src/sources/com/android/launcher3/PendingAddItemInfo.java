package com.android.launcher3;

import android.content.ComponentName;
import com.android.launcher3.model.data.ItemInfo;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public class PendingAddItemInfo extends ItemInfo {
    public ComponentName componentName;

    @Override // com.android.launcher3.model.data.ItemInfo
    protected String dumpProperties() {
        return super.dumpProperties() + " componentName=" + this.componentName;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public ItemInfo makeShallowCopy() {
        PendingAddItemInfo pendingAddItemInfo = new PendingAddItemInfo();
        pendingAddItemInfo.copyFrom(this);
        pendingAddItemInfo.componentName = this.componentName;
        return pendingAddItemInfo;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public ComponentName getTargetComponent() {
        return (ComponentName) Optional.ofNullable(super.getTargetComponent()).orElse(this.componentName);
    }
}

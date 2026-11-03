package com.android.launcher3.model.data;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class PackageItemInfo extends ItemInfoWithIcon {
    public String packageName;

    public PackageItemInfo(String packageName) {
        this.packageName = packageName;
        this.itemType = -1;
    }

    public PackageItemInfo(PackageItemInfo copy) {
        this.packageName = copy.packageName;
        this.itemType = -1;
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon, com.android.launcher3.model.data.ItemInfo
    protected String dumpProperties() {
        return super.dumpProperties() + " packageName=" + this.packageName;
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon
    /* JADX INFO: renamed from: clone */
    public PackageItemInfo mo125clone() {
        return new PackageItemInfo(this);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        return Objects.equals(this.packageName, ((PackageItemInfo) o).packageName);
    }

    public int hashCode() {
        return Objects.hash(this.packageName);
    }
}

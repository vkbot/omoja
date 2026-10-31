package org.apache.commons.net.util;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class SubnetUtils$SubnetAddressStringIterator implements Iterator<String> {
    private int currentAddress;
    private final SubnetUtils$SubnetInfo subnetInfo;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private SubnetUtils$SubnetAddressStringIterator(SubnetUtils$SubnetInfo subnetUtils$SubnetInfo) {
        this.subnetInfo = subnetUtils$SubnetInfo;
        this.currentAddress = SubnetUtils$SubnetInfo.access$100(subnetUtils$SubnetInfo);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.subnetInfo.getAddressCountLong() > 0 && this.currentAddress <= SubnetUtils$SubnetInfo.access$200(this.subnetInfo);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    /* JADX INFO: renamed from: next, reason: avoid collision after fix types in other method */
    public String next2() {
        int i = this.currentAddress;
        this.currentAddress = i + 1;
        return SubnetUtils.access$400(SubnetUtils.access$300(i));
    }

    public /* synthetic */ SubnetUtils$SubnetAddressStringIterator(SubnetUtils$SubnetInfo subnetUtils$SubnetInfo, SubnetUtils$1 subnetUtils$1) {
        this(subnetUtils$SubnetInfo);
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ String next() {
        return next2();
    }
}

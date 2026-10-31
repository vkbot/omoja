package org.apache.commons.net.util;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class SubnetUtils$SubnetAddressStringIterable implements Iterable<String> {
    private final SubnetUtils$SubnetInfo subnetInfo;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private SubnetUtils$SubnetAddressStringIterable(SubnetUtils$SubnetInfo subnetUtils$SubnetInfo) {
        this.subnetInfo = subnetUtils$SubnetInfo;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Iterable
    public Iterator<String> iterator() {
        return new SubnetUtils$SubnetAddressStringIterator(this.subnetInfo, null);
    }

    public /* synthetic */ SubnetUtils$SubnetAddressStringIterable(SubnetUtils$SubnetInfo subnetUtils$SubnetInfo, SubnetUtils$1 subnetUtils$1) {
        this(subnetUtils$SubnetInfo);
    }
}

package com.android.server.pm;

import android.util.ArrayMap;
import com.android.internal.util.ArrayUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class PackageKeySetData {
    static final long KEYSET_UNASSIGNED = -1;
    private final ArrayMap<String, Long> mKeySetAliases;
    private long mProperSigningKeySet;
    private long[] mUpgradeKeySets;

    PackageKeySetData() {
        this.mKeySetAliases = new ArrayMap<>();
        this.mProperSigningKeySet = -1L;
    }

    PackageKeySetData(PackageKeySetData original) {
        this.mKeySetAliases = new ArrayMap<>();
        this.mProperSigningKeySet = original.mProperSigningKeySet;
        this.mUpgradeKeySets = ArrayUtils.cloneOrNull(original.mUpgradeKeySets);
        this.mKeySetAliases.putAll((ArrayMap<? extends String, ? extends Long>) original.mKeySetAliases);
    }

    protected void setProperSigningKeySet(long ks) {
        this.mProperSigningKeySet = ks;
    }

    protected long getProperSigningKeySet() {
        return this.mProperSigningKeySet;
    }

    protected void addUpgradeKeySet(String alias) {
        if (alias == null) {
            return;
        }
        Long ks = this.mKeySetAliases.get(alias);
        if (ks != null) {
            this.mUpgradeKeySets = ArrayUtils.appendLong(this.mUpgradeKeySets, ks.longValue());
            return;
        }
        throw new IllegalArgumentException("Upgrade keyset alias " + alias + "does not refer to a defined keyset alias!");
    }

    protected void addUpgradeKeySetById(long ks) {
        this.mUpgradeKeySets = ArrayUtils.appendLong(this.mUpgradeKeySets, ks);
    }

    protected void removeAllUpgradeKeySets() {
        this.mUpgradeKeySets = null;
    }

    protected long[] getUpgradeKeySets() {
        return this.mUpgradeKeySets;
    }

    protected ArrayMap<String, Long> getAliases() {
        return this.mKeySetAliases;
    }

    protected void setAliases(Map<String, Long> newAliases) {
        removeAllDefinedKeySets();
        this.mKeySetAliases.putAll(newAliases);
    }

    protected void addDefinedKeySet(long ks, String alias) {
        this.mKeySetAliases.put(alias, Long.valueOf(ks));
    }

    protected void removeAllDefinedKeySets() {
        this.mKeySetAliases.erase();
    }

    protected boolean isUsingDefinedKeySets() {
        return this.mKeySetAliases.size() > 0;
    }

    protected boolean isUsingUpgradeKeySets() {
        long[] jArr = this.mUpgradeKeySets;
        return jArr != null && jArr.length > 0;
    }
}

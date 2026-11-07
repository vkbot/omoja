package com.android.server.pm;

import android.content.pm.PackageParser;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Base64;
import android.util.LongSparseArray;
import android.util.Slog;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.PublicKey;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class KeySetManagerService {
    public static final int CURRENT_VERSION = 1;
    public static final int FIRST_VERSION = 1;
    public static final long KEYSET_NOT_FOUND = -1;
    protected static final long PUBLIC_KEY_NOT_FOUND = -1;
    static final String TAG = "KeySetManagerService";
    private final ArrayMap<String, PackageSetting> mPackages;
    private long lastIssuedKeySetId = 0;
    private long lastIssuedKeyId = 0;
    private final LongSparseArray<KeySetHandle> mKeySets = new LongSparseArray<>();
    private final LongSparseArray<PublicKeyHandle> mPublicKeys = new LongSparseArray<>();
    protected final LongSparseArray<ArraySet<Long>> mKeySetMapping = new LongSparseArray<>();

    class PublicKeyHandle {
        private final long mId;
        private final PublicKey mKey;
        private int mRefCount;

        public PublicKeyHandle(long id, PublicKey key) {
            this.mId = id;
            this.mRefCount = 1;
            this.mKey = key;
        }

        private PublicKeyHandle(long id, int refCount, PublicKey key) {
            this.mId = id;
            this.mRefCount = refCount;
            this.mKey = key;
        }

        public long getId() {
            return this.mId;
        }

        public PublicKey getKey() {
            return this.mKey;
        }

        public int getRefCountLPr() {
            return this.mRefCount;
        }

        public void incrRefCountLPw() {
            this.mRefCount++;
        }

        public long decrRefCountLPw() {
            int i = this.mRefCount - 1;
            this.mRefCount = i;
            return i;
        }
    }

    public KeySetManagerService(ArrayMap<String, PackageSetting> packages) {
        this.mPackages = packages;
    }

    public boolean packageIsSignedByLPr(String packageName, KeySetHandle ks) {
        PackageSetting pkg = this.mPackages.get(packageName);
        if (pkg == null) {
            throw new NullPointerException("Invalid package name");
        }
        if (pkg.keySetData == null) {
            throw new NullPointerException("Package has no KeySet data");
        }
        long id = getIdByKeySetLPr(ks);
        if (id == -1) {
            return false;
        }
        ArraySet<Long> pkgKeys = this.mKeySetMapping.get(pkg.keySetData.getProperSigningKeySet());
        ArraySet<Long> testKeys = this.mKeySetMapping.get(id);
        return pkgKeys.containsAll(testKeys);
    }

    public boolean packageIsSignedByExactlyLPr(String packageName, KeySetHandle ks) {
        PackageSetting pkg = this.mPackages.get(packageName);
        if (pkg == null) {
            throw new NullPointerException("Invalid package name");
        }
        if (pkg.keySetData == null || pkg.keySetData.getProperSigningKeySet() == -1) {
            throw new NullPointerException("Package has no KeySet data");
        }
        long id = getIdByKeySetLPr(ks);
        if (id == -1) {
            return false;
        }
        ArraySet<Long> pkgKeys = this.mKeySetMapping.get(pkg.keySetData.getProperSigningKeySet());
        ArraySet<Long> testKeys = this.mKeySetMapping.get(id);
        return pkgKeys.equals(testKeys);
    }

    public void assertScannedPackageValid(AndroidPackage pkg) throws PackageManagerException {
        if (pkg == null || pkg.getPackageName() == null) {
            throw new PackageManagerException(-2, "Passed invalid package to keyset validation.");
        }
        ArraySet<PublicKey> signingKeys = pkg.getSigningDetails().publicKeys;
        if (signingKeys == null || signingKeys.size() <= 0 || signingKeys.contains(null)) {
            throw new PackageManagerException(-2, "Package has invalid signing-key-set.");
        }
        Map<String, ArraySet<PublicKey>> definedMapping = pkg.getKeySetMapping();
        if (definedMapping != null) {
            if (definedMapping.containsKey(null) || definedMapping.containsValue(null)) {
                throw new PackageManagerException(-2, "Package has null defined key set.");
            }
            for (ArraySet<PublicKey> value : definedMapping.values()) {
                if (value.size() <= 0 || value.contains(null)) {
                    throw new PackageManagerException(-2, "Package has null/no public keys for defined key-sets.");
                }
            }
        }
        Set<String> upgradeAliases = pkg.getUpgradeKeySets();
        if (upgradeAliases != null) {
            if (definedMapping == null || !definedMapping.keySet().containsAll(upgradeAliases)) {
                throw new PackageManagerException(-2, "Package has upgrade-key-sets without corresponding definitions.");
            }
        }
    }

    public void addScannedPackageLPw(AndroidPackage pkg) {
        Objects.requireNonNull(pkg, "Attempted to add null pkg to ksms.");
        Objects.requireNonNull(pkg.getPackageName(), "Attempted to add null pkg to ksms.");
        PackageSetting ps = this.mPackages.get(pkg.getPackageName());
        Objects.requireNonNull(ps, "pkg: " + pkg.getPackageName() + "does not have a corresponding entry in mPackages.");
        addSigningKeySetToPackageLPw(ps, pkg.getSigningDetails().publicKeys);
        if (pkg.getKeySetMapping() != null) {
            addDefinedKeySetsToPackageLPw(ps, pkg.getKeySetMapping());
            if (pkg.getUpgradeKeySets() != null) {
                addUpgradeKeySetsToPackageLPw(ps, pkg.getUpgradeKeySets());
            }
        }
    }

    void addSigningKeySetToPackageLPw(PackageSetting pkg, ArraySet<PublicKey> signingKeys) {
        long signingKeySetId = pkg.keySetData.getProperSigningKeySet();
        if (signingKeySetId != -1) {
            ArraySet<PublicKey> existingKeys = getPublicKeysFromKeySetLPr(signingKeySetId);
            if (existingKeys != null && existingKeys.equals(signingKeys)) {
                return;
            } else {
                decrementKeySetLPw(signingKeySetId);
            }
        }
        KeySetHandle ks = addKeySetLPw(signingKeys);
        long id = ks.getId();
        pkg.keySetData.setProperSigningKeySet(id);
    }

    private long getIdByKeySetLPr(KeySetHandle ks) {
        for (int keySetIndex = 0; keySetIndex < this.mKeySets.size(); keySetIndex++) {
            KeySetHandle value = this.mKeySets.valueAt(keySetIndex);
            if (ks.equals(value)) {
                return this.mKeySets.keyAt(keySetIndex);
            }
        }
        return -1L;
    }

    void addDefinedKeySetsToPackageLPw(PackageSetting pkg, Map<String, ArraySet<PublicKey>> definedMapping) {
        ArrayMap<String, Long> prevDefinedKeySets = pkg.keySetData.getAliases();
        Map<String, Long> newKeySetAliases = new ArrayMap<>();
        for (Map.Entry<String, ArraySet<PublicKey>> entry : definedMapping.entrySet()) {
            String alias = entry.getKey();
            ArraySet<PublicKey> pubKeys = entry.getValue();
            if (alias != null && pubKeys != null && pubKeys.size() > 0) {
                KeySetHandle ks = addKeySetLPw(pubKeys);
                newKeySetAliases.put(alias, Long.valueOf(ks.getId()));
            }
        }
        int prevDefSize = prevDefinedKeySets.size();
        for (int i = 0; i < prevDefSize; i++) {
            decrementKeySetLPw(prevDefinedKeySets.valueAt(i).longValue());
        }
        pkg.keySetData.removeAllUpgradeKeySets();
        pkg.keySetData.setAliases(newKeySetAliases);
    }

    void addUpgradeKeySetsToPackageLPw(PackageSetting pkg, Set<String> upgradeAliases) {
        for (String upgradeAlias : upgradeAliases) {
            pkg.keySetData.addUpgradeKeySet(upgradeAlias);
        }
    }

    public KeySetHandle getKeySetByAliasAndPackageNameLPr(String packageName, String alias) {
        PackageSetting p = this.mPackages.get(packageName);
        if (p == null || p.keySetData == null) {
            return null;
        }
        Long keySetId = p.keySetData.getAliases().get(alias);
        if (keySetId == null) {
            throw new IllegalArgumentException("Unknown KeySet alias: " + alias);
        }
        return this.mKeySets.get(keySetId.longValue());
    }

    public boolean isIdValidKeySetId(long id) {
        return this.mKeySets.get(id) != null;
    }

    public boolean shouldCheckUpgradeKeySetLocked(PackageSettingBase oldPs, int scanFlags) {
        if (oldPs == null || (scanFlags & 512) != 0 || oldPs.isSharedUser() || !oldPs.keySetData.isUsingUpgradeKeySets()) {
            return false;
        }
        long[] upgradeKeySets = oldPs.keySetData.getUpgradeKeySets();
        for (int i = 0; i < upgradeKeySets.length; i++) {
            if (!isIdValidKeySetId(upgradeKeySets[i])) {
                StringBuilder sb = new StringBuilder();
                sb.append("Package ");
                sb.append(oldPs.name != null ? oldPs.name : "<null>");
                sb.append(" contains upgrade-key-set reference to unknown key-set: ");
                sb.append(upgradeKeySets[i]);
                sb.append(" reverting to signatures check.");
                Slog.wtf(TAG, sb.toString());
                return false;
            }
        }
        return true;
    }

    public boolean checkUpgradeKeySetLocked(PackageSettingBase oldPS, AndroidPackage pkg) {
        long[] upgradeKeySets = oldPS.keySetData.getUpgradeKeySets();
        for (long j : upgradeKeySets) {
            Set<PublicKey> upgradeSet = getPublicKeysFromKeySetLPr(j);
            if (upgradeSet != null && pkg.getSigningDetails().publicKeys.containsAll(upgradeSet)) {
                return true;
            }
        }
        return false;
    }

    public ArraySet<PublicKey> getPublicKeysFromKeySetLPr(long id) {
        ArraySet<Long> pkIds = this.mKeySetMapping.get(id);
        if (pkIds == null) {
            return null;
        }
        ArraySet<PublicKey> mPubKeys = new ArraySet<>();
        int pkSize = pkIds.size();
        for (int i = 0; i < pkSize; i++) {
            mPubKeys.add(this.mPublicKeys.get(pkIds.valueAt(i).longValue()).getKey());
        }
        return mPubKeys;
    }

    public KeySetHandle getSigningKeySetByPackageNameLPr(String packageName) {
        PackageSetting p = this.mPackages.get(packageName);
        if (p == null || p.keySetData == null || p.keySetData.getProperSigningKeySet() == -1) {
            return null;
        }
        return this.mKeySets.get(p.keySetData.getProperSigningKeySet());
    }

    private KeySetHandle addKeySetLPw(ArraySet<PublicKey> keys) {
        if (keys == null || keys.size() == 0) {
            throw new IllegalArgumentException("Cannot add an empty set of keys!");
        }
        ArraySet<Long> addedKeyIds = new ArraySet<>(keys.size());
        int kSize = keys.size();
        for (int i = 0; i < kSize; i++) {
            addedKeyIds.add(Long.valueOf(addPublicKeyLPw(keys.valueAt(i))));
        }
        long existingKeySetId = getIdFromKeyIdsLPr(addedKeyIds);
        if (existingKeySetId != -1) {
            for (int i2 = 0; i2 < kSize; i2++) {
                decrementPublicKeyLPw(addedKeyIds.valueAt(i2).longValue());
            }
            KeySetHandle ks = this.mKeySets.get(existingKeySetId);
            ks.incrRefCountLPw();
            return ks;
        }
        long id = getFreeKeySetIDLPw();
        KeySetHandle ks2 = new KeySetHandle(id);
        this.mKeySets.put(id, ks2);
        this.mKeySetMapping.put(id, addedKeyIds);
        return ks2;
    }

    private void decrementKeySetLPw(long id) {
        KeySetHandle ks = this.mKeySets.get(id);
        if (ks != null && ks.decrRefCountLPw() <= 0) {
            ArraySet<Long> pubKeys = this.mKeySetMapping.get(id);
            int pkSize = pubKeys.size();
            for (int i = 0; i < pkSize; i++) {
                decrementPublicKeyLPw(pubKeys.valueAt(i).longValue());
            }
            this.mKeySets.delete(id);
            this.mKeySetMapping.delete(id);
        }
    }

    private void decrementPublicKeyLPw(long id) {
        PublicKeyHandle pk = this.mPublicKeys.get(id);
        if (pk != null && pk.decrRefCountLPw() <= 0) {
            this.mPublicKeys.delete(id);
        }
    }

    private long addPublicKeyLPw(PublicKey key) {
        Objects.requireNonNull(key, "Cannot add null public key!");
        long id = getIdForPublicKeyLPr(key);
        if (id != -1) {
            this.mPublicKeys.get(id).incrRefCountLPw();
            return id;
        }
        long id2 = getFreePublicKeyIdLPw();
        this.mPublicKeys.put(id2, new PublicKeyHandle(id2, key));
        return id2;
    }

    private long getIdFromKeyIdsLPr(Set<Long> publicKeyIds) {
        for (int keyMapIndex = 0; keyMapIndex < this.mKeySetMapping.size(); keyMapIndex++) {
            ArraySet<Long> value = this.mKeySetMapping.valueAt(keyMapIndex);
            if (value.equals(publicKeyIds)) {
                return this.mKeySetMapping.keyAt(keyMapIndex);
            }
        }
        return -1L;
    }

    private long getIdForPublicKeyLPr(PublicKey k) {
        String encodedPublicKey = new String(k.getEncoded());
        for (int publicKeyIndex = 0; publicKeyIndex < this.mPublicKeys.size(); publicKeyIndex++) {
            PublicKey value = this.mPublicKeys.valueAt(publicKeyIndex).getKey();
            String encodedExistingKey = new String(value.getEncoded());
            if (encodedPublicKey.equals(encodedExistingKey)) {
                return this.mPublicKeys.keyAt(publicKeyIndex);
            }
        }
        return -1L;
    }

    private long getFreeKeySetIDLPw() {
        long j = this.lastIssuedKeySetId + 1;
        this.lastIssuedKeySetId = j;
        return j;
    }

    private long getFreePublicKeyIdLPw() {
        long j = this.lastIssuedKeyId + 1;
        this.lastIssuedKeyId = j;
        return j;
    }

    public void removeAppKeySetDataLPw(String packageName) {
        PackageSetting pkg = this.mPackages.get(packageName);
        Objects.requireNonNull(pkg, "pkg name: " + packageName + "does not have a corresponding entry in mPackages.");
        long signingKeySetId = pkg.keySetData.getProperSigningKeySet();
        decrementKeySetLPw(signingKeySetId);
        ArrayMap<String, Long> definedKeySets = pkg.keySetData.getAliases();
        for (int i = 0; i < definedKeySets.size(); i++) {
            decrementKeySetLPw(definedKeySets.valueAt(i).longValue());
        }
        clearPackageKeySetDataLPw(pkg);
    }

    private void clearPackageKeySetDataLPw(PackageSetting pkg) {
        pkg.keySetData.setProperSigningKeySet(-1L);
        pkg.keySetData.removeAllDefinedKeySets();
        pkg.keySetData.removeAllUpgradeKeySets();
    }

    public String encodePublicKey(PublicKey k) throws IOException {
        return new String(Base64.encode(k.getEncoded(), 2));
    }

    public void dumpLPr(PrintWriter pw, String packageName, DumpState dumpState) {
        String str = packageName;
        boolean printedHeader = false;
        for (Map.Entry<String, PackageSetting> e : this.mPackages.entrySet()) {
            String keySetPackage = e.getKey();
            if (str == null || str.equals(keySetPackage)) {
                if (!printedHeader) {
                    if (dumpState.onTitlePrinted()) {
                        pw.println();
                    }
                    pw.println("Key Set Manager:");
                    printedHeader = true;
                }
                PackageSetting pkg = e.getValue();
                pw.print("  [");
                pw.print(keySetPackage);
                pw.println("]");
                if (pkg.keySetData != null) {
                    boolean printedLabel = false;
                    for (Map.Entry<String, Long> entry : pkg.keySetData.getAliases().entrySet()) {
                        if (!printedLabel) {
                            pw.print("      KeySets Aliases: ");
                            printedLabel = true;
                        } else {
                            pw.print(", ");
                        }
                        pw.print(entry.getKey());
                        pw.print('=');
                        pw.print(Long.toString(entry.getValue().longValue()));
                    }
                    if (printedLabel) {
                        pw.println("");
                    }
                    boolean printedLabel2 = false;
                    if (pkg.keySetData.isUsingDefinedKeySets()) {
                        ArrayMap<String, Long> definedKeySets = pkg.keySetData.getAliases();
                        int dksSize = definedKeySets.size();
                        for (int i = 0; i < dksSize; i++) {
                            if (!printedLabel2) {
                                pw.print("      Defined KeySets: ");
                                printedLabel2 = true;
                            } else {
                                pw.print(", ");
                            }
                            pw.print(Long.toString(definedKeySets.valueAt(i).longValue()));
                        }
                    }
                    if (printedLabel2) {
                        pw.println("");
                    }
                    boolean printedLabel3 = false;
                    long signingKeySet = pkg.keySetData.getProperSigningKeySet();
                    pw.print("      Signing KeySets: ");
                    pw.print(Long.toString(signingKeySet));
                    pw.println("");
                    if (pkg.keySetData.isUsingUpgradeKeySets()) {
                        for (long keySetId : pkg.keySetData.getUpgradeKeySets()) {
                            if (!printedLabel3) {
                                pw.print("      Upgrade KeySets: ");
                                printedLabel3 = true;
                            } else {
                                pw.print(", ");
                            }
                            pw.print(Long.toString(keySetId));
                        }
                    }
                    if (printedLabel3) {
                        pw.println("");
                    }
                }
                str = packageName;
            }
        }
    }

    void writeKeySetManagerServiceLPr(XmlSerializer serializer) throws IOException {
        serializer.startTag(null, "keyset-settings");
        serializer.attribute(null, "version", Integer.toString(1));
        writePublicKeysLPr(serializer);
        writeKeySetsLPr(serializer);
        serializer.startTag(null, "lastIssuedKeyId");
        serializer.attribute(null, "value", Long.toString(this.lastIssuedKeyId));
        serializer.endTag(null, "lastIssuedKeyId");
        serializer.startTag(null, "lastIssuedKeySetId");
        serializer.attribute(null, "value", Long.toString(this.lastIssuedKeySetId));
        serializer.endTag(null, "lastIssuedKeySetId");
        serializer.endTag(null, "keyset-settings");
    }

    void writePublicKeysLPr(XmlSerializer serializer) throws IOException {
        serializer.startTag(null, "keys");
        for (int pKeyIndex = 0; pKeyIndex < this.mPublicKeys.size(); pKeyIndex++) {
            long id = this.mPublicKeys.keyAt(pKeyIndex);
            PublicKeyHandle pkh = this.mPublicKeys.valueAt(pKeyIndex);
            String encodedKey = encodePublicKey(pkh.getKey());
            serializer.startTag(null, "public-key");
            serializer.attribute(null, "identifier", Long.toString(id));
            serializer.attribute(null, "value", encodedKey);
            serializer.endTag(null, "public-key");
        }
        serializer.endTag(null, "keys");
    }

    void writeKeySetsLPr(XmlSerializer serializer) throws IOException {
        serializer.startTag(null, "keysets");
        for (int keySetIndex = 0; keySetIndex < this.mKeySetMapping.size(); keySetIndex++) {
            long id = this.mKeySetMapping.keyAt(keySetIndex);
            ArraySet<Long> keys = this.mKeySetMapping.valueAt(keySetIndex);
            serializer.startTag(null, "keyset");
            serializer.attribute(null, "identifier", Long.toString(id));
            Iterator<Long> it = keys.iterator();
            while (it.hasNext()) {
                long keyId = it.next().longValue();
                serializer.startTag(null, "key-id");
                serializer.attribute(null, "identifier", Long.toString(keyId));
                serializer.endTag(null, "key-id");
            }
            serializer.endTag(null, "keyset");
        }
        serializer.endTag(null, "keysets");
    }

    void readKeySetsLPw(XmlPullParser parser, ArrayMap<Long, Integer> keySetRefCounts) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        String recordedVersionStr = parser.getAttributeValue(null, "version");
        if (recordedVersionStr == null) {
            while (true) {
                int type = parser.next();
                if (type == 1 || (type == 3 && parser.getDepth() <= outerDepth)) {
                    break;
                }
            }
            for (PackageSetting p : this.mPackages.values()) {
                clearPackageKeySetDataLPw(p);
            }
            return;
        }
        Integer.parseInt(recordedVersionStr);
        while (true) {
            int type2 = parser.next();
            if (type2 == 1 || (type2 == 3 && parser.getDepth() <= outerDepth)) {
                break;
            }
            if (type2 != 3 && type2 != 4) {
                String tagName = parser.getName();
                if (tagName.equals("keys")) {
                    readKeysLPw(parser);
                } else if (tagName.equals("keysets")) {
                    readKeySetListLPw(parser);
                } else if (tagName.equals("lastIssuedKeyId")) {
                    this.lastIssuedKeyId = Long.parseLong(parser.getAttributeValue(null, "value"));
                } else if (tagName.equals("lastIssuedKeySetId")) {
                    this.lastIssuedKeySetId = Long.parseLong(parser.getAttributeValue(null, "value"));
                }
            }
        }
        addRefCountsFromSavedPackagesLPw(keySetRefCounts);
    }

    void readKeysLPw(XmlPullParser parser) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        String tagName = parser.getName();
                        if (tagName.equals("public-key")) {
                            readPublicKeyLPw(parser);
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    void readKeySetListLPw(XmlPullParser parser) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        long currentKeySetId = 0;
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        String tagName = parser.getName();
                        if (tagName.equals("keyset")) {
                            String encodedID = parser.getAttributeValue(null, "identifier");
                            currentKeySetId = Long.parseLong(encodedID);
                            this.mKeySets.put(currentKeySetId, new KeySetHandle(currentKeySetId, 0));
                            this.mKeySetMapping.put(currentKeySetId, new ArraySet<>());
                        } else if (tagName.equals("key-id")) {
                            String encodedID2 = parser.getAttributeValue(null, "identifier");
                            long id = Long.parseLong(encodedID2);
                            this.mKeySetMapping.get(currentKeySetId).add(Long.valueOf(id));
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    void readPublicKeyLPw(XmlPullParser parser) throws XmlPullParserException {
        String encodedID = parser.getAttributeValue(null, "identifier");
        long identifier = Long.parseLong(encodedID);
        int refCount = 0;
        String encodedPublicKey = parser.getAttributeValue(null, "value");
        PublicKey pub = PackageParser.parsePublicKey(encodedPublicKey);
        if (pub != null) {
            PublicKeyHandle pkh = new PublicKeyHandle(identifier, refCount, pub);
            this.mPublicKeys.put(identifier, pkh);
        }
    }

    private void addRefCountsFromSavedPackagesLPw(ArrayMap<Long, Integer> keySetRefCounts) {
        int numRefCounts = keySetRefCounts.size();
        for (int i = 0; i < numRefCounts; i++) {
            KeySetHandle ks = this.mKeySets.get(keySetRefCounts.keyAt(i).longValue());
            if (ks == null) {
                Slog.wtf(TAG, "Encountered non-existent key-set reference when reading settings");
            } else {
                ks.setRefCountLPw(keySetRefCounts.valueAt(i).intValue());
            }
        }
        ArraySet<Long> orphanedKeySets = new ArraySet<>();
        int numKeySets = this.mKeySets.size();
        for (int i2 = 0; i2 < numKeySets; i2++) {
            if (this.mKeySets.valueAt(i2).getRefCountLPr() == 0) {
                Slog.wtf(TAG, "Encountered key-set w/out package references when reading settings");
                orphanedKeySets.add(Long.valueOf(this.mKeySets.keyAt(i2)));
            }
            ArraySet<Long> pubKeys = this.mKeySetMapping.valueAt(i2);
            int pkSize = pubKeys.size();
            for (int j = 0; j < pkSize; j++) {
                this.mPublicKeys.get(pubKeys.valueAt(j).longValue()).incrRefCountLPw();
            }
        }
        int numOrphans = orphanedKeySets.size();
        for (int i3 = 0; i3 < numOrphans; i3++) {
            decrementKeySetLPw(orphanedKeySets.valueAt(i3).longValue());
        }
    }
}

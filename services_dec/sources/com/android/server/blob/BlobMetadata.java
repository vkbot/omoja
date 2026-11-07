package com.android.server.blob;

import android.app.blob.BlobHandle;
import android.app.blob.LeaseInfo;
import android.content.Context;
import android.content.res.ResourceId;
import android.content.res.Resources;
import android.os.ParcelFileDescriptor;
import android.os.RevocableFileDescriptor;
import android.os.UserHandle;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.text.format.Formatter;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import android.util.SparseArray;
import android.util.StatsEvent;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.XmlUtils;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
class BlobMetadata {
    private File mBlobFile;
    private final BlobHandle mBlobHandle;
    private final long mBlobId;
    private final Context mContext;
    private final int mUserId;
    private final Object mMetadataLock = new Object();
    private final ArraySet<Committer> mCommitters = new ArraySet<>();
    private final ArraySet<Leasee> mLeasees = new ArraySet<>();
    private final ArrayMap<String, ArraySet<RevocableFileDescriptor>> mRevocableFds = new ArrayMap<>();

    BlobMetadata(Context context, long blobId, BlobHandle blobHandle, int userId) {
        this.mContext = context;
        this.mBlobId = blobId;
        this.mBlobHandle = blobHandle;
        this.mUserId = userId;
    }

    long getBlobId() {
        return this.mBlobId;
    }

    BlobHandle getBlobHandle() {
        return this.mBlobHandle;
    }

    int getUserId() {
        return this.mUserId;
    }

    void addOrReplaceCommitter(Committer committer) {
        synchronized (this.mMetadataLock) {
            this.mCommitters.remove(committer);
            this.mCommitters.add(committer);
        }
    }

    void setCommitters(ArraySet<Committer> committers) {
        synchronized (this.mMetadataLock) {
            this.mCommitters.clear();
            this.mCommitters.addAll((ArraySet<? extends Committer>) committers);
        }
    }

    void removeCommitter(final String packageName, final int uid) {
        synchronized (this.mMetadataLock) {
            this.mCommitters.removeIf(new Predicate() { // from class: com.android.server.blob.-$$Lambda$BlobMetadata$_Q3RdLQa7SD-hcTj9iyZbol_1jQ
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return BlobMetadata.lambda$removeCommitter$0(uid, packageName, (BlobMetadata.Committer) obj);
                }
            });
        }
    }

    static /* synthetic */ boolean lambda$removeCommitter$0(int uid, String packageName, Committer committer) {
        return committer.uid == uid && committer.packageName.equals(packageName);
    }

    void removeCommitter(Committer committer) {
        synchronized (this.mMetadataLock) {
            this.mCommitters.remove(committer);
        }
    }

    void removeCommittersFromUnknownPkgs(final SparseArray<String> knownPackages) {
        synchronized (this.mMetadataLock) {
            this.mCommitters.removeIf(new Predicate() { // from class: com.android.server.blob.-$$Lambda$BlobMetadata$ZLUtpaxm5vrphr-VF5zFTkZmuGk
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return BlobMetadata.lambda$removeCommittersFromUnknownPkgs$1(knownPackages, (BlobMetadata.Committer) obj);
                }
            });
        }
    }

    static /* synthetic */ boolean lambda$removeCommittersFromUnknownPkgs$1(SparseArray knownPackages, Committer committer) {
        return !committer.packageName.equals(knownPackages.get(committer.uid));
    }

    Committer getExistingCommitter(String packageName, int uid) {
        synchronized (this.mCommitters) {
            int size = this.mCommitters.size();
            for (int i = 0; i < size; i++) {
                Committer committer = this.mCommitters.valueAt(i);
                if (committer.uid == uid && committer.packageName.equals(packageName)) {
                    return committer;
                }
            }
            return null;
        }
    }

    void addOrReplaceLeasee(String callingPackage, int callingUid, int descriptionResId, CharSequence description, long leaseExpiryTimeMillis) {
        synchronized (this.mMetadataLock) {
            Leasee leasee = new Leasee(this.mContext, callingPackage, callingUid, descriptionResId, description, leaseExpiryTimeMillis);
            this.mLeasees.remove(leasee);
            this.mLeasees.add(leasee);
        }
    }

    void setLeasees(ArraySet<Leasee> leasees) {
        synchronized (this.mMetadataLock) {
            this.mLeasees.clear();
            this.mLeasees.addAll((ArraySet<? extends Leasee>) leasees);
        }
    }

    void removeLeasee(final String packageName, final int uid) {
        synchronized (this.mMetadataLock) {
            this.mLeasees.removeIf(new Predicate() { // from class: com.android.server.blob.-$$Lambda$BlobMetadata$ss6n7RYhTcjpj9A5JVhfktAFhAE
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return BlobMetadata.lambda$removeLeasee$2(uid, packageName, (BlobMetadata.Leasee) obj);
                }
            });
        }
    }

    static /* synthetic */ boolean lambda$removeLeasee$2(int uid, String packageName, Leasee leasee) {
        return leasee.uid == uid && leasee.packageName.equals(packageName);
    }

    void removeLeaseesFromUnknownPkgs(final SparseArray<String> knownPackages) {
        synchronized (this.mMetadataLock) {
            this.mLeasees.removeIf(new Predicate() { // from class: com.android.server.blob.-$$Lambda$BlobMetadata$LDMVKrrVY25j641vnzGpEybLu1s
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return BlobMetadata.lambda$removeLeaseesFromUnknownPkgs$3(knownPackages, (BlobMetadata.Leasee) obj);
                }
            });
        }
    }

    static /* synthetic */ boolean lambda$removeLeaseesFromUnknownPkgs$3(SparseArray knownPackages, Leasee leasee) {
        return !leasee.packageName.equals(knownPackages.get(leasee.uid));
    }

    void removeExpiredLeases() {
        synchronized (this.mMetadataLock) {
            this.mLeasees.removeIf(new Predicate() { // from class: com.android.server.blob.-$$Lambda$BlobMetadata$MUnc9wgCDd5MfqnaDF9igZmRNuA
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return BlobMetadata.lambda$removeExpiredLeases$4((BlobMetadata.Leasee) obj);
                }
            });
        }
    }

    static /* synthetic */ boolean lambda$removeExpiredLeases$4(Leasee leasee) {
        return !leasee.isStillValid();
    }

    boolean hasValidLeases() {
        synchronized (this.mMetadataLock) {
            int size = this.mLeasees.size();
            for (int i = 0; i < size; i++) {
                if (this.mLeasees.valueAt(i).isStillValid()) {
                    return true;
                }
            }
            return false;
        }
    }

    long getSize() {
        return getBlobFile().length();
    }

    boolean isAccessAllowedForCaller(String callingPackage, int callingUid) {
        if (getBlobHandle().isExpired()) {
            return false;
        }
        synchronized (this.mMetadataLock) {
            int size = this.mLeasees.size();
            for (int i = 0; i < size; i++) {
                Leasee leasee = this.mLeasees.valueAt(i);
                if (leasee.isStillValid() && leasee.equals(callingPackage, callingUid)) {
                    return true;
                }
            }
            int size2 = this.mCommitters.size();
            for (int i2 = 0; i2 < size2; i2++) {
                Committer committer = this.mCommitters.valueAt(i2);
                if (committer.equals(callingPackage, callingUid)) {
                    return true;
                }
                if (committer.blobAccessMode.isAccessAllowedForCaller(this.mContext, callingPackage, committer.packageName)) {
                    return true;
                }
            }
            return false;
        }
    }

    boolean isACommitter(String packageName, int uid) {
        boolean zIsAnAccessor;
        synchronized (this.mMetadataLock) {
            zIsAnAccessor = isAnAccessor(this.mCommitters, packageName, uid);
        }
        return zIsAnAccessor;
    }

    boolean isALeasee(String packageName, int uid) {
        boolean z;
        synchronized (this.mMetadataLock) {
            Leasee leasee = (Leasee) getAccessor(this.mLeasees, packageName, uid);
            z = leasee != null && leasee.isStillValid();
        }
        return z;
    }

    private static <T extends Accessor> boolean isAnAccessor(ArraySet<T> accessors, String packageName, int uid) {
        return getAccessor(accessors, packageName, uid) != null;
    }

    private static <T extends Accessor> T getAccessor(ArraySet<T> accessors, String packageName, int uid) {
        int size = accessors.size();
        for (int i = 0; i < size; i++) {
            T tValueAt = accessors.valueAt(i);
            if (packageName != null && uid != -1 && tValueAt.equals(packageName, uid)) {
                return tValueAt;
            }
            if (packageName != null && tValueAt.packageName.equals(packageName)) {
                return tValueAt;
            }
            if (uid != -1 && tValueAt.uid == uid) {
                return tValueAt;
            }
        }
        return null;
    }

    boolean isALeasee(String packageName) {
        return isALeasee(packageName, -1);
    }

    boolean isALeasee(int uid) {
        return isALeasee(null, uid);
    }

    boolean hasOtherLeasees(String packageName) {
        return hasOtherLeasees(packageName, -1);
    }

    boolean hasOtherLeasees(int uid) {
        return hasOtherLeasees(null, uid);
    }

    private boolean hasOtherLeasees(String packageName, int uid) {
        synchronized (this.mMetadataLock) {
            int size = this.mLeasees.size();
            for (int i = 0; i < size; i++) {
                Leasee leasee = this.mLeasees.valueAt(i);
                if (leasee.isStillValid()) {
                    if (packageName != null && uid != -1 && !leasee.equals(packageName, uid)) {
                        return true;
                    }
                    if (packageName != null && !leasee.packageName.equals(packageName)) {
                        return true;
                    }
                    if (uid != -1 && leasee.uid != uid) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    LeaseInfo getLeaseInfo(String packageName, int uid) {
        int descriptionResId;
        synchronized (this.mMetadataLock) {
            int size = this.mLeasees.size();
            for (int i = 0; i < size; i++) {
                Leasee leasee = this.mLeasees.valueAt(i);
                if (leasee.isStillValid() && leasee.uid == uid && leasee.packageName.equals(packageName)) {
                    if (leasee.descriptionResEntryName == null) {
                        descriptionResId = 0;
                    } else {
                        descriptionResId = BlobStoreUtils.getDescriptionResourceId(this.mContext, leasee.descriptionResEntryName, leasee.packageName, UserHandle.getUserId(leasee.uid));
                    }
                    return new LeaseInfo(packageName, leasee.expiryTimeMillis, descriptionResId, leasee.description);
                }
            }
            return null;
        }
    }

    void forEachLeasee(Consumer<Leasee> consumer) {
        synchronized (this.mMetadataLock) {
            this.mLeasees.forEach(consumer);
        }
    }

    File getBlobFile() {
        if (this.mBlobFile == null) {
            this.mBlobFile = BlobStoreConfig.getBlobFile(this.mBlobId);
        }
        return this.mBlobFile;
    }

    ParcelFileDescriptor openForRead(String callingPackage) throws IOException {
        try {
            FileDescriptor fd = Os.open(getBlobFile().getPath(), OsConstants.O_RDONLY, 0);
            try {
                if (BlobStoreConfig.shouldUseRevocableFdForReads()) {
                    return createRevocableFd(fd, callingPackage);
                }
                return new ParcelFileDescriptor(fd);
            } catch (IOException e) {
                IoUtils.closeQuietly(fd);
                throw e;
            }
        } catch (ErrnoException e2) {
            throw e2.rethrowAsIOException();
        }
    }

    private ParcelFileDescriptor createRevocableFd(FileDescriptor fd, final String callingPackage) throws IOException {
        final RevocableFileDescriptor revocableFd = new RevocableFileDescriptor(this.mContext, fd);
        synchronized (this.mRevocableFds) {
            ArraySet<RevocableFileDescriptor> revocableFdsForPkg = this.mRevocableFds.get(callingPackage);
            if (revocableFdsForPkg == null) {
                revocableFdsForPkg = new ArraySet<>();
                this.mRevocableFds.put(callingPackage, revocableFdsForPkg);
            }
            revocableFdsForPkg.add(revocableFd);
        }
        revocableFd.addOnCloseListener(new ParcelFileDescriptor.OnCloseListener() { // from class: com.android.server.blob.-$$Lambda$BlobMetadata$v3ybej_1iW66CdnLprsLCDivz-o
            @Override // android.os.ParcelFileDescriptor.OnCloseListener
            public final void onClose(IOException iOException) {
                this.f$0.lambda$createRevocableFd$5$BlobMetadata(callingPackage, revocableFd, iOException);
            }
        });
        return revocableFd.getRevocableFileDescriptor();
    }

    public /* synthetic */ void lambda$createRevocableFd$5$BlobMetadata(String callingPackage, RevocableFileDescriptor revocableFd, IOException e) {
        synchronized (this.mRevocableFds) {
            ArraySet<RevocableFileDescriptor> revocableFdsForPkg = this.mRevocableFds.get(callingPackage);
            if (revocableFdsForPkg != null) {
                revocableFdsForPkg.remove(revocableFd);
                if (revocableFdsForPkg.isEmpty()) {
                    this.mRevocableFds.remove(callingPackage);
                }
            }
        }
    }

    void destroy() {
        revokeAllFds();
        getBlobFile().delete();
    }

    private void revokeAllFds() {
        synchronized (this.mRevocableFds) {
            int pkgCount = this.mRevocableFds.size();
            for (int i = 0; i < pkgCount; i++) {
                ArraySet<RevocableFileDescriptor> packageFds = this.mRevocableFds.valueAt(i);
                if (packageFds != null) {
                    int fdCount = packageFds.size();
                    for (int j = 0; j < fdCount; j++) {
                        packageFds.valueAt(j).revoke();
                    }
                }
            }
        }
    }

    boolean shouldBeDeleted(boolean respectLeaseWaitTime) {
        if (getBlobHandle().isExpired()) {
            return true;
        }
        return (!respectLeaseWaitTime || hasLeaseWaitTimeElapsedForAll()) && !hasValidLeases();
    }

    boolean hasLeaseWaitTimeElapsedForAll() {
        int size = this.mCommitters.size();
        for (int i = 0; i < size; i++) {
            Committer committer = this.mCommitters.valueAt(i);
            if (!BlobStoreConfig.hasLeaseWaitTimeElapsed(committer.getCommitTimeMs())) {
                return false;
            }
        }
        return true;
    }

    StatsEvent dumpAsStatsEvent(int atomTag) throws Throwable {
        long j;
        synchronized (this.mMetadataLock) {
            try {
                try {
                    ProtoOutputStream proto = new ProtoOutputStream();
                    int i = 0;
                    int size = this.mCommitters.size();
                    while (true) {
                        j = 1120986464257L;
                        if (i >= size) {
                            break;
                        }
                        Committer committer = this.mCommitters.valueAt(i);
                        long token = proto.start(2246267895809L);
                        proto.write(1120986464257L, committer.uid);
                        proto.write(1112396529666L, committer.commitTimeMs);
                        proto.write(1120986464259L, committer.blobAccessMode.getAccessType());
                        proto.write(1120986464260L, committer.blobAccessMode.getNumWhitelistedPackages());
                        proto.end(token);
                        i++;
                    }
                    byte[] committersBytes = proto.getBytes();
                    ProtoOutputStream proto2 = new ProtoOutputStream();
                    int i2 = 0;
                    int size2 = this.mLeasees.size();
                    while (i2 < size2) {
                        Leasee leasee = this.mLeasees.valueAt(i2);
                        long token2 = proto2.start(2246267895809L);
                        proto2.write(j, leasee.uid);
                        proto2.write(1112396529666L, leasee.expiryTimeMillis);
                        proto2.end(token2);
                        i2++;
                        j = 1120986464257L;
                    }
                    byte[] leaseesBytes = proto2.getBytes();
                    return StatsEvent.newBuilder().setAtomId(atomTag).writeLong(this.mBlobId).writeLong(getSize()).writeLong(this.mBlobHandle.getExpiryTimeMillis()).writeByteArray(committersBytes).writeByteArray(leaseesBytes).build();
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    void dump(IndentingPrintWriter fout, BlobStoreManagerService.DumpArgs dumpArgs) {
        synchronized (this.mMetadataLock) {
            fout.println("blobHandle:");
            fout.increaseIndent();
            this.mBlobHandle.dump(fout, dumpArgs.shouldDumpFull());
            fout.decreaseIndent();
            fout.println("size: " + Formatter.formatFileSize(this.mContext, getSize(), 8));
            fout.println("Committers:");
            fout.increaseIndent();
            if (this.mCommitters.isEmpty()) {
                fout.println("<empty>");
            } else {
                int count = this.mCommitters.size();
                for (int i = 0; i < count; i++) {
                    Committer committer = this.mCommitters.valueAt(i);
                    fout.println("committer " + committer.toString());
                    fout.increaseIndent();
                    committer.dump(fout);
                    fout.decreaseIndent();
                }
            }
            fout.decreaseIndent();
            fout.println("Leasees:");
            fout.increaseIndent();
            if (this.mLeasees.isEmpty()) {
                fout.println("<empty>");
            } else {
                int count2 = this.mLeasees.size();
                for (int i2 = 0; i2 < count2; i2++) {
                    Leasee leasee = this.mLeasees.valueAt(i2);
                    fout.println("leasee " + leasee.toString());
                    fout.increaseIndent();
                    leasee.dump(this.mContext, fout);
                    fout.decreaseIndent();
                }
            }
            fout.decreaseIndent();
            fout.println("Open fds:");
            fout.increaseIndent();
            if (this.mRevocableFds.isEmpty()) {
                fout.println("<empty>");
            } else {
                int count3 = this.mRevocableFds.size();
                for (int i3 = 0; i3 < count3; i3++) {
                    String packageName = this.mRevocableFds.keyAt(i3);
                    ArraySet<RevocableFileDescriptor> packageFds = this.mRevocableFds.valueAt(i3);
                    fout.println(packageName + "#" + packageFds.size());
                }
            }
            fout.decreaseIndent();
        }
    }

    void writeToXml(XmlSerializer out) throws IOException {
        synchronized (this.mMetadataLock) {
            XmlUtils.writeLongAttribute(out, "id", this.mBlobId);
            XmlUtils.writeIntAttribute(out, "us", this.mUserId);
            out.startTag(null, "bh");
            this.mBlobHandle.writeToXml(out);
            out.endTag(null, "bh");
            int count = this.mCommitters.size();
            for (int i = 0; i < count; i++) {
                out.startTag(null, "c");
                this.mCommitters.valueAt(i).writeToXml(out);
                out.endTag(null, "c");
            }
            int count2 = this.mLeasees.size();
            for (int i2 = 0; i2 < count2; i2++) {
                out.startTag(null, "l");
                this.mLeasees.valueAt(i2).writeToXml(out);
                out.endTag(null, "l");
            }
        }
    }

    static BlobMetadata createFromXml(XmlPullParser in, int version, Context context) throws XmlPullParserException, IOException {
        long blobId = XmlUtils.readLongAttribute(in, "id");
        int userId = XmlUtils.readIntAttribute(in, "us");
        ArraySet<Committer> committers = new ArraySet<>();
        ArraySet<Leasee> leasees = new ArraySet<>();
        int depth = in.getDepth();
        BlobHandle blobHandle = null;
        while (XmlUtils.nextElementWithin(in, depth)) {
            if ("bh".equals(in.getName())) {
                blobHandle = BlobHandle.createFromXml(in);
            } else if ("c".equals(in.getName())) {
                Committer committer = Committer.createFromXml(in, version);
                if (committer != null) {
                    committers.add(committer);
                }
            } else if ("l".equals(in.getName())) {
                leasees.add(Leasee.createFromXml(in, version));
            }
        }
        if (blobHandle == null) {
            Slog.wtf(BlobStoreConfig.TAG, "blobHandle should be available");
            return null;
        }
        BlobMetadata blobMetadata = new BlobMetadata(context, blobId, blobHandle, userId);
        blobMetadata.setCommitters(committers);
        blobMetadata.setLeasees(leasees);
        return blobMetadata;
    }

    static final class Committer extends Accessor {
        public final BlobAccessMode blobAccessMode;
        public final long commitTimeMs;

        Committer(String packageName, int uid, BlobAccessMode blobAccessMode, long commitTimeMs) {
            super(packageName, uid);
            this.blobAccessMode = blobAccessMode;
            this.commitTimeMs = commitTimeMs;
        }

        long getCommitTimeMs() {
            return this.commitTimeMs;
        }

        void dump(IndentingPrintWriter fout) {
            StringBuilder sb = new StringBuilder();
            sb.append("commit time: ");
            long j = this.commitTimeMs;
            sb.append(j == 0 ? "<null>" : BlobStoreUtils.formatTime(j));
            fout.println(sb.toString());
            fout.println("accessMode:");
            fout.increaseIndent();
            this.blobAccessMode.dump(fout);
            fout.decreaseIndent();
        }

        void writeToXml(XmlSerializer out) throws IOException {
            XmlUtils.writeStringAttribute(out, "p", this.packageName);
            XmlUtils.writeIntAttribute(out, "u", this.uid);
            XmlUtils.writeLongAttribute(out, "cmt", this.commitTimeMs);
            out.startTag(null, "am");
            this.blobAccessMode.writeToXml(out);
            out.endTag(null, "am");
        }

        static Committer createFromXml(XmlPullParser in, int version) throws XmlPullParserException, IOException {
            long commitTimeMs;
            String packageName = XmlUtils.readStringAttribute(in, "p");
            int uid = XmlUtils.readIntAttribute(in, "u");
            if (version >= 4) {
                commitTimeMs = XmlUtils.readLongAttribute(in, "cmt");
            } else {
                commitTimeMs = 0;
            }
            int depth = in.getDepth();
            BlobAccessMode blobAccessMode = null;
            while (XmlUtils.nextElementWithin(in, depth)) {
                if ("am".equals(in.getName())) {
                    blobAccessMode = BlobAccessMode.createFromXml(in);
                }
            }
            if (blobAccessMode == null) {
                Slog.wtf(BlobStoreConfig.TAG, "blobAccessMode should be available");
                return null;
            }
            return new Committer(packageName, uid, blobAccessMode, commitTimeMs);
        }
    }

    static final class Leasee extends Accessor {
        public final CharSequence description;
        public final String descriptionResEntryName;
        public final long expiryTimeMillis;

        Leasee(Context context, String packageName, int uid, int descriptionResId, CharSequence description, long expiryTimeMillis) {
            CharSequence description2;
            super(packageName, uid);
            Resources packageResources = BlobStoreUtils.getPackageResources(context, packageName, UserHandle.getUserId(uid));
            this.descriptionResEntryName = getResourceEntryName(packageResources, descriptionResId);
            this.expiryTimeMillis = expiryTimeMillis;
            if (description == null) {
                description2 = getDescription(packageResources, descriptionResId);
            } else {
                description2 = description;
            }
            this.description = description2;
        }

        Leasee(String packageName, int uid, String descriptionResEntryName, CharSequence description, long expiryTimeMillis) {
            super(packageName, uid);
            this.descriptionResEntryName = descriptionResEntryName;
            this.expiryTimeMillis = expiryTimeMillis;
            this.description = description;
        }

        private static String getResourceEntryName(Resources packageResources, int resId) {
            if (!ResourceId.isValid(resId) || packageResources == null) {
                return null;
            }
            return packageResources.getResourceEntryName(resId);
        }

        private static String getDescription(Context context, String descriptionResEntryName, String packageName, int userId) {
            Resources resources;
            int resId;
            if (descriptionResEntryName == null || descriptionResEntryName.isEmpty() || (resources = BlobStoreUtils.getPackageResources(context, packageName, userId)) == null || (resId = BlobStoreUtils.getDescriptionResourceId(resources, descriptionResEntryName, packageName)) == 0) {
                return null;
            }
            return resources.getString(resId);
        }

        private static String getDescription(Resources packageResources, int descriptionResId) {
            if (!ResourceId.isValid(descriptionResId) || packageResources == null) {
                return null;
            }
            return packageResources.getString(descriptionResId);
        }

        boolean isStillValid() {
            long j = this.expiryTimeMillis;
            return j == 0 || j >= System.currentTimeMillis();
        }

        void dump(Context context, IndentingPrintWriter fout) {
            fout.println("desc: " + getDescriptionToDump(context));
            fout.println("expiryMs: " + this.expiryTimeMillis);
        }

        private String getDescriptionToDump(Context context) {
            String desc = getDescription(context, this.descriptionResEntryName, this.packageName, UserHandle.getUserId(this.uid));
            if (desc == null) {
                desc = this.description.toString();
            }
            return desc == null ? "<none>" : desc;
        }

        void writeToXml(XmlSerializer out) throws IOException {
            XmlUtils.writeStringAttribute(out, "p", this.packageName);
            XmlUtils.writeIntAttribute(out, "u", this.uid);
            XmlUtils.writeStringAttribute(out, "rn", this.descriptionResEntryName);
            XmlUtils.writeLongAttribute(out, "ex", this.expiryTimeMillis);
            XmlUtils.writeStringAttribute(out, "d", this.description);
        }

        static Leasee createFromXml(XmlPullParser in, int version) throws IOException {
            String descriptionResEntryName;
            CharSequence description;
            String packageName = XmlUtils.readStringAttribute(in, "p");
            int uid = XmlUtils.readIntAttribute(in, "u");
            if (version >= 3) {
                descriptionResEntryName = XmlUtils.readStringAttribute(in, "rn");
            } else {
                descriptionResEntryName = null;
            }
            long expiryTimeMillis = XmlUtils.readLongAttribute(in, "ex");
            if (version >= 2) {
                description = XmlUtils.readStringAttribute(in, "d");
            } else {
                description = null;
            }
            return new Leasee(packageName, uid, descriptionResEntryName, description, expiryTimeMillis);
        }
    }

    static class Accessor {
        public final String packageName;
        public final int uid;

        Accessor(String packageName, int uid) {
            this.packageName = packageName;
            this.uid = uid;
        }

        public boolean equals(String packageName, int uid) {
            return this.uid == uid && this.packageName.equals(packageName);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof Accessor)) {
                return false;
            }
            Accessor other = (Accessor) obj;
            if (this.uid == other.uid && this.packageName.equals(other.packageName)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(this.packageName, Integer.valueOf(this.uid));
        }

        public String toString() {
            return "[" + this.packageName + ", " + this.uid + "]";
        }
    }
}

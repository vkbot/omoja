package com.android.server.uri;

import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.AppGlobals;
import android.app.GrantedUriPermission;
import android.app.IUriGrantsManager;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ModuleInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ParceledListSlice;
import android.content.pm.PathPermission;
import android.content.pm.ProviderInfo;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.net.Uri;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.SparseArray;
import android.util.Xml;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.Preconditions;
import com.android.internal.util.XmlUtils;
import com.android.server.IoThread;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.SystemServiceManager;
import com.android.server.job.controllers.JobStatus;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.google.android.collect.Lists;
import com.google.android.collect.Maps;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class UriGrantsManagerService extends IUriGrantsManager.Stub {
    private static final String ATTR_CREATED_TIME = "createdTime";
    private static final String ATTR_MODE_FLAGS = "modeFlags";
    private static final String ATTR_PREFIX = "prefix";
    private static final String ATTR_SOURCE_PKG = "sourcePkg";
    private static final String ATTR_SOURCE_USER_ID = "sourceUserId";
    private static final String ATTR_TARGET_PKG = "targetPkg";
    private static final String ATTR_TARGET_USER_ID = "targetUserId";
    private static final String ATTR_URI = "uri";
    private static final String ATTR_USER_HANDLE = "userHandle";
    private static final boolean DEBUG = false;
    private static final boolean ENABLE_DYNAMIC_PERMISSIONS = true;
    private static final int MAX_PERSISTED_URI_GRANTS = 512;
    private static final String MEDIA_PROVIDER_MODULE_NAME = "com.android.mediaprovider";
    private static final long MIN_DYNAMIC_PERMISSIONS_MP_VERSION = 301400000;
    private static final String TAG = "UriGrantsManagerService";
    private static final String TAG_URI_GRANT = "uri-grant";
    private static final String TAG_URI_GRANTS = "uri-grants";
    private boolean isDynamicPermissionEnabledInMP;
    private boolean isMPVersionChecked;
    ActivityManagerInternal mAmInternal;
    private final Context mContext;
    private final AtomicFile mGrantFile;
    private final SparseArray<ArrayMap<GrantUri, UriPermission>> mGrantedUriPermissions;
    private final H mH;
    private final Object mLock;
    PackageManagerInternal mPmInternal;

    private UriGrantsManagerService(Context context) {
        this(context, SystemServiceManager.ensureSystemDir());
    }

    private UriGrantsManagerService(Context context, File systemDir) {
        this.mLock = new Object();
        this.isDynamicPermissionEnabledInMP = false;
        this.isMPVersionChecked = false;
        this.mGrantedUriPermissions = new SparseArray<>();
        this.mContext = context;
        this.mH = new H(IoThread.get().getLooper());
        this.mGrantFile = new AtomicFile(new File(systemDir, "urigrants.xml"), TAG_URI_GRANTS);
    }

    static UriGrantsManagerService createForTest(Context context, File systemDir) {
        UriGrantsManagerService service = new UriGrantsManagerService(context, systemDir);
        service.mAmInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        service.mPmInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        return service;
    }

    UriGrantsManagerInternal getLocalService() {
        return new LocalService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void start() {
        LocalServices.addService(UriGrantsManagerInternal.class, new LocalService());
    }

    public static final class Lifecycle extends SystemService {
        private final UriGrantsManagerService mService;

        public Lifecycle(Context context) {
            super(context);
            this.mService = new UriGrantsManagerService(context);
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            publishBinderService("uri_grants", this.mService);
            this.mService.start();
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            if (phase == 500) {
                this.mService.mAmInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
                this.mService.mPmInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
            }
        }

        public UriGrantsManagerService getService() {
            return this.mService;
        }
    }

    private int checkUidPermission(String permission, int uid) {
        try {
            return AppGlobals.getPackageManager().checkUidPermission(permission, uid);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void grantUriPermissionFromOwner(IBinder token, int fromUid, String targetPkg, Uri uri, int modeFlags, int sourceUserId, int targetUserId) {
        grantUriPermissionFromOwnerUnlocked(token, fromUid, targetPkg, uri, modeFlags, sourceUserId, targetUserId);
    }

    private void grantUriPermissionFromOwnerUnlocked(IBinder token, int fromUid, String targetPkg, Uri uri, int modeFlags, int sourceUserId, int targetUserId) {
        int targetUserId2 = this.mAmInternal.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), targetUserId, false, 2, "grantUriPermissionFromOwner", (String) null);
        UriPermissionOwner owner = UriPermissionOwner.fromExternalToken(token);
        if (owner == null) {
            throw new IllegalArgumentException("Unknown owner: " + token);
        }
        if (fromUid != Binder.getCallingUid() && Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("nice try");
        }
        if (targetPkg == null) {
            throw new IllegalArgumentException("null target");
        }
        if (uri == null) {
            throw new IllegalArgumentException("null uri");
        }
        grantUriPermissionUnlocked(fromUid, targetPkg, new GrantUri(sourceUserId, uri, modeFlags), modeFlags, owner, targetUserId2);
    }

    public ParceledListSlice<android.content.UriPermission> getUriPermissions(String packageName, boolean incoming, boolean persistedOnly) {
        enforceNotIsolatedCaller("getUriPermissions");
        Objects.requireNonNull(packageName, "packageName");
        int callingUid = Binder.getCallingUid();
        int callingUserId = UserHandle.getUserId(callingUid);
        PackageManagerInternal pm = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        int packageUid = pm.getPackageUidInternal(packageName, 786432, callingUserId);
        if (packageUid != callingUid) {
            throw new SecurityException("Package " + packageName + " does not belong to calling UID " + callingUid);
        }
        ArrayList<android.content.UriPermission> result = Lists.newArrayList();
        synchronized (this.mLock) {
            try {
                if (incoming) {
                    ArrayMap<GrantUri, UriPermission> perms = this.mGrantedUriPermissions.get(callingUid);
                    if (perms == null) {
                        Slog.w(TAG, "No permission grants found for " + packageName);
                    } else {
                        for (int j = 0; j < perms.size(); j++) {
                            UriPermission perm = perms.valueAt(j);
                            if (packageName.equals(perm.targetPkg) && (!persistedOnly || perm.persistedModeFlags != 0)) {
                                result.add(perm.buildPersistedPublicApiObject());
                            }
                        }
                    }
                } else {
                    int size = this.mGrantedUriPermissions.size();
                    for (int i = 0; i < size; i++) {
                        ArrayMap<GrantUri, UriPermission> perms2 = this.mGrantedUriPermissions.valueAt(i);
                        for (int j2 = 0; j2 < perms2.size(); j2++) {
                            UriPermission perm2 = perms2.valueAt(j2);
                            if (packageName.equals(perm2.sourcePkg) && (!persistedOnly || perm2.persistedModeFlags != 0)) {
                                result.add(perm2.buildPersistedPublicApiObject());
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return new ParceledListSlice<>(result);
    }

    public ParceledListSlice<GrantedUriPermission> getGrantedUriPermissions(String packageName, int userId) {
        this.mAmInternal.enforceCallingPermission("android.permission.GET_APP_GRANTED_URI_PERMISSIONS", "getGrantedUriPermissions");
        List<GrantedUriPermission> result = new ArrayList<>();
        synchronized (this.mLock) {
            int size = this.mGrantedUriPermissions.size();
            for (int i = 0; i < size; i++) {
                ArrayMap<GrantUri, UriPermission> perms = this.mGrantedUriPermissions.valueAt(i);
                for (int j = 0; j < perms.size(); j++) {
                    UriPermission perm = perms.valueAt(j);
                    if ((packageName == null || packageName.equals(perm.targetPkg)) && perm.targetUserId == userId && perm.persistedModeFlags != 0) {
                        result.add(perm.buildGrantedUriPermission());
                    }
                }
            }
        }
        return new ParceledListSlice<>(result);
    }

    public void takePersistableUriPermission(Uri uri, int modeFlags, String toPackage, int userId) {
        int uid;
        boolean exactValid;
        boolean prefixValid = false;
        if (toPackage != null) {
            this.mAmInternal.enforceCallingPermission("android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS", "takePersistableUriPermission");
            uid = this.mPmInternal.getPackageUidInternal(toPackage, 0, userId);
        } else {
            enforceNotIsolatedCaller("takePersistableUriPermission");
            uid = Binder.getCallingUid();
        }
        Preconditions.checkFlagsArgument(modeFlags, 3);
        synchronized (this.mLock) {
            UriPermission exactPerm = findUriPermissionLocked(uid, new GrantUri(userId, uri, 0));
            UriPermission prefixPerm = findUriPermissionLocked(uid, new GrantUri(userId, uri, 128));
            if (exactPerm == null || (exactPerm.persistableModeFlags & modeFlags) != modeFlags) {
                exactValid = false;
            } else {
                exactValid = true;
            }
            if (prefixPerm != null && (prefixPerm.persistableModeFlags & modeFlags) == modeFlags) {
                prefixValid = true;
            }
            if (!exactValid && !prefixValid) {
                throw new SecurityException("No persistable permission grants found for UID " + uid + " and Uri " + uri.toSafeString());
            }
            boolean persistChanged = exactValid ? false | exactPerm.takePersistableModes(modeFlags) : false;
            if (prefixValid) {
                persistChanged |= prefixPerm.takePersistableModes(modeFlags);
            }
            if (persistChanged | maybePrunePersistedUriGrantsLocked(uid)) {
                schedulePersistUriGrants();
            }
        }
    }

    public void clearGrantedUriPermissions(String packageName, int userId) {
        this.mAmInternal.enforceCallingPermission("android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS", "clearGrantedUriPermissions");
        synchronized (this.mLock) {
            removeUriPermissionsForPackageLocked(packageName, userId, true, true);
        }
    }

    public void releasePersistableUriPermission(Uri uri, int modeFlags, String toPackage, int userId) {
        int uid;
        if (toPackage != null) {
            this.mAmInternal.enforceCallingPermission("android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS", "releasePersistableUriPermission");
            uid = this.mPmInternal.getPackageUidInternal(toPackage, 0, userId);
        } else {
            enforceNotIsolatedCaller("releasePersistableUriPermission");
            uid = Binder.getCallingUid();
        }
        Preconditions.checkFlagsArgument(modeFlags, 3);
        synchronized (this.mLock) {
            boolean persistChanged = false;
            UriPermission exactPerm = findUriPermissionLocked(uid, new GrantUri(userId, uri, 0));
            UriPermission prefixPerm = findUriPermissionLocked(uid, new GrantUri(userId, uri, 128));
            if (exactPerm == null && prefixPerm == null && toPackage == null) {
                throw new SecurityException("No permission grants found for UID " + uid + " and Uri " + uri.toSafeString());
            }
            if (exactPerm != null) {
                persistChanged = false | exactPerm.releasePersistableModes(modeFlags);
                removeUriPermissionIfNeededLocked(exactPerm);
            }
            if (prefixPerm != null) {
                persistChanged |= prefixPerm.releasePersistableModes(modeFlags);
                removeUriPermissionIfNeededLocked(prefixPerm);
            }
            if (persistChanged) {
                schedulePersistUriGrants();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeUriPermissionsForPackageLocked(String packageName, int userHandle, boolean persistable, boolean targetOnly) {
        if (userHandle == -1 && packageName == null) {
            throw new IllegalArgumentException("Must narrow by either package or user");
        }
        boolean persistChanged = false;
        int N = this.mGrantedUriPermissions.size();
        int i = 0;
        while (i < N) {
            int targetUid = this.mGrantedUriPermissions.keyAt(i);
            ArrayMap<GrantUri, UriPermission> perms = this.mGrantedUriPermissions.valueAt(i);
            if (userHandle == -1 || userHandle == UserHandle.getUserId(targetUid)) {
                Iterator<UriPermission> it = perms.values().iterator();
                while (it.hasNext()) {
                    UriPermission perm = it.next();
                    if (packageName == null || ((!targetOnly && perm.sourcePkg.equals(packageName)) || perm.targetPkg.equals(packageName))) {
                        if (!"downloads".equals(perm.uri.uri.getAuthority()) || persistable) {
                            persistChanged |= perm.revokeModes(persistable ? -1 : -65, true);
                            if (perm.modeFlags == 0) {
                                it.remove();
                            }
                        }
                    }
                }
                if (perms.isEmpty()) {
                    this.mGrantedUriPermissions.remove(targetUid);
                    N--;
                    i--;
                }
            }
            i++;
        }
        if (persistChanged) {
            schedulePersistUriGrants();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkAuthorityGrantsLocked(int callingUid, ProviderInfo cpi, int userId, boolean checkUser) {
        ArrayMap<GrantUri, UriPermission> perms = this.mGrantedUriPermissions.get(callingUid);
        if (perms != null) {
            for (int i = perms.size() - 1; i >= 0; i--) {
                GrantUri grantUri = perms.keyAt(i);
                if ((grantUri.sourceUserId == userId || !checkUser) && matchesProvider(grantUri.uri, cpi)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private boolean matchesProvider(Uri uri, ProviderInfo cpi) {
        String uriAuth = uri.getAuthority();
        String cpiAuth = cpi.authority;
        if (cpiAuth.indexOf(59) == -1) {
            return cpiAuth.equals(uriAuth);
        }
        String[] cpiAuths = cpiAuth.split(";");
        for (String str : cpiAuths) {
            if (str.equals(uriAuth)) {
                return true;
            }
        }
        return false;
    }

    private boolean maybePrunePersistedUriGrantsLocked(int uid) {
        ArrayMap<GrantUri, UriPermission> perms = this.mGrantedUriPermissions.get(uid);
        if (perms == null || perms.size() < 512) {
            return false;
        }
        ArrayList<UriPermission> persisted = Lists.newArrayList();
        for (UriPermission perm : perms.values()) {
            if (perm.persistedModeFlags != 0) {
                persisted.add(perm);
            }
        }
        int trimCount = persisted.size() - 512;
        if (trimCount <= 0) {
            return false;
        }
        Collections.sort(persisted, new UriPermission.PersistedTimeComparator());
        for (int i = 0; i < trimCount; i++) {
            UriPermission perm2 = persisted.get(i);
            perm2.releasePersistableModes(-1);
            removeUriPermissionIfNeededLocked(perm2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NeededUriGrants checkGrantUriPermissionFromIntentUnlocked(int callingUid, String targetPkg, Intent intent, int mode, NeededUriGrants needed, int targetUserId) {
        int contentUserHint;
        int targetUid;
        NeededUriGrants newNeeded;
        NeededUriGrants needed2;
        NeededUriGrants needed3 = needed;
        if (targetPkg == null) {
            throw new NullPointerException(ATTR_TARGET_PKG);
        }
        if (intent == null) {
            return null;
        }
        Uri data = intent.getData();
        ClipData clip = intent.getClipData();
        if (data == null && clip == null) {
            return null;
        }
        int contentUserHint2 = intent.getContentUserHint();
        if (contentUserHint2 != -2) {
            contentUserHint = contentUserHint2;
        } else {
            contentUserHint = UserHandle.getUserId(callingUid);
        }
        if (needed3 == null) {
            int targetUid2 = this.mPmInternal.getPackageUidInternal(targetPkg, AudioFormat.EVRC, targetUserId);
            if (targetUid2 < 0) {
                return null;
            }
            targetUid = targetUid2;
        } else {
            targetUid = needed3.targetUid;
        }
        if (data != null) {
            GrantUri grantUri = GrantUri.resolve(contentUserHint, data, mode);
            targetUid = checkGrantUriPermissionUnlocked(callingUid, targetPkg, grantUri, mode, targetUid);
            if (targetUid > 0) {
                if (needed3 == null) {
                    needed2 = new NeededUriGrants(targetPkg, targetUid, mode);
                } else {
                    needed2 = needed3;
                }
                needed2.uris.add(grantUri);
                needed3 = needed2;
            }
        }
        if (clip != null) {
            NeededUriGrants needed4 = needed3;
            int targetUid3 = targetUid;
            for (int targetUid4 = 0; targetUid4 < clip.getItemCount(); targetUid4++) {
                Uri uri = clip.getItemAt(targetUid4).getUri();
                if (uri != null) {
                    GrantUri grantUri2 = GrantUri.resolve(contentUserHint, uri, mode);
                    int targetUid5 = checkGrantUriPermissionUnlocked(callingUid, targetPkg, grantUri2, mode, targetUid3);
                    if (targetUid5 > 0) {
                        if (needed4 == null) {
                            needed4 = new NeededUriGrants(targetPkg, targetUid5, mode);
                        }
                        needed4.uris.add(grantUri2);
                    }
                    targetUid3 = targetUid5;
                } else {
                    Intent clipIntent = clip.getItemAt(targetUid4).getIntent();
                    if (clipIntent != null && (newNeeded = checkGrantUriPermissionFromIntentUnlocked(callingUid, targetPkg, clipIntent, mode, needed4, targetUserId)) != null) {
                        needed4 = newNeeded;
                    }
                }
            }
            return needed4;
        }
        return needed3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readGrantedUriPermissionsLocked() throws Throwable {
        XmlPullParser in;
        int sourceUserId;
        int targetUserId;
        UriGrantsManagerService uriGrantsManagerService = this;
        long now = System.currentTimeMillis();
        FileInputStream fis = null;
        try {
            try {
                fis = uriGrantsManagerService.mGrantFile.openRead();
                XmlPullParser in2 = Xml.newPullParser();
                in2.setInput(fis, StandardCharsets.UTF_8.name());
                while (true) {
                    int type = in2.next();
                    if (type == 1) {
                        break;
                    }
                    String tag = in2.getName();
                    if (type != 2) {
                        in = in2;
                    } else if (TAG_URI_GRANT.equals(tag)) {
                        int userHandle = XmlUtils.readIntAttribute(in2, ATTR_USER_HANDLE, -10000);
                        if (userHandle != -10000) {
                            sourceUserId = userHandle;
                            targetUserId = userHandle;
                        } else {
                            sourceUserId = XmlUtils.readIntAttribute(in2, ATTR_SOURCE_USER_ID);
                            targetUserId = XmlUtils.readIntAttribute(in2, ATTR_TARGET_USER_ID);
                        }
                        String sourcePkg = in2.getAttributeValue(null, ATTR_SOURCE_PKG);
                        String targetPkg = in2.getAttributeValue(null, ATTR_TARGET_PKG);
                        Uri uri = Uri.parse(in2.getAttributeValue(null, ATTR_URI));
                        boolean prefix = XmlUtils.readBooleanAttribute(in2, ATTR_PREFIX);
                        int modeFlags = XmlUtils.readIntAttribute(in2, ATTR_MODE_FLAGS);
                        long createdTime = XmlUtils.readLongAttribute(in2, ATTR_CREATED_TIME, now);
                        in = in2;
                        ProviderInfo pi = uriGrantsManagerService.getProviderInfo(uri.getAuthority(), sourceUserId, 786432);
                        if (pi == null || !sourcePkg.equals(pi.packageName)) {
                            Slog.w(TAG, "Persisted grant for " + uri + " had source " + sourcePkg + " but instead found " + pi);
                        } else {
                            try {
                                int targetUid = uriGrantsManagerService.mPmInternal.getPackageUidInternal(targetPkg, 8192, targetUserId);
                                if (targetUid != -1) {
                                    GrantUri grantUri = new GrantUri(sourceUserId, uri, prefix ? 128 : 0);
                                    UriPermission perm = uriGrantsManagerService.findOrCreateUriPermissionLocked(sourcePkg, targetPkg, targetUid, grantUri);
                                    perm.initPersistedModes(modeFlags, createdTime);
                                    uriGrantsManagerService.mPmInternal.grantImplicitAccess(targetUserId, null, UserHandle.getAppId(targetUid), pi.applicationInfo.uid, false);
                                }
                            } catch (FileNotFoundException e) {
                            } catch (IOException e2) {
                                e = e2;
                                Slog.wtf(TAG, "Failed reading Uri grants", e);
                                IoUtils.closeQuietly(fis);
                            } catch (XmlPullParserException e3) {
                                e = e3;
                                Slog.wtf(TAG, "Failed reading Uri grants", e);
                                IoUtils.closeQuietly(fis);
                            }
                        }
                    } else {
                        in = in2;
                    }
                    uriGrantsManagerService = this;
                    in2 = in;
                    now = now;
                    IoUtils.closeQuietly(fis);
                }
            } catch (Throwable th) {
                th = th;
                IoUtils.closeQuietly(fis);
                throw th;
            }
        } catch (FileNotFoundException e4) {
        } catch (IOException e5) {
            e = e5;
        } catch (XmlPullParserException e6) {
            e = e6;
        } catch (Throwable th2) {
            th = th2;
            IoUtils.closeQuietly(fis);
            throw th;
        }
        IoUtils.closeQuietly(fis);
    }

    private UriPermission findOrCreateUriPermissionLocked(String sourcePkg, String targetPkg, int targetUid, GrantUri grantUri) {
        ArrayMap<GrantUri, UriPermission> targetUris = this.mGrantedUriPermissions.get(targetUid);
        if (targetUris == null) {
            targetUris = Maps.newArrayMap();
            this.mGrantedUriPermissions.put(targetUid, targetUris);
        }
        UriPermission perm = targetUris.get(grantUri);
        if (perm == null) {
            UriPermission perm2 = new UriPermission(sourcePkg, targetPkg, targetUid, grantUri);
            targetUris.put(grantUri, perm2);
            return perm2;
        }
        return perm;
    }

    private void grantUriPermissionUnchecked(int targetUid, String targetPkg, GrantUri grantUri, int modeFlags, UriPermissionOwner owner) {
        UriPermission perm;
        if (!Intent.isAccessUriMode(modeFlags)) {
            return;
        }
        String authority = grantUri.uri.getAuthority();
        ProviderInfo pi = getProviderInfo(authority, grantUri.sourceUserId, AudioFormat.EVRC);
        if (pi == null) {
            Slog.w(TAG, "No content provider found for grant: " + grantUri.toSafeString());
            return;
        }
        synchronized (this.mLock) {
            perm = findOrCreateUriPermissionLocked(pi.packageName, targetPkg, targetUid, grantUri);
        }
        perm.grantModes(modeFlags, owner);
        this.mPmInternal.grantImplicitAccess(UserHandle.getUserId(targetUid), null, UserHandle.getAppId(targetUid), pi.applicationInfo.uid, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void grantUriPermissionUncheckedFromIntent(NeededUriGrants needed, UriPermissionOwner owner) {
        if (needed == null) {
            return;
        }
        int N = needed.uris.size();
        for (int i = 0; i < N; i++) {
            grantUriPermissionUnchecked(needed.targetUid, needed.targetPkg, needed.uris.valueAt(i), needed.flags, owner);
        }
    }

    private void grantUriPermissionUnlocked(int callingUid, String targetPkg, GrantUri grantUri, int modeFlags, UriPermissionOwner owner, int targetUserId) {
        if (targetPkg == null) {
            throw new NullPointerException(ATTR_TARGET_PKG);
        }
        int targetUid = checkGrantUriPermissionUnlocked(callingUid, targetPkg, grantUri, modeFlags, this.mPmInternal.getPackageUidInternal(targetPkg, AudioFormat.EVRC, targetUserId));
        if (targetUid < 0) {
            return;
        }
        grantUriPermissionUnchecked(targetUid, targetPkg, grantUri, modeFlags, owner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void revokeUriPermission(String targetPackage, int callingUid, GrantUri grantUri, int modeFlags) {
        String authority = grantUri.uri.getAuthority();
        ProviderInfo pi = getProviderInfo(authority, grantUri.sourceUserId, 786432);
        if (pi == null) {
            Slog.w(TAG, "No content provider found for permission revoke: " + grantUri.toSafeString());
            return;
        }
        boolean callerHoldsPermissions = checkHoldingPermissionsUnlocked(pi, grantUri, callingUid, modeFlags);
        synchronized (this.mLock) {
            revokeUriPermissionLocked(targetPackage, callingUid, grantUri, modeFlags, callerHoldsPermissions);
        }
    }

    private void revokeUriPermissionLocked(String targetPackage, int callingUid, GrantUri grantUri, int modeFlags, boolean callerHoldsPermissions) {
        if (!callerHoldsPermissions) {
            ArrayMap<GrantUri, UriPermission> perms = this.mGrantedUriPermissions.get(callingUid);
            if (perms != null) {
                boolean persistChanged = false;
                for (int i = perms.size() - 1; i >= 0; i--) {
                    UriPermission perm = perms.valueAt(i);
                    if ((targetPackage == null || targetPackage.equals(perm.targetPkg)) && perm.uri.sourceUserId == grantUri.sourceUserId && perm.uri.uri.isPathPrefixMatch(grantUri.uri)) {
                        persistChanged |= perm.revokeModes(modeFlags | 64, false);
                        if (perm.modeFlags == 0) {
                            perms.removeAt(i);
                        }
                    }
                }
                if (perms.isEmpty()) {
                    this.mGrantedUriPermissions.remove(callingUid);
                }
                if (persistChanged) {
                    schedulePersistUriGrants();
                    return;
                }
                return;
            }
            return;
        }
        boolean persistChanged2 = false;
        for (int i2 = this.mGrantedUriPermissions.size() - 1; i2 >= 0; i2--) {
            this.mGrantedUriPermissions.keyAt(i2);
            ArrayMap<GrantUri, UriPermission> perms2 = this.mGrantedUriPermissions.valueAt(i2);
            for (int j = perms2.size() - 1; j >= 0; j--) {
                UriPermission perm2 = perms2.valueAt(j);
                if ((targetPackage == null || targetPackage.equals(perm2.targetPkg)) && perm2.uri.sourceUserId == grantUri.sourceUserId && perm2.uri.uri.isPathPrefixMatch(grantUri.uri)) {
                    persistChanged2 |= perm2.revokeModes(modeFlags | 64, targetPackage == null);
                    if (perm2.modeFlags == 0) {
                        perms2.removeAt(j);
                    }
                }
            }
            if (perms2.isEmpty()) {
                this.mGrantedUriPermissions.removeAt(i2);
            }
        }
        if (persistChanged2) {
            schedulePersistUriGrants();
        }
    }

    private boolean checkHoldingPermissionsUnlocked(ProviderInfo pi, GrantUri grantUri, int uid, int modeFlags) {
        if (UserHandle.getUserId(uid) != grantUri.sourceUserId && ActivityManager.checkComponentPermission("android.permission.INTERACT_ACROSS_USERS", uid, -1, true) != 0) {
            return false;
        }
        return checkHoldingPermissionsInternalUnlocked(pi, grantUri, uid, modeFlags, true);
    }

    private boolean checkHoldingPermissionsInternalUnlocked(ProviderInfo pi, GrantUri grantUri, int uid, int modeFlags, boolean considerUidPermissions) {
        boolean forceMet;
        String ppwperm;
        String pprperm;
        if (Thread.holdsLock(this.mLock)) {
            throw new IllegalStateException("Must never hold local mLock");
        }
        if (pi.applicationInfo.uid == uid) {
            return true;
        }
        if (!pi.exported) {
            return false;
        }
        boolean readMet = (modeFlags & 1) == 0;
        boolean writeMet = (modeFlags & 2) == 0;
        if (!readMet && pi.readPermission != null && considerUidPermissions && checkUidPermission(pi.readPermission, uid) == 0) {
            readMet = true;
        }
        if (!writeMet && pi.writePermission != null && considerUidPermissions && checkUidPermission(pi.writePermission, uid) == 0) {
            writeMet = true;
        }
        boolean allowDefaultRead = pi.readPermission == null;
        boolean allowDefaultWrite = pi.writePermission == null;
        PathPermission[] pps = pi.pathPermissions;
        if (pps != null) {
            String path = grantUri.uri.getPath();
            int i = pps.length;
            while (i > 0 && (!readMet || !writeMet)) {
                i--;
                PathPermission pp = pps[i];
                if (pp.match(path)) {
                    if (!readMet && (pprperm = pp.getReadPermission()) != null) {
                        if (considerUidPermissions && checkUidPermission(pprperm, uid) == 0) {
                            readMet = true;
                        } else {
                            allowDefaultRead = false;
                        }
                    }
                    if (!writeMet && (ppwperm = pp.getWritePermission()) != null) {
                        if (considerUidPermissions && checkUidPermission(ppwperm, uid) == 0) {
                            writeMet = true;
                        } else {
                            allowDefaultWrite = false;
                        }
                    }
                }
            }
        }
        if (allowDefaultRead) {
            readMet = true;
        }
        if (allowDefaultWrite) {
            writeMet = true;
        }
        if (pi.forceUriPermissions && isDynamicPermissionEnabledInMP()) {
            int providerUserId = UserHandle.getUserId(pi.applicationInfo.uid);
            int clientUserId = UserHandle.getUserId(uid);
            if (providerUserId == clientUserId) {
                forceMet = this.mAmInternal.checkContentProviderUriPermission(grantUri.uri, providerUserId, uid, modeFlags) == 0;
            } else {
                forceMet = false;
            }
        } else {
            forceMet = true;
        }
        return readMet && writeMet && forceMet;
    }

    private boolean isDynamicPermissionEnabledInMP() {
        if (this.isMPVersionChecked) {
            return this.isDynamicPermissionEnabledInMP;
        }
        try {
            try {
                ModuleInfo moduleInfo = this.mContext.getPackageManager().getModuleInfo(MEDIA_PROVIDER_MODULE_NAME, 1);
                PackageInfo packageInfo = this.mContext.getPackageManager().getPackageInfo(moduleInfo.getPackageName(), 1073741824);
                this.isDynamicPermissionEnabledInMP = packageInfo.getLongVersionCode() >= MIN_DYNAMIC_PERMISSIONS_MP_VERSION;
            } catch (PackageManager.NameNotFoundException e) {
                Slog.i(TAG, "Module name not found:  com.android.mediaprovider");
                this.isDynamicPermissionEnabledInMP = true;
            }
            return this.isDynamicPermissionEnabledInMP;
        } finally {
            this.isMPVersionChecked = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeUriPermissionIfNeededLocked(UriPermission perm) {
        ArrayMap<GrantUri, UriPermission> perms;
        if (perm.modeFlags != 0 || (perms = this.mGrantedUriPermissions.get(perm.targetUid)) == null) {
            return;
        }
        perms.remove(perm.uri);
        if (perms.isEmpty()) {
            this.mGrantedUriPermissions.remove(perm.targetUid);
        }
    }

    private UriPermission findUriPermissionLocked(int targetUid, GrantUri grantUri) {
        ArrayMap<GrantUri, UriPermission> targetUris = this.mGrantedUriPermissions.get(targetUid);
        if (targetUris != null) {
            return targetUris.get(grantUri);
        }
        return null;
    }

    private void schedulePersistUriGrants() {
        if (!this.mH.hasMessages(1)) {
            H h = this.mH;
            h.sendMessageDelayed(h.obtainMessage(1), JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceNotIsolatedCaller(String caller) {
        if (UserHandle.isIsolated(Binder.getCallingUid())) {
            throw new SecurityException("Isolated process not allowed to call " + caller);
        }
    }

    private ProviderInfo getProviderInfo(String authority, int userHandle, int pmFlags) {
        return this.mPmInternal.resolveContentProvider(authority, pmFlags | 2048, userHandle);
    }

    private int checkGrantUriPermissionUnlocked(int callingUid, String targetPkg, GrantUri grantUri, int modeFlags, int lastTargetUid) {
        int targetUid;
        int i;
        boolean grantAllowed;
        boolean res;
        if (!Intent.isAccessUriMode(modeFlags) || !ActivityTaskManagerInternal.ASSIST_KEY_CONTENT.equals(grantUri.uri.getScheme())) {
            return -1;
        }
        int callingAppId = UserHandle.getAppId(callingUid);
        if ((callingAppId == 1000 || callingAppId == 0) && !"com.android.settings.files".equals(grantUri.uri.getAuthority()) && !"com.android.settings.module_licenses".equals(grantUri.uri.getAuthority())) {
            Slog.w(TAG, "For security reasons, the system cannot issue a Uri permission grant to " + grantUri + "; use startActivityAsCaller() instead");
            return -1;
        }
        String authority = grantUri.uri.getAuthority();
        ProviderInfo pi = getProviderInfo(authority, grantUri.sourceUserId, AudioFormat.EVRC);
        if (pi == null) {
            Slog.w(TAG, "No content provider found for permission check: " + grantUri.uri.toSafeString());
            return -1;
        }
        if (lastTargetUid < 0 && targetPkg != null) {
            int targetUid2 = this.mPmInternal.getPackageUidInternal(targetPkg, AudioFormat.EVRC, UserHandle.getUserId(callingUid));
            if (targetUid2 < 0) {
                return -1;
            }
            targetUid = targetUid2;
        } else {
            targetUid = lastTargetUid;
        }
        int targetUid3 = 0;
        if (targetUid >= 0) {
            if (checkHoldingPermissionsUnlocked(pi, grantUri, targetUid, modeFlags)) {
                targetUid3 = 1;
            }
        } else {
            boolean allowed = pi.exported;
            if ((modeFlags & 1) != 0 && pi.readPermission != null) {
                allowed = false;
            }
            if ((modeFlags & 2) != 0 && pi.writePermission != null) {
                allowed = false;
            }
            if (pi.pathPermissions != null) {
                int N = pi.pathPermissions.length;
                for (int i2 = 0; i2 < N; i2++) {
                    if (pi.pathPermissions[i2] != null && pi.pathPermissions[i2].match(grantUri.uri.getPath())) {
                        if ((modeFlags & 1) != 0 && pi.pathPermissions[i2].getReadPermission() != null) {
                            allowed = false;
                        }
                        if ((modeFlags & 2) != 0 && pi.pathPermissions[i2].getWritePermission() != null) {
                            allowed = false;
                            break;
                        }
                        break;
                        break;
                    }
                }
            }
            if (allowed) {
                targetUid3 = 1;
            }
        }
        if (!pi.forceUriPermissions) {
            i = targetUid3;
        } else {
            i = 0;
        }
        boolean z = false;
        boolean basicGrant = (modeFlags & CecMessageType.INITIATE_ARC) == 0;
        if (basicGrant && i != 0) {
            this.mPmInternal.grantImplicitAccess(UserHandle.getUserId(targetUid), null, UserHandle.getAppId(targetUid), pi.applicationInfo.uid, false);
            return -1;
        }
        if (targetUid >= 0 && UserHandle.getUserId(targetUid) != grantUri.sourceUserId && checkHoldingPermissionsInternalUnlocked(pi, grantUri, callingUid, modeFlags, false)) {
            z = true;
        }
        boolean specialCrossUserGrant = z;
        boolean grantAllowed2 = pi.grantUriPermissions;
        if (ArrayUtils.isEmpty(pi.uriPermissionPatterns)) {
            grantAllowed = grantAllowed2;
        } else {
            int N2 = pi.uriPermissionPatterns.length;
            int i3 = 0;
            while (true) {
                if (i3 >= N2) {
                    grantAllowed = false;
                    break;
                }
                if (pi.uriPermissionPatterns[i3] == null || !pi.uriPermissionPatterns[i3].match(grantUri.uri.getPath())) {
                    i3++;
                } else {
                    grantAllowed = true;
                    break;
                }
            }
        }
        if (!grantAllowed) {
            if (specialCrossUserGrant) {
                if (!basicGrant) {
                    throw new SecurityException("Provider " + pi.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + pi.name + " does not allow granting of advanced Uri permissions (uri " + grantUri + ")");
                }
            } else {
                throw new SecurityException("Provider " + pi.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + pi.name + " does not allow granting of Uri permissions (uri " + grantUri + ")");
            }
        }
        if (!checkHoldingPermissionsUnlocked(pi, grantUri, callingUid, modeFlags)) {
            synchronized (this.mLock) {
                res = checkUriPermissionLocked(grantUri, callingUid, modeFlags);
            }
            if (!res) {
                if ("android.permission.MANAGE_DOCUMENTS".equals(pi.readPermission)) {
                    throw new SecurityException("UID " + callingUid + " does not have permission to " + grantUri + "; you could obtain access using ACTION_OPEN_DOCUMENT or related APIs");
                }
                throw new SecurityException("UID " + callingUid + " does not have permission to " + grantUri);
            }
        }
        return targetUid;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int checkGrantUriPermissionUnlocked(int callingUid, String targetPkg, Uri uri, int modeFlags, int userId) {
        return checkGrantUriPermissionUnlocked(callingUid, targetPkg, new GrantUri(userId, uri, modeFlags), modeFlags, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkUriPermissionLocked(GrantUri grantUri, int uid, int modeFlags) {
        boolean persistable = (modeFlags & 64) != 0;
        int minStrength = persistable ? 3 : 1;
        if (uid == 0) {
            return true;
        }
        ArrayMap<GrantUri, UriPermission> perms = this.mGrantedUriPermissions.get(uid);
        if (perms == null) {
            return false;
        }
        UriPermission exactPerm = perms.get(grantUri);
        if (exactPerm != null && exactPerm.getStrength(modeFlags) >= minStrength) {
            return true;
        }
        int N = perms.size();
        for (int i = 0; i < N; i++) {
            UriPermission perm = perms.valueAt(i);
            if (perm.uri.prefix && grantUri.uri.isPathPrefixMatch(perm.uri.uri) && perm.getStrength(modeFlags) >= minStrength) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeGrantedUriPermissionsLocked() {
        long startTime = SystemClock.uptimeMillis();
        ArrayList<UriPermission.Snapshot> persist = Lists.newArrayList();
        synchronized (this) {
            int size = this.mGrantedUriPermissions.size();
            for (int i = 0; i < size; i++) {
                ArrayMap<GrantUri, UriPermission> perms = this.mGrantedUriPermissions.valueAt(i);
                for (UriPermission perm : perms.values()) {
                    if (perm.persistedModeFlags != 0) {
                        persist.add(perm.snapshot());
                    }
                }
            }
        }
        FileOutputStream fos = null;
        try {
            fos = this.mGrantFile.startWrite(startTime);
            FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
            fastXmlSerializer.setOutput(fos, StandardCharsets.UTF_8.name());
            fastXmlSerializer.startDocument(null, true);
            fastXmlSerializer.startTag(null, TAG_URI_GRANTS);
            for (UriPermission.Snapshot perm2 : persist) {
                fastXmlSerializer.startTag(null, TAG_URI_GRANT);
                XmlUtils.writeIntAttribute(fastXmlSerializer, ATTR_SOURCE_USER_ID, perm2.uri.sourceUserId);
                XmlUtils.writeIntAttribute(fastXmlSerializer, ATTR_TARGET_USER_ID, perm2.targetUserId);
                fastXmlSerializer.attribute(null, ATTR_SOURCE_PKG, perm2.sourcePkg);
                fastXmlSerializer.attribute(null, ATTR_TARGET_PKG, perm2.targetPkg);
                fastXmlSerializer.attribute(null, ATTR_URI, String.valueOf(perm2.uri.uri));
                XmlUtils.writeBooleanAttribute(fastXmlSerializer, ATTR_PREFIX, perm2.uri.prefix);
                XmlUtils.writeIntAttribute(fastXmlSerializer, ATTR_MODE_FLAGS, perm2.persistedModeFlags);
                XmlUtils.writeLongAttribute(fastXmlSerializer, ATTR_CREATED_TIME, perm2.persistedCreateTime);
                fastXmlSerializer.endTag(null, TAG_URI_GRANT);
            }
            fastXmlSerializer.endTag(null, TAG_URI_GRANTS);
            fastXmlSerializer.endDocument();
            this.mGrantFile.finishWrite(fos);
        } catch (IOException e) {
            if (fos != null) {
                this.mGrantFile.failWrite(fos);
            }
        }
    }

    final class H extends Handler {
        static final int PERSIST_URI_GRANTS_MSG = 1;

        public H(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 1) {
                synchronized (UriGrantsManagerService.this.mLock) {
                    UriGrantsManagerService.this.writeGrantedUriPermissionsLocked();
                }
            }
        }
    }

    private final class LocalService implements UriGrantsManagerInternal {
        private LocalService() {
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public void removeUriPermissionIfNeeded(UriPermission perm) {
            synchronized (UriGrantsManagerService.this.mLock) {
                UriGrantsManagerService.this.removeUriPermissionIfNeededLocked(perm);
            }
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public void revokeUriPermission(String targetPackage, int callingUid, GrantUri grantUri, int modeFlags) {
            UriGrantsManagerService.this.revokeUriPermission(targetPackage, callingUid, grantUri, modeFlags);
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public boolean checkUriPermission(GrantUri grantUri, int uid, int modeFlags) {
            boolean zCheckUriPermissionLocked;
            synchronized (UriGrantsManagerService.this.mLock) {
                zCheckUriPermissionLocked = UriGrantsManagerService.this.checkUriPermissionLocked(grantUri, uid, modeFlags);
            }
            return zCheckUriPermissionLocked;
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public int checkGrantUriPermission(int callingUid, String targetPkg, Uri uri, int modeFlags, int userId) {
            UriGrantsManagerService.this.enforceNotIsolatedCaller("checkGrantUriPermission");
            return UriGrantsManagerService.this.checkGrantUriPermissionUnlocked(callingUid, targetPkg, uri, modeFlags, userId);
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public NeededUriGrants checkGrantUriPermissionFromIntent(Intent intent, int callingUid, String targetPkg, int targetUserId) {
            int mode = intent != null ? intent.getFlags() : 0;
            return UriGrantsManagerService.this.checkGrantUriPermissionFromIntentUnlocked(callingUid, targetPkg, intent, mode, null, targetUserId);
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public void grantUriPermissionUncheckedFromIntent(NeededUriGrants needed, UriPermissionOwner owner) {
            UriGrantsManagerService.this.grantUriPermissionUncheckedFromIntent(needed, owner);
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public void onSystemReady() {
            synchronized (UriGrantsManagerService.this.mLock) {
                UriGrantsManagerService.this.readGrantedUriPermissionsLocked();
            }
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public IBinder newUriPermissionOwner(String name) {
            UriGrantsManagerService.this.enforceNotIsolatedCaller("newUriPermissionOwner");
            UriPermissionOwner owner = new UriPermissionOwner(this, name);
            return owner.getExternalToken();
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public void removeUriPermissionsForPackage(String packageName, int userHandle, boolean persistable, boolean targetOnly) {
            synchronized (UriGrantsManagerService.this.mLock) {
                UriGrantsManagerService.this.removeUriPermissionsForPackageLocked(packageName, userHandle, persistable, targetOnly);
            }
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public void revokeUriPermissionFromOwner(IBinder token, Uri uri, int mode, int userId) {
            revokeUriPermissionFromOwner(token, uri, mode, userId, null, -1);
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public void revokeUriPermissionFromOwner(IBinder token, Uri uri, int mode, int userId, String targetPkg, int targetUserId) {
            UriPermissionOwner owner = UriPermissionOwner.fromExternalToken(token);
            if (owner == null) {
                throw new IllegalArgumentException("Unknown owner: " + token);
            }
            GrantUri grantUri = uri == null ? null : new GrantUri(userId, uri, mode);
            owner.removeUriPermission(grantUri, mode, targetPkg, targetUserId);
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public boolean checkAuthorityGrants(int callingUid, ProviderInfo cpi, int userId, boolean checkUser) {
            boolean zCheckAuthorityGrantsLocked;
            synchronized (UriGrantsManagerService.this.mLock) {
                zCheckAuthorityGrantsLocked = UriGrantsManagerService.this.checkAuthorityGrantsLocked(callingUid, cpi, userId, checkUser);
            }
            return zCheckAuthorityGrantsLocked;
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public void dump(PrintWriter pw, boolean dumpAll, String dumpPackage) {
            synchronized (UriGrantsManagerService.this.mLock) {
                boolean needSep = false;
                boolean printedAnything = false;
                if (UriGrantsManagerService.this.mGrantedUriPermissions.size() > 0) {
                    boolean printed = false;
                    int dumpUid = -2;
                    if (dumpPackage != null) {
                        dumpUid = UriGrantsManagerService.this.mPmInternal.getPackageUidInternal(dumpPackage, 4194304, 0);
                    }
                    for (int i = 0; i < UriGrantsManagerService.this.mGrantedUriPermissions.size(); i++) {
                        int uid = UriGrantsManagerService.this.mGrantedUriPermissions.keyAt(i);
                        if (dumpUid < -1 || UserHandle.getAppId(uid) == dumpUid) {
                            ArrayMap<GrantUri, UriPermission> perms = (ArrayMap) UriGrantsManagerService.this.mGrantedUriPermissions.valueAt(i);
                            if (!printed) {
                                if (needSep) {
                                    pw.println();
                                }
                                needSep = true;
                                pw.println("  Granted Uri Permissions:");
                                printed = true;
                                printedAnything = true;
                            }
                            pw.print("  * UID ");
                            pw.print(uid);
                            pw.println(" holds:");
                            for (UriPermission perm : perms.values()) {
                                pw.print("    ");
                                pw.println(perm);
                                if (dumpAll) {
                                    perm.dump(pw, "      ");
                                }
                            }
                        }
                    }
                }
                if (!printedAnything) {
                    pw.println("  (nothing)");
                }
            }
        }
    }
}

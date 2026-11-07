package com.android.server.pm;

import android.app.Person;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.LocusId;
import android.content.pm.PackageInfo;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.content.res.Resources;
import android.graphics.drawable.Icon;
import android.os.PersistableBundle;
import android.text.format.Formatter;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.Log;
import android.util.Slog;
import android.util.Xml;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.CollectionUtils;
import com.android.internal.util.Preconditions;
import com.android.internal.util.XmlUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import libcore.io.IoUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
class ShortcutPackage extends ShortcutPackageItem {
    private static final String ATTR_ACTIVITY = "activity";
    private static final String ATTR_BITMAP_PATH = "bitmap-path";
    private static final String ATTR_CALL_COUNT = "call-count";
    private static final String ATTR_DISABLED_MESSAGE = "dmessage";
    private static final String ATTR_DISABLED_MESSAGE_RES_ID = "dmessageid";
    private static final String ATTR_DISABLED_MESSAGE_RES_NAME = "dmessagename";
    private static final String ATTR_DISABLED_REASON = "disabled-reason";
    private static final String ATTR_FLAGS = "flags";
    private static final String ATTR_ICON_RES_ID = "icon-res";
    private static final String ATTR_ICON_RES_NAME = "icon-resname";
    private static final String ATTR_ICON_URI = "icon-uri";
    private static final String ATTR_ID = "id";
    private static final String ATTR_INTENT_LEGACY = "intent";
    private static final String ATTR_INTENT_NO_EXTRA = "intent-base";
    private static final String ATTR_LAST_RESET = "last-reset";
    private static final String ATTR_LOCUS_ID = "locus-id";
    private static final String ATTR_NAME = "name";
    private static final String ATTR_NAME_XMLUTILS = "name";
    private static final String ATTR_PERSON_IS_BOT = "is-bot";
    private static final String ATTR_PERSON_IS_IMPORTANT = "is-important";
    private static final String ATTR_PERSON_KEY = "key";
    private static final String ATTR_PERSON_NAME = "name";
    private static final String ATTR_PERSON_URI = "uri";
    private static final String ATTR_RANK = "rank";
    private static final String ATTR_TEXT = "text";
    private static final String ATTR_TEXT_RES_ID = "textid";
    private static final String ATTR_TEXT_RES_NAME = "textname";
    private static final String ATTR_TIMESTAMP = "timestamp";
    private static final String ATTR_TITLE = "title";
    private static final String ATTR_TITLE_RES_ID = "titleid";
    private static final String ATTR_TITLE_RES_NAME = "titlename";
    private static final String KEY_BITMAPS = "bitmaps";
    private static final String KEY_BITMAP_BYTES = "bitmapBytes";
    private static final String KEY_DYNAMIC = "dynamic";
    private static final String KEY_MANIFEST = "manifest";
    private static final String KEY_PINNED = "pinned";
    private static final String NAME_CATEGORIES = "categories";
    private static final String TAG = "ShortcutService";
    private static final String TAG_CATEGORIES = "categories";
    private static final String TAG_EXTRAS = "extras";
    private static final String TAG_INTENT = "intent";
    private static final String TAG_INTENT_EXTRAS_LEGACY = "intent-extras";
    private static final String TAG_PERSON = "person";
    static final String TAG_ROOT = "package";
    private static final String TAG_SHARE_TARGET = "share-target";
    private static final String TAG_SHORTCUT = "shortcut";
    private static final String TAG_STRING_ARRAY_XMLUTILS = "string-array";
    private static final String TAG_VERIFY = "ShortcutService.verify";
    private int mApiCallCount;
    private long mLastKnownForegroundElapsedTime;
    private long mLastResetTime;
    private final int mPackageUid;
    private final ArrayList<ShareTargetInfo> mShareTargets;
    final Comparator<ShortcutInfo> mShortcutRankComparator;
    final Comparator<ShortcutInfo> mShortcutTypeAndRankComparator;
    final Comparator<ShortcutInfo> mShortcutTypeRankAndTimeComparator;
    private final ArrayMap<String, ShortcutInfo> mShortcuts;

    private ShortcutPackage(ShortcutUser shortcutUser, int packageUserId, String packageName, ShortcutPackageInfo spi) {
        super(shortcutUser, packageUserId, packageName, spi != null ? spi : ShortcutPackageInfo.newEmpty());
        this.mShortcuts = new ArrayMap<>();
        this.mShareTargets = new ArrayList<>(0);
        this.mShortcutTypeAndRankComparator = new Comparator() { // from class: com.android.server.pm.-$$Lambda$ShortcutPackage$hEXnzlESoRjagj8Pd9f4PrqudKE
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ShortcutPackage.lambda$new$2((ShortcutInfo) obj, (ShortcutInfo) obj2);
            }
        };
        this.mShortcutTypeRankAndTimeComparator = new Comparator() { // from class: com.android.server.pm.-$$Lambda$ShortcutPackage$jcUyxg5l9qGGi0pCPY7M916NGbo
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ShortcutPackage.lambda$new$3((ShortcutInfo) obj, (ShortcutInfo) obj2);
            }
        };
        this.mShortcutRankComparator = new Comparator() { // from class: com.android.server.pm.-$$Lambda$ShortcutPackage$nVx2VpCTQ2Bb7_CZQMyWnZfFKwc
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ShortcutPackage.lambda$new$4((ShortcutInfo) obj, (ShortcutInfo) obj2);
            }
        };
        this.mPackageUid = shortcutUser.mService.injectGetPackageUid(packageName, packageUserId);
    }

    public ShortcutPackage(ShortcutUser shortcutUser, int packageUserId, String packageName) {
        this(shortcutUser, packageUserId, packageName, null);
    }

    @Override // com.android.server.pm.ShortcutPackageItem
    public int getOwnerUserId() {
        return getPackageUserId();
    }

    public int getPackageUid() {
        return this.mPackageUid;
    }

    public Resources getPackageResources() {
        return this.mShortcutUser.mService.injectGetResourcesForApplicationAsUser(getPackageName(), getPackageUserId());
    }

    public int getShortcutCount() {
        return this.mShortcuts.size();
    }

    @Override // com.android.server.pm.ShortcutPackageItem
    protected boolean canRestoreAnyVersion() {
        return false;
    }

    @Override // com.android.server.pm.ShortcutPackageItem
    protected void onRestored(int restoreBlockReason) {
        for (int i = this.mShortcuts.size() - 1; i >= 0; i--) {
            ShortcutInfo si = this.mShortcuts.valueAt(i);
            si.clearFlags(4096);
            si.setDisabledReason(restoreBlockReason);
            if (restoreBlockReason != 0) {
                si.addFlags(64);
            }
        }
        refreshPinnedFlags();
    }

    public ShortcutInfo findShortcutById(String id) {
        return this.mShortcuts.get(id);
    }

    public boolean isShortcutExistsAndInvisibleToPublisher(String id) {
        ShortcutInfo si = findShortcutById(id);
        return (si == null || si.isVisibleToPublisher()) ? false : true;
    }

    public boolean isShortcutExistsAndVisibleToPublisher(String id) {
        ShortcutInfo si = findShortcutById(id);
        return si != null && si.isVisibleToPublisher();
    }

    private void ensureNotImmutable(ShortcutInfo shortcut, boolean ignoreInvisible) {
        if (shortcut != null && shortcut.isImmutable()) {
            if (!ignoreInvisible || shortcut.isVisibleToPublisher()) {
                throw new IllegalArgumentException("Manifest shortcut ID=" + shortcut.getId() + " may not be manipulated via APIs");
            }
        }
    }

    public void ensureNotImmutable(String id, boolean ignoreInvisible) {
        ensureNotImmutable(this.mShortcuts.get(id), ignoreInvisible);
    }

    public void ensureImmutableShortcutsNotIncludedWithIds(List<String> shortcutIds, boolean ignoreInvisible) {
        for (int i = shortcutIds.size() - 1; i >= 0; i--) {
            ensureNotImmutable(shortcutIds.get(i), ignoreInvisible);
        }
    }

    public void ensureImmutableShortcutsNotIncluded(List<ShortcutInfo> shortcuts, boolean ignoreInvisible) {
        for (int i = shortcuts.size() - 1; i >= 0; i--) {
            ensureNotImmutable(shortcuts.get(i).getId(), ignoreInvisible);
        }
    }

    public void ensureNoBitmapIconIfShortcutIsLongLived(List<ShortcutInfo> shortcuts) {
        Icon icon;
        for (int i = shortcuts.size() - 1; i >= 0; i--) {
            ShortcutInfo si = shortcuts.get(i);
            if (si.isLongLived() && (((icon = si.getIcon()) == null || icon.getType() == 1 || icon.getType() != 5) && (icon != null || si.hasIconFile()))) {
                Slog.e(TAG, "Invalid icon type in shortcut " + si.getId() + ". Bitmaps are not allowed in long-lived shortcuts. Use Resource icons, or Uri-based icons instead.");
                return;
            }
        }
    }

    private ShortcutInfo forceDeleteShortcutInner(String id) {
        ShortcutInfo shortcut = this.mShortcuts.remove(id);
        if (shortcut != null) {
            this.mShortcutUser.mService.removeIconLocked(shortcut);
            shortcut.clearFlags(1073758243);
        }
        return shortcut;
    }

    private void forceReplaceShortcutInner(ShortcutInfo newShortcut) {
        ShortcutService s = this.mShortcutUser.mService;
        forceDeleteShortcutInner(newShortcut.getId());
        s.saveIconAndFixUpShortcutLocked(newShortcut);
        s.fixUpShortcutResourceNamesAndValues(newShortcut);
        ensureShortcutCountBeforePush();
        this.mShortcuts.put(newShortcut.getId(), newShortcut);
    }

    public boolean addOrReplaceDynamicShortcut(ShortcutInfo newShortcut) {
        Preconditions.checkArgument(newShortcut.isEnabled(), "add/setDynamicShortcuts() cannot publish disabled shortcuts");
        newShortcut.addFlags(1);
        ShortcutInfo oldShortcut = this.mShortcuts.get(newShortcut.getId());
        if (oldShortcut != null) {
            oldShortcut.ensureUpdatableWith(newShortcut, false);
            newShortcut.addFlags(oldShortcut.getFlags() & 1073758210);
        }
        forceReplaceShortcutInner(newShortcut);
        if (oldShortcut != null) {
            return true;
        }
        return false;
    }

    public boolean pushDynamicShortcut(ShortcutInfo newShortcut, List<ShortcutInfo> changedShortcuts) {
        Preconditions.checkArgument(newShortcut.isEnabled(), "pushDynamicShortcuts() cannot publish disabled shortcuts");
        boolean z = true;
        newShortcut.addFlags(1);
        changedShortcuts.clear();
        ShortcutInfo oldShortcut = this.mShortcuts.get(newShortcut.getId());
        boolean deleted = false;
        if (oldShortcut == null || !oldShortcut.isDynamic()) {
            ShortcutService service = this.mShortcutUser.mService;
            int maxShortcuts = service.getMaxActivityShortcuts();
            ArrayMap<ComponentName, ArrayList<ShortcutInfo>> all = sortShortcutsToActivities();
            ArrayList<ShortcutInfo> activityShortcuts = all.get(newShortcut.getActivity());
            if (activityShortcuts != null && activityShortcuts.size() == maxShortcuts) {
                Collections.sort(activityShortcuts, this.mShortcutTypeAndRankComparator);
                ShortcutInfo shortcut = activityShortcuts.get(maxShortcuts - 1);
                if (shortcut.isManifestShortcut()) {
                    Slog.e(TAG, "Failed to remove manifest shortcut while pushing dynamic shortcut " + newShortcut.getId());
                    return true;
                }
                changedShortcuts.add(shortcut);
                if (deleteDynamicWithId(shortcut.getId(), true) == null) {
                    z = false;
                }
                deleted = z;
            }
        }
        if (oldShortcut != null) {
            oldShortcut.ensureUpdatableWith(newShortcut, false);
            newShortcut.addFlags(oldShortcut.getFlags() & 1073758210);
        }
        forceReplaceShortcutInner(newShortcut);
        return deleted;
    }

    private void ensureShortcutCountBeforePush() {
        ShortcutService service = this.mShortcutUser.mService;
        int maxShortcutPerApp = service.getMaxAppShortcuts();
        List<ShortcutInfo> appShortcuts = (List) this.mShortcuts.values().stream().filter(new Predicate() { // from class: com.android.server.pm.-$$Lambda$ShortcutPackage$wyWK9o3L7XWbkjo1SZ8mCQQ78Dc
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ShortcutPackage.lambda$ensureShortcutCountBeforePush$0((ShortcutInfo) obj);
            }
        }).collect(Collectors.toList());
        if (appShortcuts.size() >= maxShortcutPerApp) {
            Collections.sort(appShortcuts, this.mShortcutTypeRankAndTimeComparator);
            while (appShortcuts.size() >= maxShortcutPerApp) {
                ShortcutInfo shortcut = appShortcuts.remove(appShortcuts.size() - 1);
                if (shortcut.isDeclaredInManifest()) {
                    throw new IllegalArgumentException(getPackageName() + " has published " + appShortcuts.size() + " manifest shortcuts across different activities.");
                }
                forceDeleteShortcutInner(shortcut.getId());
            }
        }
    }

    static /* synthetic */ boolean lambda$ensureShortcutCountBeforePush$0(ShortcutInfo si) {
        return !si.isPinned();
    }

    private List<ShortcutInfo> removeOrphans() {
        List<ShortcutInfo> removeList = null;
        for (int i = this.mShortcuts.size() - 1; i >= 0; i--) {
            ShortcutInfo si = this.mShortcuts.valueAt(i);
            if (!si.isAlive()) {
                if (removeList == null) {
                    removeList = new ArrayList<>();
                }
                removeList.add(si);
            }
        }
        if (removeList != null) {
            for (int i2 = removeList.size() - 1; i2 >= 0; i2--) {
                forceDeleteShortcutInner(removeList.get(i2).getId());
            }
        }
        return removeList;
    }

    public List<ShortcutInfo> deleteAllDynamicShortcuts(boolean ignoreInvisible) {
        long now = this.mShortcutUser.mService.injectCurrentTimeMillis();
        boolean changed = false;
        for (int i = this.mShortcuts.size() - 1; i >= 0; i--) {
            ShortcutInfo si = this.mShortcuts.valueAt(i);
            if (si.isDynamic() && (!ignoreInvisible || si.isVisibleToPublisher())) {
                changed = true;
                si.setTimestamp(now);
                si.clearFlags(1);
                si.setRank(0);
            }
        }
        if (changed) {
            return removeOrphans();
        }
        return null;
    }

    public ShortcutInfo deleteDynamicWithId(String shortcutId, boolean ignoreInvisible) {
        return deleteOrDisableWithId(shortcutId, false, false, ignoreInvisible, 0);
    }

    private ShortcutInfo disableDynamicWithId(String shortcutId, boolean ignoreInvisible, int disabledReason) {
        return deleteOrDisableWithId(shortcutId, true, false, ignoreInvisible, disabledReason);
    }

    public ShortcutInfo deleteLongLivedWithId(String shortcutId, boolean ignoreInvisible) {
        ShortcutInfo shortcut = this.mShortcuts.get(shortcutId);
        if (shortcut != null) {
            shortcut.clearFlags(1073758208);
        }
        return deleteOrDisableWithId(shortcutId, false, false, ignoreInvisible, 0);
    }

    public ShortcutInfo disableWithId(String shortcutId, String disabledMessage, int disabledMessageResId, boolean overrideImmutable, boolean ignoreInvisible, int disabledReason) {
        ShortcutInfo deleted = deleteOrDisableWithId(shortcutId, true, overrideImmutable, ignoreInvisible, disabledReason);
        ShortcutInfo disabled = this.mShortcuts.get(shortcutId);
        if (disabled != null) {
            if (disabledMessage != null) {
                disabled.setDisabledMessage(disabledMessage);
            } else if (disabledMessageResId != 0) {
                disabled.setDisabledMessageResId(disabledMessageResId);
                this.mShortcutUser.mService.fixUpShortcutResourceNamesAndValues(disabled);
            }
        }
        return deleted;
    }

    private ShortcutInfo deleteOrDisableWithId(String shortcutId, boolean disable, boolean overrideImmutable, boolean ignoreInvisible, int disabledReason) {
        Preconditions.checkState(disable == (disabledReason != 0), "disable and disabledReason disagree: " + disable + " vs " + disabledReason);
        ShortcutInfo oldShortcut = this.mShortcuts.get(shortcutId);
        if (oldShortcut == null || (!oldShortcut.isEnabled() && ignoreInvisible && !oldShortcut.isVisibleToPublisher())) {
            return null;
        }
        if (!overrideImmutable) {
            ensureNotImmutable(oldShortcut, true);
        }
        if (oldShortcut.isPinned() || oldShortcut.isCached()) {
            oldShortcut.setRank(0);
            oldShortcut.clearFlags(33);
            if (disable) {
                oldShortcut.addFlags(64);
                if (oldShortcut.getDisabledReason() == 0) {
                    oldShortcut.setDisabledReason(disabledReason);
                }
            }
            oldShortcut.setTimestamp(this.mShortcutUser.mService.injectCurrentTimeMillis());
            if (this.mShortcutUser.mService.isDummyMainActivity(oldShortcut.getActivity())) {
                oldShortcut.setActivity(null);
            }
            return null;
        }
        forceDeleteShortcutInner(shortcutId);
        return oldShortcut;
    }

    public void enableWithId(String shortcutId) {
        ShortcutInfo shortcut = this.mShortcuts.get(shortcutId);
        if (shortcut != null) {
            ensureNotImmutable(shortcut, true);
            shortcut.clearFlags(64);
            shortcut.setDisabledReason(0);
        }
    }

    public void updateInvisibleShortcutForPinRequestWith(ShortcutInfo shortcut) {
        ShortcutInfo source = this.mShortcuts.get(shortcut.getId());
        Objects.requireNonNull(source);
        this.mShortcutUser.mService.validateShortcutForPinRequest(shortcut);
        shortcut.addFlags(2);
        forceReplaceShortcutInner(shortcut);
        adjustRanks();
    }

    public void refreshPinnedFlags() {
        for (int i = this.mShortcuts.size() - 1; i >= 0; i--) {
            this.mShortcuts.valueAt(i).clearFlags(2);
        }
        this.mShortcutUser.forAllLaunchers(new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutPackage$Zw3V6n6UW0H5ukMFmbLfYzri3t0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$refreshPinnedFlags$1$ShortcutPackage((ShortcutLauncher) obj);
            }
        });
        removeOrphans();
    }

    public /* synthetic */ void lambda$refreshPinnedFlags$1$ShortcutPackage(ShortcutLauncher launcherShortcuts) {
        ArraySet<String> pinned = launcherShortcuts.getPinnedShortcutIds(getPackageName(), getPackageUserId());
        if (pinned == null || pinned.size() == 0) {
            return;
        }
        for (int i = pinned.size() - 1; i >= 0; i--) {
            String id = pinned.valueAt(i);
            ShortcutInfo si = this.mShortcuts.get(id);
            if (si != null) {
                si.addFlags(2);
            }
        }
    }

    public int getApiCallCount(boolean unlimited) {
        ShortcutService s = this.mShortcutUser.mService;
        if (s.isUidForegroundLocked(this.mPackageUid) || this.mLastKnownForegroundElapsedTime < s.getUidLastForegroundElapsedTimeLocked(this.mPackageUid) || unlimited) {
            this.mLastKnownForegroundElapsedTime = s.injectElapsedRealtime();
            resetRateLimiting();
        }
        long last = s.getLastResetTimeLocked();
        long now = s.injectCurrentTimeMillis();
        if (ShortcutService.isClockValid(now) && this.mLastResetTime > now) {
            Slog.w(TAG, "Clock rewound");
            this.mLastResetTime = now;
            this.mApiCallCount = 0;
            return 0;
        }
        if (this.mLastResetTime < last) {
            this.mApiCallCount = 0;
            this.mLastResetTime = last;
        }
        return this.mApiCallCount;
    }

    public boolean tryApiCall(boolean unlimited) {
        ShortcutService s = this.mShortcutUser.mService;
        if (getApiCallCount(unlimited) >= s.mMaxUpdatesPerInterval) {
            return false;
        }
        this.mApiCallCount++;
        s.scheduleSaveUser(getOwnerUserId());
        return true;
    }

    public void resetRateLimiting() {
        if (this.mApiCallCount > 0) {
            this.mApiCallCount = 0;
            this.mShortcutUser.mService.scheduleSaveUser(getOwnerUserId());
        }
    }

    public void resetRateLimitingForCommandLineNoSaving() {
        this.mApiCallCount = 0;
        this.mLastResetTime = 0L;
    }

    public void findAll(List<ShortcutInfo> result, Predicate<ShortcutInfo> query, int cloneFlag) {
        findAll(result, query, cloneFlag, null, 0, false);
    }

    public void findAll(List<ShortcutInfo> result, Predicate<ShortcutInfo> query, int cloneFlag, String callingLauncher, int launcherUserId, boolean getPinnedByAnyLauncher) {
        if (getPackageInfo().isShadow()) {
            return;
        }
        ShortcutService s = this.mShortcutUser.mService;
        ArraySet<String> pinnedByCallerSet = callingLauncher == null ? null : s.getLauncherShortcutsLocked(callingLauncher, getPackageUserId(), launcherUserId).getPinnedShortcutIds(getPackageName(), getPackageUserId());
        for (int i = 0; i < this.mShortcuts.size(); i++) {
            ShortcutInfo si = this.mShortcuts.valueAt(i);
            boolean isPinnedByCaller = callingLauncher == null || (pinnedByCallerSet != null && pinnedByCallerSet.contains(si.getId()));
            if (getPinnedByAnyLauncher || !si.isFloating() || isPinnedByCaller) {
                ShortcutInfo clone = si.clone(cloneFlag);
                if (!getPinnedByAnyLauncher && !isPinnedByCaller) {
                    clone.clearFlags(2);
                }
                if (query == null || query.test(clone)) {
                    if (!isPinnedByCaller) {
                        clone.clearFlags(2);
                    }
                    result.add(clone);
                }
            }
        }
    }

    public void resetThrottling() {
        this.mApiCallCount = 0;
    }

    public List<ShortcutManager.ShareShortcutInfo> getMatchingShareTargets(IntentFilter filter) {
        List<ShareTargetInfo> matchedTargets = new ArrayList<>();
        for (int i = 0; i < this.mShareTargets.size(); i++) {
            ShareTargetInfo target = this.mShareTargets.get(i);
            for (ShareTargetInfo.TargetData data : target.mTargetData) {
                if (filter.hasDataType(data.mMimeType)) {
                    matchedTargets.add(target);
                    break;
                }
            }
        }
        if (matchedTargets.isEmpty()) {
            return new ArrayList();
        }
        ArrayList<ShortcutInfo> shortcuts = new ArrayList<>();
        findAll(shortcuts, $$Lambda$2VdstM0DO8CNjons0WtDfT1btWE.INSTANCE, 9);
        List<ShortcutManager.ShareShortcutInfo> result = new ArrayList<>();
        for (int i2 = 0; i2 < shortcuts.size(); i2++) {
            Set<String> categories = shortcuts.get(i2).getCategories();
            if (categories != null && !categories.isEmpty()) {
                for (int j = 0; j < matchedTargets.size(); j++) {
                    boolean hasAllCategories = true;
                    ShareTargetInfo target2 = matchedTargets.get(j);
                    for (int q = 0; q < target2.mCategories.length; q++) {
                        if (!categories.contains(target2.mCategories[q])) {
                            hasAllCategories = false;
                            break;
                        }
                    }
                    if (hasAllCategories) {
                        result.add(new ShortcutManager.ShareShortcutInfo(shortcuts.get(i2), new ComponentName(getPackageName(), target2.mTargetClass)));
                        break;
                    }
                }
            }
        }
        return result;
    }

    public boolean hasShareTargets() {
        return !this.mShareTargets.isEmpty();
    }

    int getSharingShortcutCount() {
        if (this.mShortcuts.isEmpty() || this.mShareTargets.isEmpty()) {
            return 0;
        }
        ArrayList<ShortcutInfo> shortcuts = new ArrayList<>();
        findAll(shortcuts, $$Lambda$2VdstM0DO8CNjons0WtDfT1btWE.INSTANCE, 27);
        int sharingShortcutCount = 0;
        for (int i = 0; i < shortcuts.size(); i++) {
            Set<String> categories = shortcuts.get(i).getCategories();
            if (categories != null && !categories.isEmpty()) {
                for (int j = 0; j < this.mShareTargets.size(); j++) {
                    boolean hasAllCategories = true;
                    ShareTargetInfo target = this.mShareTargets.get(j);
                    for (int q = 0; q < target.mCategories.length; q++) {
                        if (!categories.contains(target.mCategories[q])) {
                            hasAllCategories = false;
                            break;
                        }
                    }
                    if (hasAllCategories) {
                        sharingShortcutCount++;
                        break;
                    }
                }
            }
        }
        return sharingShortcutCount;
    }

    public ArraySet<String> getUsedBitmapFiles() {
        ArraySet<String> usedFiles = new ArraySet<>(this.mShortcuts.size());
        for (int i = this.mShortcuts.size() - 1; i >= 0; i--) {
            ShortcutInfo si = this.mShortcuts.valueAt(i);
            if (si.getBitmapPath() != null) {
                usedFiles.add(getFileName(si.getBitmapPath()));
            }
        }
        return usedFiles;
    }

    private static String getFileName(String path) {
        int sep = path.lastIndexOf(File.separatorChar);
        if (sep == -1) {
            return path;
        }
        return path.substring(sep + 1);
    }

    private boolean areAllActivitiesStillEnabled() {
        if (this.mShortcuts.size() == 0) {
            return true;
        }
        ShortcutService s = this.mShortcutUser.mService;
        ArrayList<ComponentName> checked = new ArrayList<>(4);
        for (int i = this.mShortcuts.size() - 1; i >= 0; i--) {
            ShortcutInfo si = this.mShortcuts.valueAt(i);
            ComponentName activity = si.getActivity();
            if (!checked.contains(activity)) {
                checked.add(activity);
                if (activity != null && !s.injectIsActivityEnabledAndExported(activity, getOwnerUserId())) {
                    return false;
                }
            }
        }
        return true;
    }

    public boolean rescanPackageIfNeeded(boolean isNewApp, boolean forceRescan) throws XmlPullParserException, IOException {
        char c;
        ShortcutService s = this.mShortcutUser.mService;
        long start = s.getStatStartTime();
        try {
            PackageInfo pi = this.mShortcutUser.mService.getPackageInfo(getPackageName(), getPackageUserId());
            char c2 = 0;
            if (pi == null) {
                s.logDurationStat(14, start);
                return false;
            }
            if (!isNewApp && !forceRescan && getPackageInfo().getVersionCode() == pi.getLongVersionCode() && getPackageInfo().getLastUpdateTime() == pi.lastUpdateTime && areAllActivitiesStillEnabled()) {
                s.logDurationStat(14, start);
                return false;
            }
            s.logDurationStat(14, start);
            List<ShortcutInfo> newManifestShortcutList = null;
            try {
                newManifestShortcutList = ShortcutParser.parseShortcuts(this.mShortcutUser.mService, getPackageName(), getPackageUserId(), this.mShareTargets);
            } catch (IOException | XmlPullParserException e) {
                Slog.e(TAG, "Failed to load shortcuts from AndroidManifest.xml.", e);
            }
            int manifestShortcutSize = newManifestShortcutList == null ? 0 : newManifestShortcutList.size();
            if (isNewApp && manifestShortcutSize == 0) {
                return false;
            }
            getPackageInfo().updateFromPackageInfo(pi);
            long newVersionCode = getPackageInfo().getVersionCode();
            for (int i = this.mShortcuts.size() - 1; i >= 0; i--) {
                ShortcutInfo si = this.mShortcuts.valueAt(i);
                if (si.getDisabledReason() == 100 && getPackageInfo().getBackupSourceVersionCode() <= newVersionCode) {
                    Slog.i(TAG, String.format("Restoring shortcut: %s", si.getId()));
                    si.clearFlags(64);
                    si.setDisabledReason(0);
                }
            }
            if (!isNewApp) {
                Resources publisherRes = null;
                int i2 = this.mShortcuts.size() - 1;
                while (i2 >= 0) {
                    ShortcutInfo si2 = this.mShortcuts.valueAt(i2);
                    if (!si2.isDynamic()) {
                        c = c2;
                    } else if (si2.getActivity() == null) {
                        s.wtf("null activity detected.");
                        c = c2;
                    } else if (s.injectIsMainActivity(si2.getActivity(), getPackageUserId())) {
                        c = c2;
                    } else {
                        Object[] objArr = new Object[2];
                        objArr[c2] = getPackageName();
                        objArr[1] = si2.getId();
                        Slog.w(TAG, String.format("%s is no longer main activity. Disabling shorcut %s.", objArr));
                        c = 0;
                        if (disableDynamicWithId(si2.getId(), false, 2) != null) {
                        }
                        i2--;
                        pi = pi;
                        c2 = c;
                    }
                    if (si2.hasAnyResources()) {
                        if (!si2.isOriginallyFromManifest()) {
                            if (publisherRes == null) {
                                Resources publisherRes2 = getPackageResources();
                                if (publisherRes2 == null) {
                                    break;
                                }
                                publisherRes = publisherRes2;
                            }
                            si2.lookupAndFillInResourceIds(publisherRes);
                        }
                        si2.setTimestamp(s.injectCurrentTimeMillis());
                    }
                    i2--;
                    pi = pi;
                    c2 = c;
                }
            }
            publishManifestShortcuts(newManifestShortcutList);
            if (newManifestShortcutList != null) {
                pushOutExcessShortcuts();
            }
            s.verifyStates();
            s.packageShortcutsChanged(getPackageName(), getPackageUserId(), null, null);
            return true;
        } catch (Throwable th) {
            s.logDurationStat(14, start);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0087  */
    /* JADX WARN: Code duplicated, block: B:26:0x008c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:42:0x0091 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    private boolean publishManifestShortcuts(List<ShortcutInfo> newManifestShortcutList) {
        boolean changed = false;
        ArraySet<String> toDisableList = null;
        for (int i = this.mShortcuts.size() - 1; i >= 0; i--) {
            ShortcutInfo si = this.mShortcuts.valueAt(i);
            if (si.isManifestShortcut()) {
                if (toDisableList == null) {
                    toDisableList = new ArraySet<>();
                }
                toDisableList.add(si.getId());
            }
        }
        if (newManifestShortcutList != null) {
            int newListSize = newManifestShortcutList.size();
            for (int i2 = 0; i2 < newListSize; i2++) {
                changed = true;
                ShortcutInfo newShortcut = newManifestShortcutList.get(i2);
                boolean newDisabled = !newShortcut.isEnabled();
                String id = newShortcut.getId();
                ShortcutInfo oldShortcut = this.mShortcuts.get(id);
                boolean wasPinned = false;
                if (oldShortcut != null) {
                    if (oldShortcut.isOriginallyFromManifest()) {
                        if (oldShortcut.isPinned()) {
                            wasPinned = true;
                            newShortcut.addFlags(2);
                        }
                        if (newDisabled) {
                            forceReplaceShortcutInner(newShortcut);
                            if (newDisabled) {
                            }
                        } else {
                            forceReplaceShortcutInner(newShortcut);
                            if (newDisabled) {
                            }
                        }
                    } else {
                        Slog.e(TAG, "Shortcut with ID=" + newShortcut.getId() + " exists but is not from AndroidManifest.xml, not updating.");
                    }
                } else if (newDisabled || wasPinned) {
                    forceReplaceShortcutInner(newShortcut);
                    if (newDisabled && toDisableList != null) {
                        toDisableList.remove(id);
                    }
                }
            }
        }
        if (toDisableList != null) {
            for (int i3 = toDisableList.size() - 1; i3 >= 0; i3--) {
                changed = true;
                disableWithId(toDisableList.valueAt(i3), null, 0, true, false, 2);
            }
            removeOrphans();
        }
        adjustRanks();
        return changed;
    }

    private boolean pushOutExcessShortcuts() {
        ShortcutService service = this.mShortcutUser.mService;
        int maxShortcuts = service.getMaxActivityShortcuts();
        ArrayMap<ComponentName, ArrayList<ShortcutInfo>> all = sortShortcutsToActivities();
        for (int outer = all.size() - 1; outer >= 0; outer--) {
            ArrayList<ShortcutInfo> list = all.valueAt(outer);
            if (list.size() > maxShortcuts) {
                Collections.sort(list, this.mShortcutTypeAndRankComparator);
                for (int inner = list.size() - 1; inner >= maxShortcuts; inner--) {
                    ShortcutInfo shortcut = list.get(inner);
                    if (shortcut.isManifestShortcut()) {
                        service.wtf("Found manifest shortcuts in excess list.");
                    } else {
                        deleteDynamicWithId(shortcut.getId(), true);
                    }
                }
            }
        }
        return false;
    }

    static /* synthetic */ int lambda$new$2(ShortcutInfo a, ShortcutInfo b) {
        if (a.isManifestShortcut() && !b.isManifestShortcut()) {
            return -1;
        }
        if (!a.isManifestShortcut() && b.isManifestShortcut()) {
            return 1;
        }
        return Integer.compare(a.getRank(), b.getRank());
    }

    static /* synthetic */ int lambda$new$3(ShortcutInfo a, ShortcutInfo b) {
        if (a.isDeclaredInManifest() && !b.isDeclaredInManifest()) {
            return -1;
        }
        if (!a.isDeclaredInManifest() && b.isDeclaredInManifest()) {
            return 1;
        }
        if (a.isDynamic() && b.isDynamic()) {
            return Integer.compare(a.getRank(), b.getRank());
        }
        if (a.isDynamic()) {
            return -1;
        }
        if (b.isDynamic()) {
            return 1;
        }
        if (a.isCached() && b.isCached()) {
            if (a.hasFlags(1073741824) && !b.hasFlags(1073741824)) {
                return -1;
            }
            if (!a.hasFlags(1073741824) && b.hasFlags(1073741824)) {
                return 1;
            }
        }
        if (a.isCached()) {
            return -1;
        }
        if (b.isCached()) {
            return 1;
        }
        return Long.compare(b.getLastChangedTimestamp(), a.getLastChangedTimestamp());
    }

    private ArrayMap<ComponentName, ArrayList<ShortcutInfo>> sortShortcutsToActivities() {
        ArrayMap<ComponentName, ArrayList<ShortcutInfo>> activitiesToShortcuts = new ArrayMap<>();
        for (int i = this.mShortcuts.size() - 1; i >= 0; i--) {
            ShortcutInfo si = this.mShortcuts.valueAt(i);
            if (!si.isFloating()) {
                ComponentName activity = si.getActivity();
                if (activity == null) {
                    this.mShortcutUser.mService.wtf("null activity detected.");
                } else {
                    ArrayList<ShortcutInfo> list = activitiesToShortcuts.get(activity);
                    if (list == null) {
                        list = new ArrayList<>();
                        activitiesToShortcuts.put(activity, list);
                    }
                    list.add(si);
                }
            }
        }
        return activitiesToShortcuts;
    }

    private void incrementCountForActivity(ArrayMap<ComponentName, Integer> counts, ComponentName cn, int increment) {
        Integer oldValue = counts.get(cn);
        if (oldValue == null) {
            oldValue = 0;
        }
        counts.put(cn, Integer.valueOf(oldValue.intValue() + increment));
    }

    public void enforceShortcutCountsBeforeOperation(List<ShortcutInfo> newList, int operation) {
        ShortcutService service = this.mShortcutUser.mService;
        ArrayMap<ComponentName, Integer> counts = new ArrayMap<>(4);
        for (int i = this.mShortcuts.size() - 1; i >= 0; i--) {
            ShortcutInfo shortcut = this.mShortcuts.valueAt(i);
            if (shortcut.isManifestShortcut()) {
                incrementCountForActivity(counts, shortcut.getActivity(), 1);
            } else if (shortcut.isDynamic() && operation != 0) {
                incrementCountForActivity(counts, shortcut.getActivity(), 1);
            }
        }
        int i2 = newList.size();
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            ShortcutInfo newShortcut = newList.get(i3);
            ComponentName newActivity = newShortcut.getActivity();
            if (newActivity == null) {
                if (operation != 2) {
                    service.wtf("Activity must not be null at this point");
                }
            } else {
                ShortcutInfo original = this.mShortcuts.get(newShortcut.getId());
                if (original == null) {
                    if (operation != 2) {
                        incrementCountForActivity(counts, newActivity, 1);
                    }
                } else if (!original.isFloating() || operation != 2) {
                    if (operation != 0) {
                        ComponentName oldActivity = original.getActivity();
                        if (!original.isFloating()) {
                            incrementCountForActivity(counts, oldActivity, -1);
                        }
                    }
                    incrementCountForActivity(counts, newActivity, 1);
                }
            }
        }
        int i4 = counts.size();
        for (int i5 = i4 - 1; i5 >= 0; i5--) {
            service.enforceMaxActivityShortcuts(counts.valueAt(i5).intValue());
        }
    }

    public void resolveResourceStrings() {
        ShortcutService s = this.mShortcutUser.mService;
        List<ShortcutInfo> changedShortcuts = null;
        Resources publisherRes = null;
        for (int i = this.mShortcuts.size() - 1; i >= 0; i--) {
            ShortcutInfo si = this.mShortcuts.valueAt(i);
            if (si.hasStringResources()) {
                if (publisherRes == null && (publisherRes = getPackageResources()) == null) {
                    break;
                }
                si.resolveResourceStrings(publisherRes);
                si.setTimestamp(s.injectCurrentTimeMillis());
                if (changedShortcuts == null) {
                    changedShortcuts = new ArrayList<>(1);
                }
                changedShortcuts.add(si);
            }
        }
        if (!CollectionUtils.isEmpty(changedShortcuts)) {
            s.packageShortcutsChanged(getPackageName(), getPackageUserId(), changedShortcuts, null);
        }
    }

    public void clearAllImplicitRanks() {
        for (int i = this.mShortcuts.size() - 1; i >= 0; i--) {
            ShortcutInfo si = this.mShortcuts.valueAt(i);
            si.clearImplicitRankAndRankChangedFlag();
        }
    }

    static /* synthetic */ int lambda$new$4(ShortcutInfo a, ShortcutInfo b) {
        int ret = Integer.compare(a.getRank(), b.getRank());
        if (ret != 0) {
            return ret;
        }
        if (a.isRankChanged() != b.isRankChanged()) {
            return a.isRankChanged() ? -1 : 1;
        }
        int ret2 = Integer.compare(a.getImplicitRank(), b.getImplicitRank());
        if (ret2 != 0) {
            return ret2;
        }
        return a.getId().compareTo(b.getId());
    }

    public void adjustRanks() {
        ShortcutService s = this.mShortcutUser.mService;
        long now = s.injectCurrentTimeMillis();
        for (int i = this.mShortcuts.size() - 1; i >= 0; i--) {
            ShortcutInfo si = this.mShortcuts.valueAt(i);
            if (si.isFloating() && si.getRank() != 0) {
                si.setTimestamp(now);
                si.setRank(0);
            }
        }
        ArrayMap<ComponentName, ArrayList<ShortcutInfo>> all = sortShortcutsToActivities();
        for (int outer = all.size() - 1; outer >= 0; outer--) {
            ArrayList<ShortcutInfo> list = all.valueAt(outer);
            Collections.sort(list, this.mShortcutRankComparator);
            int thisRank = 0;
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                ShortcutInfo si2 = list.get(i2);
                if (!si2.isManifestShortcut()) {
                    if (!si2.isDynamic()) {
                        s.wtf("Non-dynamic shortcut found.");
                    } else {
                        int rank = thisRank + 1;
                        if (si2.getRank() != thisRank) {
                            si2.setTimestamp(now);
                            si2.setRank(thisRank);
                        }
                        thisRank = rank;
                    }
                }
            }
        }
    }

    public boolean hasNonManifestShortcuts() {
        for (int i = this.mShortcuts.size() - 1; i >= 0; i--) {
            ShortcutInfo si = this.mShortcuts.valueAt(i);
            if (!si.isDeclaredInManifest()) {
                return true;
            }
        }
        return false;
    }

    public void dump(PrintWriter pw, String prefix, ShortcutService.DumpFilter filter) {
        pw.println();
        pw.print(prefix);
        pw.print("Package: ");
        pw.print(getPackageName());
        pw.print("  UID: ");
        pw.print(this.mPackageUid);
        pw.println();
        pw.print(prefix);
        pw.print("  ");
        pw.print("Calls: ");
        pw.print(getApiCallCount(false));
        pw.println();
        pw.print(prefix);
        pw.print("  ");
        pw.print("Last known FG: ");
        pw.print(this.mLastKnownForegroundElapsedTime);
        pw.println();
        pw.print(prefix);
        pw.print("  ");
        pw.print("Last reset: [");
        pw.print(this.mLastResetTime);
        pw.print("] ");
        pw.print(ShortcutService.formatTime(this.mLastResetTime));
        pw.println();
        getPackageInfo().dump(pw, prefix + "  ");
        pw.println();
        pw.print(prefix);
        pw.println("  Shortcuts:");
        long totalBitmapSize = 0;
        ArrayMap<String, ShortcutInfo> shortcuts = this.mShortcuts;
        int size = shortcuts.size();
        for (int i = 0; i < size; i++) {
            ShortcutInfo si = shortcuts.valueAt(i);
            pw.println(si.toDumpString(prefix + "    "));
            if (si.getBitmapPath() != null) {
                long len = new File(si.getBitmapPath()).length();
                pw.print(prefix);
                pw.print("      ");
                pw.print("bitmap size=");
                pw.println(len);
                totalBitmapSize += len;
            }
        }
        pw.print(prefix);
        pw.print("  ");
        pw.print("Total bitmap size: ");
        pw.print(totalBitmapSize);
        pw.print(" (");
        pw.print(Formatter.formatFileSize(this.mShortcutUser.mService.mContext, totalBitmapSize));
        pw.println(")");
    }

    @Override // com.android.server.pm.ShortcutPackageItem
    public JSONObject dumpCheckin(boolean clear) throws JSONException {
        JSONObject result = super.dumpCheckin(clear);
        int numDynamic = 0;
        int numPinned = 0;
        int numManifest = 0;
        int numBitmaps = 0;
        long totalBitmapSize = 0;
        ArrayMap<String, ShortcutInfo> shortcuts = this.mShortcuts;
        int size = shortcuts.size();
        for (int i = 0; i < size; i++) {
            ShortcutInfo si = shortcuts.valueAt(i);
            if (si.isDynamic()) {
                numDynamic++;
            }
            if (si.isDeclaredInManifest()) {
                numManifest++;
            }
            if (si.isPinned()) {
                numPinned++;
            }
            if (si.getBitmapPath() != null) {
                numBitmaps++;
                totalBitmapSize += new File(si.getBitmapPath()).length();
            }
        }
        result.put(KEY_DYNAMIC, numDynamic);
        result.put(KEY_MANIFEST, numManifest);
        result.put(KEY_PINNED, numPinned);
        result.put(KEY_BITMAPS, numBitmaps);
        result.put(KEY_BITMAP_BYTES, totalBitmapSize);
        return result;
    }

    @Override // com.android.server.pm.ShortcutPackageItem
    public void saveToXml(XmlSerializer out, boolean forBackup) throws XmlPullParserException, IOException {
        int size = this.mShortcuts.size();
        int shareTargetSize = this.mShareTargets.size();
        if (size == 0 && shareTargetSize == 0 && this.mApiCallCount == 0) {
            return;
        }
        out.startTag(null, "package");
        ShortcutService.writeAttr(out, Settings.ATTR_NAME, getPackageName());
        ShortcutService.writeAttr(out, ATTR_CALL_COUNT, this.mApiCallCount);
        ShortcutService.writeAttr(out, ATTR_LAST_RESET, this.mLastResetTime);
        getPackageInfo().saveToXml(this.mShortcutUser.mService, out, forBackup);
        for (int j = 0; j < size; j++) {
            saveShortcut(out, this.mShortcuts.valueAt(j), forBackup, getPackageInfo().isBackupAllowed());
        }
        if (!forBackup) {
            for (int j2 = 0; j2 < shareTargetSize; j2++) {
                this.mShareTargets.get(j2).saveToXml(out);
            }
        }
        out.endTag(null, "package");
    }

    private void saveShortcut(XmlSerializer out, ShortcutInfo si, boolean forBackup, boolean appSupportsBackup) throws XmlPullParserException, IOException {
        ShortcutService s = this.mShortcutUser.mService;
        if (forBackup && (!si.isPinned() || !si.isEnabled())) {
            return;
        }
        boolean shouldBackupDetails = !forBackup || appSupportsBackup;
        if (si.isIconPendingSave()) {
            s.removeIconLocked(si);
        }
        out.startTag(null, TAG_SHORTCUT);
        ShortcutService.writeAttr(out, ATTR_ID, si.getId());
        ShortcutService.writeAttr(out, ATTR_ACTIVITY, si.getActivity());
        ShortcutService.writeAttr(out, ATTR_TITLE, si.getTitle());
        ShortcutService.writeAttr(out, ATTR_TITLE_RES_ID, si.getTitleResId());
        ShortcutService.writeAttr(out, ATTR_TITLE_RES_NAME, si.getTitleResName());
        ShortcutService.writeAttr(out, ATTR_TEXT, si.getText());
        ShortcutService.writeAttr(out, ATTR_TEXT_RES_ID, si.getTextResId());
        ShortcutService.writeAttr(out, ATTR_TEXT_RES_NAME, si.getTextResName());
        if (shouldBackupDetails) {
            ShortcutService.writeAttr(out, ATTR_DISABLED_MESSAGE, si.getDisabledMessage());
            ShortcutService.writeAttr(out, ATTR_DISABLED_MESSAGE_RES_ID, si.getDisabledMessageResourceId());
            ShortcutService.writeAttr(out, ATTR_DISABLED_MESSAGE_RES_NAME, si.getDisabledMessageResName());
        }
        ShortcutService.writeAttr(out, ATTR_DISABLED_REASON, si.getDisabledReason());
        ShortcutService.writeAttr(out, "timestamp", si.getLastChangedTimestamp());
        LocusId locusId = si.getLocusId();
        if (locusId != null) {
            ShortcutService.writeAttr(out, ATTR_LOCUS_ID, si.getLocusId().getId());
        }
        if (!forBackup) {
            ShortcutService.writeAttr(out, ATTR_RANK, si.getRank());
            ShortcutService.writeAttr(out, ATTR_FLAGS, si.getFlags());
            ShortcutService.writeAttr(out, ATTR_ICON_RES_ID, si.getIconResourceId());
            ShortcutService.writeAttr(out, ATTR_ICON_RES_NAME, si.getIconResName());
            ShortcutService.writeAttr(out, ATTR_BITMAP_PATH, si.getBitmapPath());
            ShortcutService.writeAttr(out, ATTR_ICON_URI, si.getIconUri());
        } else {
            int flags = si.getFlags() & (-35342);
            ShortcutService.writeAttr(out, ATTR_FLAGS, flags);
            long packageVersionCode = getPackageInfo().getVersionCode();
            if (packageVersionCode == 0) {
                s.wtf("Package version code should be available at this point.");
            }
        }
        if (shouldBackupDetails) {
            Set<String> cat = si.getCategories();
            if (cat != null && cat.size() > 0) {
                out.startTag(null, "categories");
                XmlUtils.writeStringArrayXml((String[]) cat.toArray(new String[cat.size()]), "categories", out);
                out.endTag(null, "categories");
            }
            if (!forBackup) {
                Person[] persons = si.getPersons();
                if (!ArrayUtils.isEmpty(persons)) {
                    for (Person p : persons) {
                        out.startTag(null, TAG_PERSON);
                        ShortcutService.writeAttr(out, Settings.ATTR_NAME, p.getName());
                        ShortcutService.writeAttr(out, ATTR_PERSON_URI, p.getUri());
                        ShortcutService.writeAttr(out, ATTR_PERSON_KEY, p.getKey());
                        ShortcutService.writeAttr(out, ATTR_PERSON_IS_BOT, p.isBot());
                        ShortcutService.writeAttr(out, ATTR_PERSON_IS_IMPORTANT, p.isImportant());
                        out.endTag(null, TAG_PERSON);
                    }
                }
            }
            Intent[] intentsNoExtras = si.getIntentsNoExtras();
            PersistableBundle[] intentsExtras = si.getIntentPersistableExtrases();
            int numIntents = intentsNoExtras.length;
            for (int i = 0; i < numIntents; i++) {
                out.startTag(null, "intent");
                ShortcutService.writeAttr(out, ATTR_INTENT_NO_EXTRA, intentsNoExtras[i]);
                ShortcutService.writeTagExtra(out, TAG_EXTRAS, intentsExtras[i]);
                out.endTag(null, "intent");
            }
            ShortcutService.writeTagExtra(out, TAG_EXTRAS, si.getExtras());
        }
        out.endTag(null, TAG_SHORTCUT);
    }

    public static ShortcutPackage loadFromFile(ShortcutService s, ShortcutUser shortcutUser, File path, boolean fromBackup) {
        AtomicFile file = new AtomicFile(path);
        try {
            FileInputStream in = file.openRead();
            try {
                BufferedInputStream bis = new BufferedInputStream(in);
                ShortcutPackage ret = null;
                XmlPullParser parser = Xml.newPullParser();
                parser.setInput(bis, StandardCharsets.UTF_8.name());
                while (true) {
                    int type = parser.next();
                    if (type == 1) {
                        return ret;
                    }
                    if (type == 2) {
                        int depth = parser.getDepth();
                        String tag = parser.getName();
                        if (depth == 1 && "package".equals(tag)) {
                            ret = loadFromXml(s, shortcutUser, parser, fromBackup);
                        } else {
                            ShortcutService.throwForInvalidTag(depth, tag);
                        }
                    }
                }
            } catch (IOException | XmlPullParserException e) {
                Slog.e(TAG, "Failed to read file " + file.getBaseFile(), e);
                return null;
            } finally {
                IoUtils.closeQuietly(in);
            }
        } catch (FileNotFoundException e2) {
            return null;
        }
    }

    public static ShortcutPackage loadFromXml(ShortcutService s, ShortcutUser shortcutUser, XmlPullParser parser, boolean fromBackup) throws XmlPullParserException, IOException {
        String packageName = ShortcutService.parseStringAttribute(parser, Settings.ATTR_NAME);
        ShortcutPackage ret = new ShortcutPackage(shortcutUser, shortcutUser.getUserId(), packageName);
        ret.mApiCallCount = ShortcutService.parseIntAttribute(parser, ATTR_CALL_COUNT);
        ret.mLastResetTime = ShortcutService.parseLongAttribute(parser, ATTR_LAST_RESET);
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type == 1 || (type == 3 && parser.getDepth() <= outerDepth)) {
                break;
            }
            if (type == 2) {
                int depth = parser.getDepth();
                String tag = parser.getName();
                if (depth == outerDepth + 1) {
                    byte b = -1;
                    int iHashCode = tag.hashCode();
                    if (iHashCode != -1923478059) {
                        if (iHashCode != -1680817345) {
                            if (iHashCode == -342500282 && tag.equals(TAG_SHORTCUT)) {
                                b = 1;
                            }
                        } else if (tag.equals(TAG_SHARE_TARGET)) {
                            b = 2;
                        }
                    } else if (tag.equals("package-info")) {
                        b = 0;
                    }
                    if (b == 0) {
                        ret.getPackageInfo().loadFromXml(parser, fromBackup);
                    } else if (b != 1) {
                        if (b == 2) {
                            ret.mShareTargets.add(ShareTargetInfo.loadFromXml(parser));
                        }
                    } else {
                        try {
                            ShortcutInfo si = parseShortcut(parser, packageName, shortcutUser.getUserId(), fromBackup);
                            ret.mShortcuts.put(si.getId(), si);
                        } catch (Exception e) {
                            Slog.e(TAG, "Failed parsing shortcut.", e);
                        }
                    }
                }
                ShortcutService.warnForInvalidTag(depth, tag);
            }
        }
        return ret;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:35:0x0123 A[PHI: r22
  0x0123: PHI (r22v4 byte) = (r22v3 byte), (r22v3 byte), (r22v3 byte), (r22v3 byte), (r22v5 byte), (r22v3 byte), (r22v3 byte), (r22v3 byte) binds: [B:15:0x00e7, B:33:0x011f, B:30:0x0115, B:27:0x010c, B:28:0x010e, B:24:0x0102, B:21:0x00fa, B:18:0x00ef] A[DONT_GENERATE, DONT_INLINE]] */
    private static ShortcutInfo parseShortcut(XmlPullParser parser, String packageName, int userId, boolean fromBackup) throws XmlPullParserException, IOException {
        int type;
        LocusId locusId;
        int disabledReason;
        int flags;
        PersistableBundle extras;
        String str;
        int outerDepth;
        int rank;
        byte b;
        PersistableBundle intentPersistableExtrasLegacy = null;
        ArrayList<Intent> intents = new ArrayList<>();
        PersistableBundle extras2 = null;
        ArraySet<String> categories = null;
        ArrayList<Person> persons = new ArrayList<>();
        String id = ShortcutService.parseStringAttribute(parser, ATTR_ID);
        ComponentName activityComponent = ShortcutService.parseComponentNameAttribute(parser, ATTR_ACTIVITY);
        String title = ShortcutService.parseStringAttribute(parser, ATTR_TITLE);
        int titleResId = ShortcutService.parseIntAttribute(parser, ATTR_TITLE_RES_ID);
        String titleResName = ShortcutService.parseStringAttribute(parser, ATTR_TITLE_RES_NAME);
        String text = ShortcutService.parseStringAttribute(parser, ATTR_TEXT);
        int textResId = ShortcutService.parseIntAttribute(parser, ATTR_TEXT_RES_ID);
        String textResName = ShortcutService.parseStringAttribute(parser, ATTR_TEXT_RES_NAME);
        String disabledMessage = ShortcutService.parseStringAttribute(parser, ATTR_DISABLED_MESSAGE);
        int disabledMessageResId = ShortcutService.parseIntAttribute(parser, ATTR_DISABLED_MESSAGE_RES_ID);
        String disabledMessageResName = ShortcutService.parseStringAttribute(parser, ATTR_DISABLED_MESSAGE_RES_NAME);
        int disabledReason2 = ShortcutService.parseIntAttribute(parser, ATTR_DISABLED_REASON);
        String str2 = "intent";
        Intent intentLegacy = ShortcutService.parseIntentAttributeNoDefault(parser, "intent");
        int rank2 = (int) ShortcutService.parseLongAttribute(parser, ATTR_RANK);
        long lastChangedTimestamp = ShortcutService.parseLongAttribute(parser, "timestamp");
        int flags2 = (int) ShortcutService.parseLongAttribute(parser, ATTR_FLAGS);
        int iconResId = (int) ShortcutService.parseLongAttribute(parser, ATTR_ICON_RES_ID);
        String iconResName = ShortcutService.parseStringAttribute(parser, ATTR_ICON_RES_NAME);
        String bitmapPath = ShortcutService.parseStringAttribute(parser, ATTR_BITMAP_PATH);
        String iconUri = ShortcutService.parseStringAttribute(parser, ATTR_ICON_URI);
        String locusIdString = ShortcutService.parseStringAttribute(parser, ATTR_LOCUS_ID);
        int outerDepth2 = parser.getDepth();
        while (true) {
            int type2 = parser.next();
            iconResId = iconResId;
            if (type2 == 1) {
                type = type2;
                locusId = null;
            } else if (type2 != 3 || parser.getDepth() > outerDepth2) {
                if (type2 != 2) {
                    extras = extras2;
                    str = str2;
                    outerDepth = outerDepth2;
                    rank = rank2;
                } else {
                    int depth = parser.getDepth();
                    outerDepth = outerDepth2;
                    String tag = parser.getName();
                    byte b2 = -1;
                    rank = rank2;
                    extras = extras2;
                    switch (tag.hashCode()) {
                        case -1289032093:
                            if (tag.equals(TAG_EXTRAS)) {
                                b = 2;
                            } else {
                                b = b2;
                            }
                            break;
                        case -1183762788:
                            if (tag.equals(str2)) {
                                b = 1;
                            } else {
                                b = b2;
                            }
                            break;
                        case -1044333900:
                            if (tag.equals(TAG_INTENT_EXTRAS_LEGACY)) {
                                b2 = 0;
                            }
                            b = b2;
                            break;
                        case -1024600675:
                            if (tag.equals(TAG_STRING_ARRAY_XMLUTILS)) {
                                b = 5;
                            } else {
                                b = b2;
                            }
                            break;
                        case -991716523:
                            if (tag.equals(TAG_PERSON)) {
                                b = 4;
                            } else {
                                b = b2;
                            }
                            break;
                        case 1296516636:
                            if (tag.equals("categories")) {
                                b = 3;
                            } else {
                                b = b2;
                            }
                            break;
                        default:
                            b = b2;
                            break;
                    }
                    if (b != 0) {
                        str = str2;
                        if (b == 1) {
                            intents.add(parseIntent(parser));
                        } else if (b == 2) {
                            extras2 = PersistableBundle.restoreFromXml(parser);
                            outerDepth2 = outerDepth;
                            str2 = str;
                            rank2 = rank;
                        } else if (b != 3) {
                            if (b == 4) {
                                persons.add(parsePerson(parser));
                            } else if (b == 5) {
                                if ("categories".equals(ShortcutService.parseStringAttribute(parser, Settings.ATTR_NAME))) {
                                    String[] ar = XmlUtils.readThisStringArrayXml(parser, TAG_STRING_ARRAY_XMLUTILS, (String[]) null);
                                    categories = new ArraySet<>(ar.length);
                                    for (String str3 : ar) {
                                        categories.add(str3);
                                    }
                                    outerDepth2 = outerDepth;
                                    str2 = str;
                                    rank2 = rank;
                                    extras2 = extras;
                                }
                            } else {
                                throw ShortcutService.throwForInvalidTag(depth, tag);
                            }
                        }
                    } else {
                        intentPersistableExtrasLegacy = PersistableBundle.restoreFromXml(parser);
                        outerDepth2 = outerDepth;
                        rank2 = rank;
                        extras2 = extras;
                    }
                }
                outerDepth2 = outerDepth;
                str2 = str;
                rank2 = rank;
                extras2 = extras;
            } else {
                type = type2;
                locusId = null;
            }
        }
        if (intentLegacy != null) {
            ShortcutInfo.setIntentExtras(intentLegacy, intentPersistableExtrasLegacy);
            intents.clear();
            intents.add(intentLegacy);
        }
        if (disabledReason2 == 0 && (flags2 & 64) != 0) {
            disabledReason = 1;
        } else {
            disabledReason = disabledReason2;
        }
        if (!fromBackup) {
            flags = flags2;
        } else {
            flags = flags2 | 4096;
        }
        if (locusIdString != null) {
            locusId = new LocusId(locusIdString);
        }
        LocusId locusId2 = locusId;
        return new ShortcutInfo(userId, id, packageName, activityComponent, null, title, titleResId, titleResName, text, textResId, textResName, disabledMessage, disabledMessageResId, disabledMessageResName, categories, (Intent[]) intents.toArray(new Intent[intents.size()]), rank2, extras2, lastChangedTimestamp, flags, iconResId, iconResName, bitmapPath, iconUri, disabledReason, (Person[]) persons.toArray(new Person[persons.size()]), locusId2);
    }

    private static Intent parseIntent(XmlPullParser parser) throws XmlPullParserException, IOException {
        Intent intent = ShortcutService.parseIntentAttribute(parser, ATTR_INTENT_NO_EXTRA);
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type == 1 || (type == 3 && parser.getDepth() <= outerDepth)) {
                break;
            }
            if (type == 2) {
                int depth = parser.getDepth();
                String tag = parser.getName();
                byte b = -1;
                if (tag.hashCode() == -1289032093 && tag.equals(TAG_EXTRAS)) {
                    b = 0;
                }
                if (b == 0) {
                    ShortcutInfo.setIntentExtras(intent, PersistableBundle.restoreFromXml(parser));
                } else {
                    throw ShortcutService.throwForInvalidTag(depth, tag);
                }
            }
        }
        return intent;
    }

    private static Person parsePerson(XmlPullParser parser) throws XmlPullParserException, IOException {
        CharSequence name = ShortcutService.parseStringAttribute(parser, Settings.ATTR_NAME);
        String uri = ShortcutService.parseStringAttribute(parser, ATTR_PERSON_URI);
        String key = ShortcutService.parseStringAttribute(parser, ATTR_PERSON_KEY);
        boolean isBot = ShortcutService.parseBooleanAttribute(parser, ATTR_PERSON_IS_BOT);
        boolean isImportant = ShortcutService.parseBooleanAttribute(parser, ATTR_PERSON_IS_IMPORTANT);
        Person.Builder builder = new Person.Builder();
        builder.setName(name).setUri(uri).setKey(key).setBot(isBot).setImportant(isImportant);
        return builder.build();
    }

    List<ShortcutInfo> getAllShortcutsForTest() {
        return new ArrayList(this.mShortcuts.values());
    }

    List<ShareTargetInfo> getAllShareTargetsForTest() {
        return new ArrayList(this.mShareTargets);
    }

    @Override // com.android.server.pm.ShortcutPackageItem
    public void verifyStates() {
        super.verifyStates();
        boolean failed = false;
        ShortcutService s = this.mShortcutUser.mService;
        ArrayMap<ComponentName, ArrayList<ShortcutInfo>> all = sortShortcutsToActivities();
        for (int outer = all.size() - 1; outer >= 0; outer--) {
            ArrayList<ShortcutInfo> list = all.valueAt(outer);
            if (list.size() > this.mShortcutUser.mService.getMaxActivityShortcuts()) {
                failed = true;
                Log.e(TAG_VERIFY, "Package " + getPackageName() + ": activity " + all.keyAt(outer) + " has " + all.valueAt(outer).size() + " shortcuts.");
            }
            Collections.sort(list, new Comparator() { // from class: com.android.server.pm.-$$Lambda$ShortcutPackage$cCNTEFZ0NeEe4HV0leazVucGuYk
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Integer.compare(((ShortcutInfo) obj).getRank(), ((ShortcutInfo) obj2).getRank());
                }
            });
            ArrayList<ShortcutInfo> dynamicList = new ArrayList<>(list);
            dynamicList.removeIf(new Predicate() { // from class: com.android.server.pm.-$$Lambda$ShortcutPackage$Z1nV1CEu2NvxznnRWzGFgDhEtqI
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ShortcutPackage.lambda$verifyStates$6((ShortcutInfo) obj);
                }
            });
            ArrayList<ShortcutInfo> manifestList = new ArrayList<>(list);
            manifestList.removeIf(new Predicate() { // from class: com.android.server.pm.-$$Lambda$ShortcutPackage$bECpnqfR_GdxB4yURiM0bk_ach0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ShortcutPackage.lambda$verifyStates$7((ShortcutInfo) obj);
                }
            });
            verifyRanksSequential(dynamicList);
            verifyRanksSequential(manifestList);
        }
        for (int i = this.mShortcuts.size() - 1; i >= 0; i--) {
            ShortcutInfo si = this.mShortcuts.valueAt(i);
            if (!si.isDeclaredInManifest() && !si.isDynamic() && !si.isPinned() && !si.isCached()) {
                failed = true;
                Log.e(TAG_VERIFY, "Package " + getPackageName() + ": shortcut " + si.getId() + " is not manifest, dynamic or pinned.");
            }
            if (si.isDeclaredInManifest() && si.isDynamic()) {
                failed = true;
                Log.e(TAG_VERIFY, "Package " + getPackageName() + ": shortcut " + si.getId() + " is both dynamic and manifest at the same time.");
            }
            if (si.getActivity() == null && !si.isFloating()) {
                failed = true;
                Log.e(TAG_VERIFY, "Package " + getPackageName() + ": shortcut " + si.getId() + " has null activity, but not floating.");
            }
            if ((si.isDynamic() || si.isManifestShortcut()) && !si.isEnabled()) {
                failed = true;
                Log.e(TAG_VERIFY, "Package " + getPackageName() + ": shortcut " + si.getId() + " is not floating, but is disabled.");
            }
            if (si.isFloating() && si.getRank() != 0) {
                failed = true;
                Log.e(TAG_VERIFY, "Package " + getPackageName() + ": shortcut " + si.getId() + " is floating, but has rank=" + si.getRank());
            }
            if (si.getIcon() != null) {
                failed = true;
                Log.e(TAG_VERIFY, "Package " + getPackageName() + ": shortcut " + si.getId() + " still has an icon");
            }
            if (si.hasAdaptiveBitmap() && !si.hasIconFile() && !si.hasIconUri()) {
                failed = true;
                Log.e(TAG_VERIFY, "Package " + getPackageName() + ": shortcut " + si.getId() + " has adaptive bitmap but was not saved to a file nor has icon uri.");
            }
            if (si.hasIconFile() && si.hasIconResource()) {
                failed = true;
                Log.e(TAG_VERIFY, "Package " + getPackageName() + ": shortcut " + si.getId() + " has both resource and bitmap icons");
            }
            if (si.hasIconFile() && si.hasIconUri()) {
                failed = true;
                Log.e(TAG_VERIFY, "Package " + getPackageName() + ": shortcut " + si.getId() + " has both url and bitmap icons");
            }
            if (si.hasIconUri() && si.hasIconResource()) {
                failed = true;
                Log.e(TAG_VERIFY, "Package " + getPackageName() + ": shortcut " + si.getId() + " has both url and resource icons");
            }
            if (si.isEnabled() != (si.getDisabledReason() == 0)) {
                failed = true;
                Log.e(TAG_VERIFY, "Package " + getPackageName() + ": shortcut " + si.getId() + " isEnabled() and getDisabledReason() disagree: " + si.isEnabled() + " vs " + si.getDisabledReason());
            }
            if (si.getDisabledReason() == 100 && getPackageInfo().getBackupSourceVersionCode() == -1) {
                failed = true;
                Log.e(TAG_VERIFY, "Package " + getPackageName() + ": shortcut " + si.getId() + " RESTORED_VERSION_LOWER with no backup source version code.");
            }
            if (s.isDummyMainActivity(si.getActivity())) {
                failed = true;
                Log.e(TAG_VERIFY, "Package " + getPackageName() + ": shortcut " + si.getId() + " has a dummy target activity");
            }
        }
        if (failed) {
            throw new IllegalStateException("See logcat for errors");
        }
    }

    static /* synthetic */ boolean lambda$verifyStates$6(ShortcutInfo si) {
        return !si.isDynamic();
    }

    static /* synthetic */ boolean lambda$verifyStates$7(ShortcutInfo si) {
        return !si.isManifestShortcut();
    }

    private boolean verifyRanksSequential(List<ShortcutInfo> list) {
        boolean failed = false;
        for (int i = 0; i < list.size(); i++) {
            ShortcutInfo si = list.get(i);
            if (si.getRank() != i) {
                failed = true;
                Log.e(TAG_VERIFY, "Package " + getPackageName() + ": shortcut " + si.getId() + " rank=" + si.getRank() + " but expected to be " + i);
            }
        }
        return failed;
    }
}

package com.android.server.usb;

import android.R;
import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.UserInfo;
import android.content.res.XmlResourceParser;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.hardware.usb.AccessoryFilter;
import android.hardware.usb.DeviceFilter;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbDevice;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import com.android.internal.app.IntentForwarderActivity;
import com.android.internal.content.PackageMonitor;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.XmlUtils;
import com.android.internal.util.dump.DualDumpOutputStream;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.Settings;
import com.android.server.slice.SliceClientPermissions;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.ProtocolException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
class UsbProfileGroupSettingsManager {
    private static final boolean DEBUG = false;
    private static final String TAG = UsbProfileGroupSettingsManager.class.getSimpleName();
    private static final File sSingleUserSettingsFile = new File("/data/system/usb_device_manager.xml");
    private final Context mContext;
    private final boolean mDisablePermissionDialogs;
    private boolean mIsWriteSettingsScheduled;
    private final MtpNotificationManager mMtpNotificationManager;
    private final PackageManager mPackageManager;
    private final UserHandle mParentUser;
    private final AtomicFile mSettingsFile;
    private final UsbSettingsManager mSettingsManager;
    private final UsbHandlerManager mUsbHandlerManager;
    private final UserManager mUserManager;
    private final HashMap<DeviceFilter, UserPackage> mDevicePreferenceMap = new HashMap<>();
    private final ArrayMap<DeviceFilter, ArraySet<UserPackage>> mDevicePreferenceDeniedMap = new ArrayMap<>();
    private final HashMap<AccessoryFilter, UserPackage> mAccessoryPreferenceMap = new HashMap<>();
    private final ArrayMap<AccessoryFilter, ArraySet<UserPackage>> mAccessoryPreferenceDeniedMap = new ArrayMap<>();
    private final Object mLock = new Object();
    MyPackageMonitor mPackageMonitor = new MyPackageMonitor();

    private static class UserPackage {
        final String packageName;
        final UserHandle user;

        private UserPackage(String packageName, UserHandle user) {
            this.packageName = packageName;
            this.user = user;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof UserPackage)) {
                return false;
            }
            UserPackage other = (UserPackage) obj;
            return this.user.equals(other.user) && this.packageName.equals(other.packageName);
        }

        public int hashCode() {
            int result = this.user.hashCode();
            return (result * 31) + this.packageName.hashCode();
        }

        public String toString() {
            return this.user.getIdentifier() + SliceClientPermissions.SliceAuthority.DELIMITER + this.packageName;
        }

        public void dump(DualDumpOutputStream dump, String idName, long id) {
            long token = dump.start(idName, id);
            dump.write("user_id", 1120986464257L, this.user.getIdentifier());
            dump.write("package_name", 1138166333442L, this.packageName);
            dump.end(token);
        }
    }

    private class MyPackageMonitor extends PackageMonitor {
        private MyPackageMonitor() {
        }

        public void onPackageAdded(String packageName, int uid) {
            if (UsbProfileGroupSettingsManager.this.mUserManager.isSameProfileGroup(UsbProfileGroupSettingsManager.this.mParentUser.getIdentifier(), UserHandle.getUserId(uid))) {
                UsbProfileGroupSettingsManager.this.handlePackageAdded(new UserPackage(packageName, UserHandle.getUserHandleForUid(uid)));
            }
        }

        public void onPackageRemoved(String packageName, int uid) {
            if (!UsbProfileGroupSettingsManager.this.mUserManager.isSameProfileGroup(UsbProfileGroupSettingsManager.this.mParentUser.getIdentifier(), UserHandle.getUserId(uid))) {
                return;
            }
            UsbProfileGroupSettingsManager.this.clearDefaults(packageName, UserHandle.getUserHandleForUid(uid));
        }
    }

    UsbProfileGroupSettingsManager(Context context, UserHandle user, UsbSettingsManager settingsManager, UsbHandlerManager usbResolveActivityManager) {
        try {
            Context parentUserContext = context.createPackageContextAsUser(PackageManagerService.PLATFORM_PACKAGE_NAME, 0, user);
            this.mContext = context;
            this.mPackageManager = context.getPackageManager();
            this.mSettingsManager = settingsManager;
            this.mUserManager = (UserManager) context.getSystemService("user");
            this.mParentUser = user;
            this.mSettingsFile = new AtomicFile(new File(Environment.getUserSystemDirectory(user.getIdentifier()), "usb_device_manager.xml"), "usb-state");
            this.mDisablePermissionDialogs = context.getResources().getBoolean(R.bool.config_canRemoveFirstAccount);
            synchronized (this.mLock) {
                if (UserHandle.SYSTEM.equals(user)) {
                    upgradeSingleUserLocked();
                }
                readSettingsLocked();
            }
            this.mPackageMonitor.register(context, null, UserHandle.ALL, true);
            this.mMtpNotificationManager = new MtpNotificationManager(parentUserContext, new MtpNotificationManager.OnOpenInAppListener() { // from class: com.android.server.usb.-$$Lambda$UsbProfileGroupSettingsManager$IQKTzU0q3lyaW9nLL_sbxJPW8ME
                @Override // com.android.server.usb.MtpNotificationManager.OnOpenInAppListener
                public final void onOpenInApp(UsbDevice usbDevice) {
                    this.f$0.lambda$new$0$UsbProfileGroupSettingsManager(usbDevice);
                }
            });
            this.mUsbHandlerManager = usbResolveActivityManager;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Missing android package");
        }
    }

    public /* synthetic */ void lambda$new$0$UsbProfileGroupSettingsManager(UsbDevice device) {
        resolveActivity(createDeviceAttachedIntent(device), device, false);
    }

    void removeUser(UserHandle userToRemove) {
        synchronized (this.mLock) {
            boolean needToPersist = false;
            Iterator<Map.Entry<DeviceFilter, UserPackage>> devicePreferenceIt = this.mDevicePreferenceMap.entrySet().iterator();
            while (devicePreferenceIt.hasNext()) {
                Map.Entry<DeviceFilter, UserPackage> entry = devicePreferenceIt.next();
                if (entry.getValue().user.equals(userToRemove)) {
                    devicePreferenceIt.remove();
                    needToPersist = true;
                }
            }
            Iterator<Map.Entry<AccessoryFilter, UserPackage>> accessoryPreferenceIt = this.mAccessoryPreferenceMap.entrySet().iterator();
            while (accessoryPreferenceIt.hasNext()) {
                Map.Entry<AccessoryFilter, UserPackage> entry2 = accessoryPreferenceIt.next();
                if (entry2.getValue().user.equals(userToRemove)) {
                    accessoryPreferenceIt.remove();
                    needToPersist = true;
                }
            }
            int numEntries = this.mDevicePreferenceDeniedMap.size();
            for (int i = 0; i < numEntries; i++) {
                ArraySet<UserPackage> userPackages = this.mDevicePreferenceDeniedMap.valueAt(i);
                for (int j = userPackages.size() - 1; j >= 0; j--) {
                    if (userPackages.valueAt(j).user.equals(userToRemove)) {
                        userPackages.removeAt(j);
                        needToPersist = true;
                    }
                }
            }
            int numEntries2 = this.mAccessoryPreferenceDeniedMap.size();
            for (int i2 = 0; i2 < numEntries2; i2++) {
                ArraySet<UserPackage> userPackages2 = this.mAccessoryPreferenceDeniedMap.valueAt(i2);
                for (int j2 = userPackages2.size() - 1; j2 >= 0; j2--) {
                    if (userPackages2.valueAt(j2).user.equals(userToRemove)) {
                        userPackages2.removeAt(j2);
                        needToPersist = true;
                    }
                }
            }
            if (needToPersist) {
                scheduleWriteSettingsLocked();
            }
        }
    }

    private void readPreference(XmlPullParser parser) throws XmlPullParserException, IOException {
        String packageName = null;
        UserHandle user = this.mParentUser;
        int count = parser.getAttributeCount();
        for (int i = 0; i < count; i++) {
            if (Settings.ATTR_PACKAGE.equals(parser.getAttributeName(i))) {
                packageName = parser.getAttributeValue(i);
            }
            if ("user".equals(parser.getAttributeName(i))) {
                user = this.mUserManager.getUserForSerialNumber(Integer.parseInt(parser.getAttributeValue(i)));
            }
        }
        XmlUtils.nextElement(parser);
        if ("usb-device".equals(parser.getName())) {
            DeviceFilter filter = DeviceFilter.read(parser);
            if (user != null) {
                this.mDevicePreferenceMap.put(filter, new UserPackage(packageName, user));
            }
        } else if ("usb-accessory".equals(parser.getName())) {
            AccessoryFilter filter2 = AccessoryFilter.read(parser);
            if (user != null) {
                this.mAccessoryPreferenceMap.put(filter2, new UserPackage(packageName, user));
            }
        }
        XmlUtils.nextElement(parser);
    }

    private void readPreferenceDeniedList(XmlPullParser parser) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        if (!XmlUtils.nextElementWithin(parser, outerDepth)) {
            return;
        }
        if ("usb-device".equals(parser.getName())) {
            DeviceFilter filter = DeviceFilter.read(parser);
            while (XmlUtils.nextElementWithin(parser, outerDepth)) {
                if ("user-package".equals(parser.getName())) {
                    try {
                        int userId = XmlUtils.readIntAttribute(parser, "user");
                        String packageName = XmlUtils.readStringAttribute(parser, Settings.ATTR_PACKAGE);
                        if (packageName == null) {
                            Slog.e(TAG, "Unable to parse package name");
                        }
                        ArraySet<UserPackage> set = this.mDevicePreferenceDeniedMap.get(filter);
                        if (set == null) {
                            set = new ArraySet<>();
                            this.mDevicePreferenceDeniedMap.put(filter, set);
                        }
                        set.add(new UserPackage(packageName, UserHandle.of(userId)));
                    } catch (ProtocolException e) {
                        Slog.e(TAG, "Unable to parse user id", e);
                    }
                }
            }
        } else if ("usb-accessory".equals(parser.getName())) {
            AccessoryFilter filter2 = AccessoryFilter.read(parser);
            while (XmlUtils.nextElementWithin(parser, outerDepth)) {
                if ("user-package".equals(parser.getName())) {
                    try {
                        int userId2 = XmlUtils.readIntAttribute(parser, "user");
                        String packageName2 = XmlUtils.readStringAttribute(parser, Settings.ATTR_PACKAGE);
                        if (packageName2 == null) {
                            Slog.e(TAG, "Unable to parse package name");
                        }
                        ArraySet<UserPackage> set2 = this.mAccessoryPreferenceDeniedMap.get(filter2);
                        if (set2 == null) {
                            set2 = new ArraySet<>();
                            this.mAccessoryPreferenceDeniedMap.put(filter2, set2);
                        }
                        set2.add(new UserPackage(packageName2, UserHandle.of(userId2)));
                    } catch (ProtocolException e2) {
                        Slog.e(TAG, "Unable to parse user id", e2);
                    }
                }
            }
        }
        while (parser.getDepth() > outerDepth) {
            parser.nextTag();
        }
    }

    private void upgradeSingleUserLocked() {
        if (sSingleUserSettingsFile.exists()) {
            this.mDevicePreferenceMap.clear();
            this.mAccessoryPreferenceMap.clear();
            FileInputStream fis = null;
            try {
                try {
                    fis = new FileInputStream(sSingleUserSettingsFile);
                    XmlPullParser parser = Xml.newPullParser();
                    parser.setInput(fis, StandardCharsets.UTF_8.name());
                    XmlUtils.nextElement(parser);
                    while (parser.getEventType() != 1) {
                        String tagName = parser.getName();
                        if ("preference".equals(tagName)) {
                            readPreference(parser);
                        } else {
                            XmlUtils.nextElement(parser);
                        }
                    }
                } catch (IOException | XmlPullParserException e) {
                    Log.wtf(TAG, "Failed to read single-user settings", e);
                }
                IoUtils.closeQuietly(fis);
                scheduleWriteSettingsLocked();
                sSingleUserSettingsFile.delete();
            } catch (Throwable th) {
                IoUtils.closeQuietly(fis);
                throw th;
            }
        }
    }

    private void readSettingsLocked() {
        this.mDevicePreferenceMap.clear();
        this.mAccessoryPreferenceMap.clear();
        FileInputStream stream = null;
        try {
            stream = this.mSettingsFile.openRead();
            XmlPullParser parser = Xml.newPullParser();
            parser.setInput(stream, StandardCharsets.UTF_8.name());
            XmlUtils.nextElement(parser);
            while (parser.getEventType() != 1) {
                String tagName = parser.getName();
                if ("preference".equals(tagName)) {
                    readPreference(parser);
                } else if ("preference-denied-list".equals(tagName)) {
                    readPreferenceDeniedList(parser);
                } else {
                    XmlUtils.nextElement(parser);
                }
            }
        } catch (FileNotFoundException e) {
        } catch (Exception e2) {
            Slog.e(TAG, "error reading settings file, deleting to start fresh", e2);
            this.mSettingsFile.delete();
        } finally {
            IoUtils.closeQuietly(stream);
        }
    }

    private void scheduleWriteSettingsLocked() {
        if (this.mIsWriteSettingsScheduled) {
            return;
        }
        this.mIsWriteSettingsScheduled = true;
        AsyncTask.execute(new Runnable() { // from class: com.android.server.usb.-$$Lambda$UsbProfileGroupSettingsManager$_G1PjxMa22pAIRMzYCwyomX8uhk
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$scheduleWriteSettingsLocked$1$UsbProfileGroupSettingsManager();
            }
        });
    }

    public /* synthetic */ void lambda$scheduleWriteSettingsLocked$1$UsbProfileGroupSettingsManager() {
        synchronized (this.mLock) {
            FileOutputStream fos = null;
            try {
                fos = this.mSettingsFile.startWrite();
                FastXmlSerializer serializer = new FastXmlSerializer();
                serializer.setOutput(fos, StandardCharsets.UTF_8.name());
                serializer.startDocument((String) null, true);
                serializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
                serializer.startTag((String) null, "settings");
                for (DeviceFilter filter : this.mDevicePreferenceMap.keySet()) {
                    serializer.startTag((String) null, "preference");
                    serializer.attribute((String) null, Settings.ATTR_PACKAGE, this.mDevicePreferenceMap.get(filter).packageName);
                    serializer.attribute((String) null, "user", String.valueOf(getSerial(this.mDevicePreferenceMap.get(filter).user)));
                    filter.write(serializer);
                    serializer.endTag((String) null, "preference");
                }
                for (AccessoryFilter filter2 : this.mAccessoryPreferenceMap.keySet()) {
                    serializer.startTag((String) null, "preference");
                    serializer.attribute((String) null, Settings.ATTR_PACKAGE, this.mAccessoryPreferenceMap.get(filter2).packageName);
                    serializer.attribute((String) null, "user", String.valueOf(getSerial(this.mAccessoryPreferenceMap.get(filter2).user)));
                    filter2.write(serializer);
                    serializer.endTag((String) null, "preference");
                }
                int numEntries = this.mDevicePreferenceDeniedMap.size();
                for (int i = 0; i < numEntries; i++) {
                    DeviceFilter filter3 = this.mDevicePreferenceDeniedMap.keyAt(i);
                    ArraySet<UserPackage> userPackageSet = this.mDevicePreferenceDeniedMap.valueAt(i);
                    serializer.startTag((String) null, "preference-denied-list");
                    filter3.write(serializer);
                    int numUserPackages = userPackageSet.size();
                    for (int j = 0; j < numUserPackages; j++) {
                        UserPackage userPackage = userPackageSet.valueAt(j);
                        serializer.startTag((String) null, "user-package");
                        serializer.attribute((String) null, "user", String.valueOf(getSerial(userPackage.user)));
                        serializer.attribute((String) null, Settings.ATTR_PACKAGE, userPackage.packageName);
                        serializer.endTag((String) null, "user-package");
                    }
                    serializer.endTag((String) null, "preference-denied-list");
                }
                int numEntries2 = this.mAccessoryPreferenceDeniedMap.size();
                for (int i2 = 0; i2 < numEntries2; i2++) {
                    AccessoryFilter filter4 = this.mAccessoryPreferenceDeniedMap.keyAt(i2);
                    ArraySet<UserPackage> userPackageSet2 = this.mAccessoryPreferenceDeniedMap.valueAt(i2);
                    serializer.startTag((String) null, "preference-denied-list");
                    filter4.write(serializer);
                    int numUserPackages2 = userPackageSet2.size();
                    for (int j2 = 0; j2 < numUserPackages2; j2++) {
                        UserPackage userPackage2 = userPackageSet2.valueAt(j2);
                        serializer.startTag((String) null, "user-package");
                        serializer.attribute((String) null, "user", String.valueOf(getSerial(userPackage2.user)));
                        serializer.attribute((String) null, Settings.ATTR_PACKAGE, userPackage2.packageName);
                        serializer.endTag((String) null, "user-package");
                    }
                    serializer.endTag((String) null, "preference-denied-list");
                }
                serializer.endTag((String) null, "settings");
                serializer.endDocument();
                this.mSettingsFile.finishWrite(fos);
            } catch (IOException e) {
                Slog.e(TAG, "Failed to write settings", e);
                if (fos != null) {
                    this.mSettingsFile.failWrite(fos);
                }
            }
            this.mIsWriteSettingsScheduled = false;
        }
    }

    static ArrayList<DeviceFilter> getDeviceFilters(PackageManager pm, ResolveInfo info) {
        ArrayList<DeviceFilter> filters = null;
        ActivityInfo ai = info.activityInfo;
        XmlResourceParser parser = null;
        try {
            parser = ai.loadXmlMetaData(pm, "android.hardware.usb.action.USB_DEVICE_ATTACHED");
            if (parser == null) {
                Slog.w(TAG, "no meta-data for " + info);
                return null;
            }
            XmlUtils.nextElement(parser);
            while (parser.getEventType() != 1) {
                String tagName = parser.getName();
                if ("usb-device".equals(tagName)) {
                    if (filters == null) {
                        filters = new ArrayList<>(1);
                    }
                    filters.add(DeviceFilter.read(parser));
                }
                XmlUtils.nextElement(parser);
            }
            return filters;
        } catch (Exception e) {
            Slog.w(TAG, "Unable to load component info " + info.toString(), e);
        } finally {
            if (0 != 0) {
                parser.close();
            }
        }
    }

    static ArrayList<AccessoryFilter> getAccessoryFilters(PackageManager pm, ResolveInfo info) {
        ArrayList<AccessoryFilter> filters = null;
        ActivityInfo ai = info.activityInfo;
        XmlResourceParser parser = null;
        try {
            parser = ai.loadXmlMetaData(pm, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED");
            if (parser == null) {
                Slog.w(TAG, "no meta-data for " + info);
                return null;
            }
            XmlUtils.nextElement(parser);
            while (parser.getEventType() != 1) {
                String tagName = parser.getName();
                if ("usb-accessory".equals(tagName)) {
                    if (filters == null) {
                        filters = new ArrayList<>(1);
                    }
                    filters.add(AccessoryFilter.read(parser));
                }
                XmlUtils.nextElement(parser);
            }
            return filters;
        } catch (Exception e) {
            Slog.w(TAG, "Unable to load component info " + info.toString(), e);
        } finally {
            if (0 != 0) {
                parser.close();
            }
        }
    }

    private boolean packageMatchesLocked(ResolveInfo info, UsbDevice device, UsbAccessory accessory) {
        ArrayList<AccessoryFilter> accessoryFilters;
        ArrayList<DeviceFilter> deviceFilters;
        if (isForwardMatch(info)) {
            return true;
        }
        if (device != null && (deviceFilters = getDeviceFilters(this.mPackageManager, info)) != null) {
            int numDeviceFilters = deviceFilters.size();
            for (int i = 0; i < numDeviceFilters; i++) {
                if (deviceFilters.get(i).matches(device)) {
                    return true;
                }
            }
        }
        if (accessory != null && (accessoryFilters = getAccessoryFilters(this.mPackageManager, info)) != null) {
            int numAccessoryFilters = accessoryFilters.size();
            for (int i2 = 0; i2 < numAccessoryFilters; i2++) {
                if (accessoryFilters.get(i2).matches(accessory)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private ArrayList<ResolveInfo> queryIntentActivitiesForAllProfiles(Intent intent) {
        List<UserInfo> profiles = this.mUserManager.getEnabledProfiles(this.mParentUser.getIdentifier());
        ArrayList<ResolveInfo> resolveInfos = new ArrayList<>();
        int numProfiles = profiles.size();
        for (int i = 0; i < numProfiles; i++) {
            resolveInfos.addAll(this.mSettingsManager.getSettingsForUser(profiles.get(i).id).queryIntentActivities(intent));
        }
        return resolveInfos;
    }

    private boolean isForwardMatch(ResolveInfo match) {
        return match.getComponentInfo().name.equals(IntentForwarderActivity.FORWARD_INTENT_TO_MANAGED_PROFILE);
    }

    private ArrayList<ResolveInfo> preferHighPriority(ArrayList<ResolveInfo> matches) {
        SparseArray<ArrayList<ResolveInfo>> highestPriorityMatchesByUserId = new SparseArray<>();
        SparseIntArray highestPriorityByUserId = new SparseIntArray();
        ArrayList<ResolveInfo> forwardMatches = new ArrayList<>();
        int numMatches = matches.size();
        for (int matchNum = 0; matchNum < numMatches; matchNum++) {
            ResolveInfo match = matches.get(matchNum);
            if (isForwardMatch(match)) {
                forwardMatches.add(match);
            } else {
                if (highestPriorityByUserId.indexOfKey(match.targetUserId) < 0) {
                    highestPriorityByUserId.put(match.targetUserId, Integer.MIN_VALUE);
                    highestPriorityMatchesByUserId.put(match.targetUserId, new ArrayList<>());
                }
                int highestPriority = highestPriorityByUserId.get(match.targetUserId);
                ArrayList<ResolveInfo> highestPriorityMatches = highestPriorityMatchesByUserId.get(match.targetUserId);
                if (match.priority == highestPriority) {
                    highestPriorityMatches.add(match);
                } else if (match.priority > highestPriority) {
                    highestPriorityByUserId.put(match.targetUserId, match.priority);
                    highestPriorityMatches.clear();
                    highestPriorityMatches.add(match);
                }
            }
        }
        ArrayList<ResolveInfo> combinedMatches = new ArrayList<>(forwardMatches);
        int numMatchArrays = highestPriorityMatchesByUserId.size();
        for (int matchArrayNum = 0; matchArrayNum < numMatchArrays; matchArrayNum++) {
            combinedMatches.addAll(highestPriorityMatchesByUserId.valueAt(matchArrayNum));
        }
        return combinedMatches;
    }

    private ArrayList<ResolveInfo> removeForwardIntentIfNotNeeded(ArrayList<ResolveInfo> rawMatches) {
        int numRawMatches = rawMatches.size();
        int numParentActivityMatches = 0;
        int numNonParentActivityMatches = 0;
        for (int i = 0; i < numRawMatches; i++) {
            ResolveInfo rawMatch = rawMatches.get(i);
            if (!isForwardMatch(rawMatch)) {
                if (UserHandle.getUserHandleForUid(rawMatch.activityInfo.applicationInfo.uid).equals(this.mParentUser)) {
                    numParentActivityMatches++;
                } else {
                    numNonParentActivityMatches++;
                }
            }
        }
        if (numParentActivityMatches == 0 || numNonParentActivityMatches == 0) {
            ArrayList<ResolveInfo> matches = new ArrayList<>(numParentActivityMatches + numNonParentActivityMatches);
            for (int i2 = 0; i2 < numRawMatches; i2++) {
                ResolveInfo rawMatch2 = rawMatches.get(i2);
                if (!isForwardMatch(rawMatch2)) {
                    matches.add(rawMatch2);
                }
            }
            return matches;
        }
        return rawMatches;
    }

    private ArrayList<ResolveInfo> getDeviceMatchesLocked(UsbDevice device, Intent intent) {
        ArrayList<ResolveInfo> matches = new ArrayList<>();
        List<ResolveInfo> resolveInfos = queryIntentActivitiesForAllProfiles(intent);
        int count = resolveInfos.size();
        for (int i = 0; i < count; i++) {
            ResolveInfo resolveInfo = resolveInfos.get(i);
            if (packageMatchesLocked(resolveInfo, device, null)) {
                matches.add(resolveInfo);
            }
        }
        return removeForwardIntentIfNotNeeded(preferHighPriority(matches));
    }

    private ArrayList<ResolveInfo> getAccessoryMatchesLocked(UsbAccessory accessory, Intent intent) {
        ArrayList<ResolveInfo> matches = new ArrayList<>();
        List<ResolveInfo> resolveInfos = queryIntentActivitiesForAllProfiles(intent);
        int count = resolveInfos.size();
        for (int i = 0; i < count; i++) {
            ResolveInfo resolveInfo = resolveInfos.get(i);
            if (packageMatchesLocked(resolveInfo, null, accessory)) {
                matches.add(resolveInfo);
            }
        }
        return removeForwardIntentIfNotNeeded(preferHighPriority(matches));
    }

    public void deviceAttached(UsbDevice device) {
        Intent intent = createDeviceAttachedIntent(device);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
        resolveActivity(intent, device, true);
    }

    private void resolveActivity(Intent intent, UsbDevice device, boolean showMtpNotification) {
        ArrayList<ResolveInfo> matches;
        ActivityInfo defaultActivity;
        synchronized (this.mLock) {
            matches = getDeviceMatchesLocked(device, intent);
            defaultActivity = getDefaultActivityLocked(matches, this.mDevicePreferenceMap.get(new DeviceFilter(device)));
        }
        if (showMtpNotification && MtpNotificationManager.shouldShowNotification(this.mPackageManager, device) && defaultActivity == null) {
            this.mMtpNotificationManager.showNotification(device);
        } else {
            resolveActivity(intent, matches, defaultActivity, device, null);
        }
    }

    public void deviceAttachedForFixedHandler(UsbDevice device, ComponentName component) {
        Intent intent = createDeviceAttachedIntent(device);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.of(ActivityManager.getCurrentUser()));
        try {
            ApplicationInfo appInfo = this.mPackageManager.getApplicationInfoAsUser(component.getPackageName(), 0, this.mParentUser.getIdentifier());
            this.mSettingsManager.mUsbService.getPermissionsForUser(UserHandle.getUserId(appInfo.uid)).grantDevicePermission(device, appInfo.uid);
            Intent activityIntent = new Intent(intent);
            activityIntent.setComponent(component);
            try {
                this.mContext.startActivityAsUser(activityIntent, this.mParentUser);
            } catch (ActivityNotFoundException e) {
                Slog.e(TAG, "unable to start activity " + activityIntent);
            }
        } catch (PackageManager.NameNotFoundException e2) {
            Slog.e(TAG, "Default USB handling package (" + component.getPackageName() + ") not found  for user " + this.mParentUser);
        }
    }

    void usbDeviceRemoved(UsbDevice device) {
        this.mMtpNotificationManager.hideNotification(device.getDeviceId());
    }

    public void accessoryAttached(UsbAccessory accessory) {
        ArrayList<ResolveInfo> matches;
        ActivityInfo defaultActivity;
        Intent intent = new Intent("android.hardware.usb.action.USB_ACCESSORY_ATTACHED");
        intent.putExtra("accessory", accessory);
        intent.addFlags(AudioFormat.EVRCB);
        synchronized (this.mLock) {
            matches = getAccessoryMatchesLocked(accessory, intent);
            defaultActivity = getDefaultActivityLocked(matches, this.mAccessoryPreferenceMap.get(new AccessoryFilter(accessory)));
        }
        resolveActivity(intent, matches, defaultActivity, null, accessory);
    }

    private void resolveActivity(Intent intent, ArrayList<ResolveInfo> matches, ActivityInfo defaultActivity, UsbDevice device, UsbAccessory accessory) {
        ArraySet<UserPackage> arraySet = null;
        if (device != null) {
            arraySet = this.mDevicePreferenceDeniedMap.get(new DeviceFilter(device));
        } else if (accessory != null) {
            arraySet = this.mAccessoryPreferenceDeniedMap.get(new AccessoryFilter(accessory));
        }
        if (arraySet != null) {
            for (int i = matches.size() - 1; i >= 0; i--) {
                ResolveInfo match = matches.get(i);
                String packageName = match.activityInfo.packageName;
                UserHandle user = UserHandle.getUserHandleForUid(match.activityInfo.applicationInfo.uid);
                if (arraySet.contains(new UserPackage(packageName, user))) {
                    matches.remove(i);
                }
            }
        }
        int i2 = matches.size();
        if (i2 == 0) {
            if (accessory != null) {
                this.mUsbHandlerManager.showUsbAccessoryUriActivity(accessory, this.mParentUser);
                return;
            }
            return;
        }
        if (defaultActivity == null) {
            if (matches.size() == 1) {
                this.mUsbHandlerManager.confirmUsbHandler(matches.get(0), device, accessory);
                return;
            } else {
                this.mUsbHandlerManager.selectUsbHandler(matches, this.mParentUser, intent);
                return;
            }
        }
        UsbUserPermissionManager defaultRIUserPermissions = this.mSettingsManager.mUsbService.getPermissionsForUser(UserHandle.getUserId(defaultActivity.applicationInfo.uid));
        if (device != null) {
            defaultRIUserPermissions.grantDevicePermission(device, defaultActivity.applicationInfo.uid);
        } else if (accessory != null) {
            defaultRIUserPermissions.grantAccessoryPermission(accessory, defaultActivity.applicationInfo.uid);
        }
        try {
            intent.setComponent(new ComponentName(defaultActivity.packageName, defaultActivity.name));
            UserHandle user2 = UserHandle.getUserHandleForUid(defaultActivity.applicationInfo.uid);
            this.mContext.startActivityAsUser(intent, user2);
        } catch (ActivityNotFoundException e) {
            Slog.e(TAG, "startActivity failed", e);
        }
    }

    private ActivityInfo getDefaultActivityLocked(ArrayList<ResolveInfo> matches, UserPackage userPackage) {
        ActivityInfo activityInfo;
        if (userPackage != null) {
            for (ResolveInfo info : matches) {
                if (info.activityInfo != null && userPackage.equals(new UserPackage(info.activityInfo.packageName, UserHandle.getUserHandleForUid(info.activityInfo.applicationInfo.uid)))) {
                    return info.activityInfo;
                }
            }
        }
        if (matches.size() == 1 && (activityInfo = matches.get(0).activityInfo) != null) {
            if (this.mDisablePermissionDialogs) {
                return activityInfo;
            }
            if (activityInfo.applicationInfo != null && (1 & activityInfo.applicationInfo.flags) != 0) {
                return activityInfo;
            }
        }
        return null;
    }

    private boolean clearCompatibleMatchesLocked(UserPackage userPackage, DeviceFilter filter) {
        ArrayList<DeviceFilter> keysToRemove = new ArrayList<>();
        for (DeviceFilter device : this.mDevicePreferenceMap.keySet()) {
            if (filter.contains(device)) {
                UserPackage currentMatch = this.mDevicePreferenceMap.get(device);
                if (!currentMatch.equals(userPackage)) {
                    keysToRemove.add(device);
                }
            }
        }
        if (!keysToRemove.isEmpty()) {
            for (DeviceFilter keyToRemove : keysToRemove) {
                this.mDevicePreferenceMap.remove(keyToRemove);
            }
        }
        return !keysToRemove.isEmpty();
    }

    private boolean clearCompatibleMatchesLocked(UserPackage userPackage, AccessoryFilter filter) {
        ArrayList<AccessoryFilter> keysToRemove = new ArrayList<>();
        for (AccessoryFilter accessory : this.mAccessoryPreferenceMap.keySet()) {
            if (filter.contains(accessory)) {
                UserPackage currentMatch = this.mAccessoryPreferenceMap.get(accessory);
                if (!currentMatch.equals(userPackage)) {
                    keysToRemove.add(accessory);
                }
            }
        }
        if (!keysToRemove.isEmpty()) {
            for (AccessoryFilter keyToRemove : keysToRemove) {
                this.mAccessoryPreferenceMap.remove(keyToRemove);
            }
        }
        return !keysToRemove.isEmpty();
    }

    private boolean handlePackageAddedLocked(UserPackage userPackage, ActivityInfo aInfo, String metaDataName) {
        XmlResourceParser parser = null;
        boolean changed = false;
        try {
            parser = aInfo.loadXmlMetaData(this.mPackageManager, metaDataName);
            if (parser == null) {
                return false;
            }
            XmlUtils.nextElement(parser);
            while (parser.getEventType() != 1) {
                String tagName = parser.getName();
                if ("usb-device".equals(tagName)) {
                    DeviceFilter filter = DeviceFilter.read(parser);
                    if (clearCompatibleMatchesLocked(userPackage, filter)) {
                        changed = true;
                    }
                } else if ("usb-accessory".equals(tagName)) {
                    AccessoryFilter filter2 = AccessoryFilter.read(parser);
                    if (clearCompatibleMatchesLocked(userPackage, filter2)) {
                        changed = true;
                    }
                }
                XmlUtils.nextElement(parser);
            }
            return changed;
        } catch (Exception e) {
            Slog.w(TAG, "Unable to load component info " + aInfo.toString(), e);
        } finally {
            if (parser != null) {
                parser.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePackageAdded(UserPackage userPackage) {
        synchronized (this.mLock) {
            boolean changed = false;
            try {
                try {
                    PackageInfo info = this.mPackageManager.getPackageInfoAsUser(userPackage.packageName, CecMessageType.ROUTING_INFORMATION, userPackage.user.getIdentifier());
                    ActivityInfo[] activities = info.activities;
                    if (activities == null) {
                        return;
                    }
                    for (int i = 0; i < activities.length; i++) {
                        if (handlePackageAddedLocked(userPackage, activities[i], "android.hardware.usb.action.USB_DEVICE_ATTACHED")) {
                            changed = true;
                        }
                        if (handlePackageAddedLocked(userPackage, activities[i], "android.hardware.usb.action.USB_ACCESSORY_ATTACHED")) {
                            changed = true;
                        }
                    }
                    if (changed) {
                        scheduleWriteSettingsLocked();
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    Slog.e(TAG, "handlePackageUpdate could not find package " + userPackage, e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private int getSerial(UserHandle user) {
        return this.mUserManager.getUserSerialNumber(user.getIdentifier());
    }

    void setDevicePackage(UsbDevice device, String packageName, UserHandle user) {
        DeviceFilter filter = new DeviceFilter(device);
        synchronized (this.mLock) {
            boolean changed = true;
            try {
                if (packageName == null) {
                    if (this.mDevicePreferenceMap.remove(filter) == null) {
                        changed = false;
                    }
                } else {
                    UserPackage userPackage = new UserPackage(packageName, user);
                    changed = true ^ userPackage.equals(this.mDevicePreferenceMap.get(filter));
                    if (changed) {
                        this.mDevicePreferenceMap.put(filter, userPackage);
                    }
                }
                if (changed) {
                    scheduleWriteSettingsLocked();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void addDevicePackagesToDenied(UsbDevice device, String[] packageNames, UserHandle user) {
        ArraySet<UserPackage> userPackages;
        if (packageNames.length == 0) {
            return;
        }
        DeviceFilter filter = new DeviceFilter(device);
        synchronized (this.mLock) {
            if (this.mDevicePreferenceDeniedMap.containsKey(filter)) {
                userPackages = this.mDevicePreferenceDeniedMap.get(filter);
            } else {
                userPackages = new ArraySet<>();
                this.mDevicePreferenceDeniedMap.put(filter, userPackages);
            }
            boolean shouldWrite = false;
            for (String packageName : packageNames) {
                UserPackage userPackage = new UserPackage(packageName, user);
                if (!userPackages.contains(userPackage)) {
                    userPackages.add(userPackage);
                    shouldWrite = true;
                }
            }
            if (shouldWrite) {
                scheduleWriteSettingsLocked();
            }
        }
    }

    void addAccessoryPackagesToDenied(UsbAccessory accessory, String[] packageNames, UserHandle user) {
        ArraySet<UserPackage> userPackages;
        if (packageNames.length == 0) {
            return;
        }
        AccessoryFilter filter = new AccessoryFilter(accessory);
        synchronized (this.mLock) {
            if (this.mAccessoryPreferenceDeniedMap.containsKey(filter)) {
                userPackages = this.mAccessoryPreferenceDeniedMap.get(filter);
            } else {
                userPackages = new ArraySet<>();
                this.mAccessoryPreferenceDeniedMap.put(filter, userPackages);
            }
            boolean shouldWrite = false;
            for (String packageName : packageNames) {
                UserPackage userPackage = new UserPackage(packageName, user);
                if (!userPackages.contains(userPackage)) {
                    userPackages.add(userPackage);
                    shouldWrite = true;
                }
            }
            if (shouldWrite) {
                scheduleWriteSettingsLocked();
            }
        }
    }

    void removeDevicePackagesFromDenied(UsbDevice device, String[] packageNames, UserHandle user) {
        DeviceFilter filter = new DeviceFilter(device);
        synchronized (this.mLock) {
            ArraySet<UserPackage> userPackages = this.mDevicePreferenceDeniedMap.get(filter);
            if (userPackages != null) {
                boolean shouldWrite = false;
                for (String packageName : packageNames) {
                    UserPackage userPackage = new UserPackage(packageName, user);
                    if (userPackages.contains(userPackage)) {
                        userPackages.remove(userPackage);
                        shouldWrite = true;
                        if (userPackages.size() == 0) {
                            this.mDevicePreferenceDeniedMap.remove(filter);
                            break;
                        }
                    }
                }
                if (shouldWrite) {
                    scheduleWriteSettingsLocked();
                }
            }
        }
    }

    void removeAccessoryPackagesFromDenied(UsbAccessory accessory, String[] packageNames, UserHandle user) {
        AccessoryFilter filter = new AccessoryFilter(accessory);
        synchronized (this.mLock) {
            ArraySet<UserPackage> userPackages = this.mAccessoryPreferenceDeniedMap.get(filter);
            if (userPackages != null) {
                boolean shouldWrite = false;
                for (String packageName : packageNames) {
                    UserPackage userPackage = new UserPackage(packageName, user);
                    if (userPackages.contains(userPackage)) {
                        userPackages.remove(userPackage);
                        shouldWrite = true;
                        if (userPackages.size() == 0) {
                            this.mAccessoryPreferenceDeniedMap.remove(filter);
                            break;
                        }
                    }
                }
                if (shouldWrite) {
                    scheduleWriteSettingsLocked();
                }
            }
        }
    }

    void setAccessoryPackage(UsbAccessory accessory, String packageName, UserHandle user) {
        AccessoryFilter filter = new AccessoryFilter(accessory);
        synchronized (this.mLock) {
            boolean changed = true;
            try {
                if (packageName == null) {
                    if (this.mAccessoryPreferenceMap.remove(filter) == null) {
                        changed = false;
                    }
                } else {
                    UserPackage userPackage = new UserPackage(packageName, user);
                    changed = true ^ userPackage.equals(this.mAccessoryPreferenceMap.get(filter));
                    if (changed) {
                        this.mAccessoryPreferenceMap.put(filter, userPackage);
                    }
                }
                if (changed) {
                    scheduleWriteSettingsLocked();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    boolean hasDefaults(String packageName, UserHandle user) {
        UserPackage userPackage = new UserPackage(packageName, user);
        synchronized (this.mLock) {
            if (this.mDevicePreferenceMap.values().contains(userPackage)) {
                return true;
            }
            return this.mAccessoryPreferenceMap.values().contains(userPackage);
        }
    }

    void clearDefaults(String packageName, UserHandle user) {
        UserPackage userPackage = new UserPackage(packageName, user);
        synchronized (this.mLock) {
            if (clearPackageDefaultsLocked(userPackage)) {
                scheduleWriteSettingsLocked();
            }
        }
    }

    private boolean clearPackageDefaultsLocked(UserPackage userPackage) {
        boolean cleared = false;
        synchronized (this.mLock) {
            if (this.mDevicePreferenceMap.containsValue(userPackage)) {
                DeviceFilter[] keys = (DeviceFilter[]) this.mDevicePreferenceMap.keySet().toArray(new DeviceFilter[0]);
                for (DeviceFilter key : keys) {
                    if (userPackage.equals(this.mDevicePreferenceMap.get(key))) {
                        this.mDevicePreferenceMap.remove(key);
                        cleared = true;
                    }
                }
            }
            if (this.mAccessoryPreferenceMap.containsValue(userPackage)) {
                AccessoryFilter[] keys2 = (AccessoryFilter[]) this.mAccessoryPreferenceMap.keySet().toArray(new AccessoryFilter[0]);
                for (AccessoryFilter key2 : keys2) {
                    if (userPackage.equals(this.mAccessoryPreferenceMap.get(key2))) {
                        this.mAccessoryPreferenceMap.remove(key2);
                        cleared = true;
                    }
                }
            }
        }
        return cleared;
    }

    public void dump(DualDumpOutputStream dump, String idName, long id) {
        long token = dump.start(idName, id);
        synchronized (this.mLock) {
            dump.write("parent_user_id", 1120986464257L, this.mParentUser.getIdentifier());
            for (DeviceFilter filter : this.mDevicePreferenceMap.keySet()) {
                long devicePrefToken = dump.start("device_preferences", 2246267895810L);
                filter.dump(dump, "filter", 1146756268033L);
                this.mDevicePreferenceMap.get(filter).dump(dump, "user_package", 1146756268034L);
                dump.end(devicePrefToken);
            }
            for (AccessoryFilter filter2 : this.mAccessoryPreferenceMap.keySet()) {
                long accessoryPrefToken = dump.start("accessory_preferences", 2246267895811L);
                filter2.dump(dump, "filter", 1146756268033L);
                this.mAccessoryPreferenceMap.get(filter2).dump(dump, "user_package", 1146756268034L);
                dump.end(accessoryPrefToken);
            }
        }
        dump.end(token);
    }

    private static Intent createDeviceAttachedIntent(UsbDevice device) {
        Intent intent = new Intent("android.hardware.usb.action.USB_DEVICE_ATTACHED");
        intent.putExtra("device", device);
        intent.addFlags(AudioFormat.EVRCB);
        return intent;
    }
}

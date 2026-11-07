package com.android.server.usb;

import android.R;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.usb.AccessoryFilter;
import android.hardware.usb.DeviceFilter;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbInterface;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.Environment;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.SparseBooleanArray;
import android.util.Xml;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.XmlUtils;
import com.android.server.net.watchlist.WatchlistLoggingHandler;
import com.android.server.slice.SliceClientPermissions;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
class UsbUserPermissionManager {
    private static final boolean DEBUG = false;
    private static final String TAG = UsbUserPermissionManager.class.getSimpleName();
    private final Context mContext;
    private final boolean mDisablePermissionDialogs;
    private boolean mIsCopyPermissionsScheduled;
    private final AtomicFile mPermissionsFile;
    private final UsbUserSettingsManager mUsbUserSettingsManager;
    private final UserHandle mUser;
    private final ArrayMap<String, SparseBooleanArray> mDevicePermissionMap = new ArrayMap<>();
    private final ArrayMap<UsbAccessory, SparseBooleanArray> mAccessoryPermissionMap = new ArrayMap<>();
    private final ArrayMap<DeviceFilter, SparseBooleanArray> mDevicePersistentPermissionMap = new ArrayMap<>();
    private final ArrayMap<AccessoryFilter, SparseBooleanArray> mAccessoryPersistentPermissionMap = new ArrayMap<>();
    private final Object mLock = new Object();
    private final ArrayList<String> mMegaApps = new ArrayList<>();

    UsbUserPermissionManager(Context context, UsbUserSettingsManager usbUserSettingsManager) {
        this.mContext = context;
        String[] packages = context.getResources().getStringArray(R.array.config_oem_enabled_satellite_country_codes);
        this.mMegaApps.addAll(Arrays.asList(packages));
        this.mUser = context.getUser();
        this.mUsbUserSettingsManager = usbUserSettingsManager;
        this.mDisablePermissionDialogs = context.getResources().getBoolean(R.bool.config_canRemoveFirstAccount);
        this.mPermissionsFile = new AtomicFile(new File(Environment.getUserSystemDirectory(this.mUser.getIdentifier()), "usb_permissions.xml"), "usb-permissions");
        synchronized (this.mLock) {
            readPermissionsLocked();
        }
    }

    void removeAccessoryPermissions(UsbAccessory accessory) {
        synchronized (this.mLock) {
            this.mAccessoryPermissionMap.remove(accessory);
        }
    }

    void removeDevicePermissions(UsbDevice device) {
        synchronized (this.mLock) {
            this.mDevicePermissionMap.remove(device.getDeviceName());
        }
    }

    void grantDevicePermission(UsbDevice device, int uid) {
        synchronized (this.mLock) {
            String deviceName = device.getDeviceName();
            SparseBooleanArray uidList = this.mDevicePermissionMap.get(deviceName);
            if (uidList == null) {
                uidList = new SparseBooleanArray(1);
                this.mDevicePermissionMap.put(deviceName, uidList);
            }
            uidList.put(uid, true);
        }
    }

    void grantAccessoryPermission(UsbAccessory accessory, int uid) {
        synchronized (this.mLock) {
            SparseBooleanArray uidList = this.mAccessoryPermissionMap.get(accessory);
            if (uidList == null) {
                uidList = new SparseBooleanArray(1);
                this.mAccessoryPermissionMap.put(accessory, uidList);
            }
            uidList.put(uid, true);
        }
    }

    boolean hasPermission(UsbDevice device, String packageName, int pid, int uid) {
        int idx;
        if (this.mMegaApps.contains(packageName)) {
            return true;
        }
        if (isCameraDevicePresent(device) && !isCameraPermissionGranted(packageName, pid, uid)) {
            return false;
        }
        synchronized (this.mLock) {
            if (uid != 1000) {
                if (!this.mDisablePermissionDialogs) {
                    DeviceFilter filter = new DeviceFilter(device);
                    SparseBooleanArray permissionsForDevice = this.mDevicePersistentPermissionMap.get(filter);
                    if (permissionsForDevice != null && (idx = permissionsForDevice.indexOfKey(uid)) >= 0) {
                        return permissionsForDevice.valueAt(idx);
                    }
                    SparseBooleanArray uidList = this.mDevicePermissionMap.get(device.getDeviceName());
                    if (uidList == null) {
                        return false;
                    }
                    return uidList.get(uid);
                }
            }
            return true;
        }
    }

    boolean hasPermission(UsbAccessory accessory, int uid) {
        int idx;
        synchronized (this.mLock) {
            if (uid != 1000) {
                if (!this.mDisablePermissionDialogs) {
                    AccessoryFilter filter = new AccessoryFilter(accessory);
                    SparseBooleanArray permissionsForAccessory = this.mAccessoryPersistentPermissionMap.get(filter);
                    if (permissionsForAccessory != null && (idx = permissionsForAccessory.indexOfKey(uid)) >= 0) {
                        return permissionsForAccessory.valueAt(idx);
                    }
                    SparseBooleanArray uidList = this.mAccessoryPermissionMap.get(accessory);
                    if (uidList == null) {
                        return false;
                    }
                    return uidList.get(uid);
                }
            }
            return true;
        }
    }

    void setDevicePersistentPermission(UsbDevice device, int uid, boolean isGranted) {
        boolean isChanged;
        DeviceFilter filter = new DeviceFilter(device);
        synchronized (this.mLock) {
            SparseBooleanArray permissionsForDevice = this.mDevicePersistentPermissionMap.get(filter);
            if (permissionsForDevice == null) {
                permissionsForDevice = new SparseBooleanArray();
                this.mDevicePersistentPermissionMap.put(filter, permissionsForDevice);
            }
            int idx = permissionsForDevice.indexOfKey(uid);
            if (idx >= 0) {
                isChanged = permissionsForDevice.valueAt(idx) != isGranted;
                permissionsForDevice.setValueAt(idx, isGranted);
            } else {
                isChanged = true;
                permissionsForDevice.put(uid, isGranted);
            }
            if (isChanged) {
                scheduleWritePermissionsLocked();
            }
        }
    }

    void setAccessoryPersistentPermission(UsbAccessory accessory, int uid, boolean isGranted) {
        boolean isChanged;
        AccessoryFilter filter = new AccessoryFilter(accessory);
        synchronized (this.mLock) {
            SparseBooleanArray permissionsForAccessory = this.mAccessoryPersistentPermissionMap.get(filter);
            if (permissionsForAccessory == null) {
                permissionsForAccessory = new SparseBooleanArray();
                this.mAccessoryPersistentPermissionMap.put(filter, permissionsForAccessory);
            }
            int idx = permissionsForAccessory.indexOfKey(uid);
            if (idx >= 0) {
                isChanged = permissionsForAccessory.valueAt(idx) != isGranted;
                permissionsForAccessory.setValueAt(idx, isGranted);
            } else {
                isChanged = true;
                permissionsForAccessory.put(uid, isGranted);
            }
            if (isChanged) {
                scheduleWritePermissionsLocked();
            }
        }
    }

    private void readPermission(XmlPullParser parser) throws XmlPullParserException, IOException {
        try {
            int uid = XmlUtils.readIntAttribute(parser, WatchlistLoggingHandler.WatchlistEventKeys.UID);
            String isGrantedString = parser.getAttributeValue(null, "granted");
            if (isGrantedString == null || (!isGrantedString.equals(Boolean.TRUE.toString()) && !isGrantedString.equals(Boolean.FALSE.toString()))) {
                Slog.e(TAG, "error reading usb permission granted state");
                XmlUtils.skipCurrentTag(parser);
                return;
            }
            boolean isGranted = isGrantedString.equals(Boolean.TRUE.toString());
            XmlUtils.nextElement(parser);
            if ("usb-device".equals(parser.getName())) {
                DeviceFilter filter = DeviceFilter.read(parser);
                int idx = this.mDevicePersistentPermissionMap.indexOfKey(filter);
                if (idx >= 0) {
                    this.mDevicePersistentPermissionMap.valueAt(idx).put(uid, isGranted);
                    return;
                }
                SparseBooleanArray permissionsForDevice = new SparseBooleanArray();
                this.mDevicePersistentPermissionMap.put(filter, permissionsForDevice);
                permissionsForDevice.put(uid, isGranted);
                return;
            }
            if ("usb-accessory".equals(parser.getName())) {
                AccessoryFilter filter2 = AccessoryFilter.read(parser);
                int idx2 = this.mAccessoryPersistentPermissionMap.indexOfKey(filter2);
                if (idx2 >= 0) {
                    this.mAccessoryPersistentPermissionMap.valueAt(idx2).put(uid, isGranted);
                    return;
                }
                SparseBooleanArray permissionsForAccessory = new SparseBooleanArray();
                this.mAccessoryPersistentPermissionMap.put(filter2, permissionsForAccessory);
                permissionsForAccessory.put(uid, isGranted);
            }
        } catch (NumberFormatException e) {
            Slog.e(TAG, "error reading usb permission uid", e);
            XmlUtils.skipCurrentTag(parser);
        }
    }

    private void readPermissionsLocked() {
        this.mDevicePersistentPermissionMap.clear();
        this.mAccessoryPersistentPermissionMap.clear();
        try {
            FileInputStream in = this.mPermissionsFile.openRead();
            try {
                XmlPullParser parser = Xml.newPullParser();
                parser.setInput(in, StandardCharsets.UTF_8.name());
                XmlUtils.nextElement(parser);
                while (parser.getEventType() != 1) {
                    String tagName = parser.getName();
                    if ("permission".equals(tagName)) {
                        readPermission(parser);
                    } else {
                        XmlUtils.nextElement(parser);
                    }
                }
                if (in != null) {
                    in.close();
                }
            } catch (Throwable th) {
                if (in != null) {
                    try {
                        in.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e) {
        } catch (Exception e2) {
            Slog.e(TAG, "error reading usb permissions file, deleting to start fresh", e2);
            this.mPermissionsFile.delete();
        }
    }

    private void scheduleWritePermissionsLocked() {
        if (this.mIsCopyPermissionsScheduled) {
            return;
        }
        this.mIsCopyPermissionsScheduled = true;
        AsyncTask.execute(new Runnable() { // from class: com.android.server.usb.-$$Lambda$UsbUserPermissionManager$BTAX99j1EqZh54vMSYn4PHxEgrA
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.lambda$scheduleWritePermissionsLocked$0$UsbUserPermissionManager();
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0186 A[Catch: all -> 0x018d, TryCatch #6 {all -> 0x018d, blocks: (B:29:0x00ec, B:49:0x017d, B:51:0x0186, B:52:0x018b, B:55:0x018e, B:34:0x0119, B:37:0x0128, B:39:0x012e, B:40:0x015e, B:41:0x0161), top: B:64:0x00ab }] */
    public /* synthetic */ void lambda$scheduleWritePermissionsLocked$0$UsbUserPermissionManager() throws Throwable {
        int numDevices;
        DeviceFilter[] devices;
        int[][] uidsForDevices;
        boolean[][] grantedValuesForDevices;
        int numAccessories;
        AccessoryFilter[] accessories;
        int[][] uidsForAccessories;
        synchronized (this.mLock) {
            numDevices = this.mDevicePersistentPermissionMap.size();
            devices = new DeviceFilter[numDevices];
            uidsForDevices = new int[numDevices][];
            grantedValuesForDevices = new boolean[numDevices][];
            for (int deviceIdx = 0; deviceIdx < numDevices; deviceIdx++) {
                devices[deviceIdx] = new DeviceFilter(this.mDevicePersistentPermissionMap.keyAt(deviceIdx));
                SparseBooleanArray permissions = this.mDevicePersistentPermissionMap.valueAt(deviceIdx);
                int numPermissions = permissions.size();
                uidsForDevices[deviceIdx] = new int[numPermissions];
                grantedValuesForDevices[deviceIdx] = new boolean[numPermissions];
                for (int permissionIdx = 0; permissionIdx < numPermissions; permissionIdx++) {
                    uidsForDevices[deviceIdx][permissionIdx] = permissions.keyAt(permissionIdx);
                    grantedValuesForDevices[deviceIdx][permissionIdx] = permissions.valueAt(permissionIdx);
                }
            }
            numAccessories = this.mAccessoryPersistentPermissionMap.size();
            accessories = new AccessoryFilter[numAccessories];
            uidsForAccessories = new int[numAccessories][];
            boolean[][] grantedValuesForAccessories = new boolean[numAccessories][];
            for (int accessoryIdx = 0; accessoryIdx < numAccessories; accessoryIdx++) {
                accessories[accessoryIdx] = new AccessoryFilter(this.mAccessoryPersistentPermissionMap.keyAt(accessoryIdx));
                SparseBooleanArray permissions2 = this.mAccessoryPersistentPermissionMap.valueAt(accessoryIdx);
                int numPermissions2 = permissions2.size();
                uidsForAccessories[accessoryIdx] = new int[numPermissions2];
                grantedValuesForAccessories[accessoryIdx] = new boolean[numPermissions2];
                for (int permissionIdx2 = 0; permissionIdx2 < numPermissions2; permissionIdx2++) {
                    uidsForAccessories[accessoryIdx][permissionIdx2] = permissions2.keyAt(permissionIdx2);
                    grantedValuesForAccessories[accessoryIdx][permissionIdx2] = permissions2.valueAt(permissionIdx2);
                }
            }
            this.mIsCopyPermissionsScheduled = false;
        }
        synchronized (this.mPermissionsFile) {
            FileOutputStream out = null;
            try {
                try {
                    out = this.mPermissionsFile.startWrite();
                    FastXmlSerializer serializer = new FastXmlSerializer();
                    serializer.setOutput(out, StandardCharsets.UTF_8.name());
                    serializer.startDocument((String) null, true);
                    serializer.startTag((String) null, "permissions");
                    for (int i = 0; i < numDevices; i++) {
                        int numPermissions3 = uidsForDevices[i].length;
                        int j = 0;
                        while (j < numPermissions3) {
                            int numDevices2 = numDevices;
                            try {
                                serializer.startTag((String) null, "permission");
                                int[][] uidsForDevices2 = uidsForDevices;
                                try {
                                    serializer.attribute((String) null, WatchlistLoggingHandler.WatchlistEventKeys.UID, Integer.toString(uidsForDevices[i][j]));
                                    serializer.attribute((String) null, "granted", Boolean.toString(grantedValuesForDevices[i][j]));
                                    devices[i].write(serializer);
                                    serializer.endTag((String) null, "permission");
                                    j++;
                                    numDevices = numDevices2;
                                    uidsForDevices = uidsForDevices2;
                                } catch (IOException e) {
                                    e = e;
                                    Slog.e(TAG, "Failed to write permissions", e);
                                    if (out != null) {
                                        this.mPermissionsFile.failWrite(out);
                                    }
                                }
                            } catch (IOException e2) {
                                e = e2;
                                Slog.e(TAG, "Failed to write permissions", e);
                                if (out != null) {
                                    this.mPermissionsFile.failWrite(out);
                                }
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                    }
                    for (int i2 = 0; i2 < numAccessories; i2++) {
                        int numPermissions4 = uidsForAccessories[i2].length;
                        for (int j2 = 0; j2 < numPermissions4; j2++) {
                            serializer.startTag((String) null, "permission");
                            serializer.attribute((String) null, WatchlistLoggingHandler.WatchlistEventKeys.UID, Integer.toString(uidsForAccessories[i2][j2]));
                            serializer.attribute((String) null, "granted", Boolean.toString(grantedValuesForDevices[i2][j2]));
                            accessories[i2].write(serializer);
                            serializer.endTag((String) null, "permission");
                        }
                    }
                    serializer.endTag((String) null, "permissions");
                    serializer.endDocument();
                    this.mPermissionsFile.finishWrite(out);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e3) {
                e = e3;
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    void requestPermissionDialog(UsbDevice device, UsbAccessory accessory, boolean canBeDefault, String packageName, int uid, Context userContext, PendingIntent pi) {
        long identity = Binder.clearCallingIdentity();
        Intent intent = new Intent();
        if (device != null) {
            intent.putExtra("device", device);
        } else {
            intent.putExtra("accessory", accessory);
        }
        intent.putExtra("android.intent.extra.INTENT", pi);
        intent.putExtra("android.intent.extra.UID", uid);
        intent.putExtra("android.hardware.usb.extra.CAN_BE_DEFAULT", canBeDefault);
        intent.putExtra("android.hardware.usb.extra.PACKAGE", packageName);
        intent.setComponent(ComponentName.unflattenFromString(userContext.getResources().getString(R.string.config_rearDisplayPhysicalAddress)));
        intent.addFlags(AudioFormat.EVRC);
        try {
            try {
                userContext.startActivityAsUser(intent, this.mUser);
            } catch (ActivityNotFoundException e) {
                Slog.e(TAG, "unable to start UsbPermissionActivity");
            }
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x01ee */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01ef, code lost:
    
        r0 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void dump(com.android.internal.util.dump.DualDumpOutputStream r23, java.lang.String r24, long r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.usb.UsbUserPermissionManager.dump(com.android.internal.util.dump.DualDumpOutputStream, java.lang.String, long):void");
    }

    private boolean isCameraPermissionGranted(String packageName, int pid, int uid) {
        try {
            ApplicationInfo aInfo = this.mContext.getPackageManager().getApplicationInfo(packageName, 0);
            if (aInfo.uid != uid) {
                Slog.i(TAG, "Package " + packageName + " does not match caller's uid " + uid);
                return false;
            }
            int targetSdkVersion = aInfo.targetSdkVersion;
            if (targetSdkVersion >= 28) {
                int allowed = this.mContext.checkPermission("android.permission.CAMERA", pid, uid);
                if (-1 == allowed) {
                    Slog.i(TAG, "Camera permission required for USB video class devices");
                    return false;
                }
                return true;
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            Slog.i(TAG, "Package not found, likely due to invalid package name!");
            return false;
        }
    }

    public void checkPermission(UsbDevice device, String packageName, int pid, int uid) {
        if (!hasPermission(device, packageName, pid, uid)) {
            throw new SecurityException("User has not given " + uid + SliceClientPermissions.SliceAuthority.DELIMITER + packageName + " permission to access device " + device.getDeviceName());
        }
    }

    public void checkPermission(UsbAccessory accessory, int uid) {
        if (!hasPermission(accessory, uid)) {
            throw new SecurityException("User has not given " + uid + " permission to accessory " + accessory);
        }
    }

    private void requestPermissionDialog(UsbDevice device, UsbAccessory accessory, boolean canBeDefault, String packageName, PendingIntent pi, int uid) {
        try {
            ApplicationInfo aInfo = this.mContext.getPackageManager().getApplicationInfo(packageName, 0);
            if (aInfo.uid != uid) {
                throw new IllegalArgumentException("package " + packageName + " does not match caller's uid " + uid);
            }
            requestPermissionDialog(device, accessory, canBeDefault, packageName, uid, this.mContext, pi);
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException("package " + packageName + " not found");
        }
    }

    public void requestPermission(UsbDevice device, String packageName, PendingIntent pi, int pid, int uid) {
        Intent intent = new Intent();
        if (hasPermission(device, packageName, pid, uid)) {
            intent.putExtra("device", device);
            intent.putExtra("permission", true);
            try {
                pi.send(this.mContext, 0, intent);
                return;
            } catch (PendingIntent.CanceledException e) {
                return;
            }
        }
        if (isCameraDevicePresent(device) && !isCameraPermissionGranted(packageName, pid, uid)) {
            intent.putExtra("device", device);
            intent.putExtra("permission", false);
            try {
                pi.send(this.mContext, 0, intent);
                return;
            } catch (PendingIntent.CanceledException e2) {
                return;
            }
        }
        requestPermissionDialog(device, null, this.mUsbUserSettingsManager.canBeDefault(device, packageName), packageName, pi, uid);
    }

    public void requestPermission(UsbAccessory accessory, String packageName, PendingIntent pi, int uid) {
        if (hasPermission(accessory, uid)) {
            Intent intent = new Intent();
            intent.putExtra("accessory", accessory);
            intent.putExtra("permission", true);
            try {
                pi.send(this.mContext, 0, intent);
                return;
            } catch (PendingIntent.CanceledException e) {
                return;
            }
        }
        requestPermissionDialog(null, accessory, this.mUsbUserSettingsManager.canBeDefault(accessory, packageName), packageName, pi, uid);
    }

    private boolean isCameraDevicePresent(UsbDevice device) {
        if (device.getDeviceClass() == 14) {
            return true;
        }
        for (int i = 0; i < device.getInterfaceCount(); i++) {
            UsbInterface iface = device.getInterface(i);
            if (iface.getInterfaceClass() == 14) {
                return true;
            }
        }
        return false;
    }
}

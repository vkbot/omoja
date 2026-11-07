package com.android.server.pm;

import android.app.ActivityManager;
import android.app.AppGlobals;
import android.app.IStopUserCallback;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManagerInternal;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.UserManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.util.Preconditions;
import com.android.server.LocalServices;
import com.android.server.notification.SnoozeHelper;
import com.android.server.usb.descriptors.UsbACInterface;
import com.android.server.usb.descriptors.UsbDescriptor;
import com.android.server.wm.WindowManagerService;
import com.google.android.collect.Sets;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class UserRestrictionsUtils {
    private static final String TAG = "UserRestrictionsUtils";
    public static final Set<String> USER_RESTRICTIONS = newSetWithUniqueCheck(new String[]{"no_config_wifi", "no_config_locale", "no_modify_accounts", "no_install_apps", "no_uninstall_apps", "no_share_location", "no_install_unknown_sources", "no_install_unknown_sources_globally", "no_config_bluetooth", "no_bluetooth", "no_bluetooth_sharing", "no_usb_file_transfer", "no_config_credentials", "no_remove_user", "no_remove_managed_profile", "no_debugging_features", "no_config_vpn", "no_config_date_time", "no_config_tethering", "no_network_reset", "no_factory_reset", "no_add_user", "no_add_managed_profile", "ensure_verify_apps", "no_config_cell_broadcasts", "no_config_mobile_networks", "no_control_apps", "no_physical_media", "no_unmute_microphone", "no_adjust_volume", "no_outgoing_calls", "no_sms", "no_fun", "no_create_windows", "no_system_error_dialogs", "no_cross_profile_copy_paste", "no_outgoing_beam", "no_wallpaper", "no_safe_boot", "allow_parent_profile_app_linking", "no_record_audio", "no_camera", "no_run_in_background", "no_data_roaming", "no_set_user_icon", "no_set_wallpaper", "no_oem_unlock", "disallow_unmute_device", "no_autofill", "no_content_capture", "no_content_suggestions", "no_user_switch", "no_unified_password", "no_config_location", "no_airplane_mode", "no_config_brightness", "no_sharing_into_profile", "no_ambient_display", "no_config_screen_timeout", "no_printing", "disallow_config_private_dns"});
    private static final Set<String> NON_PERSIST_USER_RESTRICTIONS = Sets.newArraySet(new String[]{"no_record_audio"});
    private static final Set<String> PRIMARY_USER_ONLY_RESTRICTIONS = Sets.newArraySet(new String[]{"no_bluetooth", "no_usb_file_transfer", "no_config_tethering", "no_network_reset", "no_factory_reset", "no_add_user", "no_config_cell_broadcasts", "no_config_mobile_networks", "no_physical_media", "no_sms", "no_fun", "no_safe_boot", "no_create_windows", "no_data_roaming", "no_airplane_mode"});
    private static final Set<String> DEVICE_OWNER_ONLY_RESTRICTIONS = Sets.newArraySet(new String[]{"no_user_switch", "disallow_config_private_dns"});
    private static final Set<String> IMMUTABLE_BY_OWNERS = Sets.newArraySet(new String[]{"no_record_audio", "no_wallpaper", "no_oem_unlock"});
    private static final Set<String> GLOBAL_RESTRICTIONS = Sets.newArraySet(new String[]{"no_adjust_volume", "no_bluetooth_sharing", "no_config_date_time", "no_system_error_dialogs", "no_run_in_background", "no_unmute_microphone", "disallow_unmute_device", "no_camera"});
    private static final Set<String> PROFILE_OWNER_ORGANIZATION_OWNED_GLOBAL_RESTRICTIONS = Sets.newArraySet(new String[]{"no_airplane_mode", "no_config_date_time", "disallow_config_private_dns"});
    private static final Set<String> PROFILE_OWNER_ORGANIZATION_OWNED_LOCAL_RESTRICTIONS = Sets.newArraySet(new String[]{"no_config_bluetooth", "no_config_location", "no_config_wifi", "no_content_capture", "no_content_suggestions", "no_debugging_features", "no_share_location", "no_outgoing_calls", "no_camera", "no_bluetooth", "no_bluetooth_sharing", "no_config_cell_broadcasts", "no_config_mobile_networks", "no_config_tethering", "no_data_roaming", "no_safe_boot", "no_sms", "no_usb_file_transfer", "no_physical_media", "no_unmute_microphone"});
    private static final Set<String> DEFAULT_ENABLED_FOR_MANAGED_PROFILES = Sets.newArraySet(new String[]{"no_bluetooth_sharing"});
    private static final Set<String> PROFILE_GLOBAL_RESTRICTIONS = Sets.newArraySet(new String[]{"ensure_verify_apps", "no_airplane_mode", "no_install_unknown_sources_globally"});

    private UserRestrictionsUtils() {
    }

    private static Set<String> newSetWithUniqueCheck(String[] strings) {
        Set<String> ret = Sets.newArraySet(strings);
        Preconditions.checkState(ret.size() == strings.length);
        return ret;
    }

    public static boolean isValidRestriction(String restriction) {
        if (USER_RESTRICTIONS.contains(restriction)) {
            return true;
        }
        int uid = Binder.getCallingUid();
        String[] pkgs = null;
        try {
            pkgs = AppGlobals.getPackageManager().getPackagesForUid(uid);
        } catch (RemoteException e) {
        }
        StringBuilder msg = new StringBuilder("Unknown restriction queried by uid ");
        msg.append(uid);
        if (pkgs != null && pkgs.length > 0) {
            msg.append(" (");
            msg.append(pkgs[0]);
            if (pkgs.length > 1) {
                msg.append(" et al");
            }
            msg.append(")");
        }
        msg.append(": ");
        msg.append(restriction);
        if (restriction == null || !isSystemApp(uid, pkgs)) {
            Slog.e(TAG, msg.toString());
        } else {
            Slog.wtf(TAG, msg.toString());
        }
        return false;
    }

    private static boolean isSystemApp(int uid, String[] packageList) {
        if (UserHandle.isCore(uid)) {
            return true;
        }
        if (packageList == null) {
            return false;
        }
        IPackageManager pm = AppGlobals.getPackageManager();
        for (String str : packageList) {
            try {
                ApplicationInfo appInfo = pm.getApplicationInfo(str, 794624, UserHandle.getUserId(uid));
                if (appInfo != null && appInfo.isSystemApp()) {
                    return true;
                }
            } catch (RemoteException e) {
            }
        }
        return false;
    }

    public static void writeRestrictions(XmlSerializer serializer, Bundle restrictions, String tag) throws IOException {
        if (restrictions == null) {
            return;
        }
        serializer.startTag(null, tag);
        for (String key : restrictions.keySet()) {
            if (!NON_PERSIST_USER_RESTRICTIONS.contains(key)) {
                if (!USER_RESTRICTIONS.contains(key)) {
                    Log.w(TAG, "Unknown user restriction detected: " + key);
                } else if (restrictions.getBoolean(key)) {
                    serializer.attribute(null, key, "true");
                }
            }
        }
        serializer.endTag(null, tag);
    }

    public static void readRestrictions(XmlPullParser parser, Bundle restrictions) {
        restrictions.clear();
        for (String key : USER_RESTRICTIONS) {
            String value = parser.getAttributeValue(null, key);
            if (value != null) {
                restrictions.putBoolean(key, Boolean.parseBoolean(value));
            }
        }
    }

    public static Bundle readRestrictions(XmlPullParser parser) {
        Bundle result = new Bundle();
        readRestrictions(parser, result);
        return result;
    }

    public static Bundle nonNull(Bundle in) {
        return in != null ? in : new Bundle();
    }

    public static boolean isEmpty(Bundle in) {
        return in == null || in.size() == 0;
    }

    public static boolean contains(Bundle in, String restriction) {
        return in != null && in.getBoolean(restriction);
    }

    public static Bundle clone(Bundle in) {
        return in != null ? new Bundle(in) : new Bundle();
    }

    public static void merge(Bundle dest, Bundle in) {
        Objects.requireNonNull(dest);
        Preconditions.checkArgument(dest != in);
        if (in == null) {
            return;
        }
        for (String key : in.keySet()) {
            if (in.getBoolean(key, false)) {
                dest.putBoolean(key, true);
            }
        }
    }

    public static boolean canDeviceOwnerChange(String restriction) {
        return !IMMUTABLE_BY_OWNERS.contains(restriction);
    }

    public static boolean canProfileOwnerChange(String restriction, int userId) {
        return (IMMUTABLE_BY_OWNERS.contains(restriction) || DEVICE_OWNER_ONLY_RESTRICTIONS.contains(restriction) || (userId != 0 && PRIMARY_USER_ONLY_RESTRICTIONS.contains(restriction))) ? false : true;
    }

    public static boolean canProfileOwnerOfOrganizationOwnedDeviceChange(String restriction) {
        return PROFILE_OWNER_ORGANIZATION_OWNED_GLOBAL_RESTRICTIONS.contains(restriction) || PROFILE_OWNER_ORGANIZATION_OWNED_LOCAL_RESTRICTIONS.contains(restriction);
    }

    public static Set<String> getDefaultEnabledForManagedProfiles() {
        return DEFAULT_ENABLED_FOR_MANAGED_PROFILES;
    }

    public static boolean isGlobal(int restrictionOwnerType, String key) {
        return (restrictionOwnerType == 0 && (PRIMARY_USER_ONLY_RESTRICTIONS.contains(key) || GLOBAL_RESTRICTIONS.contains(key))) || (restrictionOwnerType == 2 && PROFILE_OWNER_ORGANIZATION_OWNED_GLOBAL_RESTRICTIONS.contains(key)) || PROFILE_GLOBAL_RESTRICTIONS.contains(key) || DEVICE_OWNER_ONLY_RESTRICTIONS.contains(key);
    }

    public static boolean isLocal(int restrictionOwnerType, String key) {
        return !isGlobal(restrictionOwnerType, key);
    }

    public static boolean areEqual(Bundle a, Bundle b) {
        if (a == b) {
            return true;
        }
        if (isEmpty(a)) {
            return isEmpty(b);
        }
        if (isEmpty(b)) {
            return false;
        }
        for (String key : a.keySet()) {
            if (a.getBoolean(key) != b.getBoolean(key)) {
                return false;
            }
        }
        for (String key2 : b.keySet()) {
            if (a.getBoolean(key2) != b.getBoolean(key2)) {
                return false;
            }
        }
        return true;
    }

    public static void applyUserRestrictions(Context context, int userId, Bundle newRestrictions, Bundle prevRestrictions) {
        for (String key : USER_RESTRICTIONS) {
            boolean newValue = newRestrictions.getBoolean(key);
            boolean prevValue = prevRestrictions.getBoolean(key);
            if (newValue != prevValue) {
                applyUserRestriction(context, userId, key, newValue);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void applyUserRestriction(Context context, int userId, String key, boolean newValue) {
        ContentResolver cr = context.getContentResolver();
        long id = Binder.clearCallingIdentity();
        try {
            int i = 1;
            switch (key) {
                case "no_data_roaming":
                    if (newValue) {
                        SubscriptionManager subscriptionManager = (SubscriptionManager) context.getSystemService(SubscriptionManager.class);
                        List<SubscriptionInfo> subscriptionInfoList = subscriptionManager.getActiveSubscriptionInfoList();
                        if (subscriptionInfoList != null) {
                            for (SubscriptionInfo subInfo : subscriptionInfoList) {
                                android.provider.Settings.Global.putStringForUser(cr, "data_roaming" + subInfo.getSubscriptionId(), "0", userId);
                            }
                        }
                        android.provider.Settings.Global.putStringForUser(cr, "data_roaming", "0", userId);
                    }
                    Binder.restoreCallingIdentity(id);
                    return;
                case "no_share_location":
                    if (newValue) {
                        android.provider.Settings.Secure.putIntForUser(cr, "location_mode", 0, userId);
                    }
                    Binder.restoreCallingIdentity(id);
                    return;
                case "no_debugging_features":
                    if (newValue && userId == 0) {
                        android.provider.Settings.Global.putStringForUser(cr, "adb_enabled", "0", userId);
                        android.provider.Settings.Global.putStringForUser(cr, "adb_wifi_enabled", "0", userId);
                    }
                    Binder.restoreCallingIdentity(id);
                    return;
                case "ensure_verify_apps":
                    if (newValue) {
                        android.provider.Settings.Global.putStringForUser(context.getContentResolver(), "verifier_verify_adb_installs", SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION, userId);
                    }
                    Binder.restoreCallingIdentity(id);
                    return;
                case "no_install_unknown_sources_globally":
                    setInstallMarketAppsRestriction(cr, userId, getNewUserRestrictionSetting(context, userId, "no_install_unknown_sources", newValue));
                    Binder.restoreCallingIdentity(id);
                    return;
                case "no_install_unknown_sources":
                    setInstallMarketAppsRestriction(cr, userId, getNewUserRestrictionSetting(context, userId, "no_install_unknown_sources_globally", newValue));
                    Binder.restoreCallingIdentity(id);
                    return;
                case "no_run_in_background":
                    if (newValue) {
                        int currentUser = ActivityManager.getCurrentUser();
                        if (currentUser != userId && userId != 0) {
                            try {
                                ActivityManager.getService().stopUser(userId, false, (IStopUserCallback) null);
                            } catch (RemoteException e) {
                                throw e.rethrowAsRuntimeException();
                            }
                        }
                        break;
                    }
                    Binder.restoreCallingIdentity(id);
                    return;
                case "no_safe_boot":
                    ContentResolver contentResolver = context.getContentResolver();
                    if (!newValue) {
                        i = 0;
                    }
                    android.provider.Settings.Global.putInt(contentResolver, "safe_boot_disallowed", i);
                    Binder.restoreCallingIdentity(id);
                    return;
                case "no_airplane_mode":
                    if (newValue) {
                        if (android.provider.Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 1) {
                            i = 0;
                        }
                        if (i != 0) {
                            android.provider.Settings.Global.putInt(context.getContentResolver(), "airplane_mode_on", 0);
                            Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
                            intent.putExtra("state", false);
                            context.sendBroadcastAsUser(intent, UserHandle.ALL);
                        }
                    }
                    Binder.restoreCallingIdentity(id);
                    return;
                case "no_ambient_display":
                    if (newValue) {
                        android.provider.Settings.Secure.putIntForUser(context.getContentResolver(), "doze_enabled", 0, userId);
                        android.provider.Settings.Secure.putIntForUser(context.getContentResolver(), "doze_always_on", 0, userId);
                        android.provider.Settings.Secure.putIntForUser(context.getContentResolver(), "doze_pulse_on_pick_up", 0, userId);
                        android.provider.Settings.Secure.putIntForUser(context.getContentResolver(), "doze_pulse_on_long_press", 0, userId);
                        android.provider.Settings.Secure.putIntForUser(context.getContentResolver(), "doze_pulse_on_double_tap", 0, userId);
                    }
                    Binder.restoreCallingIdentity(id);
                    return;
                case "no_config_location":
                    if (newValue) {
                        android.provider.Settings.Global.putString(context.getContentResolver(), "location_global_kill_switch", "0");
                    }
                    Binder.restoreCallingIdentity(id);
                    return;
                case "no_control_apps":
                case "no_uninstall_apps":
                    PackageManagerInternal pmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                    pmi.removeAllNonSystemPackageSuspensions(userId);
                    pmi.removeAllDistractingPackageRestrictions(userId);
                    pmi.flushPackageRestrictions(userId);
                    Binder.restoreCallingIdentity(id);
                    return;
                default:
                    Binder.restoreCallingIdentity(id);
                    return;
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(id);
            throw th;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:83:0x0149  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static boolean isSettingRestrictedForUser(Context context, String setting, int userId, String value, int callingUid) {
        byte b;
        String restriction;
        Objects.requireNonNull(setting);
        UserManager mUserManager = (UserManager) context.getSystemService(UserManager.class);
        boolean checkAllUser = false;
        switch (setting.hashCode()) {
            case -2099894345:
                if (!setting.equals("adb_wifi_enabled")) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case -1796809747:
                if (!setting.equals("location_mode")) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -1500478207:
                if (!setting.equals("location_providers_allowed")) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case -1490222856:
                if (!setting.equals("doze_enabled")) {
                    b = -1;
                } else {
                    b = 12;
                }
                break;
            case -1115710219:
                if (!setting.equals("verifier_verify_adb_installs")) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case -970351711:
                if (!setting.equals("adb_enabled")) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case -693072130:
                if (!setting.equals("screen_brightness_mode")) {
                    b = -1;
                } else {
                    b = 20;
                }
                break;
            case -623873498:
                if (!setting.equals("always_on_vpn_app")) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case -416662510:
                if (!setting.equals("preferred_network_mode")) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case -101820922:
                if (!setting.equals("doze_always_on")) {
                    b = -1;
                } else {
                    b = UsbACInterface.ACI_SAMPLE_RATE_CONVERTER;
                }
                break;
            case -32505807:
                if (!setting.equals("doze_pulse_on_long_press")) {
                    b = -1;
                } else {
                    b = UsbDescriptor.DESCRIPTORTYPE_BOS;
                }
                break;
            case -16943007:
                if (!setting.equals("screen_brightness_float")) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case 58027029:
                if (!setting.equals("safe_boot_disallowed")) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case 258514750:
                if (!setting.equals("screen_off_timeout")) {
                    b = -1;
                } else {
                    b = 23;
                }
                break;
            case 683724341:
                if (!setting.equals("private_dns_mode")) {
                    b = -1;
                } else {
                    b = 24;
                }
                break;
            case 926123534:
                if (!setting.equals("airplane_mode_on")) {
                    b = -1;
                } else {
                    b = 11;
                }
                break;
            case 1073289638:
                if (!setting.equals("doze_pulse_on_double_tap")) {
                    b = -1;
                } else {
                    b = UsbDescriptor.DESCRIPTORTYPE_CAPABILITY;
                }
                break;
            case 1223734380:
                if (!setting.equals("private_dns_specifier")) {
                    b = -1;
                } else {
                    b = 25;
                }
                break;
            case 1275530062:
                if (!setting.equals("auto_time_zone")) {
                    b = -1;
                } else {
                    b = 22;
                }
                break;
            case 1307734371:
                if (!setting.equals("location_global_kill_switch")) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case 1334097968:
                if (!setting.equals("always_on_vpn_lockdown_whitelist")) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case 1602982312:
                if (!setting.equals("doze_pulse_on_pick_up")) {
                    b = -1;
                } else {
                    b = 14;
                }
                break;
            case 1646894952:
                if (!setting.equals("always_on_vpn_lockdown")) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case 1661297501:
                if (!setting.equals("auto_time")) {
                    b = -1;
                } else {
                    b = 21;
                }
                break;
            case 1701140351:
                if (!setting.equals("install_non_market_apps")) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 1735689732:
                if (!setting.equals("screen_brightness")) {
                    b = -1;
                } else {
                    b = 18;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                if (mUserManager.hasUserRestriction("no_config_location", UserHandle.of(userId)) && callingUid != 1000) {
                    return true;
                }
                if (String.valueOf(0).equals(value)) {
                    return false;
                }
                restriction = "no_share_location";
                break;
                break;
            case 1:
                if (mUserManager.hasUserRestriction("no_config_location", UserHandle.of(userId)) && callingUid != 1000) {
                    return true;
                }
                if (value != null && value.startsWith("-")) {
                    return false;
                }
                restriction = "no_share_location";
                break;
                break;
            case 2:
                if ("0".equals(value)) {
                    return false;
                }
                restriction = "no_install_unknown_sources";
                break;
            case 3:
            case 4:
                if ("0".equals(value)) {
                    return false;
                }
                restriction = "no_debugging_features";
                break;
            case 5:
                if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(value)) {
                    return false;
                }
                restriction = "ensure_verify_apps";
                break;
            case 6:
                restriction = "no_config_mobile_networks";
                break;
            case 7:
            case 8:
            case 9:
                int appId = UserHandle.getAppId(callingUid);
                if (appId == 1000 || appId == 0) {
                    return false;
                }
                restriction = "no_config_vpn";
                break;
            case 10:
                if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(value)) {
                    return false;
                }
                restriction = "no_safe_boot";
                break;
            case 11:
                if ("0".equals(value)) {
                    return false;
                }
                restriction = "no_airplane_mode";
                break;
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                if ("0".equals(value)) {
                    return false;
                }
                restriction = "no_ambient_display";
                break;
            case 17:
                if ("0".equals(value)) {
                    return false;
                }
                restriction = "no_config_location";
                checkAllUser = true;
                break;
            case 18:
            case 19:
            case 20:
                if (callingUid == 1000) {
                    return false;
                }
                restriction = "no_config_brightness";
                break;
            case 21:
            case 22:
                if (callingUid == 1000) {
                    return false;
                }
                restriction = "no_config_date_time";
                break;
            case WindowManagerService.H.BOOT_TIMEOUT /* 23 */:
                if (callingUid == 1000) {
                    return false;
                }
                restriction = "no_config_screen_timeout";
                break;
            case WindowManagerService.H.WAITING_FOR_DRAWN_TIMEOUT /* 24 */:
            case WindowManagerService.H.SHOW_STRICT_MODE_VIOLATION /* 25 */:
                if (callingUid == 1000) {
                    return false;
                }
                restriction = "disallow_config_private_dns";
                break;
            default:
                if (!setting.startsWith("data_roaming") || "0".equals(value)) {
                    return false;
                }
                restriction = "no_data_roaming";
                break;
        }
        if (checkAllUser) {
            return mUserManager.hasUserRestrictionOnAnyUser(restriction);
        }
        return mUserManager.hasUserRestriction(restriction, UserHandle.of(userId));
    }

    public static void dumpRestrictions(PrintWriter pw, String prefix, Bundle restrictions) {
        boolean noneSet = true;
        if (restrictions != null) {
            for (String key : restrictions.keySet()) {
                if (restrictions.getBoolean(key, false)) {
                    pw.println(prefix + key);
                    noneSet = false;
                }
            }
            if (noneSet) {
                pw.println(prefix + "none");
                return;
            }
            return;
        }
        pw.println(prefix + "null");
    }

    public static void moveRestriction(String restrictionKey, SparseArray<RestrictionsSet> sourceRestrictionsSets, RestrictionsSet destRestrictionSet) {
        for (int i = 0; i < sourceRestrictionsSets.size(); i++) {
            RestrictionsSet sourceRestrictionsSet = sourceRestrictionsSets.valueAt(i);
            sourceRestrictionsSet.moveRestriction(destRestrictionSet, restrictionKey);
        }
    }

    public static boolean restrictionsChanged(Bundle oldRestrictions, Bundle newRestrictions, String... restrictions) {
        if (restrictions.length == 0) {
            return areEqual(oldRestrictions, newRestrictions);
        }
        for (String restriction : restrictions) {
            if (oldRestrictions.getBoolean(restriction, false) != newRestrictions.getBoolean(restriction, false)) {
                return true;
            }
        }
        return false;
    }

    private static void setInstallMarketAppsRestriction(ContentResolver cr, int userId, int settingValue) {
        android.provider.Settings.Secure.putIntForUser(cr, "install_non_market_apps", settingValue, userId);
    }

    private static int getNewUserRestrictionSetting(Context context, int userId, String userRestriction, boolean newValue) {
        return (newValue || UserManager.get(context).hasUserRestriction(userRestriction, UserHandle.of(userId))) ? 0 : 1;
    }
}

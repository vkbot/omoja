package com.android.server.notification;

import android.R;
import android.app.ActivityManager;
import android.app.INotificationManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.PendingIntent;
import android.app.Person;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ParceledListSlice;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.net.INetd;
import android.net.Uri;
import android.net.util.NetworkConstants;
import android.os.Binder;
import android.os.RemoteException;
import android.os.ShellCommand;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Slog;
import com.android.server.pm.PackageManagerService;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.usb.descriptors.UsbACInterface;
import com.android.server.usb.descriptors.UsbDescriptor;
import com.android.server.wm.WindowManagerService;
import java.io.PrintWriter;
import java.net.URISyntaxException;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class NotificationShellCmd extends ShellCommand {
    public static final String CHANNEL_ID = "shell_cmd";
    public static final int CHANNEL_IMP = 3;
    public static final String CHANNEL_NAME = "Shell command";
    public static final int NOTIFICATION_ID = 2020;
    private static final String NOTIFY_USAGE = "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`";
    private static final String TAG = "NotifShellCmd";
    private static final String USAGE = "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  suspend_package PACKAGE\n  unsuspend_package PACKAGE\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n";
    private final INotificationManager mBinderService;
    private NotificationChannel mChannel;
    private final NotificationManagerService mDirectService;
    private final PackageManager mPm;

    public NotificationShellCmd(NotificationManagerService service) {
        this.mDirectService = service;
        this.mBinderService = service.getBinderService();
        this.mPm = this.mDirectService.getContext().getPackageManager();
    }

    protected boolean checkShellCommandPermission(int callingUid) {
        return callingUid == 0 || callingUid == 2000;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:134:0x020e  */
    /* JADX WARN: Code duplicated, block: B:258:0x05c3  */
    /* JADX WARN: Code duplicated, block: B:96:0x0190  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public int onCommand(String cmd) throws Throwable {
        byte b;
        byte b2;
        byte b3;
        long duration;
        if (cmd == null) {
            return handleDefaultCommands(cmd);
        }
        String callingPackage = null;
        int callingUid = Binder.getCallingUid();
        long identity = Binder.clearCallingIdentity();
        if (callingUid == 0) {
            callingPackage = "root";
        } else {
            try {
                String[] packages = this.mPm.getPackagesForUid(callingUid);
                if (packages != null && packages.length > 0) {
                    callingPackage = packages[0];
                }
            } catch (Exception e) {
                try {
                    Slog.e(TAG, "failed to get caller pkg", e);
                } catch (Throwable th) {
                    th = th;
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        }
        Binder.restoreCallingIdentity(identity);
        PrintWriter pw = getOutPrintWriter();
        if (!checkShellCommandPermission(callingUid)) {
            Slog.e(TAG, "error: permission denied: callingUid=" + callingUid + " callingPackage=" + callingPackage);
            pw.println("error: permission denied: callingUid=" + callingUid + " callingPackage=" + callingPackage);
            return 255;
        }
        try {
            try {
                switch (cmd.replace('-', '_')) {
                    case "snoozed":
                        b = 18;
                        break;
                    case "set_bubbles_channel":
                        b = UsbACInterface.ACI_SAMPLE_RATE_CONVERTER;
                        break;
                    case "disallow_assistant":
                        b = 6;
                        break;
                    case "notify":
                        b = UsbDescriptor.DESCRIPTORTYPE_BOS;
                        break;
                    case "snooze":
                        b = 20;
                        break;
                    case "unsuspend_package":
                        b = 8;
                        break;
                    case "allow_listener":
                        b = 3;
                        break;
                    case "disallow_dnd":
                        b = 2;
                        break;
                    case "get_approved_assistant":
                        b = 11;
                        break;
                    case "unsnooze":
                        b = 19;
                        break;
                    case "get":
                        b = 17;
                        break;
                    case "list":
                        b = UsbDescriptor.DESCRIPTORTYPE_CAPABILITY;
                        break;
                    case "post":
                        b = 14;
                        break;
                    case "set_bubbles":
                        b = 12;
                        break;
                    case "allow_dnd":
                        b = 1;
                        break;
                    case "suspend_package":
                        b = 7;
                        break;
                    case "reset_assistant_user_set":
                        b = 10;
                        break;
                    case "disallow_listener":
                        b = 4;
                        break;
                    case "distract_package":
                        b = 9;
                        break;
                    case "set_dnd":
                        b = 0;
                        break;
                    case "allow_assistant":
                        b = 5;
                        break;
                    default:
                        b = -1;
                        break;
                }
                try {
                    switch (b) {
                        case 0:
                            String mode = getNextArgRequired();
                            int interruptionFilter = 0;
                            switch (mode.hashCode()) {
                                case -1415196606:
                                    b2 = mode.equals("alarms") ? (byte) 3 : (byte) -1;
                                    break;
                                case -1165461084:
                                    if (mode.equals("priority")) {
                                        b2 = 2;
                                    }
                                    break;
                                case 3551:
                                    if (mode.equals("on")) {
                                        b2 = 1;
                                    }
                                    break;
                                case 96673:
                                    if (mode.equals("all")) {
                                        b2 = 4;
                                    }
                                    break;
                                case 109935:
                                    if (mode.equals("off")) {
                                        b2 = 5;
                                    }
                                    break;
                                case 3387192:
                                    if (mode.equals("none")) {
                                        b2 = 0;
                                    }
                                    break;
                                default:
                                    break;
                            }
                            if (b2 == 0 || b2 == 1) {
                                interruptionFilter = 3;
                            } else if (b2 == 2) {
                                interruptionFilter = 2;
                            } else if (b2 == 3) {
                                interruptionFilter = 4;
                            } else if (b2 == 4 || b2 == 5) {
                                interruptionFilter = 1;
                            }
                            int filter = interruptionFilter;
                            this.mBinderService.setInterruptionFilter(callingPackage, filter);
                            return 0;
                        case 1:
                            String packageName = getNextArgRequired();
                            int userId = ActivityManager.getCurrentUser();
                            if (peekNextArg() != null) {
                                userId = Integer.parseInt(getNextArgRequired());
                            }
                            this.mBinderService.setNotificationPolicyAccessGrantedForUser(packageName, userId, true);
                            return 0;
                        case 2:
                            String packageName2 = getNextArgRequired();
                            int userId2 = ActivityManager.getCurrentUser();
                            if (peekNextArg() != null) {
                                userId2 = Integer.parseInt(getNextArgRequired());
                            }
                            this.mBinderService.setNotificationPolicyAccessGrantedForUser(packageName2, userId2, false);
                            return 0;
                        case 3:
                            ComponentName cn = ComponentName.unflattenFromString(getNextArgRequired());
                            if (cn == null) {
                                pw.println("Invalid listener - must be a ComponentName");
                                return -1;
                            }
                            int userId3 = ActivityManager.getCurrentUser();
                            if (peekNextArg() != null) {
                                userId3 = Integer.parseInt(getNextArgRequired());
                            }
                            this.mBinderService.setNotificationListenerAccessGrantedForUser(cn, userId3, true);
                            return 0;
                        case 4:
                            ComponentName cn2 = ComponentName.unflattenFromString(getNextArgRequired());
                            if (cn2 == null) {
                                pw.println("Invalid listener - must be a ComponentName");
                                return -1;
                            }
                            int userId4 = ActivityManager.getCurrentUser();
                            if (peekNextArg() != null) {
                                userId4 = Integer.parseInt(getNextArgRequired());
                            }
                            this.mBinderService.setNotificationListenerAccessGrantedForUser(cn2, userId4, false);
                            return 0;
                        case 5:
                            ComponentName cn3 = ComponentName.unflattenFromString(getNextArgRequired());
                            if (cn3 == null) {
                                pw.println("Invalid assistant - must be a ComponentName");
                                return -1;
                            }
                            int userId5 = ActivityManager.getCurrentUser();
                            if (peekNextArg() != null) {
                                userId5 = Integer.parseInt(getNextArgRequired());
                            }
                            this.mBinderService.setNotificationAssistantAccessGrantedForUser(cn3, userId5, true);
                            return 0;
                        case 6:
                            ComponentName cn4 = ComponentName.unflattenFromString(getNextArgRequired());
                            if (cn4 == null) {
                                pw.println("Invalid assistant - must be a ComponentName");
                                return -1;
                            }
                            int userId6 = ActivityManager.getCurrentUser();
                            if (peekNextArg() != null) {
                                userId6 = Integer.parseInt(getNextArgRequired());
                            }
                            this.mBinderService.setNotificationAssistantAccessGrantedForUser(cn4, userId6, false);
                            return 0;
                        case 7:
                            this.mDirectService.simulatePackageSuspendBroadcast(true, getNextArgRequired());
                            return 0;
                        case 8:
                            this.mDirectService.simulatePackageSuspendBroadcast(false, getNextArgRequired());
                            return 0;
                        case 9:
                            this.mDirectService.simulatePackageDistractionBroadcast(Integer.parseInt(getNextArgRequired()), getNextArgRequired().split(","));
                            return 0;
                        case 10:
                            int userId7 = ActivityManager.getCurrentUser();
                            if (peekNextArg() != null) {
                                userId7 = Integer.parseInt(getNextArgRequired());
                            }
                            this.mDirectService.resetAssistantUserSet(userId7);
                            return 0;
                        case 11:
                            int userId8 = ActivityManager.getCurrentUser();
                            if (peekNextArg() != null) {
                                userId8 = Integer.parseInt(getNextArgRequired());
                            }
                            ComponentName approvedAssistant = this.mDirectService.getApprovedAssistant(userId8);
                            if (approvedAssistant == null) {
                                pw.println("null");
                                return 0;
                            }
                            pw.println(approvedAssistant.flattenToString());
                            return 0;
                        case 12:
                            String packageName3 = getNextArgRequired();
                            int preference = Integer.parseInt(getNextArgRequired());
                            if (preference <= 3 && preference >= 0) {
                                int userId9 = ActivityManager.getCurrentUser();
                                if (peekNextArg() != null) {
                                    userId9 = Integer.parseInt(getNextArgRequired());
                                }
                                int appUid = UserHandle.getUid(userId9, this.mPm.getPackageUid(packageName3, 0));
                                this.mBinderService.setBubblesAllowed(packageName3, appUid, preference);
                                return 0;
                            }
                            pw.println("Invalid preference - must be between 0-3 (0=none 1=all 2=selected)");
                            return -1;
                        case 13:
                            String packageName4 = getNextArgRequired();
                            String channelId = getNextArgRequired();
                            boolean allow = Boolean.parseBoolean(getNextArgRequired());
                            int userId10 = ActivityManager.getCurrentUser();
                            if (peekNextArg() != null) {
                                userId10 = Integer.parseInt(getNextArgRequired());
                            }
                            NotificationChannel channel = this.mBinderService.getNotificationChannel(callingPackage, userId10, packageName4, channelId);
                            channel.setAllowBubbles(allow);
                            int appUid2 = UserHandle.getUid(userId10, this.mPm.getPackageUid(packageName4, 0));
                            this.mBinderService.updateNotificationChannelForPackage(packageName4, appUid2, channel);
                            return 0;
                        case 14:
                        case 15:
                            doNotify(pw, callingPackage, callingUid);
                            return 0;
                        case 16:
                            Iterator<String> it = this.mDirectService.mNotificationsByKey.keySet().iterator();
                            while (it.hasNext()) {
                                pw.println(it.next());
                            }
                            return 0;
                        case 17:
                            String key = getNextArgRequired();
                            NotificationRecord nr = this.mDirectService.getNotificationRecord(key);
                            if (nr != null) {
                                nr.dump(pw, "", this.mDirectService.getContext(), false);
                                return 0;
                            }
                            pw.println("error: no active notification matching key: " + key);
                            return 1;
                        case 18:
                            new StringBuilder();
                            SnoozeHelper sh = this.mDirectService.mSnoozeHelper;
                            for (NotificationRecord nr2 : sh.getSnoozed()) {
                                String pkg = nr2.getSbn().getPackageName();
                                String key2 = nr2.getKey();
                                pw.println(key2 + " snoozed, time=" + sh.getSnoozeTimeForUnpostedNotification(nr2.getUserId(), pkg, key2) + " context=" + sh.getSnoozeContextForUnpostedNotification(nr2.getUserId(), pkg, key2));
                            }
                            return 0;
                        case 19:
                            boolean mute = false;
                            String key3 = getNextArgRequired();
                            if ("--mute".equals(key3)) {
                                mute = true;
                                key3 = getNextArgRequired();
                            }
                            if (this.mDirectService.mSnoozeHelper.getNotification(key3) == null) {
                                pw.println("error: no snoozed otification matching key: " + key3);
                                return 1;
                            }
                            pw.println("unsnoozing: " + key3);
                            this.mDirectService.unsnoozeNotificationInt(key3, null, mute);
                            return 0;
                        case 20:
                            String subflag = getNextArg();
                            if (subflag == null) {
                                subflag = "help";
                            } else if (subflag.startsWith("--")) {
                                subflag = subflag.substring(2);
                            }
                            String flagarg = getNextArg();
                            String key4 = getNextArg();
                            if (key4 == null) {
                                subflag = "help";
                            }
                            String criterion = null;
                            switch (subflag) {
                                case "duration":
                                    b3 = 5;
                                    break;
                                case "condition":
                                    b3 = 1;
                                    break;
                                case "for":
                                    b3 = 4;
                                    break;
                                case "until":
                                    b3 = 3;
                                    break;
                                case "criterion":
                                    b3 = 2;
                                    break;
                                case "context":
                                    b3 = 0;
                                    break;
                                default:
                                    b3 = -1;
                                    break;
                            }
                            if (b3 == 0 || b3 == 1 || b3 == 2) {
                                criterion = flagarg;
                                duration = 0;
                            } else {
                                if (b3 != 3 && b3 != 4 && b3 != 5) {
                                    pw.println("usage: cmd notification snooze (--for <msec> | --context <snooze-criterion-id>) <key>");
                                    return 1;
                                }
                                duration = Long.parseLong(flagarg);
                            }
                            if (this.mDirectService.getNotificationRecord(key4) == null) {
                                pw.println("error: no notification matching key: " + key4);
                                return 1;
                            }
                            if (duration <= 0 && criterion == null) {
                                pw.println("error: invalid value for --" + subflag + ": " + flagarg);
                                return 1;
                            }
                            if (duration > 0) {
                                Object[] objArr = new Object[2];
                                objArr[0] = key4;
                                objArr[1] = new Date(System.currentTimeMillis() + duration);
                                pw.println(String.format("snoozing <%s> until time: %s", objArr));
                            } else {
                                pw.println(String.format("snoozing <%s> until criterion: %s", key4, criterion));
                            }
                            this.mDirectService.snoozeNotificationInt(key4, duration, criterion, null);
                            return 0;
                        default:
                            return handleDefaultCommands(cmd);
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Exception e4) {
            e = e4;
        }
        e = e4;
        pw.println("Error occurred. Check logcat for details. " + e.getMessage());
        Slog.e(NotificationManagerService.TAG, "Error running shell command", e);
        return 0;
    }

    void ensureChannel(String callingPackage, int callingUid) throws RemoteException {
        NotificationChannel channel = new NotificationChannel(CHANNEL_ID, CHANNEL_NAME, 3);
        this.mBinderService.createNotificationChannels(callingPackage, new ParceledListSlice(Collections.singletonList(channel)));
        Slog.v(NotificationManagerService.TAG, "created channel: " + this.mBinderService.getNotificationChannel(callingPackage, UserHandle.getUserId(callingUid), callingPackage, CHANNEL_ID));
    }

    Icon parseIcon(Resources res, String encoded) throws IllegalArgumentException {
        if (TextUtils.isEmpty(encoded)) {
            return null;
        }
        if (encoded.startsWith(SliceClientPermissions.SliceAuthority.DELIMITER)) {
            encoded = "file://" + encoded;
        }
        if (encoded.startsWith("http:") || encoded.startsWith("https:") || encoded.startsWith("content:") || encoded.startsWith("file:") || encoded.startsWith("android.resource:")) {
            Uri asUri = Uri.parse(encoded);
            return Icon.createWithContentUri(asUri);
        }
        if (encoded.startsWith("@")) {
            int resid = res.getIdentifier(encoded.substring(1), "drawable", PackageManagerService.PLATFORM_PACKAGE_NAME);
            if (resid != 0) {
                return Icon.createWithResource(res, resid);
            }
        } else if (encoded.startsWith("data:")) {
            byte[] bits = Base64.decode(encoded.substring(encoded.indexOf(44) + 1), 0);
            return Icon.createWithData(bits, 0, bits.length);
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:154:0x0321  */
    /* JADX WARN: Code duplicated, block: B:191:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:217:0x04a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:264:0x048a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:265:0x04a7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:273:0x04a2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x0194  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private int doNotify(PrintWriter pw, String callingPackage, int callingUid) throws URISyntaxException, RemoteException {
        byte b;
        String iconSpec;
        Icon icon;
        byte b2;
        PendingIntent pi;
        byte b3;
        Context context = this.mDirectService.getContext();
        Resources res = context.getResources();
        Notification.Builder builder = new Notification.Builder(context, CHANNEL_ID);
        Notification.MessagingStyle messagingStyle = null;
        boolean verbose = false;
        Notification.BigPictureStyle bigPictureStyle = null;
        Notification.BigTextStyle bigTextStyle = null;
        Icon smallIcon = null;
        Notification.InboxStyle inboxStyle = null;
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                boolean large = false;
                switch (opt.hashCode()) {
                    case -1954060697:
                        if (!opt.equals("--message")) {
                            b = -1;
                        } else {
                            b = 25;
                        }
                        break;
                    case -1613915119:
                        if (!opt.equals("--style")) {
                            b = -1;
                        } else {
                            b = 19;
                        }
                        break;
                    case -1613324104:
                        if (!opt.equals("--title")) {
                            b = -1;
                        } else {
                            b = 3;
                        }
                        break;
                    case -1210178960:
                        if (!opt.equals("content-intent")) {
                            b = -1;
                        } else {
                            b = UsbDescriptor.DESCRIPTORTYPE_BOS;
                        }
                        break;
                    case -1183762788:
                        if (!opt.equals("intent")) {
                            b = -1;
                        } else {
                            b = 17;
                        }
                        break;
                    case -853380573:
                        if (!opt.equals("--conversation")) {
                            b = -1;
                        } else {
                            b = 26;
                        }
                        break;
                    case -45879957:
                        if (!opt.equals("--large-icon")) {
                            b = -1;
                        } else {
                            b = 6;
                        }
                        break;
                    case 1468:
                        if (!opt.equals("-I")) {
                            b = -1;
                        } else {
                            b = 5;
                        }
                        break;
                    case 1478:
                        if (!opt.equals("-S")) {
                            b = -1;
                        } else {
                            b = 18;
                        }
                        break;
                    case 1494:
                        if (!opt.equals("-c")) {
                            b = -1;
                        } else {
                            b = UsbACInterface.ACI_SAMPLE_RATE_CONVERTER;
                        }
                        break;
                    case 1499:
                        if (!opt.equals("-h")) {
                            b = -1;
                        } else {
                            b = 27;
                        }
                        break;
                    case NetworkConstants.ETHER_MTU /* 1500 */:
                        if (!opt.equals("-i")) {
                            b = -1;
                        } else {
                            b = 10;
                        }
                        break;
                    case 1511:
                        if (!opt.equals("-t")) {
                            b = -1;
                        } else {
                            b = 2;
                        }
                        break;
                    case 1513:
                        if (!opt.equals("-v")) {
                            b = -1;
                        } else {
                            b = 0;
                        }
                        break;
                    case 3226745:
                        if (!opt.equals("icon")) {
                            b = -1;
                        } else {
                            b = 12;
                        }
                        break;
                    case 43017097:
                        if (!opt.equals("--wtf")) {
                            b = -1;
                        } else {
                            b = 29;
                        }
                        break;
                    case 110371416:
                        if (!opt.equals("title")) {
                            b = -1;
                        } else {
                            b = 4;
                        }
                        break;
                    case 704999290:
                        if (!opt.equals("--big-text")) {
                            b = -1;
                        } else {
                            b = 22;
                        }
                        break;
                    case 705941520:
                        if (!opt.equals("--content-intent")) {
                            b = -1;
                        } else {
                            b = 14;
                        }
                        break;
                    case 758833716:
                        if (!opt.equals("largeicon")) {
                            b = -1;
                        } else {
                            b = 8;
                        }
                        break;
                    case 808239966:
                        if (!opt.equals("--picture")) {
                            b = -1;
                        } else {
                            b = 23;
                        }
                        break;
                    case 1216250940:
                        if (!opt.equals("--intent")) {
                            b = -1;
                        } else {
                            b = UsbDescriptor.DESCRIPTORTYPE_CAPABILITY;
                        }
                        break;
                    case 1247228052:
                        if (!opt.equals("--largeicon")) {
                            b = -1;
                        } else {
                            b = 7;
                        }
                        break;
                    case 1270815917:
                        if (!opt.equals("--bigText")) {
                            b = -1;
                        } else {
                            b = 20;
                        }
                        break;
                    case 1271769229:
                        if (!opt.equals("--bigtext")) {
                            b = -1;
                        } else {
                            b = 21;
                        }
                        break;
                    case 1333069025:
                        if (!opt.equals("--help")) {
                            b = -1;
                        } else {
                            b = 28;
                        }
                        break;
                    case 1333096985:
                        if (!opt.equals("--icon")) {
                            b = -1;
                        } else {
                            b = 11;
                        }
                        break;
                    case 1333192084:
                        if (!opt.equals("--line")) {
                            b = -1;
                        } else {
                            b = 24;
                        }
                        break;
                    case 1737088994:
                        if (!opt.equals("--verbose")) {
                            b = -1;
                        } else {
                            b = 1;
                        }
                        break;
                    case 1993764811:
                        if (!opt.equals("large-icon")) {
                            b = -1;
                        } else {
                            b = 9;
                        }
                        break;
                    default:
                        b = -1;
                        break;
                }
                switch (b) {
                    case 0:
                    case 1:
                        verbose = true;
                        break;
                    case 2:
                    case 3:
                    case 4:
                        smallIcon = smallIcon;
                        messagingStyle = messagingStyle;
                        inboxStyle = inboxStyle;
                        builder.setContentTitle(getNextArgRequired());
                        messagingStyle = messagingStyle;
                        inboxStyle = inboxStyle;
                        smallIcon = smallIcon;
                        break;
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                        large = true;
                        iconSpec = getNextArgRequired();
                        icon = parseIcon(res, iconSpec);
                        if (icon == null) {
                            pw.println("error: invalid icon: " + iconSpec);
                            return -1;
                        }
                        if (large) {
                            builder.setLargeIcon(icon);
                            messagingStyle = messagingStyle;
                            inboxStyle = inboxStyle;
                            smallIcon = smallIcon;
                        } else {
                            smallIcon = icon;
                            messagingStyle = messagingStyle;
                            inboxStyle = inboxStyle;
                        }
                        break;
                        break;
                    case 10:
                    case 11:
                    case 12:
                        iconSpec = getNextArgRequired();
                        icon = parseIcon(res, iconSpec);
                        if (icon == null) {
                            pw.println("error: invalid icon: " + iconSpec);
                            return -1;
                        }
                        if (large) {
                            builder.setLargeIcon(icon);
                            messagingStyle = messagingStyle;
                            inboxStyle = inboxStyle;
                            smallIcon = smallIcon;
                        } else {
                            smallIcon = icon;
                            messagingStyle = messagingStyle;
                            inboxStyle = inboxStyle;
                        }
                        break;
                        break;
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                        smallIcon = smallIcon;
                        String strPeekNextArg = peekNextArg();
                        int iHashCode = strPeekNextArg.hashCode();
                        if (iHashCode != -1655966961) {
                            if (iHashCode != -1618876223) {
                                if (iHashCode == 1984153269 && strPeekNextArg.equals("service")) {
                                    b2 = 1;
                                } else {
                                    b2 = -1;
                                }
                            } else if (strPeekNextArg.equals(INetd.IF_FLAG_BROADCAST)) {
                                b2 = 0;
                            } else {
                                b2 = -1;
                            }
                        } else if (strPeekNextArg.equals("activity")) {
                            b2 = 2;
                        } else {
                            b2 = -1;
                        }
                        String intentKind = (b2 == 0 || b2 == 1 || b2 == 2) ? getNextArg() : null;
                        Intent intent = Intent.parseCommandArgs(this, null);
                        if (intent.getData() == null) {
                            intent.setData(Uri.parse("xyz:" + System.currentTimeMillis()));
                        }
                        if (INetd.IF_FLAG_BROADCAST.equals(intentKind)) {
                            pi = PendingIntent.getBroadcastAsUser(context, 0, intent, AudioFormat.OPUS, UserHandle.CURRENT);
                        } else if ("service".equals(intentKind)) {
                            pi = PendingIntent.getService(context, 0, intent, AudioFormat.OPUS);
                        } else {
                            pi = PendingIntent.getActivityAsUser(context, 0, intent, AudioFormat.OPUS, null, UserHandle.CURRENT);
                        }
                        builder.setContentIntent(pi);
                        messagingStyle = messagingStyle;
                        inboxStyle = inboxStyle;
                        smallIcon = smallIcon;
                        break;
                    case 18:
                    case 19:
                        Icon smallIcon2 = smallIcon;
                        String styleSpec = getNextArgRequired().toLowerCase();
                        switch (styleSpec) {
                            case "messaging":
                                b3 = 3;
                                break;
                            case "bigtext":
                                b3 = 0;
                                break;
                            case "bigpicture":
                                b3 = 1;
                                break;
                            case "inbox":
                                b3 = 2;
                                break;
                            case "media":
                                b3 = 4;
                                break;
                            default:
                                b3 = -1;
                                break;
                        }
                        if (b3 == 0) {
                            bigTextStyle = new Notification.BigTextStyle();
                            builder.setStyle(bigTextStyle);
                        } else if (b3 == 1) {
                            bigPictureStyle = new Notification.BigPictureStyle();
                            builder.setStyle(bigPictureStyle);
                        } else if (b3 == 2) {
                            inboxStyle = new Notification.InboxStyle();
                            builder.setStyle(inboxStyle);
                        } else if (b3 == 3) {
                            String name = "You";
                            if ("--user".equals(peekNextArg())) {
                                getNextArg();
                                name = getNextArgRequired();
                            }
                            messagingStyle = new Notification.MessagingStyle(new Person.Builder().setName(name).build());
                            builder.setStyle(messagingStyle);
                        } else if (b3 == 4) {
                            Notification.MediaStyle mediaStyle = new Notification.MediaStyle();
                            builder.setStyle(mediaStyle);
                        } else {
                            throw new IllegalArgumentException("unrecognized notification style: " + styleSpec);
                        }
                        smallIcon = smallIcon2;
                        break;
                    case 20:
                    case 21:
                    case 22:
                        Icon smallIcon3 = smallIcon;
                        if (bigTextStyle == null) {
                            throw new IllegalArgumentException("--bigtext requires --style bigtext");
                        }
                        bigTextStyle.bigText(getNextArgRequired());
                        messagingStyle = messagingStyle;
                        inboxStyle = inboxStyle;
                        smallIcon = smallIcon3;
                        messagingStyle = messagingStyle;
                        inboxStyle = inboxStyle;
                        smallIcon = smallIcon;
                        break;
                        break;
                    case WindowManagerService.H.BOOT_TIMEOUT /* 23 */:
                        Icon smallIcon4 = smallIcon;
                        if (bigPictureStyle == null) {
                            throw new IllegalArgumentException("--picture requires --style bigpicture");
                        }
                        String pictureSpec = getNextArgRequired();
                        Icon pictureAsIcon = parseIcon(res, pictureSpec);
                        if (pictureAsIcon == null) {
                            throw new IllegalArgumentException("bad picture spec: " + pictureSpec);
                        }
                        Drawable d = pictureAsIcon.loadDrawable(context);
                        if (d instanceof BitmapDrawable) {
                            bigPictureStyle.bigPicture(((BitmapDrawable) d).getBitmap());
                            messagingStyle = messagingStyle;
                            inboxStyle = inboxStyle;
                            smallIcon = smallIcon4;
                            messagingStyle = messagingStyle;
                            inboxStyle = inboxStyle;
                            smallIcon = smallIcon;
                        } else {
                            throw new IllegalArgumentException("not a bitmap: " + pictureSpec);
                        }
                        break;
                        break;
                    case WindowManagerService.H.WAITING_FOR_DRAWN_TIMEOUT /* 24 */:
                        Icon smallIcon5 = smallIcon;
                        if (inboxStyle == null) {
                            throw new IllegalArgumentException("--line requires --style inbox");
                        }
                        inboxStyle.addLine(getNextArgRequired());
                        messagingStyle = messagingStyle;
                        inboxStyle = inboxStyle;
                        smallIcon = smallIcon5;
                        messagingStyle = messagingStyle;
                        inboxStyle = inboxStyle;
                        smallIcon = smallIcon;
                        break;
                        break;
                    case WindowManagerService.H.SHOW_STRICT_MODE_VIOLATION /* 25 */:
                        if (messagingStyle == null) {
                            throw new IllegalArgumentException("--message requires --style messaging");
                        }
                        String arg = getNextArgRequired();
                        String[] parts = arg.split(":", 2);
                        if (parts.length > 1) {
                            messagingStyle.addMessage(parts[1], System.currentTimeMillis(), parts[0]);
                            messagingStyle = messagingStyle;
                            inboxStyle = inboxStyle;
                            smallIcon = smallIcon;
                        } else {
                            messagingStyle.addMessage(parts[0], System.currentTimeMillis(), new String[]{messagingStyle.getUserDisplayName().toString(), "Them"}[messagingStyle.getMessages().size() % 2]);
                            messagingStyle = messagingStyle;
                            inboxStyle = inboxStyle;
                            smallIcon = smallIcon;
                        }
                        messagingStyle = messagingStyle;
                        inboxStyle = inboxStyle;
                        smallIcon = smallIcon;
                        break;
                        break;
                    case CecMessageType.GIVE_DECK_STATUS /* 26 */:
                        if (messagingStyle == null) {
                            throw new IllegalArgumentException("--conversation requires --style messaging");
                        }
                        messagingStyle.setConversationTitle(getNextArgRequired());
                        smallIcon = smallIcon;
                        messagingStyle = messagingStyle;
                        inboxStyle = inboxStyle;
                        messagingStyle = messagingStyle;
                        inboxStyle = inboxStyle;
                        smallIcon = smallIcon;
                        break;
                        break;
                    default:
                        pw.println(NOTIFY_USAGE);
                        return 0;
                }
            } else {
                Icon smallIcon6 = smallIcon;
                String tag = getNextArg();
                String text = getNextArg();
                if (tag == null || text == null) {
                    pw.println(NOTIFY_USAGE);
                    return -1;
                }
                builder.setContentText(text);
                if (smallIcon6 == null) {
                    builder.setSmallIcon(R.drawable.stat_notify_chat);
                } else {
                    builder.setSmallIcon(smallIcon6);
                }
                ensureChannel(callingPackage, callingUid);
                Notification n = builder.build();
                pw.println("posting:\n  " + n);
                Slog.v("NotificationManager", "posting: " + n);
                this.mBinderService.enqueueNotificationWithTag(callingPackage, callingPackage, tag, NOTIFICATION_ID, n, UserHandle.getUserId(callingUid));
                if (!verbose) {
                    return 0;
                }
                NotificationRecord nr = this.mDirectService.findNotificationLocked(callingPackage, tag, NOTIFICATION_ID, UserHandle.getUserId(callingUid));
                NotificationRecord nr2 = nr;
                int tries = 3;
                while (true) {
                    int tries2 = tries - 1;
                    if (tries > 0 && nr2 == null) {
                        try {
                            pw.println("waiting for notification to post...");
                            Thread.sleep(500L);
                        } catch (InterruptedException e) {
                        }
                        nr2 = this.mDirectService.findNotificationLocked(callingPackage, tag, NOTIFICATION_ID, UserHandle.getUserId(callingUid));
                        tries = tries2;
                    }
                }
                if (nr2 == null) {
                    pw.println("warning: couldn't find notification after enqueueing");
                    return 0;
                }
                pw.println("posted: ");
                nr2.dump(pw, "  ", context, false);
                return 0;
            }
        }
    }

    public void onHelp() {
        getOutPrintWriter().println(USAGE);
    }
}

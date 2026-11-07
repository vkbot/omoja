package com.android.server.connectivity;

import android.R;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.NetworkSpecifier;
import android.net.TelephonyNetworkSpecifier;
import android.net.wifi.WifiInfo;
import android.os.UserHandle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.widget.Toast;
import com.android.internal.notification.SystemNotificationChannels;

/* JADX INFO: loaded from: classes.dex */
public class NetworkNotificationManager {
    private static final boolean DBG = true;
    private static final String TAG = NetworkNotificationManager.class.getSimpleName();
    private static final boolean VDBG = false;
    private final Context mContext;
    private final NotificationManager mNotificationManager;
    private final SparseIntArray mNotificationTypeMap = new SparseIntArray();
    private final TelephonyManager mTelephonyManager;

    public enum NotificationType {
        LOST_INTERNET(742),
        NETWORK_SWITCH(743),
        NO_INTERNET(741),
        PARTIAL_CONNECTIVITY(745),
        SIGN_IN(740),
        PRIVATE_DNS_BROKEN(746);

        public final int eventId;

        NotificationType(int eventId) {
            this.eventId = eventId;
            Holder.sIdToTypeMap.put(eventId, this);
        }

        private static class Holder {
            private static SparseArray<NotificationType> sIdToTypeMap = new SparseArray<>();

            private Holder() {
            }
        }

        public static NotificationType getFromId(int id) {
            return (NotificationType) Holder.sIdToTypeMap.get(id);
        }
    }

    public NetworkNotificationManager(Context c, TelephonyManager t, NotificationManager n) {
        this.mContext = c;
        this.mTelephonyManager = t;
        this.mNotificationManager = n;
    }

    protected static int approximateTransportType(NetworkAgentInfo nai) {
        if (nai.isVPN()) {
            return 4;
        }
        return getFirstTransportType(nai);
    }

    private static int getFirstTransportType(NetworkAgentInfo nai) {
        for (int i = 0; i < 64; i++) {
            if (nai.networkCapabilities.hasTransport(i)) {
                return i;
            }
        }
        return -1;
    }

    private static String getTransportName(int transportType) {
        Resources r = Resources.getSystem();
        String[] networkTypes = r.getStringArray(R.array.config_notificationFallbackVibeWaveform);
        try {
            return networkTypes[transportType];
        } catch (IndexOutOfBoundsException e) {
            return r.getString(R.string.keyboard_shortcut_group_applications_sms);
        }
    }

    private static int getIcon(int transportType) {
        if (transportType == 1) {
            return R.drawable.pointer_wait_37;
        }
        return R.drawable.pointer_wait_33;
    }

    public void showNotification(int id, NotificationType notifyType, NetworkAgentInfo nai, NetworkAgentInfo switchToNai, PendingIntent intent, boolean highPriority) {
        String name;
        int transportType;
        boolean z;
        CharSequence title;
        CharSequence details;
        CharSequence title2;
        String str;
        String tag = tagFor(id);
        int eventId = notifyType.eventId;
        if (nai != null) {
            int transportType2 = approximateTransportType(nai);
            String extraInfo = nai.networkInfo.getExtraInfo();
            name = TextUtils.isEmpty(extraInfo) ? nai.networkCapabilities.getSsid() : extraInfo;
            if (!nai.networkCapabilities.hasCapability(12)) {
                return;
            } else {
                transportType = transportType2;
            }
        } else {
            name = null;
            transportType = 0;
        }
        int previousEventId = this.mNotificationTypeMap.get(id);
        NotificationType previousNotifyType = NotificationType.getFromId(previousEventId);
        if (priority(previousNotifyType) > priority(notifyType)) {
            Slog.d(TAG, String.format("ignoring notification %s for network %s with existing notification %s", notifyType, Integer.valueOf(id), previousNotifyType));
            return;
        }
        clearNotification(id);
        Slog.d(TAG, String.format("showNotification tag=%s event=%s transport=%s name=%s highPriority=%s", tag, nameOf(eventId), getTransportName(transportType), name, Boolean.valueOf(highPriority)));
        Resources r = this.mContext.getResources();
        int icon = getIcon(transportType);
        if (notifyType == NotificationType.NO_INTERNET && transportType == 1) {
            CharSequence title3 = r.getString(R.string.permlab_readMediaImages, WifiInfo.sanitizeSsid(nai.networkCapabilities.getSsid()));
            details = r.getString(R.string.permlab_readMediaVideo);
            title = title3;
            z = false;
        } else if (notifyType == NotificationType.PRIVATE_DNS_BROKEN) {
            if (transportType == 0) {
                title2 = r.getString(R.string.js_dialog_title);
            } else if (transportType == 1) {
                title2 = r.getString(R.string.permlab_readMediaImages, WifiInfo.sanitizeSsid(nai.networkCapabilities.getSsid()));
            } else {
                title2 = r.getString(R.string.kg_wrong_password);
            }
            details = r.getString(R.string.notification_ranker_binding_label);
            title = title2;
            z = false;
        } else if (notifyType == NotificationType.PARTIAL_CONNECTIVITY && transportType == 1) {
            CharSequence title4 = r.getString(R.string.keyboard_shortcut_group_applications_calendar, WifiInfo.sanitizeSsid(nai.networkCapabilities.getSsid()));
            details = r.getString(R.string.keyboard_shortcut_group_applications_contacts);
            title = title4;
            z = false;
        } else if (notifyType == NotificationType.LOST_INTERNET && transportType == 1) {
            CharSequence title5 = r.getString(R.string.permlab_readMediaImages, WifiInfo.sanitizeSsid(nai.networkCapabilities.getSsid()));
            details = r.getString(R.string.permlab_readMediaVideo);
            title = title5;
            z = false;
        } else if (notifyType == NotificationType.SIGN_IN) {
            if (transportType == 0) {
                CharSequence title6 = r.getString(R.string.keyboard_layout_notification_two_selected_message, 0);
                NetworkSpecifier specifier = nai.networkCapabilities.getNetworkSpecifier();
                int subId = Integer.MAX_VALUE;
                if (specifier instanceof TelephonyNetworkSpecifier) {
                    subId = ((TelephonyNetworkSpecifier) specifier).getSubscriptionId();
                }
                CharSequence details2 = this.mTelephonyManager.createForSubscriptionId(subId).getNetworkOperatorName();
                title = title6;
                details = details2;
                z = false;
            } else if (transportType != 1) {
                CharSequence title7 = r.getString(R.string.keyboard_layout_notification_two_selected_message, 0);
                details = r.getString(R.string.keyboard_shortcut_group_applications, name);
                title = title7;
                z = false;
            } else {
                CharSequence title8 = r.getString(R.string.permlab_readInstallSessions, 0);
                details = r.getString(R.string.keyboard_shortcut_group_applications, WifiInfo.sanitizeSsid(nai.networkCapabilities.getSsid()));
                title = title8;
                z = false;
            }
        } else {
            if (notifyType != NotificationType.NETWORK_SWITCH) {
                if (notifyType == NotificationType.NO_INTERNET || notifyType == NotificationType.PARTIAL_CONNECTIVITY) {
                    return;
                }
                Slog.wtf(TAG, "Unknown notification type " + notifyType + " on network transport " + getTransportName(transportType));
                return;
            }
            String fromTransport = getTransportName(transportType);
            String toTransport = getTransportName(approximateTransportType(switchToNai));
            z = false;
            title = r.getString(R.string.keyboard_shortcut_group_applications_email, toTransport);
            details = r.getString(R.string.keyboard_shortcut_group_applications_maps, toTransport, fromTransport);
        }
        boolean hasPreviousNotification = previousNotifyType != null ? true : z;
        if (highPriority && !hasPreviousNotification) {
            str = SystemNotificationChannels.NETWORK_ALERTS;
        } else {
            str = SystemNotificationChannels.NETWORK_STATUS;
        }
        String channelId = str;
        Notification.Builder builder = new Notification.Builder(this.mContext, channelId).setWhen(System.currentTimeMillis()).setShowWhen(notifyType == NotificationType.NETWORK_SWITCH ? true : z).setSmallIcon(icon).setAutoCancel(true).setTicker(title).setColor(this.mContext.getColor(R.color.system_notification_accent_color)).setContentTitle(title).setContentIntent(intent).setLocalOnly(true).setOnlyAlertOnce(true);
        if (notifyType == NotificationType.NETWORK_SWITCH) {
            builder.setStyle(new Notification.BigTextStyle().bigText(details));
        } else {
            builder.setContentText(details);
        }
        if (notifyType == NotificationType.SIGN_IN) {
            builder.extend(new Notification.TvExtender().setChannelId(channelId));
        }
        Notification notification = builder.build();
        this.mNotificationTypeMap.put(id, eventId);
        try {
            this.mNotificationManager.notifyAsUser(tag, eventId, notification, UserHandle.ALL);
        } catch (NullPointerException npe) {
            Slog.d(TAG, "setNotificationVisible: visible notificationManager error", npe);
        }
    }

    public void clearNotification(int id, NotificationType notifyType) {
        int previousEventId = this.mNotificationTypeMap.get(id);
        NotificationType previousNotifyType = NotificationType.getFromId(previousEventId);
        if (notifyType != previousNotifyType) {
            return;
        }
        clearNotification(id);
    }

    public void clearNotification(int id) {
        if (this.mNotificationTypeMap.indexOfKey(id) < 0) {
            return;
        }
        String tag = tagFor(id);
        int eventId = this.mNotificationTypeMap.get(id);
        Slog.d(TAG, String.format("clearing notification tag=%s event=%s", tag, nameOf(eventId)));
        try {
            this.mNotificationManager.cancelAsUser(tag, eventId, UserHandle.ALL);
        } catch (NullPointerException npe) {
            Slog.d(TAG, String.format("failed to clear notification tag=%s event=%s", tag, nameOf(eventId)), npe);
        }
        this.mNotificationTypeMap.delete(id);
    }

    public void setProvNotificationVisible(boolean visible, int id, String action) {
        if (visible) {
            String[] splitAction = action.split(":");
            Intent intent = new Intent(splitAction[0]);
            try {
                intent.putExtra("provision.phone.id", Integer.parseInt(splitAction[1]));
            } catch (NumberFormatException e) {
            }
            PendingIntent pendingIntent = PendingIntent.getBroadcast(this.mContext, 0, intent, 0);
            showNotification(id, NotificationType.SIGN_IN, null, null, pendingIntent, false);
            return;
        }
        clearNotification(id);
    }

    public void showToast(NetworkAgentInfo fromNai, NetworkAgentInfo toNai) {
        String fromTransport = getTransportName(approximateTransportType(fromNai));
        String toTransport = getTransportName(approximateTransportType(toNai));
        String text = this.mContext.getResources().getString(R.string.keyboard_shortcut_group_applications_music, fromTransport, toTransport);
        Toast.makeText(this.mContext, text, 1).show();
    }

    static String tagFor(int id) {
        return String.format("ConnectivityNotification:%d", Integer.valueOf(id));
    }

    static String nameOf(int eventId) {
        NotificationType t = NotificationType.getFromId(eventId);
        return t != null ? t.name() : "UNKNOWN";
    }

    private static int priority(NotificationType t) {
        if (t == null) {
            return 0;
        }
        switch (AnonymousClass1.$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType[t.ordinal()]) {
            case 1:
                return 6;
            case 2:
                return 5;
            case 3:
                return 4;
            case 4:
                return 3;
            case 5:
                return 2;
            case 6:
                return 1;
            default:
                return 0;
        }
    }

    /* JADX INFO: renamed from: com.android.server.connectivity.NetworkNotificationManager$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType;

        static {
            int[] iArr = new int[NotificationType.values().length];
            $SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType = iArr;
            try {
                iArr[NotificationType.SIGN_IN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType[NotificationType.PARTIAL_CONNECTIVITY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType[NotificationType.PRIVATE_DNS_BROKEN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType[NotificationType.NO_INTERNET.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType[NotificationType.NETWORK_SWITCH.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType[NotificationType.LOST_INTERNET.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }
}

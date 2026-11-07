package com.android.server.net;

import android.R;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.NetworkInfo;
import android.os.Handler;
import android.security.KeyStore;
import android.text.TextUtils;
import android.util.Slog;
import com.android.internal.net.VpnConfig;
import com.android.internal.net.VpnProfile;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.server.ConnectivityService;
import com.android.server.EventLogTags;
import com.android.server.connectivity.Vpn;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class LockdownVpnTracker {
    private static final String ACTION_LOCKDOWN_RESET = "com.android.server.action.LOCKDOWN_RESET";
    private static final int MAX_ERROR_COUNT = 4;
    private static final String TAG = "LockdownVpnTracker";
    private String mAcceptedEgressIface;
    private final PendingIntent mConfigIntent;
    private final ConnectivityService mConnService;
    private final Context mContext;
    private int mErrorCount;
    private final Handler mHandler;
    private final VpnProfile mProfile;
    private final PendingIntent mResetIntent;
    private final Vpn mVpn;
    private final Object mStateLock = new Object();
    private BroadcastReceiver mResetReceiver = new BroadcastReceiver() { // from class: com.android.server.net.LockdownVpnTracker.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            LockdownVpnTracker.this.reset();
        }
    };

    public static boolean isEnabled() {
        return KeyStore.getInstance().contains("LOCKDOWN_VPN");
    }

    public LockdownVpnTracker(Context context, ConnectivityService connService, Handler handler, Vpn vpn, VpnProfile profile) {
        Objects.requireNonNull(context);
        this.mContext = context;
        Objects.requireNonNull(connService);
        this.mConnService = connService;
        Objects.requireNonNull(handler);
        this.mHandler = handler;
        Objects.requireNonNull(vpn);
        this.mVpn = vpn;
        Objects.requireNonNull(profile);
        this.mProfile = profile;
        Intent configIntent = new Intent("android.settings.VPN_SETTINGS");
        this.mConfigIntent = PendingIntent.getActivity(this.mContext, 0, configIntent, 0);
        Intent resetIntent = new Intent(ACTION_LOCKDOWN_RESET);
        resetIntent.addFlags(1073741824);
        this.mResetIntent = PendingIntent.getBroadcast(this.mContext, 0, resetIntent, 0);
    }

    private void handleStateChangedLocked() {
        NetworkInfo egressInfo = this.mConnService.getActiveNetworkInfoUnfiltered();
        LinkProperties egressProp = this.mConnService.getActiveLinkProperties();
        NetworkInfo vpnInfo = this.mVpn.getNetworkInfo();
        VpnConfig vpnConfig = this.mVpn.getLegacyVpnConfig();
        boolean egressDisconnected = egressInfo == null || NetworkInfo.State.DISCONNECTED.equals(egressInfo.getState());
        boolean egressChanged = egressProp == null || !TextUtils.equals(this.mAcceptedEgressIface, egressProp.getInterfaceName());
        String egressTypeName = egressInfo == null ? null : ConnectivityManager.getNetworkTypeName(egressInfo.getType());
        String egressIface = egressProp == null ? null : egressProp.getInterfaceName();
        Slog.d(TAG, "handleStateChanged: egress=" + egressTypeName + " " + this.mAcceptedEgressIface + "->" + egressIface);
        if (egressDisconnected || egressChanged) {
            this.mAcceptedEgressIface = null;
            this.mVpn.stopVpnRunnerPrivileged();
        }
        if (egressDisconnected) {
            hideNotification();
            return;
        }
        int egressType = egressInfo.getType();
        if (vpnInfo.getDetailedState() == NetworkInfo.DetailedState.FAILED) {
            EventLogTags.writeLockdownVpnError(egressType);
        }
        if (this.mErrorCount > 4) {
            showNotification(R.string.permlab_enableCarMode, R.drawable.rate_star_med_off);
            return;
        }
        if (egressInfo.isConnected() && !vpnInfo.isConnectedOrConnecting()) {
            if (this.mProfile.isValidLockdownProfile()) {
                Slog.d(TAG, "Active network connected; starting VPN");
                EventLogTags.writeLockdownVpnConnecting(egressType);
                showNotification(R.string.permlab_detectScreenCapture, R.drawable.rate_star_med_off);
                this.mAcceptedEgressIface = egressProp.getInterfaceName();
                try {
                    this.mVpn.startLegacyVpnPrivileged(this.mProfile, KeyStore.getInstance(), egressProp);
                    return;
                } catch (IllegalStateException e) {
                    this.mAcceptedEgressIface = null;
                    Slog.e(TAG, "Failed to start VPN", e);
                    showNotification(R.string.permlab_enableCarMode, R.drawable.rate_star_med_off);
                    return;
                }
            }
            Slog.e(TAG, "Invalid VPN profile; requires IP-based server and DNS");
            showNotification(R.string.permlab_enableCarMode, R.drawable.rate_star_med_off);
            return;
        }
        if (vpnInfo.isConnected() && vpnConfig != null) {
            String iface = vpnConfig.interfaze;
            List<LinkAddress> sourceAddrs = vpnConfig.addresses;
            Slog.d(TAG, "VPN connected using iface=" + iface + ", sourceAddr=" + sourceAddrs.toString());
            EventLogTags.writeLockdownVpnConnected(egressType);
            showNotification(R.string.permlab_deliverCompanionMessages, R.drawable.rate_star_med_half_holo_light);
            NetworkInfo clone = new NetworkInfo(egressInfo);
            augmentNetworkInfo(clone);
            this.mConnService.sendConnectedBroadcast(clone);
        }
    }

    public void init() {
        synchronized (this.mStateLock) {
            initLocked();
        }
    }

    private void initLocked() {
        Slog.d(TAG, "initLocked()");
        this.mVpn.setEnableTeardown(false);
        this.mVpn.setLockdown(true);
        IntentFilter resetFilter = new IntentFilter(ACTION_LOCKDOWN_RESET);
        this.mContext.registerReceiver(this.mResetReceiver, resetFilter, "android.permission.NETWORK_STACK", this.mHandler);
        handleStateChangedLocked();
    }

    public void shutdown() {
        synchronized (this.mStateLock) {
            shutdownLocked();
        }
    }

    private void shutdownLocked() {
        Slog.d(TAG, "shutdownLocked()");
        this.mAcceptedEgressIface = null;
        this.mErrorCount = 0;
        this.mVpn.stopVpnRunnerPrivileged();
        this.mVpn.setLockdown(false);
        hideNotification();
        this.mContext.unregisterReceiver(this.mResetReceiver);
        this.mVpn.setEnableTeardown(true);
    }

    public void reset() {
        Slog.d(TAG, "reset()");
        synchronized (this.mStateLock) {
            shutdownLocked();
            initLocked();
            handleStateChangedLocked();
        }
    }

    public void onNetworkInfoChanged() {
        synchronized (this.mStateLock) {
            handleStateChangedLocked();
        }
    }

    public void onVpnStateChanged(NetworkInfo info) {
        if (info.getDetailedState() == NetworkInfo.DetailedState.FAILED) {
            this.mErrorCount++;
        }
        synchronized (this.mStateLock) {
            handleStateChangedLocked();
        }
    }

    public void augmentNetworkInfo(NetworkInfo info) {
        if (info.isConnected()) {
            NetworkInfo vpnInfo = this.mVpn.getNetworkInfo();
            info.setDetailedState(vpnInfo.getDetailedState(), vpnInfo.getReason(), null);
        }
    }

    private void showNotification(int titleRes, int iconRes) {
        Notification.Builder builder = new Notification.Builder(this.mContext, SystemNotificationChannels.VPN).setWhen(0L).setSmallIcon(iconRes).setContentTitle(this.mContext.getString(titleRes)).setContentText(this.mContext.getString(R.string.permlab_createNetworkSockets)).setContentIntent(this.mConfigIntent).setOngoing(true).addAction(R.drawable.ic_media_route_connecting_dark_10_mtrl, this.mContext.getString(R.string.peerTtyModeHco), this.mResetIntent).setColor(this.mContext.getColor(R.color.system_notification_accent_color));
        NotificationManager.from(this.mContext).notify(null, 20, builder.build());
    }

    private void hideNotification() {
        NotificationManager.from(this.mContext).cancel(null, 20);
    }
}

package com.android.server.devicepolicy;

import android.R;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.Handler;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.storage.StorageManager;
import android.security.Credentials;
import android.security.KeyChain;
import android.util.Log;
import com.android.internal.notification.SystemNotificationChannels;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CertificateMonitor {
    protected static final String LOG_TAG = "DevicePolicyManager";
    protected static final int MONITORING_CERT_NOTIFICATION_ID = 33;
    private final Handler mHandler;
    private final DevicePolicyManagerService.Injector mInjector;
    private final BroadcastReceiver mRootCaReceiver = new BroadcastReceiver() { // from class: com.android.server.devicepolicy.CertificateMonitor.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (StorageManager.inCryptKeeperBounce()) {
                return;
            }
            int userId = intent.getIntExtra("android.intent.extra.user_handle", getSendingUserId());
            CertificateMonitor.this.updateInstalledCertificates(UserHandle.of(userId));
        }
    };
    private final DevicePolicyManagerService mService;

    public CertificateMonitor(DevicePolicyManagerService service, DevicePolicyManagerService.Injector injector, Handler handler) {
        this.mService = service;
        this.mInjector = injector;
        this.mHandler = handler;
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.USER_STARTED");
        filter.addAction("android.intent.action.USER_UNLOCKED");
        filter.addAction("android.security.action.TRUST_STORE_CHANGED");
        filter.setPriority(1000);
        this.mInjector.mContext.registerReceiverAsUser(this.mRootCaReceiver, UserHandle.ALL, filter, null, this.mHandler);
    }

    public String installCaCert(UserHandle userHandle, byte[] certBuffer) {
        try {
            X509Certificate cert = parseCert(certBuffer);
            byte[] pemCert = Credentials.convertToPem(new Certificate[]{cert});
            try {
                KeyChain.KeyChainConnection keyChainConnection = this.mInjector.keyChainBindAsUser(userHandle);
                try {
                    String strInstallCaCertificate = keyChainConnection.getService().installCaCertificate(pemCert);
                    if (keyChainConnection != null) {
                        keyChainConnection.close();
                    }
                    return strInstallCaCertificate;
                } catch (Throwable th) {
                    if (keyChainConnection != null) {
                        try {
                            keyChainConnection.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (RemoteException e) {
                Log.e(LOG_TAG, "installCaCertsToKeyChain(): ", e);
                return null;
            } catch (InterruptedException e1) {
                Log.w(LOG_TAG, "installCaCertsToKeyChain(): ", e1);
                Thread.currentThread().interrupt();
                return null;
            }
        } catch (IOException | CertificateException ce) {
            Log.e(LOG_TAG, "Problem converting cert", ce);
            return null;
        }
    }

    public void uninstallCaCerts(UserHandle userHandle, String[] aliases) {
        try {
            KeyChain.KeyChainConnection keyChainConnection = this.mInjector.keyChainBindAsUser(userHandle);
            for (String str : aliases) {
                try {
                    keyChainConnection.getService().deleteCaCertificate(str);
                } catch (Throwable th) {
                    if (keyChainConnection != null) {
                        try {
                            keyChainConnection.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            if (keyChainConnection != null) {
                keyChainConnection.close();
            }
        } catch (RemoteException e) {
            Log.e(LOG_TAG, "from CaCertUninstaller: ", e);
        } catch (InterruptedException ie) {
            Log.w(LOG_TAG, "CaCertUninstaller: ", ie);
            Thread.currentThread().interrupt();
        }
    }

    private List<String> getInstalledCaCertificates(UserHandle userHandle) throws RemoteException, RuntimeException {
        try {
            KeyChain.KeyChainConnection conn = this.mInjector.keyChainBindAsUser(userHandle);
            try {
                List<String> list = conn.getService().getUserCaAliases().getList();
                if (conn != null) {
                    conn.close();
                }
                return list;
            } catch (Throwable th) {
                if (conn != null) {
                    try {
                        conn.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (AssertionError e) {
            throw new RuntimeException(e);
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            throw new RuntimeException(e2);
        }
    }

    public /* synthetic */ void lambda$onCertificateApprovalsChanged$0$CertificateMonitor(int userId) {
        updateInstalledCertificates(UserHandle.of(userId));
    }

    public void onCertificateApprovalsChanged(final int userId) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.devicepolicy.-$$Lambda$CertificateMonitor$nzwzuvk_fK7AIlili6jDKrKWLJM
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCertificateApprovalsChanged$0$CertificateMonitor(userId);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateInstalledCertificates(UserHandle userHandle) {
        if (!this.mInjector.getUserManager().isUserUnlocked(userHandle.getIdentifier())) {
            return;
        }
        try {
            List<String> installedCerts = getInstalledCaCertificates(userHandle);
            this.mService.onInstalledCertificatesChanged(userHandle, installedCerts);
            int pendingCertificateCount = installedCerts.size() - this.mService.getAcceptedCaCertificates(userHandle).size();
            if (pendingCertificateCount == 0) {
                this.mInjector.getNotificationManager().cancelAsUser(LOG_TAG, 33, userHandle);
            } else {
                Notification noti = buildNotification(userHandle, pendingCertificateCount);
                this.mInjector.getNotificationManager().notifyAsUser(LOG_TAG, 33, noti, userHandle);
            }
        } catch (RemoteException | RuntimeException e) {
            Log.e(LOG_TAG, "Could not retrieve certificates from KeyChain service", e);
        }
    }

    private Notification buildNotification(UserHandle userHandle, int pendingCertificateCount) {
        int parentUserId;
        String contentText;
        int smallIconId;
        try {
            Context userContext = this.mInjector.createContextAsUser(userHandle);
            Resources resources = this.mInjector.getResources();
            int parentUserId2 = userHandle.getIdentifier();
            if (this.mService.getProfileOwner(userHandle.getIdentifier()) != null) {
                String contentText2 = resources.getString(R.string.permdesc_setWallpaper, this.mService.getProfileOwnerName(userHandle.getIdentifier()));
                parentUserId = this.mService.getProfileParentId(userHandle.getIdentifier());
                contentText = contentText2;
                smallIconId = 17303579;
            } else if (this.mService.getDeviceOwnerUserId() == userHandle.getIdentifier()) {
                this.mService.getDeviceOwnerName();
                String contentText3 = resources.getString(R.string.permdesc_setWallpaper, this.mService.getDeviceOwnerName());
                parentUserId = parentUserId2;
                smallIconId = 17303579;
                contentText = contentText3;
            } else {
                String contentText4 = resources.getString(R.string.permdesc_setTimeZone);
                parentUserId = parentUserId2;
                contentText = contentText4;
                smallIconId = 17301642;
            }
            Intent dialogIntent = new Intent("com.android.settings.MONITORING_CERT_INFO");
            dialogIntent.setFlags(268468224);
            dialogIntent.putExtra("android.settings.extra.number_of_certificates", pendingCertificateCount);
            dialogIntent.putExtra("android.intent.extra.USER_ID", userHandle.getIdentifier());
            ActivityInfo targetInfo = dialogIntent.resolveActivityInfo(this.mInjector.getPackageManager(), 1048576);
            if (targetInfo != null) {
                dialogIntent.setComponent(targetInfo.getComponentName());
            }
            PendingIntent notifyIntent = this.mInjector.pendingIntentGetActivityAsUser(userContext, 0, dialogIntent, AudioFormat.OPUS, null, UserHandle.of(parentUserId));
            return new Notification.Builder(userContext, SystemNotificationChannels.SECURITY).setSmallIcon(smallIconId).setContentTitle(resources.getQuantityText(R.plurals.ssl_ca_cert_warning, pendingCertificateCount)).setContentText(contentText).setContentIntent(notifyIntent).setShowWhen(false).setColor(R.color.system_notification_accent_color).build();
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(LOG_TAG, "Create context as " + userHandle + " failed", e);
            return null;
        }
    }

    private static X509Certificate parseCert(byte[] certBuffer) throws CertificateException {
        CertificateFactory certFactory = CertificateFactory.getInstance("X.509");
        return (X509Certificate) certFactory.generateCertificate(new ByteArrayInputStream(certBuffer));
    }
}

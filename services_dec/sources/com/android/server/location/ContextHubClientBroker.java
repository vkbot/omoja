package com.android.server.location;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.hardware.contexthub.V1_0.ContextHubMsg;
import android.hardware.contexthub.V1_0.IContexthub;
import android.hardware.location.ContextHubInfo;
import android.hardware.location.IContextHubClient;
import android.hardware.location.IContextHubClientCallback;
import android.hardware.location.NanoAppMessage;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import android.util.proto.ProtoOutputStream;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public class ContextHubClientBroker extends IContextHubClient.Stub implements IBinder.DeathRecipient {
    private static final String TAG = "ContextHubClientBroker";
    private final ContextHubInfo mAttachedContextHubInfo;
    private IContextHubClientCallback mCallbackInterface;
    private final ContextHubClientManager mClientManager;
    private final Context mContext;
    private final IContexthub mContextHubProxy;
    private final boolean mHasAccessContextHubPermission;
    private final short mHostEndPointId;
    private AtomicBoolean mIsPendingIntentCancelled;
    private final String mPackage;
    private final PendingIntentRequest mPendingIntentRequest;
    private boolean mRegistered;

    /* JADX INFO: Access modifiers changed from: private */
    interface CallbackConsumer {
        void accept(IContextHubClientCallback iContextHubClientCallback) throws RemoteException;
    }

    private class PendingIntentRequest {
        private long mNanoAppId;
        private PendingIntent mPendingIntent;
        private boolean mValid;

        PendingIntentRequest() {
            this.mValid = false;
        }

        PendingIntentRequest(PendingIntent pendingIntent, long nanoAppId) {
            this.mValid = false;
            this.mPendingIntent = pendingIntent;
            this.mNanoAppId = nanoAppId;
            this.mValid = true;
        }

        public long getNanoAppId() {
            return this.mNanoAppId;
        }

        public PendingIntent getPendingIntent() {
            return this.mPendingIntent;
        }

        public boolean hasPendingIntent() {
            return this.mPendingIntent != null;
        }

        public void clear() {
            this.mPendingIntent = null;
        }

        public boolean isValid() {
            return this.mValid;
        }
    }

    ContextHubClientBroker(Context context, IContexthub contextHubProxy, ContextHubClientManager clientManager, ContextHubInfo contextHubInfo, short hostEndPointId, IContextHubClientCallback callback) {
        this.mCallbackInterface = null;
        this.mRegistered = true;
        this.mIsPendingIntentCancelled = new AtomicBoolean(false);
        this.mContext = context;
        this.mContextHubProxy = contextHubProxy;
        this.mClientManager = clientManager;
        this.mAttachedContextHubInfo = contextHubInfo;
        this.mHostEndPointId = hostEndPointId;
        this.mCallbackInterface = callback;
        this.mPendingIntentRequest = new PendingIntentRequest();
        this.mPackage = this.mContext.getPackageManager().getNameForUid(Binder.getCallingUid());
        this.mHasAccessContextHubPermission = context.checkCallingPermission("android.permission.ACCESS_CONTEXT_HUB") == 0;
    }

    ContextHubClientBroker(Context context, IContexthub contextHubProxy, ContextHubClientManager clientManager, ContextHubInfo contextHubInfo, short hostEndPointId, PendingIntent pendingIntent, long nanoAppId) {
        this.mCallbackInterface = null;
        this.mRegistered = true;
        this.mIsPendingIntentCancelled = new AtomicBoolean(false);
        this.mContext = context;
        this.mContextHubProxy = contextHubProxy;
        this.mClientManager = clientManager;
        this.mAttachedContextHubInfo = contextHubInfo;
        this.mHostEndPointId = hostEndPointId;
        this.mPendingIntentRequest = new PendingIntentRequest(pendingIntent, nanoAppId);
        this.mPackage = pendingIntent.getCreatorPackage();
        this.mHasAccessContextHubPermission = context.checkCallingPermission("android.permission.ACCESS_CONTEXT_HUB") == 0;
    }

    public int sendMessageToNanoApp(NanoAppMessage message) {
        int result;
        ContextHubServiceUtil.checkPermissions(this.mContext);
        if (isRegistered()) {
            ContextHubMsg messageToNanoApp = ContextHubServiceUtil.createHidlContextHubMessage(this.mHostEndPointId, message);
            int contextHubId = this.mAttachedContextHubInfo.getId();
            try {
                result = this.mContextHubProxy.sendMessageToHub(contextHubId, messageToNanoApp);
            } catch (RemoteException e) {
                Log.e(TAG, "RemoteException in sendMessageToNanoApp (target hub ID = " + contextHubId + ")", e);
                result = 1;
            }
        } else {
            Log.e(TAG, "Failed to send message to nanoapp: client connection is closed");
            result = 1;
        }
        return ContextHubServiceUtil.toTransactionResult(result);
    }

    public void close() {
        synchronized (this) {
            this.mPendingIntentRequest.clear();
        }
        onClientExit();
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        onClientExit();
    }

    int getAttachedContextHubId() {
        return this.mAttachedContextHubInfo.getId();
    }

    short getHostEndPointId() {
        return this.mHostEndPointId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void sendMessageToClient(final NanoAppMessage message) {
        invokeCallback(new CallbackConsumer() { // from class: com.android.server.location.-$$Lambda$ContextHubClientBroker$CFacmt7807NhDDkp6CgbkeGnMvQ
            @Override // com.android.server.location.ContextHubClientBroker.CallbackConsumer
            public final void accept(IContextHubClientCallback iContextHubClientCallback) {
                iContextHubClientCallback.onMessageFromNanoApp(message);
            }
        });
        Supplier<Intent> supplier = new Supplier() { // from class: com.android.server.location.-$$Lambda$ContextHubClientBroker$P9IUEzaG4gP8jALe00of9jdlrGw
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.lambda$sendMessageToClient$1$ContextHubClientBroker(message);
            }
        };
        sendPendingIntent(supplier, message.getNanoAppId());
    }

    public /* synthetic */ Intent lambda$sendMessageToClient$1$ContextHubClientBroker(NanoAppMessage message) {
        return createIntent(5, message.getNanoAppId()).putExtra("android.hardware.location.extra.MESSAGE", (Parcelable) message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onNanoAppLoaded(final long nanoAppId) {
        invokeCallback(new CallbackConsumer() { // from class: com.android.server.location.-$$Lambda$ContextHubClientBroker$ykmLCadaR6NcV4R42i4K8zw4AWs
            @Override // com.android.server.location.ContextHubClientBroker.CallbackConsumer
            public final void accept(IContextHubClientCallback iContextHubClientCallback) {
                iContextHubClientCallback.onNanoAppLoaded(nanoAppId);
            }
        });
        sendPendingIntent(new Supplier() { // from class: com.android.server.location.-$$Lambda$ContextHubClientBroker$7Uwy0RpQUtRsDYbocrZ-WuXEVJQ
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.lambda$onNanoAppLoaded$3$ContextHubClientBroker(nanoAppId);
            }
        }, nanoAppId);
    }

    public /* synthetic */ Intent lambda$onNanoAppLoaded$3$ContextHubClientBroker(long nanoAppId) {
        return createIntent(0, nanoAppId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onNanoAppUnloaded(final long nanoAppId) {
        invokeCallback(new CallbackConsumer() { // from class: com.android.server.location.-$$Lambda$ContextHubClientBroker$iBGtMeLZ6k5dYJZb_VEUfBBYh9s
            @Override // com.android.server.location.ContextHubClientBroker.CallbackConsumer
            public final void accept(IContextHubClientCallback iContextHubClientCallback) {
                iContextHubClientCallback.onNanoAppUnloaded(nanoAppId);
            }
        });
        sendPendingIntent(new Supplier() { // from class: com.android.server.location.-$$Lambda$ContextHubClientBroker$NOnZ9Z0Vw11snzPmdVOE1pPrZ_4
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.lambda$onNanoAppUnloaded$5$ContextHubClientBroker(nanoAppId);
            }
        }, nanoAppId);
    }

    public /* synthetic */ Intent lambda$onNanoAppUnloaded$5$ContextHubClientBroker(long nanoAppId) {
        return createIntent(1, nanoAppId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onHubReset() {
        invokeCallback(new CallbackConsumer() { // from class: com.android.server.location.-$$Lambda$ContextHubClientBroker$LSvRo4l-aTVqttfWfOHNw7uyb3Q
            @Override // com.android.server.location.ContextHubClientBroker.CallbackConsumer
            public final void accept(IContextHubClientCallback iContextHubClientCallback) {
                iContextHubClientCallback.onHubReset();
            }
        });
        sendPendingIntent(new Supplier() { // from class: com.android.server.location.-$$Lambda$ContextHubClientBroker$dhEakMhmIulMdmLMree-thpxPXU
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.lambda$onHubReset$7$ContextHubClientBroker();
            }
        });
    }

    public /* synthetic */ Intent lambda$onHubReset$7$ContextHubClientBroker() {
        return createIntent(6);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onNanoAppAborted(final long nanoAppId, final int abortCode) {
        invokeCallback(new CallbackConsumer() { // from class: com.android.server.location.-$$Lambda$ContextHubClientBroker$euuUV-nmBEuGSQnmknMVANWcP88
            @Override // com.android.server.location.ContextHubClientBroker.CallbackConsumer
            public final void accept(IContextHubClientCallback iContextHubClientCallback) {
                iContextHubClientCallback.onNanoAppAborted(nanoAppId, abortCode);
            }
        });
        Supplier<Intent> supplier = new Supplier() { // from class: com.android.server.location.-$$Lambda$ContextHubClientBroker$B9OxjmBvqPB3gqJ7VRMqEIw1cbY
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.lambda$onNanoAppAborted$9$ContextHubClientBroker(nanoAppId, abortCode);
            }
        };
        sendPendingIntent(supplier, nanoAppId);
    }

    public /* synthetic */ Intent lambda$onNanoAppAborted$9$ContextHubClientBroker(long nanoAppId, int abortCode) {
        return createIntent(4, nanoAppId).putExtra("android.hardware.location.extra.NANOAPP_ABORT_CODE", abortCode);
    }

    boolean hasPendingIntent(PendingIntent intent, long nanoAppId) {
        PendingIntent pendingIntent;
        long intentNanoAppId;
        synchronized (this) {
            pendingIntent = this.mPendingIntentRequest.getPendingIntent();
            intentNanoAppId = this.mPendingIntentRequest.getNanoAppId();
        }
        return pendingIntent != null && pendingIntent.equals(intent) && intentNanoAppId == nanoAppId;
    }

    void attachDeathRecipient() throws RemoteException {
        IContextHubClientCallback iContextHubClientCallback = this.mCallbackInterface;
        if (iContextHubClientCallback != null) {
            iContextHubClientCallback.asBinder().linkToDeath(this, 0);
        }
    }

    boolean isPendingIntentCancelled() {
        return this.mIsPendingIntentCancelled.get();
    }

    private synchronized void invokeCallback(CallbackConsumer consumer) {
        if (this.mCallbackInterface != null) {
            try {
                consumer.accept(this.mCallbackInterface);
            } catch (RemoteException e) {
                Log.e(TAG, "RemoteException while invoking client callback (host endpoint ID = " + ((int) this.mHostEndPointId) + ")", e);
            }
        }
    }

    private Intent createIntent(int eventType) {
        Intent intent = new Intent();
        intent.putExtra("android.hardware.location.extra.EVENT_TYPE", eventType);
        intent.putExtra("android.hardware.location.extra.CONTEXT_HUB_INFO", (Parcelable) this.mAttachedContextHubInfo);
        return intent;
    }

    private Intent createIntent(int eventType, long nanoAppId) {
        Intent intent = createIntent(eventType);
        intent.putExtra("android.hardware.location.extra.NANOAPP_ID", nanoAppId);
        return intent;
    }

    private synchronized void sendPendingIntent(Supplier<Intent> supplier) {
        if (this.mPendingIntentRequest.hasPendingIntent()) {
            doSendPendingIntent(this.mPendingIntentRequest.getPendingIntent(), supplier.get());
        }
    }

    private synchronized void sendPendingIntent(Supplier<Intent> supplier, long nanoAppId) {
        if (this.mPendingIntentRequest.hasPendingIntent() && this.mPendingIntentRequest.getNanoAppId() == nanoAppId) {
            doSendPendingIntent(this.mPendingIntentRequest.getPendingIntent(), supplier.get());
        }
    }

    private void doSendPendingIntent(PendingIntent pendingIntent, Intent intent) {
        String requiredPermission;
        try {
            if (this.mHasAccessContextHubPermission) {
                requiredPermission = "android.permission.ACCESS_CONTEXT_HUB";
            } else {
                requiredPermission = "android.permission.LOCATION_HARDWARE";
            }
            pendingIntent.send(this.mContext, 0, intent, null, null, requiredPermission, null);
        } catch (PendingIntent.CanceledException e) {
            this.mIsPendingIntentCancelled.set(true);
            Log.w(TAG, "PendingIntent has been canceled, unregistering from client (host endpoint ID " + ((int) this.mHostEndPointId) + ")");
            close();
        }
    }

    private synchronized boolean isRegistered() {
        return this.mRegistered;
    }

    private synchronized void onClientExit() {
        if (this.mCallbackInterface != null) {
            this.mCallbackInterface.asBinder().unlinkToDeath(this, 0);
            this.mCallbackInterface = null;
        }
        if (!this.mPendingIntentRequest.hasPendingIntent() && this.mRegistered) {
            this.mClientManager.unregisterClient(this.mHostEndPointId);
            this.mRegistered = false;
        }
    }

    void dump(ProtoOutputStream proto) {
        proto.write(1120986464257L, (int) getHostEndPointId());
        proto.write(1120986464258L, getAttachedContextHubId());
        proto.write(1138166333443L, this.mPackage);
        if (this.mPendingIntentRequest.isValid()) {
            proto.write(1133871366149L, true);
            proto.write(1112396529668L, this.mPendingIntentRequest.getNanoAppId());
        }
        proto.write(1133871366150L, this.mPendingIntentRequest.hasPendingIntent());
        proto.write(1133871366151L, isPendingIntentCancelled());
        proto.write(1133871366152L, this.mRegistered);
    }

    public String toString() {
        String out;
        String out2 = ("[ContextHubClient endpointID: " + ((int) getHostEndPointId()) + ", ") + "contextHub: " + getAttachedContextHubId() + ", ";
        if (this.mPendingIntentRequest.isValid()) {
            out = (out2 + "intentCreatorPackage: " + this.mPackage + ", ") + "nanoAppId: 0x" + Long.toHexString(this.mPendingIntentRequest.getNanoAppId());
        } else {
            out = out2 + "package: " + this.mPackage;
        }
        return out + "]";
    }
}

package com.android.server.location.gnss;

import android.content.Context;
import android.location.GnssNavigationMessage;
import android.location.IGnssNavigationMessageListener;
import android.os.Handler;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.android.server.location.CallerIdentity;
import com.android.server.location.RemoteListenerHelper;

/* JADX INFO: loaded from: classes.dex */
public abstract class GnssNavigationMessageProvider extends RemoteListenerHelper<Void, IGnssNavigationMessageListener> {
    private boolean mCollectionStarted;
    private final GnssNavigationMessageProviderNative mNative;
    private static final String TAG = "GnssNavigationMessageProvider";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean native_is_navigation_message_supported();

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean native_start_navigation_message_collection();

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean native_stop_navigation_message_collection();

    protected GnssNavigationMessageProvider(Context context, Handler handler) {
        this(context, handler, new GnssNavigationMessageProviderNative());
    }

    public GnssNavigationMessageProvider(Context context, Handler handler, GnssNavigationMessageProviderNative aNative) {
        super(context, handler, TAG);
        this.mNative = aNative;
    }

    void resumeIfStarted() {
        if (DEBUG) {
            Log.d(TAG, "resumeIfStarted");
        }
        if (this.mCollectionStarted) {
            this.mNative.startNavigationMessageCollection();
        }
    }

    @Override // com.android.server.location.RemoteListenerHelper
    protected boolean isAvailableInPlatform() {
        return this.mNative.isNavigationMessageSupported();
    }

    @Override // com.android.server.location.RemoteListenerHelper
    protected int registerWithService() {
        boolean result = this.mNative.startNavigationMessageCollection();
        if (result) {
            this.mCollectionStarted = true;
            return 0;
        }
        return 4;
    }

    @Override // com.android.server.location.RemoteListenerHelper
    protected void unregisterFromService() {
        boolean stopped = this.mNative.stopNavigationMessageCollection();
        if (stopped) {
            this.mCollectionStarted = false;
        }
    }

    public void onNavigationMessageAvailable(final GnssNavigationMessage event) {
        foreach(new RemoteListenerHelper.ListenerOperation() { // from class: com.android.server.location.gnss.-$$Lambda$GnssNavigationMessageProvider$D5t4Ipp10sVG9cnfR_zUPXq4hl8
            @Override // com.android.server.location.RemoteListenerHelper.ListenerOperation
            public final void execute(IInterface iInterface, CallerIdentity callerIdentity) {
                ((IGnssNavigationMessageListener) iInterface).onGnssNavigationMessageReceived(event);
            }
        });
    }

    public void onCapabilitiesUpdated(boolean isGnssNavigationMessageSupported) {
        setSupported(isGnssNavigationMessageSupported);
        updateResult();
    }

    public void onGpsEnabledChanged() {
        tryUpdateRegistrationWithService();
        updateResult();
    }

    @Override // com.android.server.location.RemoteListenerHelper
    protected RemoteListenerHelper.ListenerOperation<IGnssNavigationMessageListener> getHandlerOperation(int result) {
        int status;
        if (result == 0) {
            status = 1;
        } else if (result == 1 || result == 2) {
            status = 0;
        } else if (result != 3) {
            if (result != 4) {
                if (result == 5) {
                    return null;
                }
                Log.v(TAG, "Unhandled addListener result: " + result);
                return null;
            }
            status = 0;
        } else {
            status = 2;
        }
        return new StatusChangedOperation(status);
    }

    private static class StatusChangedOperation implements RemoteListenerHelper.ListenerOperation<IGnssNavigationMessageListener> {
        private final int mStatus;

        public StatusChangedOperation(int status) {
            this.mStatus = status;
        }

        @Override // com.android.server.location.RemoteListenerHelper.ListenerOperation
        public void execute(IGnssNavigationMessageListener listener, CallerIdentity callerIdentity) throws RemoteException {
            listener.onStatusChanged(this.mStatus);
        }
    }

    public static class GnssNavigationMessageProviderNative {
        public boolean isNavigationMessageSupported() {
            return GnssNavigationMessageProvider.native_is_navigation_message_supported();
        }

        public boolean startNavigationMessageCollection() {
            return GnssNavigationMessageProvider.native_start_navigation_message_collection();
        }

        public boolean stopNavigationMessageCollection() {
            return GnssNavigationMessageProvider.native_stop_navigation_message_collection();
        }
    }
}

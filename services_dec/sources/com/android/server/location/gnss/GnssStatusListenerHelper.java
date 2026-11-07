package com.android.server.location.gnss;

import android.content.Context;
import android.location.IGnssStatusListener;
import android.os.Handler;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.android.server.location.CallerIdentity;
import com.android.server.location.RemoteListenerHelper;

/* JADX INFO: loaded from: classes.dex */
public abstract class GnssStatusListenerHelper extends RemoteListenerHelper<Void, IGnssStatusListener> {
    private static final String TAG = "GnssStatusListenerHelper";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);

    protected GnssStatusListenerHelper(Context context, Handler handler) {
        super(context, handler, TAG);
        setSupported(GnssLocationProvider.isSupported());
    }

    @Override // com.android.server.location.RemoteListenerHelper
    protected int registerWithService() {
        return 0;
    }

    @Override // com.android.server.location.RemoteListenerHelper
    protected void unregisterFromService() {
    }

    @Override // com.android.server.location.RemoteListenerHelper
    protected RemoteListenerHelper.ListenerOperation<IGnssStatusListener> getHandlerOperation(int result) {
        return null;
    }

    public void onStatusChanged(boolean isNavigating) {
        if (isNavigating) {
            foreach(new RemoteListenerHelper.ListenerOperation() { // from class: com.android.server.location.gnss.-$$Lambda$GnssStatusListenerHelper$KlIJDkEnS0_mNOmcwVuQH2RiKoE
                @Override // com.android.server.location.RemoteListenerHelper.ListenerOperation
                public final void execute(IInterface iInterface, CallerIdentity callerIdentity) {
                    ((IGnssStatusListener) iInterface).onGnssStarted();
                }
            });
        } else {
            foreach(new RemoteListenerHelper.ListenerOperation() { // from class: com.android.server.location.gnss.-$$Lambda$GnssStatusListenerHelper$S4Ko8kVujzQkEjUsbBqi2IwetQ8
                @Override // com.android.server.location.RemoteListenerHelper.ListenerOperation
                public final void execute(IInterface iInterface, CallerIdentity callerIdentity) {
                    ((IGnssStatusListener) iInterface).onGnssStopped();
                }
            });
        }
    }

    public void onFirstFix(final int timeToFirstFix) {
        foreach(new RemoteListenerHelper.ListenerOperation() { // from class: com.android.server.location.gnss.-$$Lambda$GnssStatusListenerHelper$-PDN6l_ua39RgTfOqb8dRfbBiz4
            @Override // com.android.server.location.RemoteListenerHelper.ListenerOperation
            public final void execute(IInterface iInterface, CallerIdentity callerIdentity) {
                ((IGnssStatusListener) iInterface).onFirstFix(timeToFirstFix);
            }
        });
    }

    public void onSvStatusChanged(final int svCount, final int[] prnWithFlags, final float[] cn0s, final float[] elevations, final float[] azimuths, final float[] carrierFreqs, final float[] basebandCn0s) {
        foreach(new RemoteListenerHelper.ListenerOperation() { // from class: com.android.server.location.gnss.-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs
            @Override // com.android.server.location.RemoteListenerHelper.ListenerOperation
            public final void execute(IInterface iInterface, CallerIdentity callerIdentity) throws RemoteException {
                this.f$0.lambda$onSvStatusChanged$3$GnssStatusListenerHelper(svCount, prnWithFlags, cn0s, elevations, azimuths, carrierFreqs, basebandCn0s, (IGnssStatusListener) iInterface, callerIdentity);
            }
        });
    }

    public /* synthetic */ void lambda$onSvStatusChanged$3$GnssStatusListenerHelper(int svCount, int[] prnWithFlags, float[] cn0s, float[] elevations, float[] azimuths, float[] carrierFreqs, float[] basebandCn0s, IGnssStatusListener listener, CallerIdentity callerIdentity) throws RemoteException {
        if (!hasPermission(this.mContext, callerIdentity)) {
            logPermissionDisabledEventNotReported(TAG, callerIdentity.packageName, "GNSS status");
        } else {
            listener.onSvStatusChanged(svCount, prnWithFlags, cn0s, elevations, azimuths, carrierFreqs, basebandCn0s);
        }
    }

    public void onNmeaReceived(final long timestamp, final String nmea) {
        foreach(new RemoteListenerHelper.ListenerOperation() { // from class: com.android.server.location.gnss.-$$Lambda$GnssStatusListenerHelper$R8Iu1GHQIbdGdQkOj_FPKJgKV4Q
            @Override // com.android.server.location.RemoteListenerHelper.ListenerOperation
            public final void execute(IInterface iInterface, CallerIdentity callerIdentity) throws RemoteException {
                this.f$0.lambda$onNmeaReceived$4$GnssStatusListenerHelper(timestamp, nmea, (IGnssStatusListener) iInterface, callerIdentity);
            }
        });
    }

    public /* synthetic */ void lambda$onNmeaReceived$4$GnssStatusListenerHelper(long timestamp, String nmea, IGnssStatusListener listener, CallerIdentity callerIdentity) throws RemoteException {
        if (!hasPermission(this.mContext, callerIdentity)) {
            logPermissionDisabledEventNotReported(TAG, callerIdentity.packageName, "NMEA");
        } else {
            listener.onNmeaReceived(timestamp, nmea);
        }
    }
}

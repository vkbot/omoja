package com.android.server.location;

import android.hardware.contexthub.V1_0.IContexthub;
import android.os.RemoteException;
import android.util.Log;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class IContextHubWrapper {
    private static final String TAG = "IContextHubWrapper";

    public abstract IContexthub getHub();

    public abstract void onSettingChanged(byte b, byte b2);

    public abstract boolean supportsSettingNotifications();

    public static IContextHubWrapper maybeConnectTo1_0() throws RemoteException {
        IContexthub proxy = null;
        try {
            proxy = IContexthub.getService(true);
        } catch (RemoteException e) {
            Log.e(TAG, "RemoteException while attaching to Context Hub HAL proxy", e);
        } catch (NoSuchElementException e2) {
            Log.i(TAG, "Context Hub HAL service not found");
        }
        if (proxy == null) {
            return null;
        }
        ContextHubWrapperV1_0 wrapper = new ContextHubWrapperV1_0(proxy);
        return wrapper;
    }

    public static IContextHubWrapper maybeConnectTo1_1() {
        android.hardware.contexthub.V1_1.IContexthub proxy = null;
        try {
            proxy = android.hardware.contexthub.V1_1.IContexthub.getService(true);
        } catch (RemoteException e) {
            Log.e(TAG, "RemoteException while attaching to Context Hub HAL proxy", e);
        } catch (NoSuchElementException e2) {
            Log.i(TAG, "Context Hub HAL service not found");
        }
        if (proxy == null) {
            return null;
        }
        ContextHubWrapperV1_1 wrapper = new ContextHubWrapperV1_1(proxy);
        return wrapper;
    }

    private static class ContextHubWrapperV1_0 extends IContextHubWrapper {
        private IContexthub mHub;

        ContextHubWrapperV1_0(IContexthub hub) {
            this.mHub = hub;
        }

        @Override // com.android.server.location.IContextHubWrapper
        public IContexthub getHub() {
            return this.mHub;
        }

        @Override // com.android.server.location.IContextHubWrapper
        public boolean supportsSettingNotifications() {
            return false;
        }

        @Override // com.android.server.location.IContextHubWrapper
        public void onSettingChanged(byte setting, byte newValue) {
        }
    }

    private static class ContextHubWrapperV1_1 extends IContextHubWrapper {
        private android.hardware.contexthub.V1_1.IContexthub mHub;

        ContextHubWrapperV1_1(android.hardware.contexthub.V1_1.IContexthub hub) {
            this.mHub = hub;
        }

        @Override // com.android.server.location.IContextHubWrapper
        public IContexthub getHub() {
            return this.mHub;
        }

        @Override // com.android.server.location.IContextHubWrapper
        public boolean supportsSettingNotifications() {
            return true;
        }

        @Override // com.android.server.location.IContextHubWrapper
        public void onSettingChanged(byte setting, byte newValue) {
            try {
                this.mHub.onSettingChanged(setting, newValue);
            } catch (RemoteException e) {
                Log.e(IContextHubWrapper.TAG, "Failed to send setting change to Contexthub", e);
            }
        }
    }
}

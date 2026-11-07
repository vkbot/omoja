package com.android.server.wm;

import android.content.res.Configuration;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.view.IDisplayWindowListener;

/* JADX INFO: loaded from: classes2.dex */
class DisplayWindowListenerController {
    RemoteCallbackList<IDisplayWindowListener> mDisplayListeners = new RemoteCallbackList<>();
    private final WindowManagerService mService;

    DisplayWindowListenerController(WindowManagerService service) {
        this.mService = service;
    }

    void registerListener(IDisplayWindowListener listener) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mDisplayListeners.register(listener);
                for (int i = 0; i < this.mService.mAtmService.mRootWindowContainer.getChildCount(); i++) {
                    try {
                        DisplayContent d = (DisplayContent) this.mService.mAtmService.mRootWindowContainer.getChildAt(i);
                        listener.onDisplayAdded(d.mDisplayId);
                    } catch (RemoteException e) {
                    }
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    void unregisterListener(IDisplayWindowListener listener) {
        this.mDisplayListeners.unregister(listener);
    }

    void dispatchDisplayAdded(DisplayContent display) {
        int count = this.mDisplayListeners.beginBroadcast();
        for (int i = 0; i < count; i++) {
            try {
                this.mDisplayListeners.getBroadcastItem(i).onDisplayAdded(display.mDisplayId);
            } catch (RemoteException e) {
            }
        }
        this.mDisplayListeners.finishBroadcast();
    }

    void dispatchDisplayChanged(DisplayContent display, Configuration newConfig) {
        boolean isInHierarchy = false;
        for (int i = 0; i < display.getParent().getChildCount(); i++) {
            if (display.getParent().getChildAt(i) == display) {
                isInHierarchy = true;
            }
        }
        if (!isInHierarchy) {
            return;
        }
        int count = this.mDisplayListeners.beginBroadcast();
        for (int i2 = 0; i2 < count; i2++) {
            try {
                this.mDisplayListeners.getBroadcastItem(i2).onDisplayConfigurationChanged(display.getDisplayId(), newConfig);
            } catch (RemoteException e) {
            }
        }
        this.mDisplayListeners.finishBroadcast();
    }

    void dispatchDisplayRemoved(DisplayContent display) {
        int count = this.mDisplayListeners.beginBroadcast();
        for (int i = 0; i < count; i++) {
            try {
                this.mDisplayListeners.getBroadcastItem(i).onDisplayRemoved(display.mDisplayId);
            } catch (RemoteException e) {
            }
        }
        this.mDisplayListeners.finishBroadcast();
    }

    void dispatchFixedRotationStarted(DisplayContent display, int newRotation) {
        int count = this.mDisplayListeners.beginBroadcast();
        for (int i = 0; i < count; i++) {
            try {
                this.mDisplayListeners.getBroadcastItem(i).onFixedRotationStarted(display.mDisplayId, newRotation);
            } catch (RemoteException e) {
            }
        }
        this.mDisplayListeners.finishBroadcast();
    }

    void dispatchFixedRotationFinished(DisplayContent display) {
        int count = this.mDisplayListeners.beginBroadcast();
        for (int i = 0; i < count; i++) {
            try {
                this.mDisplayListeners.getBroadcastItem(i).onFixedRotationFinished(display.mDisplayId);
            } catch (RemoteException e) {
            }
        }
        this.mDisplayListeners.finishBroadcast();
    }
}

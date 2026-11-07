package com.android.server.wm;

import android.os.IBinder;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.Slog;
import android.view.IWindow;
import android.view.InputApplicationHandle;
import android.view.InputChannel;

/* JADX INFO: loaded from: classes2.dex */
class EmbeddedWindowController {
    private static final String TAG = "WindowManager";
    private final ActivityTaskManagerService mAtmService;
    private final Object mGlobalLock;
    private ArrayMap<IBinder, EmbeddedWindow> mWindows = new ArrayMap<>();

    EmbeddedWindowController(ActivityTaskManagerService atmService) {
        this.mAtmService = atmService;
        this.mGlobalLock = atmService.getGlobalLock();
    }

    void add(final IBinder inputToken, EmbeddedWindow window) {
        try {
            this.mWindows.put(inputToken, window);
            updateProcessController(window);
            window.mClient.asBinder().linkToDeath(new IBinder.DeathRecipient() { // from class: com.android.server.wm.-$$Lambda$EmbeddedWindowController$Q0HHIdTKm8MX4DsCYgzZ2UOUXPQ
                @Override // android.os.IBinder.DeathRecipient
                public final void binderDied() {
                    this.f$0.lambda$add$0$EmbeddedWindowController(inputToken);
                }
            }, 0);
        } catch (RemoteException e) {
            this.mWindows.remove(inputToken);
        }
    }

    public /* synthetic */ void lambda$add$0$EmbeddedWindowController(IBinder inputToken) {
        synchronized (this.mGlobalLock) {
            this.mWindows.remove(inputToken);
        }
    }

    private void updateProcessController(EmbeddedWindow window) {
        if (window.mHostActivityRecord == null) {
            return;
        }
        WindowProcessController processController = this.mAtmService.getProcessController(window.mOwnerPid, window.mOwnerUid);
        if (processController == null) {
            Slog.w(TAG, "Could not find the embedding process.");
        } else {
            processController.addHostActivity(window.mHostActivityRecord);
        }
    }

    WindowState getHostWindow(IBinder inputToken) {
        EmbeddedWindow embeddedWindow = this.mWindows.get(inputToken);
        if (embeddedWindow != null) {
            return embeddedWindow.mHostWindowState;
        }
        return null;
    }

    void remove(IWindow client) {
        for (int i = this.mWindows.size() - 1; i >= 0; i--) {
            if (this.mWindows.valueAt(i).mClient.asBinder() == client.asBinder()) {
                this.mWindows.removeAt(i).onRemoved();
                return;
            }
        }
    }

    void onWindowRemoved(WindowState host) {
        for (int i = this.mWindows.size() - 1; i >= 0; i--) {
            if (this.mWindows.valueAt(i).mHostWindowState == host) {
                this.mWindows.removeAt(i).onRemoved();
            }
        }
    }

    EmbeddedWindow get(IBinder inputToken) {
        return this.mWindows.get(inputToken);
    }

    void onActivityRemoved(ActivityRecord activityRecord) {
        WindowProcessController processController;
        for (int i = this.mWindows.size() - 1; i >= 0; i--) {
            EmbeddedWindow window = this.mWindows.valueAt(i);
            if (window.mHostActivityRecord == activityRecord && (processController = this.mAtmService.getProcessController(window.mOwnerPid, window.mOwnerUid)) != null) {
                processController.removeHostActivity(activityRecord);
            }
        }
    }

    static class EmbeddedWindow {
        final IWindow mClient;
        final ActivityRecord mHostActivityRecord;
        final WindowState mHostWindowState;
        InputChannel mInputChannel;
        final int mOwnerPid;
        final int mOwnerUid;
        final int mWindowType;
        final WindowManagerService mWmService;

        EmbeddedWindow(WindowManagerService service, IWindow clientToken, WindowState hostWindowState, int ownerUid, int ownerPid, int windowType) {
            this.mWmService = service;
            this.mClient = clientToken;
            this.mHostWindowState = hostWindowState;
            this.mHostActivityRecord = hostWindowState != null ? hostWindowState.mActivityRecord : null;
            this.mOwnerUid = ownerUid;
            this.mOwnerPid = ownerPid;
            this.mWindowType = windowType;
        }

        String getName() {
            WindowState windowState = this.mHostWindowState;
            String hostWindowName = windowState != null ? windowState.getWindowTag().toString() : "Internal";
            return "EmbeddedWindow{ u" + UserHandle.getUserId(this.mOwnerUid) + " " + hostWindowName + "}";
        }

        InputApplicationHandle getApplicationHandle() {
            WindowState windowState = this.mHostWindowState;
            if (windowState == null || windowState.mInputWindowHandle.inputApplicationHandle == null) {
                return null;
            }
            return new InputApplicationHandle(this.mHostWindowState.mInputWindowHandle.inputApplicationHandle);
        }

        InputChannel openInputChannel() {
            String name = getName();
            InputChannel[] inputChannels = InputChannel.openInputChannelPair(name);
            this.mInputChannel = inputChannels[0];
            InputChannel clientChannel = inputChannels[1];
            this.mWmService.mInputManager.registerInputChannel(this.mInputChannel);
            if (this.mInputChannel.getToken() != clientChannel.getToken()) {
                throw new IllegalStateException("Client and Server tokens are expected tobe the same");
            }
            return clientChannel;
        }

        void onRemoved() {
            if (this.mInputChannel != null) {
                this.mWmService.mInputManager.unregisterInputChannel(this.mInputChannel);
                this.mInputChannel.dispose();
                this.mInputChannel = null;
            }
        }
    }
}

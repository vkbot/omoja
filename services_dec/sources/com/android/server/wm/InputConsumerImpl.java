package com.android.server.wm;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Binder;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.os.UserHandle;
import android.view.InputApplicationHandle;
import android.view.InputChannel;
import android.view.InputWindowHandle;
import android.view.SurfaceControl;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
class InputConsumerImpl implements IBinder.DeathRecipient {
    final InputApplicationHandle mApplicationHandle;
    final InputChannel mClientChannel;
    final int mClientPid;
    final UserHandle mClientUser;
    final SurfaceControl mInputSurface;
    final String mName;
    final InputChannel mServerChannel;
    final WindowManagerService mService;
    final IBinder mToken;
    final InputWindowHandle mWindowHandle;
    Rect mTmpClipRect = new Rect();
    private final Rect mTmpRect = new Rect();
    private final Point mOldPosition = new Point();
    private final Rect mOldWindowCrop = new Rect();

    InputConsumerImpl(WindowManagerService service, IBinder token, String name, InputChannel inputChannel, int clientPid, UserHandle clientUser, int displayId) {
        this.mService = service;
        this.mToken = token;
        this.mName = name;
        this.mClientPid = clientPid;
        this.mClientUser = clientUser;
        InputChannel[] channels = InputChannel.openInputChannelPair(name);
        this.mServerChannel = channels[0];
        if (inputChannel != null) {
            channels[1].transferTo(inputChannel);
            channels[1].dispose();
            this.mClientChannel = inputChannel;
        } else {
            this.mClientChannel = channels[1];
        }
        this.mService.mInputManager.registerInputChannel(this.mServerChannel);
        this.mApplicationHandle = new InputApplicationHandle(new Binder(), name, 5000000000L);
        InputWindowHandle inputWindowHandle = new InputWindowHandle(this.mApplicationHandle, displayId);
        this.mWindowHandle = inputWindowHandle;
        inputWindowHandle.name = name;
        this.mWindowHandle.token = this.mServerChannel.getToken();
        this.mWindowHandle.layoutParamsType = 2022;
        this.mWindowHandle.layoutParamsFlags = 0;
        this.mWindowHandle.dispatchingTimeoutNanos = 5000000000L;
        this.mWindowHandle.visible = true;
        this.mWindowHandle.canReceiveKeys = false;
        this.mWindowHandle.hasFocus = false;
        this.mWindowHandle.hasWallpaper = false;
        this.mWindowHandle.paused = false;
        this.mWindowHandle.ownerPid = Process.myPid();
        this.mWindowHandle.ownerUid = Process.myUid();
        this.mWindowHandle.inputFeatures = 0;
        this.mWindowHandle.scaleFactor = 1.0f;
        this.mWindowHandle.trustedOverlay = true;
        WindowManagerService windowManagerService = this.mService;
        this.mInputSurface = windowManagerService.makeSurfaceBuilder(windowManagerService.mRoot.getDisplayContent(displayId).getSession()).setContainerLayer().setName("Input Consumer " + name).setCallsite("InputConsumerImpl").build();
    }

    void linkToDeathRecipient() {
        IBinder iBinder = this.mToken;
        if (iBinder == null) {
            return;
        }
        try {
            iBinder.linkToDeath(this, 0);
        } catch (RemoteException e) {
        }
    }

    void unlinkFromDeathRecipient() {
        IBinder iBinder = this.mToken;
        if (iBinder == null) {
            return;
        }
        iBinder.unlinkToDeath(this, 0);
    }

    void layout(SurfaceControl.Transaction t, int dw, int dh) {
        this.mTmpRect.set(0, 0, dw, dh);
        layout(t, this.mTmpRect);
    }

    void layout(SurfaceControl.Transaction t, Rect r) {
        this.mTmpClipRect.set(0, 0, r.width(), r.height());
        if (this.mOldPosition.equals(r.left, r.top) && this.mOldWindowCrop.equals(this.mTmpClipRect)) {
            return;
        }
        t.setPosition(this.mInputSurface, r.left, r.top);
        t.setWindowCrop(this.mInputSurface, this.mTmpClipRect);
        this.mOldPosition.set(r.left, r.top);
        this.mOldWindowCrop.set(this.mTmpClipRect);
    }

    void hide(SurfaceControl.Transaction t) {
        t.hide(this.mInputSurface);
    }

    void show(SurfaceControl.Transaction t, WindowState w) {
        t.show(this.mInputSurface);
        t.setInputWindowInfo(this.mInputSurface, this.mWindowHandle);
        t.setRelativeLayer(this.mInputSurface, w.getSurfaceControl(), 1);
    }

    void show(SurfaceControl.Transaction t, int layer) {
        t.show(this.mInputSurface);
        t.setInputWindowInfo(this.mInputSurface, this.mWindowHandle);
        t.setLayer(this.mInputSurface, layer);
    }

    void reparent(SurfaceControl.Transaction t, WindowContainer wc) {
        t.reparent(this.mInputSurface, wc.getSurfaceControl());
    }

    void disposeChannelsLw(SurfaceControl.Transaction t) {
        this.mService.mInputManager.unregisterInputChannel(this.mServerChannel);
        this.mClientChannel.dispose();
        this.mServerChannel.dispose();
        t.remove(this.mInputSurface);
        unlinkFromDeathRecipient();
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        synchronized (this.mService.getWindowManagerLock()) {
            InputMonitor inputMonitor = this.mService.mRoot.getDisplayContent(this.mWindowHandle.displayId).getInputMonitor();
            inputMonitor.destroyInputConsumer(this.mName);
            unlinkFromDeathRecipient();
        }
    }

    void dump(PrintWriter pw, String name, String prefix) {
        pw.println(prefix + "  name=" + name + " pid=" + this.mClientPid + " user=" + this.mClientUser);
    }
}

package com.android.server.media;

import android.media.MediaController2;
import android.media.Session2CommandGroup;
import android.media.Session2Token;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.Looper;
import android.os.ResultReceiver;
import android.os.UserHandle;
import android.util.Log;
import android.view.KeyEvent;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class MediaSession2Record implements MediaSessionRecordImpl {
    private final MediaController2 mController;
    private final HandlerExecutor mHandlerExecutor;
    private boolean mIsClosed;
    private boolean mIsConnected;
    private final Object mLock = new Object();
    private int mPolicies;
    private final MediaSessionService mService;
    private final Session2Token mSessionToken;
    private static final String TAG = "MediaSession2Record";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);

    public MediaSession2Record(Session2Token sessionToken, MediaSessionService service, Looper handlerLooper, int policies) {
        this.mSessionToken = sessionToken;
        this.mService = service;
        this.mHandlerExecutor = new HandlerExecutor(new Handler(handlerLooper));
        this.mController = new MediaController2.Builder(service.getContext(), sessionToken).setControllerCallback(this.mHandlerExecutor, new Controller2Callback()).build();
        this.mPolicies = policies;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public String getPackageName() {
        return this.mSessionToken.getPackageName();
    }

    public Session2Token getSession2Token() {
        return this.mSessionToken;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public int getUid() {
        return this.mSessionToken.getUid();
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public int getPid() {
        return 0;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public int getUserId() {
        return UserHandle.getUserHandleForUid(this.mSessionToken.getUid()).getIdentifier();
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public boolean isSystemPriority() {
        return false;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public void adjustVolume(String packageName, String opPackageName, int pid, int uid, boolean asSystemService, int direction, int flags, boolean useSuggested) {
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public boolean isActive() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mIsConnected;
        }
        return z;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public boolean checkPlaybackActiveState(boolean expected) {
        boolean z;
        synchronized (this.mLock) {
            z = this.mIsConnected && this.mController.isPlaybackActive() == expected;
        }
        return z;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public boolean isPlaybackTypeLocal() {
        return true;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl, java.lang.AutoCloseable
    public void close() {
        synchronized (this.mLock) {
            this.mIsClosed = true;
            this.mController.close();
        }
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public boolean isClosed() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mIsClosed;
        }
        return z;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public boolean sendMediaButton(String packageName, int pid, int uid, boolean asSystemService, KeyEvent ke, int sequenceId, ResultReceiver cb) {
        return false;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public int getSessionPolicies() {
        int i;
        synchronized (this.mLock) {
            i = this.mPolicies;
        }
        return i;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public void setSessionPolicies(int policies) {
        synchronized (this.mLock) {
            this.mPolicies = policies;
        }
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public void dump(PrintWriter pw, String prefix) {
        pw.println(prefix + "token=" + this.mSessionToken);
        pw.println(prefix + "controller=" + this.mController);
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        sb.append("  ");
        String indent = sb.toString();
        pw.println(indent + "playbackActive=" + this.mController.isPlaybackActive());
    }

    public String toString() {
        return getPackageName() + " (userId=" + getUserId() + ")";
    }

    private class Controller2Callback extends MediaController2.ControllerCallback {
        private Controller2Callback() {
        }

        @Override // android.media.MediaController2.ControllerCallback
        public void onConnected(MediaController2 controller, Session2CommandGroup allowedCommands) {
            if (MediaSession2Record.DEBUG) {
                Log.d(MediaSession2Record.TAG, "connected to " + MediaSession2Record.this.mSessionToken + ", allowed=" + allowedCommands);
            }
            synchronized (MediaSession2Record.this.mLock) {
                MediaSession2Record.this.mIsConnected = true;
            }
            MediaSession2Record.this.mService.onSessionActiveStateChanged(MediaSession2Record.this);
        }

        @Override // android.media.MediaController2.ControllerCallback
        public void onDisconnected(MediaController2 controller) {
            if (MediaSession2Record.DEBUG) {
                Log.d(MediaSession2Record.TAG, "disconnected from " + MediaSession2Record.this.mSessionToken);
            }
            synchronized (MediaSession2Record.this.mLock) {
                MediaSession2Record.this.mIsConnected = false;
            }
            MediaSession2Record.this.mService.onSessionDied(MediaSession2Record.this);
        }

        @Override // android.media.MediaController2.ControllerCallback
        public void onPlaybackActiveChanged(MediaController2 controller, boolean playbackActive) {
            if (MediaSession2Record.DEBUG) {
                Log.d(MediaSession2Record.TAG, "playback active changed, " + MediaSession2Record.this.mSessionToken + ", active=" + playbackActive);
            }
            MediaSession2Record.this.mService.onSessionPlaybackStateChanged(MediaSession2Record.this, playbackActive);
        }
    }
}

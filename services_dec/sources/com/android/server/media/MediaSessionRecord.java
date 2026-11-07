package com.android.server.media;

import android.app.PendingIntent;
import android.content.ContentProvider;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ParceledListSlice;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.AudioManagerInternal;
import android.media.AudioSystem;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.session.ISession;
import android.media.session.ISessionCallback;
import android.media.session.ISessionController;
import android.media.session.ISessionControllerCallback;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.Slog;
import android.view.KeyEvent;
import com.android.server.LocalServices;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.uri.UriGrantsManagerInternal;
import com.android.server.wm.ActivityTaskManagerInternal;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MediaSessionRecord implements IBinder.DeathRecipient, MediaSessionRecordImpl {
    private static final int OPTIMISTIC_VOLUME_TIMEOUT = 1000;
    private AudioManager mAudioManager;
    private final Context mContext;
    private Bundle mExtras;
    private long mFlags;
    private final MessageHandler mHandler;
    private PendingIntent mLaunchIntent;
    private MediaButtonReceiverHolder mMediaButtonReceiverHolder;
    private MediaMetadata mMetadata;
    private String mMetadataDescription;
    private final int mOwnerPid;
    private final int mOwnerUid;
    private final String mPackageName;
    private PlaybackState mPlaybackState;
    private int mPolicies;
    private List<MediaSession.QueueItem> mQueue;
    private CharSequence mQueueTitle;
    private int mRatingType;
    private final MediaSessionService mService;
    private final SessionCb mSessionCb;
    private final Bundle mSessionInfo;
    private final MediaSession.Token mSessionToken;
    private final String mTag;
    private final int mUserId;
    private String mVolumeControlId;
    private static final String[] ART_URIS = {"android.media.metadata.ALBUM_ART_URI", "android.media.metadata.ART_URI", "android.media.metadata.DISPLAY_ICON_URI"};
    private static final String TAG = "MediaSessionRecord";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private static final List<Integer> ALWAYS_PRIORITY_STATES = Arrays.asList(4, 5, 9, 10);
    private static final List<Integer> TRANSITION_PRIORITY_STATES = Arrays.asList(6, 8, 3);
    private static final AudioAttributes DEFAULT_ATTRIBUTES = new AudioAttributes.Builder().setUsage(1).build();
    private final Object mLock = new Object();
    private final ArrayList<ISessionControllerCallbackHolder> mControllerCallbackHolders = new ArrayList<>();
    private int mVolumeType = 1;
    private int mVolumeControlType = 2;
    private int mMaxVolume = 0;
    private int mCurrentVolume = 0;
    private int mOptimisticVolume = -1;
    private boolean mIsActive = false;
    private boolean mDestroyed = false;
    private long mDuration = -1;
    private final Runnable mClearOptimisticVolumeRunnable = new Runnable() { // from class: com.android.server.media.MediaSessionRecord.3
        @Override // java.lang.Runnable
        public void run() {
            boolean needUpdate = MediaSessionRecord.this.mOptimisticVolume != MediaSessionRecord.this.mCurrentVolume;
            MediaSessionRecord.this.mOptimisticVolume = -1;
            if (needUpdate) {
                MediaSessionRecord.this.pushVolumeUpdate();
            }
        }
    };
    private final ControllerStub mController = new ControllerStub();
    private final SessionStub mSession = new SessionStub();
    private AudioManagerInternal mAudioManagerInternal = (AudioManagerInternal) LocalServices.getService(AudioManagerInternal.class);
    private AudioAttributes mAudioAttrs = DEFAULT_ATTRIBUTES;
    private final UriGrantsManagerInternal mUgmInternal = (UriGrantsManagerInternal) LocalServices.getService(UriGrantsManagerInternal.class);

    private static int getVolumeStream(AudioAttributes attr) {
        if (attr == null) {
            return DEFAULT_ATTRIBUTES.getVolumeControlStream();
        }
        int stream = attr.getVolumeControlStream();
        if (stream == Integer.MIN_VALUE) {
            return DEFAULT_ATTRIBUTES.getVolumeControlStream();
        }
        return stream;
    }

    public MediaSessionRecord(int ownerPid, int ownerUid, int userId, String ownerPackageName, ISessionCallback cb, String tag, Bundle sessionInfo, MediaSessionService service, Looper handlerLooper, int policies) throws RemoteException {
        this.mOwnerPid = ownerPid;
        this.mOwnerUid = ownerUid;
        this.mUserId = userId;
        this.mPackageName = ownerPackageName;
        this.mTag = tag;
        this.mSessionInfo = sessionInfo;
        this.mSessionToken = new MediaSession.Token(ownerUid, this.mController);
        this.mSessionCb = new SessionCb(cb);
        this.mService = service;
        this.mContext = service.getContext();
        this.mHandler = new MessageHandler(handlerLooper);
        this.mAudioManager = (AudioManager) this.mContext.getSystemService("audio");
        this.mPolicies = policies;
        this.mSessionCb.mCb.asBinder().linkToDeath(this, 0);
    }

    public ISession getSessionBinder() {
        return this.mSession;
    }

    public MediaSession.Token getSessionToken() {
        return this.mSessionToken;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public String getPackageName() {
        return this.mPackageName;
    }

    public MediaButtonReceiverHolder getMediaButtonReceiver() {
        return this.mMediaButtonReceiverHolder;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public int getUid() {
        return this.mOwnerUid;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public int getPid() {
        return this.mOwnerPid;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public int getUserId() {
        return this.mUserId;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public boolean isSystemPriority() {
        return (this.mFlags & 65536) != 0;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public void adjustVolume(String packageName, String opPackageName, int pid, int uid, boolean asSystemService, int direction, int flags, boolean useSuggested) {
        int previousFlagPlaySound = flags & 4;
        int flags2 = (checkPlaybackActiveState(true) || isSystemPriority()) ? flags & (-5) : flags;
        if (this.mVolumeType == 1) {
            int stream = getVolumeStream(this.mAudioAttrs);
            postAdjustLocalVolume(stream, direction, flags2, opPackageName, pid, uid, asSystemService, useSuggested, previousFlagPlaySound);
            return;
        }
        if (this.mVolumeControlType == 0) {
            return;
        }
        if (direction == 101 || direction == -100 || direction == 100) {
            Log.w(TAG, "Muting remote playback is not supported");
            return;
        }
        if (DEBUG) {
            Log.w(TAG, "adjusting volume, pkg=" + packageName + ", asSystemService=" + asSystemService + ", dir=" + direction);
        }
        this.mSessionCb.adjustVolume(packageName, pid, uid, asSystemService, direction);
        int volumeBefore = this.mOptimisticVolume;
        if (volumeBefore < 0) {
            volumeBefore = this.mCurrentVolume;
        }
        int i = volumeBefore + direction;
        this.mOptimisticVolume = i;
        this.mOptimisticVolume = Math.max(0, Math.min(i, this.mMaxVolume));
        this.mHandler.removeCallbacks(this.mClearOptimisticVolumeRunnable);
        this.mHandler.postDelayed(this.mClearOptimisticVolumeRunnable, 1000L);
        if (volumeBefore != this.mOptimisticVolume) {
            pushVolumeUpdate();
        }
        this.mService.notifyRemoteVolumeChanged(flags2, this);
        if (DEBUG) {
            Log.d(TAG, "Adjusted optimistic volume to " + this.mOptimisticVolume + " max is " + this.mMaxVolume);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVolumeTo(String packageName, final String opPackageName, final int pid, final int uid, final int value, final int flags) {
        if (this.mVolumeType == 1) {
            final int stream = getVolumeStream(this.mAudioAttrs);
            this.mHandler.post(new Runnable() { // from class: com.android.server.media.MediaSessionRecord.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        MediaSessionRecord.this.mAudioManagerInternal.setStreamVolumeForUid(stream, value, flags, opPackageName, uid, pid);
                    } catch (IllegalArgumentException | SecurityException e) {
                        Log.e(MediaSessionRecord.TAG, "Cannot set volume: stream=" + stream + ", value=" + value + ", flags=" + flags, e);
                    }
                }
            });
            return;
        }
        if (this.mVolumeControlType != 2) {
            return;
        }
        int value2 = Math.max(0, Math.min(value, this.mMaxVolume));
        this.mSessionCb.setVolumeTo(packageName, pid, uid, value2);
        int volumeBefore = this.mOptimisticVolume;
        if (volumeBefore < 0) {
            volumeBefore = this.mCurrentVolume;
        }
        this.mOptimisticVolume = Math.max(0, Math.min(value2, this.mMaxVolume));
        this.mHandler.removeCallbacks(this.mClearOptimisticVolumeRunnable);
        this.mHandler.postDelayed(this.mClearOptimisticVolumeRunnable, 1000L);
        if (volumeBefore != this.mOptimisticVolume) {
            pushVolumeUpdate();
        }
        this.mService.notifyRemoteVolumeChanged(flags, this);
        if (DEBUG) {
            Log.d(TAG, "Set optimistic volume to " + this.mOptimisticVolume + " max is " + this.mMaxVolume);
        }
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public boolean isActive() {
        return this.mIsActive && !this.mDestroyed;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public boolean checkPlaybackActiveState(boolean expected) {
        String str;
        if (DEBUG) {
            StringBuilder sb = new StringBuilder();
            sb.append("checkPlaybackActiveState ");
            sb.append(this);
            if (this.mPlaybackState == null) {
                str = " null";
            } else {
                str = " state " + this.mPlaybackState.getState();
            }
            sb.append(str);
            Log.d(TAG, sb.toString());
        }
        PlaybackState playbackState = this.mPlaybackState;
        return playbackState != null && MediaSession.isActiveState(playbackState.getState()) == expected;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public boolean isPlaybackTypeLocal() {
        return this.mVolumeType == 1;
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        this.mService.onSessionDied(this);
    }

    @Override // com.android.server.media.MediaSessionRecordImpl, java.lang.AutoCloseable
    public void close() {
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                return;
            }
            this.mSessionCb.mCb.asBinder().unlinkToDeath(this, 0);
            this.mDestroyed = true;
            this.mPlaybackState = null;
            this.mHandler.post(9);
        }
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public boolean isClosed() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mDestroyed;
        }
        return z;
    }

    @Override // com.android.server.media.MediaSessionRecordImpl
    public boolean sendMediaButton(String packageName, int pid, int uid, boolean asSystemService, KeyEvent ke, int sequenceId, ResultReceiver cb) {
        return this.mSessionCb.sendMediaButton(packageName, pid, uid, asSystemService, ke, sequenceId, cb);
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
        pw.println(prefix + this.mTag + " " + this);
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        sb.append("  ");
        String indent = sb.toString();
        pw.println(indent + "ownerPid=" + this.mOwnerPid + ", ownerUid=" + this.mOwnerUid + ", userId=" + this.mUserId);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(indent);
        sb2.append("package=");
        sb2.append(this.mPackageName);
        pw.println(sb2.toString());
        pw.println(indent + "launchIntent=" + this.mLaunchIntent);
        pw.println(indent + "mediaButtonReceiver=" + this.mMediaButtonReceiverHolder);
        pw.println(indent + "active=" + this.mIsActive);
        pw.println(indent + "flags=" + this.mFlags);
        pw.println(indent + "rating type=" + this.mRatingType);
        pw.println(indent + "controllers: " + this.mControllerCallbackHolders.size());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(indent);
        sb3.append("state=");
        PlaybackState playbackState = this.mPlaybackState;
        sb3.append(playbackState == null ? null : playbackState.toString());
        pw.println(sb3.toString());
        pw.println(indent + "audioAttrs=" + this.mAudioAttrs);
        pw.println(indent + "volumeType=" + this.mVolumeType + ", controlType=" + this.mVolumeControlType + ", max=" + this.mMaxVolume + ", current=" + this.mCurrentVolume);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(indent);
        sb4.append("metadata: ");
        sb4.append(this.mMetadataDescription);
        pw.println(sb4.toString());
        StringBuilder sb5 = new StringBuilder();
        sb5.append(indent);
        sb5.append("queueTitle=");
        sb5.append((Object) this.mQueueTitle);
        sb5.append(", size=");
        List<MediaSession.QueueItem> list = this.mQueue;
        sb5.append(list == null ? 0 : list.size());
        pw.println(sb5.toString());
    }

    public String toString() {
        return this.mPackageName + SliceClientPermissions.SliceAuthority.DELIMITER + this.mTag + " (userId=" + this.mUserId + ")";
    }

    private void postAdjustLocalVolume(final int stream, final int direction, final int flags, String callingOpPackageName, int callingPid, int callingUid, boolean asSystemService, final boolean useSuggested, final int previousFlagPlaySound) {
        String opPackageName;
        int uid;
        int pid;
        if (DEBUG) {
            Log.w(TAG, "adjusting local volume, stream=" + stream + ", dir=" + direction + ", asSystemService=" + asSystemService + ", useSuggested=" + useSuggested);
        }
        if (asSystemService) {
            String opPackageName2 = this.mContext.getOpPackageName();
            opPackageName = opPackageName2;
            uid = 1000;
            pid = Process.myPid();
        } else {
            opPackageName = callingOpPackageName;
            uid = callingUid;
            pid = callingPid;
        }
        final String str = opPackageName;
        final int i = uid;
        final int i2 = pid;
        this.mHandler.post(new Runnable() { // from class: com.android.server.media.MediaSessionRecord.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!useSuggested) {
                        MediaSessionRecord.this.mAudioManagerInternal.adjustStreamVolumeForUid(stream, direction, flags, str, i, i2);
                    } else if (AudioSystem.isStreamActive(stream, 0)) {
                        MediaSessionRecord.this.mAudioManagerInternal.adjustSuggestedStreamVolumeForUid(stream, direction, flags, str, i, i2);
                    } else {
                        MediaSessionRecord.this.mAudioManagerInternal.adjustSuggestedStreamVolumeForUid(Integer.MIN_VALUE, direction, previousFlagPlaySound | flags, str, i, i2);
                    }
                } catch (IllegalArgumentException | SecurityException e) {
                    Log.e(MediaSessionRecord.TAG, "Cannot adjust volume: direction=" + direction + ", stream=" + stream + ", flags=" + flags + ", opPackageName=" + str + ", uid=" + i + ", useSuggested=" + useSuggested + ", previousFlagPlaySound=" + previousFlagPlaySound, e);
                }
            }
        });
    }

    private void logCallbackException(String msg, ISessionControllerCallbackHolder holder, Exception e) {
        Log.v(TAG, msg + ", this=" + this + ", callback package=" + holder.mPackageName + ", exception=" + e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pushPlaybackStateUpdate() {
        synchronized (this.mLock) {
            try {
                if (this.mDestroyed) {
                    return;
                }
                for (int i = this.mControllerCallbackHolders.size() - 1; i >= 0; i--) {
                    ISessionControllerCallbackHolder holder = this.mControllerCallbackHolders.get(i);
                    try {
                        holder.mCallback.onPlaybackStateChanged(this.mPlaybackState);
                    } catch (DeadObjectException e) {
                        this.mControllerCallbackHolders.remove(i);
                        logCallbackException("Removing dead callback in pushPlaybackStateUpdate", holder, e);
                    } catch (RemoteException e2) {
                        logCallbackException("unexpected exception in pushPlaybackStateUpdate", holder, e2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pushMetadataUpdate() {
        synchronized (this.mLock) {
            try {
                if (this.mDestroyed) {
                    return;
                }
                for (int i = this.mControllerCallbackHolders.size() - 1; i >= 0; i--) {
                    ISessionControllerCallbackHolder holder = this.mControllerCallbackHolders.get(i);
                    try {
                        holder.mCallback.onMetadataChanged(this.mMetadata);
                    } catch (DeadObjectException e) {
                        this.mControllerCallbackHolders.remove(i);
                        logCallbackException("Removing dead callback in pushMetadataUpdate", holder, e);
                    } catch (RemoteException e2) {
                        logCallbackException("unexpected exception in pushMetadataUpdate", holder, e2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pushQueueUpdate() {
        synchronized (this.mLock) {
            try {
                if (this.mDestroyed) {
                    return;
                }
                for (int i = this.mControllerCallbackHolders.size() - 1; i >= 0; i--) {
                    ISessionControllerCallbackHolder holder = this.mControllerCallbackHolders.get(i);
                    try {
                        holder.mCallback.onQueueChanged(this.mQueue == null ? null : new ParceledListSlice(this.mQueue));
                    } catch (DeadObjectException e) {
                        this.mControllerCallbackHolders.remove(i);
                        logCallbackException("Removing dead callback in pushQueueUpdate", holder, e);
                    } catch (RemoteException e2) {
                        logCallbackException("unexpected exception in pushQueueUpdate", holder, e2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pushQueueTitleUpdate() {
        synchronized (this.mLock) {
            try {
                if (this.mDestroyed) {
                    return;
                }
                for (int i = this.mControllerCallbackHolders.size() - 1; i >= 0; i--) {
                    ISessionControllerCallbackHolder holder = this.mControllerCallbackHolders.get(i);
                    try {
                        holder.mCallback.onQueueTitleChanged(this.mQueueTitle);
                    } catch (DeadObjectException e) {
                        this.mControllerCallbackHolders.remove(i);
                        logCallbackException("Removing dead callback in pushQueueTitleUpdate", holder, e);
                    } catch (RemoteException e2) {
                        logCallbackException("unexpected exception in pushQueueTitleUpdate", holder, e2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pushExtrasUpdate() {
        synchronized (this.mLock) {
            try {
                if (this.mDestroyed) {
                    return;
                }
                for (int i = this.mControllerCallbackHolders.size() - 1; i >= 0; i--) {
                    ISessionControllerCallbackHolder holder = this.mControllerCallbackHolders.get(i);
                    try {
                        holder.mCallback.onExtrasChanged(this.mExtras);
                    } catch (DeadObjectException e) {
                        this.mControllerCallbackHolders.remove(i);
                        logCallbackException("Removing dead callback in pushExtrasUpdate", holder, e);
                    } catch (RemoteException e2) {
                        logCallbackException("unexpected exception in pushExtrasUpdate", holder, e2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pushVolumeUpdate() {
        synchronized (this.mLock) {
            try {
                if (this.mDestroyed) {
                    return;
                }
                MediaController.PlaybackInfo info = getVolumeAttributes();
                for (int i = this.mControllerCallbackHolders.size() - 1; i >= 0; i--) {
                    ISessionControllerCallbackHolder holder = this.mControllerCallbackHolders.get(i);
                    try {
                        try {
                            holder.mCallback.onVolumeInfoChanged(info);
                        } catch (RemoteException e) {
                            logCallbackException("unexpected exception in pushVolumeUpdate", holder, e);
                        }
                    } catch (DeadObjectException e2) {
                        this.mControllerCallbackHolders.remove(i);
                        logCallbackException("Removing dead callback in pushVolumeUpdate", holder, e2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pushEvent(String event, Bundle data) {
        synchronized (this.mLock) {
            try {
                if (this.mDestroyed) {
                    return;
                }
                for (int i = this.mControllerCallbackHolders.size() - 1; i >= 0; i--) {
                    ISessionControllerCallbackHolder holder = this.mControllerCallbackHolders.get(i);
                    try {
                        holder.mCallback.onEvent(event, data);
                    } catch (DeadObjectException e) {
                        this.mControllerCallbackHolders.remove(i);
                        logCallbackException("Removing dead callback in pushEvent", holder, e);
                    } catch (RemoteException e2) {
                        logCallbackException("unexpected exception in pushEvent", holder, e2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pushSessionDestroyed() {
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                for (int i = this.mControllerCallbackHolders.size() - 1; i >= 0; i--) {
                    ISessionControllerCallbackHolder holder = this.mControllerCallbackHolders.get(i);
                    try {
                        try {
                            holder.mCallback.onSessionDestroyed();
                        } catch (RemoteException e) {
                            logCallbackException("unexpected exception in pushSessionDestroyed", holder, e);
                        }
                    } catch (DeadObjectException e2) {
                        this.mControllerCallbackHolders.remove(i);
                        logCallbackException("Removing dead callback in pushSessionDestroyed", holder, e2);
                    }
                }
                this.mControllerCallbackHolders.clear();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PlaybackState getStateWithUpdatedPosition() {
        long position;
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                return null;
            }
            PlaybackState state = this.mPlaybackState;
            long duration = this.mDuration;
            PlaybackState result = null;
            if (state != null && (state.getState() == 3 || state.getState() == 4 || state.getState() == 5)) {
                long updateTime = state.getLastPositionUpdateTime();
                long currentTime = SystemClock.elapsedRealtime();
                if (updateTime > 0) {
                    long position2 = ((long) (state.getPlaybackSpeed() * (currentTime - updateTime))) + state.getPosition();
                    if (duration >= 0 && position2 > duration) {
                        position = duration;
                    } else if (position2 >= 0) {
                        position = position2;
                    } else {
                        position = 0;
                    }
                    PlaybackState.Builder builder = new PlaybackState.Builder(state);
                    builder.setState(state.getState(), position, state.getPlaybackSpeed(), currentTime);
                    result = builder.build();
                }
            }
            return result == null ? state : result;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getControllerHolderIndexForCb(ISessionControllerCallback cb) {
        IBinder binder = cb.asBinder();
        for (int i = this.mControllerCallbackHolders.size() - 1; i >= 0; i--) {
            if (binder.equals(this.mControllerCallbackHolders.get(i).mCallback.asBinder())) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaController.PlaybackInfo getVolumeAttributes() {
        synchronized (this.mLock) {
            if (this.mVolumeType == 2) {
                int current = this.mOptimisticVolume != -1 ? this.mOptimisticVolume : this.mCurrentVolume;
                return new MediaController.PlaybackInfo(this.mVolumeType, this.mVolumeControlType, this.mMaxVolume, current, this.mAudioAttrs, this.mVolumeControlId);
            }
            int volumeType = this.mVolumeType;
            AudioAttributes attributes = this.mAudioAttrs;
            int stream = getVolumeStream(attributes);
            int max = this.mAudioManager.getStreamMaxVolume(stream);
            int current2 = this.mAudioManager.getStreamVolume(stream);
            return new MediaController.PlaybackInfo(volumeType, 2, max, current2, attributes, null);
        }
    }

    private final class SessionStub extends ISession.Stub {
        private SessionStub() {
        }

        public void destroySession() throws RemoteException {
            long token = Binder.clearCallingIdentity();
            try {
                MediaSessionRecord.this.mService.onSessionDied(MediaSessionRecord.this);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void sendEvent(String event, Bundle data) throws RemoteException {
            MediaSessionRecord.this.mHandler.post(6, event, data == null ? null : new Bundle(data));
        }

        public ISessionController getController() throws RemoteException {
            return MediaSessionRecord.this.mController;
        }

        public void setActive(boolean active) throws RemoteException {
            MediaSessionRecord.this.mIsActive = active;
            long token = Binder.clearCallingIdentity();
            try {
                MediaSessionRecord.this.mService.onSessionActiveStateChanged(MediaSessionRecord.this);
                Binder.restoreCallingIdentity(token);
                MediaSessionRecord.this.mHandler.post(7);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void setFlags(int flags) throws RemoteException {
            if ((flags & 65536) != 0) {
                int pid = Binder.getCallingPid();
                int uid = Binder.getCallingUid();
                MediaSessionRecord.this.mService.enforcePhoneStatePermission(pid, uid);
            }
            MediaSessionRecord.this.mFlags = flags;
            if ((65536 & flags) != 0) {
                long token = Binder.clearCallingIdentity();
                try {
                    MediaSessionRecord.this.mService.setGlobalPrioritySession(MediaSessionRecord.this);
                    Binder.restoreCallingIdentity(token);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(token);
                    throw th;
                }
            }
            MediaSessionRecord.this.mHandler.post(7);
        }

        public void setMediaButtonReceiver(PendingIntent pi) throws RemoteException {
            long token = Binder.clearCallingIdentity();
            try {
                if ((MediaSessionRecord.this.mPolicies & 1) != 0) {
                    return;
                }
                MediaSessionRecord.this.mMediaButtonReceiverHolder = MediaButtonReceiverHolder.create(MediaSessionRecord.this.mContext, MediaSessionRecord.this.mUserId, pi);
                MediaSessionRecord.this.mService.onMediaButtonReceiverChanged(MediaSessionRecord.this);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void setLaunchPendingIntent(PendingIntent pi) throws RemoteException {
            MediaSessionRecord.this.mLaunchIntent = pi;
        }

        public void setMetadata(MediaMetadata metadata, long duration, String metadataDescription) throws RemoteException {
            synchronized (MediaSessionRecord.this.mLock) {
                MediaSessionRecord.this.mDuration = duration;
                MediaSessionRecord.this.mMetadataDescription = metadataDescription;
                MediaSessionRecord.this.mMetadata = sanitizeMediaMetadata(metadata);
            }
            MediaSessionRecord.this.mHandler.post(1);
        }

        private MediaMetadata sanitizeMediaMetadata(MediaMetadata metadata) {
            if (metadata == null) {
                return null;
            }
            MediaMetadata.Builder metadataBuilder = new MediaMetadata.Builder(metadata);
            for (String key : MediaSessionRecord.ART_URIS) {
                String uriString = metadata.getString(key);
                if (!TextUtils.isEmpty(uriString)) {
                    Uri uri = Uri.parse(uriString);
                    if (ActivityTaskManagerInternal.ASSIST_KEY_CONTENT.equals(uri.getScheme())) {
                        try {
                            MediaSessionRecord.this.mUgmInternal.checkGrantUriPermission(MediaSessionRecord.this.getUid(), MediaSessionRecord.this.getPackageName(), ContentProvider.getUriWithoutUserId(uri), 1, ContentProvider.getUserIdFromUri(uri, MediaSessionRecord.this.getUserId()));
                        } catch (SecurityException e) {
                            metadataBuilder.putString(key, null);
                        }
                    }
                }
            }
            MediaMetadata sanitizedMetadata = metadataBuilder.build();
            sanitizedMetadata.size();
            return sanitizedMetadata;
        }

        public void setPlaybackState(PlaybackState state) throws RemoteException {
            int oldState;
            boolean shouldUpdatePriority = false;
            if (MediaSessionRecord.this.mPlaybackState != null) {
                oldState = MediaSessionRecord.this.mPlaybackState.getState();
            } else {
                oldState = 0;
            }
            int newState = state == null ? 0 : state.getState();
            if (MediaSessionRecord.ALWAYS_PRIORITY_STATES.contains(Integer.valueOf(newState)) || (!MediaSessionRecord.TRANSITION_PRIORITY_STATES.contains(Integer.valueOf(oldState)) && MediaSessionRecord.TRANSITION_PRIORITY_STATES.contains(Integer.valueOf(newState)))) {
                shouldUpdatePriority = true;
            }
            synchronized (MediaSessionRecord.this.mLock) {
                MediaSessionRecord.this.mPlaybackState = state;
            }
            long token = Binder.clearCallingIdentity();
            try {
                if (MediaSessionRecord.DEBUG) {
                    Log.d(MediaSessionRecord.TAG, "setPlaybackState [" + MediaSessionRecord.this + "] oldState " + oldState + ", newState " + newState);
                }
                MediaSessionRecord.this.mService.onSessionPlaybackStateChanged(MediaSessionRecord.this, shouldUpdatePriority);
                Binder.restoreCallingIdentity(token);
                MediaSessionRecord.this.mHandler.post(2);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void setQueue(ParceledListSlice queue) throws RemoteException {
            synchronized (MediaSessionRecord.this.mLock) {
                MediaSessionRecord.this.mQueue = queue == null ? null : queue.getList();
            }
            MediaSessionRecord.this.mHandler.post(3);
        }

        public void setQueueTitle(CharSequence title) throws RemoteException {
            MediaSessionRecord.this.mQueueTitle = title;
            MediaSessionRecord.this.mHandler.post(4);
        }

        public void setExtras(Bundle extras) throws RemoteException {
            synchronized (MediaSessionRecord.this.mLock) {
                MediaSessionRecord.this.mExtras = extras == null ? null : new Bundle(extras);
            }
            MediaSessionRecord.this.mHandler.post(5);
        }

        public void setRatingType(int type) throws RemoteException {
            MediaSessionRecord.this.mRatingType = type;
        }

        public void setCurrentVolume(int volume) throws RemoteException {
            MediaSessionRecord.this.mCurrentVolume = volume;
            MediaSessionRecord.this.mHandler.post(8);
        }

        public void setPlaybackToLocal(AudioAttributes attributes) throws RemoteException {
            boolean typeChanged;
            synchronized (MediaSessionRecord.this.mLock) {
                typeChanged = MediaSessionRecord.this.mVolumeType == 2;
                MediaSessionRecord.this.mVolumeType = 1;
                MediaSessionRecord.this.mVolumeControlId = null;
                if (attributes != null) {
                    MediaSessionRecord.this.mAudioAttrs = attributes;
                } else {
                    Log.e(MediaSessionRecord.TAG, "Received null audio attributes, using existing attributes");
                }
            }
            if (typeChanged) {
                long token = Binder.clearCallingIdentity();
                try {
                    MediaSessionRecord.this.mService.onSessionPlaybackTypeChanged(MediaSessionRecord.this);
                    Binder.restoreCallingIdentity(token);
                    MediaSessionRecord.this.mHandler.post(8);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(token);
                    throw th;
                }
            }
        }

        public void setPlaybackToRemote(int control, int max, String controlId) throws RemoteException {
            boolean typeChanged;
            synchronized (MediaSessionRecord.this.mLock) {
                boolean z = true;
                if (MediaSessionRecord.this.mVolumeType != 1) {
                    z = false;
                }
                typeChanged = z;
                MediaSessionRecord.this.mVolumeType = 2;
                MediaSessionRecord.this.mVolumeControlType = control;
                MediaSessionRecord.this.mMaxVolume = max;
                MediaSessionRecord.this.mVolumeControlId = controlId;
            }
            if (typeChanged) {
                long token = Binder.clearCallingIdentity();
                try {
                    MediaSessionRecord.this.mService.onSessionPlaybackTypeChanged(MediaSessionRecord.this);
                    Binder.restoreCallingIdentity(token);
                    MediaSessionRecord.this.mHandler.post(8);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(token);
                    throw th;
                }
            }
        }
    }

    class SessionCb {
        private final ISessionCallback mCb;

        SessionCb(ISessionCallback cb) {
            this.mCb = cb;
        }

        public boolean sendMediaButton(String packageName, int pid, int uid, boolean asSystemService, KeyEvent keyEvent, int sequenceId, ResultReceiver cb) {
            try {
                if (KeyEvent.isMediaSessionKey(keyEvent.getKeyCode())) {
                    String reason = "action=" + KeyEvent.actionToString(keyEvent.getAction()) + ";code=" + KeyEvent.keyCodeToString(keyEvent.getKeyCode());
                    MediaSessionRecord.this.mService.tempAllowlistTargetPkgIfPossible(MediaSessionRecord.this.getUid(), MediaSessionRecord.this.getPackageName(), pid, uid, packageName, reason);
                }
                if (asSystemService) {
                    this.mCb.onMediaButton(MediaSessionRecord.this.mContext.getPackageName(), Process.myPid(), 1000, createMediaButtonIntent(keyEvent), sequenceId, cb);
                    return true;
                }
                this.mCb.onMediaButton(packageName, pid, uid, createMediaButtonIntent(keyEvent), sequenceId, cb);
                return true;
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in sendMediaRequest.", e);
                return false;
            }
        }

        public boolean sendMediaButton(String packageName, int pid, int uid, boolean asSystemService, KeyEvent keyEvent) {
            try {
                if (KeyEvent.isMediaSessionKey(keyEvent.getKeyCode())) {
                    String reason = "action=" + KeyEvent.actionToString(keyEvent.getAction()) + ";code=" + KeyEvent.keyCodeToString(keyEvent.getKeyCode());
                    MediaSessionRecord.this.mService.tempAllowlistTargetPkgIfPossible(MediaSessionRecord.this.getUid(), MediaSessionRecord.this.getPackageName(), pid, uid, packageName, reason);
                }
                if (asSystemService) {
                    this.mCb.onMediaButton(MediaSessionRecord.this.mContext.getPackageName(), Process.myPid(), 1000, createMediaButtonIntent(keyEvent), 0, (ResultReceiver) null);
                    return true;
                }
                this.mCb.onMediaButtonFromController(packageName, pid, uid, createMediaButtonIntent(keyEvent));
                return true;
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in sendMediaRequest.", e);
                return false;
            }
        }

        public void sendCommand(String packageName, int pid, int uid, String command, Bundle args, ResultReceiver cb) {
            try {
                this.mCb.onCommand(packageName, pid, uid, command, args, cb);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in sendCommand.", e);
            }
        }

        public void sendCustomAction(String packageName, int pid, int uid, String action, Bundle args) {
            try {
                this.mCb.onCustomAction(packageName, pid, uid, action, args);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in sendCustomAction.", e);
            }
        }

        public void prepare(String packageName, int pid, int uid) {
            try {
                this.mCb.onPrepare(packageName, pid, uid);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in prepare.", e);
            }
        }

        public void prepareFromMediaId(String packageName, int pid, int uid, String mediaId, Bundle extras) {
            try {
                this.mCb.onPrepareFromMediaId(packageName, pid, uid, mediaId, extras);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in prepareFromMediaId.", e);
            }
        }

        public void prepareFromSearch(String packageName, int pid, int uid, String query, Bundle extras) {
            try {
                this.mCb.onPrepareFromSearch(packageName, pid, uid, query, extras);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in prepareFromSearch.", e);
            }
        }

        public void prepareFromUri(String packageName, int pid, int uid, Uri uri, Bundle extras) {
            try {
                this.mCb.onPrepareFromUri(packageName, pid, uid, uri, extras);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in prepareFromUri.", e);
            }
        }

        public void play(String packageName, int pid, int uid) {
            try {
                this.mCb.onPlay(packageName, pid, uid);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in play.", e);
            }
        }

        public void playFromMediaId(String packageName, int pid, int uid, String mediaId, Bundle extras) {
            try {
                this.mCb.onPlayFromMediaId(packageName, pid, uid, mediaId, extras);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in playFromMediaId.", e);
            }
        }

        public void playFromSearch(String packageName, int pid, int uid, String query, Bundle extras) {
            try {
                this.mCb.onPlayFromSearch(packageName, pid, uid, query, extras);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in playFromSearch.", e);
            }
        }

        public void playFromUri(String packageName, int pid, int uid, Uri uri, Bundle extras) {
            try {
                this.mCb.onPlayFromUri(packageName, pid, uid, uri, extras);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in playFromUri.", e);
            }
        }

        public void skipToTrack(String packageName, int pid, int uid, long id) {
            try {
                this.mCb.onSkipToTrack(packageName, pid, uid, id);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in skipToTrack", e);
            }
        }

        public void pause(String packageName, int pid, int uid) {
            try {
                this.mCb.onPause(packageName, pid, uid);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in pause.", e);
            }
        }

        public void stop(String packageName, int pid, int uid) {
            try {
                this.mCb.onStop(packageName, pid, uid);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in stop.", e);
            }
        }

        public void next(String packageName, int pid, int uid) {
            try {
                this.mCb.onNext(packageName, pid, uid);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in next.", e);
            }
        }

        public void previous(String packageName, int pid, int uid) {
            try {
                this.mCb.onPrevious(packageName, pid, uid);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in previous.", e);
            }
        }

        public void fastForward(String packageName, int pid, int uid) {
            try {
                this.mCb.onFastForward(packageName, pid, uid);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in fastForward.", e);
            }
        }

        public void rewind(String packageName, int pid, int uid) {
            try {
                this.mCb.onRewind(packageName, pid, uid);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in rewind.", e);
            }
        }

        public void seekTo(String packageName, int pid, int uid, long pos) {
            try {
                this.mCb.onSeekTo(packageName, pid, uid, pos);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in seekTo.", e);
            }
        }

        public void rate(String packageName, int pid, int uid, Rating rating) {
            try {
                this.mCb.onRate(packageName, pid, uid, rating);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in rate.", e);
            }
        }

        public void setPlaybackSpeed(String packageName, int pid, int uid, float speed) {
            try {
                this.mCb.onSetPlaybackSpeed(packageName, pid, uid, speed);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in setPlaybackSpeed.", e);
            }
        }

        public void adjustVolume(String packageName, int pid, int uid, boolean asSystemService, int direction) {
            try {
                if (asSystemService) {
                    this.mCb.onAdjustVolume(MediaSessionRecord.this.mContext.getPackageName(), Process.myPid(), 1000, direction);
                } else {
                    this.mCb.onAdjustVolume(packageName, pid, uid, direction);
                }
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in adjustVolume.", e);
            }
        }

        public void setVolumeTo(String packageName, int pid, int uid, int value) {
            try {
                this.mCb.onSetVolumeTo(packageName, pid, uid, value);
            } catch (RemoteException e) {
                Slog.e(MediaSessionRecord.TAG, "Remote failure in setVolumeTo.", e);
            }
        }

        private Intent createMediaButtonIntent(KeyEvent keyEvent) {
            Intent mediaButtonIntent = new Intent("android.intent.action.MEDIA_BUTTON");
            mediaButtonIntent.putExtra("android.intent.extra.KEY_EVENT", keyEvent);
            return mediaButtonIntent;
        }
    }

    class ControllerStub extends ISessionController.Stub {
        ControllerStub() {
        }

        public void sendCommand(String packageName, String command, Bundle args, ResultReceiver cb) {
            MediaSessionRecord.this.mSessionCb.sendCommand(packageName, Binder.getCallingPid(), Binder.getCallingUid(), command, args, cb);
        }

        public boolean sendMediaButton(String packageName, KeyEvent keyEvent) {
            return MediaSessionRecord.this.mSessionCb.sendMediaButton(packageName, Binder.getCallingPid(), Binder.getCallingUid(), false, keyEvent);
        }

        public void registerCallback(String packageName, ISessionControllerCallback cb) {
            synchronized (MediaSessionRecord.this.mLock) {
                if (!MediaSessionRecord.this.mDestroyed) {
                    if (MediaSessionRecord.this.getControllerHolderIndexForCb(cb) < 0) {
                        MediaSessionRecord.this.mControllerCallbackHolders.add(MediaSessionRecord.this.new ISessionControllerCallbackHolder(cb, packageName, Binder.getCallingUid()));
                        if (MediaSessionRecord.DEBUG) {
                            Log.d(MediaSessionRecord.TAG, "registering controller callback " + cb + " from controller" + packageName);
                        }
                    }
                    return;
                }
                try {
                    cb.onSessionDestroyed();
                } catch (Exception e) {
                }
            }
        }

        public void unregisterCallback(ISessionControllerCallback cb) {
            synchronized (MediaSessionRecord.this.mLock) {
                int index = MediaSessionRecord.this.getControllerHolderIndexForCb(cb);
                if (index != -1) {
                    MediaSessionRecord.this.mControllerCallbackHolders.remove(index);
                }
                if (MediaSessionRecord.DEBUG) {
                    Log.d(MediaSessionRecord.TAG, "unregistering callback " + cb.asBinder());
                }
            }
        }

        public String getPackageName() {
            return MediaSessionRecord.this.mPackageName;
        }

        public String getTag() {
            return MediaSessionRecord.this.mTag;
        }

        public Bundle getSessionInfo() {
            return MediaSessionRecord.this.mSessionInfo;
        }

        public PendingIntent getLaunchPendingIntent() {
            return MediaSessionRecord.this.mLaunchIntent;
        }

        public long getFlags() {
            return MediaSessionRecord.this.mFlags;
        }

        public MediaController.PlaybackInfo getVolumeAttributes() {
            return MediaSessionRecord.this.getVolumeAttributes();
        }

        public void adjustVolume(String packageName, String opPackageName, int direction, int flags) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                MediaSessionRecord.this.adjustVolume(packageName, opPackageName, pid, uid, false, direction, flags, false);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void setVolumeTo(String packageName, String opPackageName, int value, int flags) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                MediaSessionRecord.this.setVolumeTo(packageName, opPackageName, pid, uid, value, flags);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void prepare(String packageName) {
            MediaSessionRecord.this.mSessionCb.prepare(packageName, Binder.getCallingPid(), Binder.getCallingUid());
        }

        public void prepareFromMediaId(String packageName, String mediaId, Bundle extras) {
            MediaSessionRecord.this.mSessionCb.prepareFromMediaId(packageName, Binder.getCallingPid(), Binder.getCallingUid(), mediaId, extras);
        }

        public void prepareFromSearch(String packageName, String query, Bundle extras) {
            MediaSessionRecord.this.mSessionCb.prepareFromSearch(packageName, Binder.getCallingPid(), Binder.getCallingUid(), query, extras);
        }

        public void prepareFromUri(String packageName, Uri uri, Bundle extras) {
            MediaSessionRecord.this.mSessionCb.prepareFromUri(packageName, Binder.getCallingPid(), Binder.getCallingUid(), uri, extras);
        }

        public void play(String packageName) {
            MediaSessionRecord.this.mSessionCb.play(packageName, Binder.getCallingPid(), Binder.getCallingUid());
        }

        public void playFromMediaId(String packageName, String mediaId, Bundle extras) {
            MediaSessionRecord.this.mSessionCb.playFromMediaId(packageName, Binder.getCallingPid(), Binder.getCallingUid(), mediaId, extras);
        }

        public void playFromSearch(String packageName, String query, Bundle extras) {
            MediaSessionRecord.this.mSessionCb.playFromSearch(packageName, Binder.getCallingPid(), Binder.getCallingUid(), query, extras);
        }

        public void playFromUri(String packageName, Uri uri, Bundle extras) {
            MediaSessionRecord.this.mSessionCb.playFromUri(packageName, Binder.getCallingPid(), Binder.getCallingUid(), uri, extras);
        }

        public void skipToQueueItem(String packageName, long id) {
            MediaSessionRecord.this.mSessionCb.skipToTrack(packageName, Binder.getCallingPid(), Binder.getCallingUid(), id);
        }

        public void pause(String packageName) {
            MediaSessionRecord.this.mSessionCb.pause(packageName, Binder.getCallingPid(), Binder.getCallingUid());
        }

        public void stop(String packageName) {
            MediaSessionRecord.this.mSessionCb.stop(packageName, Binder.getCallingPid(), Binder.getCallingUid());
        }

        public void next(String packageName) {
            MediaSessionRecord.this.mSessionCb.next(packageName, Binder.getCallingPid(), Binder.getCallingUid());
        }

        public void previous(String packageName) {
            MediaSessionRecord.this.mSessionCb.previous(packageName, Binder.getCallingPid(), Binder.getCallingUid());
        }

        public void fastForward(String packageName) {
            MediaSessionRecord.this.mSessionCb.fastForward(packageName, Binder.getCallingPid(), Binder.getCallingUid());
        }

        public void rewind(String packageName) {
            MediaSessionRecord.this.mSessionCb.rewind(packageName, Binder.getCallingPid(), Binder.getCallingUid());
        }

        public void seekTo(String packageName, long pos) {
            MediaSessionRecord.this.mSessionCb.seekTo(packageName, Binder.getCallingPid(), Binder.getCallingUid(), pos);
        }

        public void rate(String packageName, Rating rating) {
            MediaSessionRecord.this.mSessionCb.rate(packageName, Binder.getCallingPid(), Binder.getCallingUid(), rating);
        }

        public void setPlaybackSpeed(String packageName, float speed) {
            MediaSessionRecord.this.mSessionCb.setPlaybackSpeed(packageName, Binder.getCallingPid(), Binder.getCallingUid(), speed);
        }

        public void sendCustomAction(String packageName, String action, Bundle args) {
            MediaSessionRecord.this.mSessionCb.sendCustomAction(packageName, Binder.getCallingPid(), Binder.getCallingUid(), action, args);
        }

        public MediaMetadata getMetadata() {
            MediaMetadata mediaMetadata;
            synchronized (MediaSessionRecord.this.mLock) {
                mediaMetadata = MediaSessionRecord.this.mMetadata;
            }
            return mediaMetadata;
        }

        public PlaybackState getPlaybackState() {
            return MediaSessionRecord.this.getStateWithUpdatedPosition();
        }

        public ParceledListSlice getQueue() {
            ParceledListSlice parceledListSlice;
            synchronized (MediaSessionRecord.this.mLock) {
                parceledListSlice = MediaSessionRecord.this.mQueue == null ? null : new ParceledListSlice(MediaSessionRecord.this.mQueue);
            }
            return parceledListSlice;
        }

        public CharSequence getQueueTitle() {
            return MediaSessionRecord.this.mQueueTitle;
        }

        public Bundle getExtras() {
            Bundle bundle;
            synchronized (MediaSessionRecord.this.mLock) {
                bundle = MediaSessionRecord.this.mExtras;
            }
            return bundle;
        }

        public int getRatingType() {
            return MediaSessionRecord.this.mRatingType;
        }
    }

    private class ISessionControllerCallbackHolder {
        private final ISessionControllerCallback mCallback;
        private final String mPackageName;
        private final int mUid;

        ISessionControllerCallbackHolder(ISessionControllerCallback callback, String packageName, int uid) {
            this.mCallback = callback;
            this.mPackageName = packageName;
            this.mUid = uid;
        }
    }

    private class MessageHandler extends Handler {
        private static final int MSG_DESTROYED = 9;
        private static final int MSG_SEND_EVENT = 6;
        private static final int MSG_UPDATE_EXTRAS = 5;
        private static final int MSG_UPDATE_METADATA = 1;
        private static final int MSG_UPDATE_PLAYBACK_STATE = 2;
        private static final int MSG_UPDATE_QUEUE = 3;
        private static final int MSG_UPDATE_QUEUE_TITLE = 4;
        private static final int MSG_UPDATE_SESSION_STATE = 7;
        private static final int MSG_UPDATE_VOLUME = 8;

        public MessageHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    MediaSessionRecord.this.pushMetadataUpdate();
                    break;
                case 2:
                    MediaSessionRecord.this.pushPlaybackStateUpdate();
                    break;
                case 3:
                    MediaSessionRecord.this.pushQueueUpdate();
                    break;
                case 4:
                    MediaSessionRecord.this.pushQueueTitleUpdate();
                    break;
                case 5:
                    MediaSessionRecord.this.pushExtrasUpdate();
                    break;
                case 6:
                    MediaSessionRecord.this.pushEvent((String) msg.obj, msg.getData());
                    break;
                case 8:
                    MediaSessionRecord.this.pushVolumeUpdate();
                    break;
                case 9:
                    MediaSessionRecord.this.pushSessionDestroyed();
                    break;
            }
        }

        public void post(int what) {
            post(what, null);
        }

        public void post(int what, Object obj) {
            obtainMessage(what, obj).sendToTarget();
        }

        public void post(int what, Object obj, Bundle data) {
            Message msg = obtainMessage(what, obj);
            msg.setData(data);
            msg.sendToTarget();
        }
    }
}

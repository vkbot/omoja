package com.android.server.media;

import android.R;
import android.content.Context;
import android.media.AudioPlaybackConfiguration;
import android.media.Session2Token;
import android.media.session.MediaSession;
import android.os.Debug;
import android.util.IntArray;
import android.util.Log;
import android.util.SparseArray;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionStack {
    private static final boolean DEBUG = MediaSessionService.DEBUG;
    private static final String TAG = "MediaSessionStack";
    private final AudioPlayerStateMonitor mAudioPlayerStateMonitor;
    private MediaSessionRecordImpl mCachedVolumeDefault;
    private final boolean mEnablePidMediaButton;
    private MediaSessionRecordImpl mMediaButtonSession;
    private final OnMediaButtonSessionChangedListener mOnMediaButtonSessionChangedListener;
    private final List<MediaSessionRecordImpl> mSessions = new ArrayList();
    private final SparseArray<List<MediaSessionRecord>> mCachedActiveLists = new SparseArray<>();
    private final SparseArray<ArrayList<MediaSessionRecordImpl>> mPidSessions = new SparseArray<>();

    interface OnMediaButtonSessionChangedListener {
        void onMediaButtonSessionChanged(MediaSessionRecordImpl mediaSessionRecordImpl, MediaSessionRecordImpl mediaSessionRecordImpl2);
    }

    MediaSessionStack(Context context, AudioPlayerStateMonitor monitor, OnMediaButtonSessionChangedListener listener) {
        this.mAudioPlayerStateMonitor = monitor;
        this.mOnMediaButtonSessionChangedListener = listener;
        this.mEnablePidMediaButton = context.getResources().getBoolean(R.bool.config_cecQuerySadAtracDisabled_allowed);
    }

    public void addSession(MediaSessionRecordImpl record) {
        this.mSessions.add(record);
        if (this.mEnablePidMediaButton) {
            if (this.mPidSessions.contains(record.getPid())) {
                this.mPidSessions.get(record.getPid()).add(record);
            } else {
                ArrayList<MediaSessionRecordImpl> mediaSessionRecords = new ArrayList<>();
                mediaSessionRecords.add(record);
                this.mPidSessions.put(record.getPid(), mediaSessionRecords);
            }
        }
        clearCache(record.getUserId());
        updateMediaButtonSessionIfNeeded();
    }

    public void removeSession(MediaSessionRecordImpl record) {
        this.mSessions.remove(record);
        if (this.mEnablePidMediaButton && this.mPidSessions.contains(record.getPid())) {
            this.mPidSessions.get(record.getPid()).remove(record);
        }
        if (this.mMediaButtonSession == record) {
            if (!this.mSessions.isEmpty()) {
                updateMediaButtonSession(this.mSessions.get(0));
            } else {
                updateMediaButtonSession(null);
            }
        }
        clearCache(record.getUserId());
    }

    public boolean contains(MediaSessionRecordImpl record) {
        return this.mSessions.contains(record);
    }

    public MediaSessionRecord getMediaSessionRecord(MediaSession.Token sessionToken) {
        for (MediaSessionRecordImpl record : this.mSessions) {
            if (record instanceof MediaSessionRecord) {
                MediaSessionRecord session1 = (MediaSessionRecord) record;
                if (Objects.equals(session1.getSessionToken(), sessionToken)) {
                    return session1;
                }
            }
        }
        return null;
    }

    public void onPlaybackStateChanged(MediaSessionRecordImpl record, boolean shouldUpdatePriority) {
        MediaSessionRecordImpl newMediaButtonSession;
        if (shouldUpdatePriority) {
            this.mSessions.remove(record);
            this.mSessions.add(0, record);
            if (this.mEnablePidMediaButton) {
                if (this.mPidSessions.contains(record.getPid())) {
                    this.mPidSessions.get(record.getPid()).remove(record);
                    this.mPidSessions.get(record.getPid()).add(0, record);
                } else {
                    ArrayList<MediaSessionRecordImpl> mediaSessionRecords = new ArrayList<>();
                    mediaSessionRecords.add(record);
                    this.mPidSessions.put(record.getPid(), mediaSessionRecords);
                }
            }
            clearCache(record.getUserId());
        } else if (record.checkPlaybackActiveState(false)) {
            this.mCachedVolumeDefault = null;
        }
        if (this.mEnablePidMediaButton) {
            MediaSessionRecordImpl mediaSessionRecordImpl = this.mMediaButtonSession;
            if (mediaSessionRecordImpl == null || mediaSessionRecordImpl != record) {
                MediaSessionRecordImpl newMediaButtonSession2 = findMediaButtonSessionV2();
                if (newMediaButtonSession2 == null) {
                    if (DEBUG) {
                        Log.d(TAG, "onPlaybackStateChanged, newMediaButtonSession is null.");
                        return;
                    }
                    return;
                } else {
                    if (newMediaButtonSession2 != this.mMediaButtonSession && (newMediaButtonSession2.getSessionPolicies() & 2) == 0) {
                        updateMediaButtonSession(newMediaButtonSession2);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        MediaSessionRecordImpl mediaSessionRecordImpl2 = this.mMediaButtonSession;
        if (mediaSessionRecordImpl2 != null && mediaSessionRecordImpl2.getUid() == record.getUid() && (newMediaButtonSession = findMediaButtonSession(this.mMediaButtonSession.getUid())) != this.mMediaButtonSession && (newMediaButtonSession.getSessionPolicies() & 2) == 0) {
            updateMediaButtonSession(newMediaButtonSession);
        }
    }

    public void onSessionActiveStateChanged(MediaSessionRecordImpl record) {
        clearCache(record.getUserId());
    }

    public void updateMediaButtonSessionIfNeeded() {
        if (DEBUG) {
            Log.d(TAG, "updateMediaButtonSessionIfNeeded, callers=" + Debug.getCallers(2));
        }
        if (this.mEnablePidMediaButton) {
            MediaSessionRecordImpl mediaButtonSession = findMediaButtonSessionV2();
            if (mediaButtonSession == null) {
                if (DEBUG) {
                    Log.d(TAG, "updateMediaButtonSessionIfNeeded, mediaButtonSession is null.");
                    return;
                }
                return;
            }
            boolean ignoreButtonSession = (2 & mediaButtonSession.getSessionPolicies()) != 0;
            if (DEBUG) {
                Log.d(TAG, "updateMediaButtonSessionIfNeeded, mediaButtonSession=" + mediaButtonSession + ", ignoreButtonSession=" + ignoreButtonSession);
            }
            if (!ignoreButtonSession) {
                this.mAudioPlayerStateMonitor.cleanUpAudioPlaybackUidsV2(mediaButtonSession.getUid());
                if (mediaButtonSession != this.mMediaButtonSession) {
                    updateMediaButtonSession(mediaButtonSession);
                    return;
                }
                return;
            }
            return;
        }
        IntArray audioPlaybackUids = this.mAudioPlayerStateMonitor.getSortedAudioPlaybackClientUids();
        for (int i = 0; i < audioPlaybackUids.size(); i++) {
            int audioPlaybackUid = audioPlaybackUids.get(i);
            MediaSessionRecordImpl mediaButtonSession2 = findMediaButtonSession(audioPlaybackUid);
            if (mediaButtonSession2 == null) {
                if (DEBUG) {
                    Log.d(TAG, "updateMediaButtonSessionIfNeeded, skipping uid=" + audioPlaybackUid);
                }
            } else {
                boolean ignoreButtonSession2 = (mediaButtonSession2.getSessionPolicies() & 2) != 0;
                if (DEBUG) {
                    Log.d(TAG, "updateMediaButtonSessionIfNeeded, checking uid=" + audioPlaybackUid + ", mediaButtonSession=" + mediaButtonSession2 + ", ignoreButtonSession=" + ignoreButtonSession2);
                }
                if (!ignoreButtonSession2) {
                    this.mAudioPlayerStateMonitor.cleanUpAudioPlaybackUids(mediaButtonSession2.getUid());
                    if (mediaButtonSession2 != this.mMediaButtonSession) {
                        updateMediaButtonSession(mediaButtonSession2);
                        return;
                    }
                    return;
                }
            }
        }
    }

    public void updateMediaButtonSessionBySessionPolicyChange(MediaSessionRecord record) {
        if ((record.getSessionPolicies() & 2) != 0) {
            if (record == this.mMediaButtonSession) {
                updateMediaButtonSession(null);
                return;
            }
            return;
        }
        updateMediaButtonSessionIfNeeded();
    }

    private MediaSessionRecordImpl findMediaButtonSession(int uid) {
        MediaSessionRecordImpl mediaButtonSession = null;
        for (MediaSessionRecordImpl session : this.mSessions) {
            if (!(session instanceof MediaSession2Record) && uid == session.getUid()) {
                if (session.checkPlaybackActiveState(this.mAudioPlayerStateMonitor.isPlaybackActive(session.getUid()))) {
                    return session;
                }
                if (mediaButtonSession == null) {
                    mediaButtonSession = session;
                }
            }
        }
        return mediaButtonSession;
    }

    private MediaSessionRecordImpl findMediaButtonSessionV2() {
        AudioPlaybackConfiguration configuration;
        MediaSessionRecordImpl mediaButtonSession = null;
        ArrayList<AudioPlaybackConfiguration> configurations = this.mAudioPlayerStateMonitor.getSortedAudioPlaybackConfigs();
        for (int i = 0; i < configurations.size() && (configuration = configurations.get(i)) != null; i++) {
            int activeAudioPid = configuration.getClientPid();
            if (this.mPidSessions.contains(activeAudioPid)) {
                for (MediaSessionRecordImpl session : this.mPidSessions.get(activeAudioPid)) {
                    if (session.checkPlaybackActiveState(true)) {
                        if (DEBUG) {
                            Log.d(TAG, "findMediaButtonSessionV2, pid mediaSession=" + session);
                        }
                        return session;
                    }
                }
            } else {
                Integer audioPlaybackUid = Integer.valueOf(configuration.getClientUid());
                for (MediaSessionRecordImpl session2 : this.mSessions) {
                    if (audioPlaybackUid.intValue() == 1000) {
                        Log.d(TAG, "findMediaButtonSessionV2, skip SYSTEM_UID");
                    } else if (!(session2 instanceof MediaSession2Record) && audioPlaybackUid.intValue() == session2.getUid()) {
                        if (session2.checkPlaybackActiveState(this.mAudioPlayerStateMonitor.isPlaybackActive(session2.getUid()))) {
                            if (DEBUG) {
                                Log.d(TAG, "findMediaButtonSessionV2, uid mediaSession=" + session2);
                            }
                            return session2;
                        }
                        if (mediaButtonSession == null) {
                            mediaButtonSession = session2;
                        }
                    }
                }
            }
            if (mediaButtonSession != null) {
                if (DEBUG) {
                    Log.d(TAG, "findMediaButtonSessionV2, default mediaSession=" + mediaButtonSession);
                }
                return mediaButtonSession;
            }
        }
        if (DEBUG) {
            Log.d(TAG, "findMediaButtonSessionV2 mediaSession is null");
        }
        return mediaButtonSession;
    }

    public List<MediaSessionRecord> getActiveSessions(int userId) {
        List<MediaSessionRecord> cachedActiveList = this.mCachedActiveLists.get(userId);
        if (cachedActiveList == null) {
            List<MediaSessionRecord> cachedActiveList2 = getPriorityList(true, userId);
            this.mCachedActiveLists.put(userId, cachedActiveList2);
            return cachedActiveList2;
        }
        return cachedActiveList;
    }

    public List<Session2Token> getSession2Tokens(int userId) {
        ArrayList<Session2Token> session2Records = new ArrayList<>();
        for (MediaSessionRecordImpl record : this.mSessions) {
            if (userId == -1 || record.getUserId() == userId) {
                if (record.isActive() && (record instanceof MediaSession2Record)) {
                    MediaSession2Record session2 = (MediaSession2Record) record;
                    session2Records.add(session2.getSession2Token());
                }
            }
        }
        return session2Records;
    }

    public MediaSessionRecordImpl getMediaButtonSession() {
        return this.mMediaButtonSession;
    }

    public void updateMediaButtonSession(MediaSessionRecordImpl newMediaButtonSession) {
        MediaSessionRecordImpl oldMediaButtonSession = this.mMediaButtonSession;
        this.mMediaButtonSession = newMediaButtonSession;
        this.mOnMediaButtonSessionChangedListener.onMediaButtonSessionChanged(oldMediaButtonSession, newMediaButtonSession);
    }

    public MediaSessionRecordImpl getDefaultVolumeSession() {
        MediaSessionRecordImpl mediaSessionRecordImpl = this.mCachedVolumeDefault;
        if (mediaSessionRecordImpl != null) {
            return mediaSessionRecordImpl;
        }
        List<MediaSessionRecord> records = getPriorityList(true, -1);
        int size = records.size();
        for (int i = 0; i < size; i++) {
            MediaSessionRecord record = records.get(i);
            if (record.checkPlaybackActiveState(true)) {
                this.mCachedVolumeDefault = record;
                return record;
            }
        }
        return null;
    }

    public MediaSessionRecordImpl getDefaultRemoteSession(int userId) {
        List<MediaSessionRecord> records = getPriorityList(true, userId);
        int size = records.size();
        for (int i = 0; i < size; i++) {
            MediaSessionRecord record = records.get(i);
            if (!record.isPlaybackTypeLocal()) {
                return record;
            }
        }
        return null;
    }

    public void dump(PrintWriter pw, String prefix) {
        pw.println(prefix + "Media button session is " + this.mMediaButtonSession);
        pw.println(prefix + "Sessions Stack - have " + this.mSessions.size() + " sessions:");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        sb.append("  ");
        String indent = sb.toString();
        for (MediaSessionRecordImpl record : this.mSessions) {
            record.dump(pw, indent);
        }
    }

    public List<MediaSessionRecord> getPriorityList(boolean activeOnly, int userId) {
        List<MediaSessionRecord> result = new ArrayList<>();
        int lastPlaybackActiveIndex = 0;
        int lastActiveIndex = 0;
        for (MediaSessionRecordImpl record : this.mSessions) {
            if (record instanceof MediaSessionRecord) {
                MediaSessionRecord session = (MediaSessionRecord) record;
                if (userId == -1 || userId == session.getUserId()) {
                    if (!session.isActive()) {
                        if (!activeOnly) {
                            result.add(session);
                        }
                    } else if (session.checkPlaybackActiveState(true)) {
                        result.add(lastPlaybackActiveIndex, session);
                        lastActiveIndex++;
                        lastPlaybackActiveIndex++;
                    } else {
                        int lastPlaybackActiveIndex2 = lastActiveIndex + 1;
                        result.add(lastActiveIndex, session);
                        lastActiveIndex = lastPlaybackActiveIndex2;
                    }
                }
            }
        }
        return result;
    }

    private void clearCache(int userId) {
        this.mCachedVolumeDefault = null;
        this.mCachedActiveLists.remove(userId);
        this.mCachedActiveLists.remove(-1);
    }
}

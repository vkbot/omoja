package com.android.server.media;

import android.R;
import android.content.Context;
import android.media.AudioManager;
import android.media.AudioPlaybackConfiguration;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.IntArray;
import android.util.Log;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class AudioPlayerStateMonitor {
    private static boolean DEBUG = MediaSessionService.DEBUG;
    private static String TAG = "AudioPlayerStateMonitor";
    private static AudioPlayerStateMonitor sInstance;
    private final boolean mEnablePidMediaButton;
    private final Object mLock = new Object();
    private final Map<OnAudioPlayerActiveStateChangedListener, MessageHandler> mListenerMap = new ArrayMap();
    final Set<Integer> mActiveAudioUids = new ArraySet();
    final Set<Integer> mActiveAudioPids = new ArraySet();
    ArrayMap<Integer, AudioPlaybackConfiguration> mPrevActiveAudioPlaybackConfigs = new ArrayMap<>();
    final IntArray mSortedAudioPlaybackClientUids = new IntArray();
    final ArrayList<AudioPlaybackConfiguration> mSortedAudioPlaybackConfigs = new ArrayList<>();

    interface OnAudioPlayerActiveStateChangedListener {
        void onAudioPlayerActiveStateChanged(AudioPlaybackConfiguration audioPlaybackConfiguration, boolean z);
    }

    private static final class MessageHandler extends Handler {
        private static final int MSG_AUDIO_PLAYER_ACTIVE_STATE_CHANGED = 1;
        private final OnAudioPlayerActiveStateChangedListener mListener;

        MessageHandler(Looper looper, OnAudioPlayerActiveStateChangedListener listener) {
            super(looper);
            this.mListener = listener;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 1) {
                this.mListener.onAudioPlayerActiveStateChanged((AudioPlaybackConfiguration) msg.obj, msg.arg1 != 0);
            }
        }

        void sendAudioPlayerActiveStateChangedMessage(AudioPlaybackConfiguration audioPlaybackConfiguration, boolean z) {
            obtainMessage(1, z ? 1 : 0, 0, audioPlaybackConfiguration).sendToTarget();
        }
    }

    static AudioPlayerStateMonitor getInstance(Context context) {
        AudioPlayerStateMonitor audioPlayerStateMonitor;
        synchronized (AudioPlayerStateMonitor.class) {
            if (sInstance == null) {
                sInstance = new AudioPlayerStateMonitor(context);
            }
            audioPlayerStateMonitor = sInstance;
        }
        return audioPlayerStateMonitor;
    }

    private AudioPlayerStateMonitor(Context context) {
        AudioManager am = (AudioManager) context.getSystemService("audio");
        am.registerAudioPlaybackCallback(new AudioManagerPlaybackListener(), null);
        this.mEnablePidMediaButton = context.getResources().getBoolean(R.bool.config_cecQuerySadAtracDisabled_allowed);
    }

    public void registerListener(OnAudioPlayerActiveStateChangedListener listener, Handler handler) {
        synchronized (this.mLock) {
            this.mListenerMap.put(listener, new MessageHandler(handler == null ? Looper.myLooper() : handler.getLooper(), listener));
        }
    }

    public void unregisterListener(OnAudioPlayerActiveStateChangedListener listener) {
        synchronized (this.mLock) {
            this.mListenerMap.remove(listener);
        }
    }

    public IntArray getSortedAudioPlaybackClientUids() {
        IntArray sortedAudioPlaybackClientUids = new IntArray();
        synchronized (this.mLock) {
            sortedAudioPlaybackClientUids.addAll(this.mSortedAudioPlaybackClientUids);
        }
        return sortedAudioPlaybackClientUids;
    }

    public ArrayList<AudioPlaybackConfiguration> getSortedAudioPlaybackConfigs() {
        ArrayList<AudioPlaybackConfiguration> sortedAudioPlaybackConfigs = new ArrayList<>();
        synchronized (this.mLock) {
            sortedAudioPlaybackConfigs.addAll(this.mSortedAudioPlaybackConfigs);
        }
        return sortedAudioPlaybackConfigs;
    }

    public boolean isPlaybackActive(int uid) {
        boolean zContains;
        synchronized (this.mLock) {
            zContains = this.mActiveAudioUids.contains(Integer.valueOf(uid));
        }
        return zContains;
    }

    public void cleanUpAudioPlaybackUids(int mediaButtonSessionUid) {
        synchronized (this.mLock) {
            int userId = UserHandle.getUserHandleForUid(mediaButtonSessionUid).getIdentifier();
            for (int i = this.mSortedAudioPlaybackClientUids.size() - 1; i >= 0 && this.mSortedAudioPlaybackClientUids.get(i) != mediaButtonSessionUid; i--) {
                int uid = this.mSortedAudioPlaybackClientUids.get(i);
                if (userId == UserHandle.getUserHandleForUid(uid).getIdentifier() && !isPlaybackActive(uid)) {
                    this.mSortedAudioPlaybackClientUids.remove(i);
                }
            }
        }
    }

    public void cleanUpAudioPlaybackUidsV2(int mediaButtonSessionUid) {
        synchronized (this.mLock) {
            int userId = UserHandle.getUserHandleForUid(mediaButtonSessionUid).getIdentifier();
            for (int i = this.mSortedAudioPlaybackConfigs.size() - 1; i >= 0; i--) {
                AudioPlaybackConfiguration configuration = this.mSortedAudioPlaybackConfigs.get(i);
                if (configuration == null) {
                    this.mSortedAudioPlaybackConfigs.remove(i);
                } else {
                    int uid = configuration.getClientUid();
                    if (userId == UserHandle.getUserHandleForUid(uid).getIdentifier() && !configuration.isActive()) {
                        this.mSortedAudioPlaybackConfigs.remove(i);
                    }
                }
            }
        }
    }

    public void dump(Context context, PrintWriter pw, String prefix) {
        synchronized (this.mLock) {
            pw.println(prefix + "Audio playback (lastly played comes first)");
            String indent = prefix + "  ";
            for (int i = 0; i < this.mSortedAudioPlaybackClientUids.size(); i++) {
                int uid = this.mSortedAudioPlaybackClientUids.get(i);
                pw.print(indent + "uid=" + uid + " packages=");
                String[] packages = context.getPackageManager().getPackagesForUid(uid);
                if (packages != null && packages.length > 0) {
                    for (String str : packages) {
                        pw.print(str + " ");
                    }
                }
                pw.println();
            }
            if (this.mEnablePidMediaButton) {
                for (int i2 = 0; i2 < this.mSortedAudioPlaybackConfigs.size(); i2++) {
                    AudioPlaybackConfiguration configuration = this.mSortedAudioPlaybackConfigs.get(i2);
                    if (configuration != null) {
                        pw.print(indent + "configuration=" + configuration);
                    }
                    pw.println();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAudioPlayerActiveStateChangedMessageLocked(AudioPlaybackConfiguration config, boolean isRemoved) {
        for (MessageHandler messageHandler : this.mListenerMap.values()) {
            messageHandler.sendAudioPlayerActiveStateChangedMessage(config, isRemoved);
        }
    }

    private class AudioManagerPlaybackListener extends AudioManager.AudioPlaybackCallback {
        private AudioManagerPlaybackListener() {
        }

        @Override // android.media.AudioManager.AudioPlaybackCallback
        public void onPlaybackConfigChanged(List<AudioPlaybackConfiguration> configs) {
            synchronized (AudioPlayerStateMonitor.this.mLock) {
                AudioPlayerStateMonitor.this.mActiveAudioUids.clear();
                AudioPlayerStateMonitor.this.mActiveAudioPids.clear();
                ArrayMap<Integer, AudioPlaybackConfiguration> activeAudioPlaybackConfigs = new ArrayMap<>();
                for (AudioPlaybackConfiguration config : configs) {
                    if (config.isActive()) {
                        if (AudioPlayerStateMonitor.DEBUG) {
                            Log.d(AudioPlayerStateMonitor.TAG, "config: " + config);
                        }
                        AudioPlayerStateMonitor.this.mActiveAudioUids.add(Integer.valueOf(config.getClientUid()));
                        AudioPlayerStateMonitor.this.mActiveAudioPids.add(Integer.valueOf(config.getClientPid()));
                        activeAudioPlaybackConfigs.put(Integer.valueOf(config.getPlayerInterfaceId()), config);
                    }
                }
                if (AudioPlayerStateMonitor.this.mEnablePidMediaButton) {
                    for (int i = 0; i < activeAudioPlaybackConfigs.size(); i++) {
                        AudioPlaybackConfiguration config2 = activeAudioPlaybackConfigs.valueAt(i);
                        if (!AudioPlayerStateMonitor.this.mPrevActiveAudioPlaybackConfigs.containsKey(Integer.valueOf(config2.getPlayerInterfaceId()))) {
                            if (AudioPlayerStateMonitor.DEBUG) {
                                Log.d(AudioPlayerStateMonitor.TAG, "Found a new active media playback. " + config2);
                            }
                            int index = AudioPlayerStateMonitor.this.mSortedAudioPlaybackConfigs.indexOf(config2);
                            if (index != 0) {
                                if (index > 0) {
                                    AudioPlayerStateMonitor.this.mSortedAudioPlaybackConfigs.remove(index);
                                }
                                AudioPlayerStateMonitor.this.mSortedAudioPlaybackConfigs.add(0, config2);
                            }
                        }
                    }
                    if (AudioPlayerStateMonitor.this.mActiveAudioPids.size() > 0 && AudioPlayerStateMonitor.this.mSortedAudioPlaybackConfigs.size() > 0 && AudioPlayerStateMonitor.this.mSortedAudioPlaybackConfigs.get(0) != null && !AudioPlayerStateMonitor.this.mActiveAudioPids.contains(Integer.valueOf(AudioPlayerStateMonitor.this.mSortedAudioPlaybackConfigs.get(0).getClientPid()))) {
                        AudioPlaybackConfiguration firstActiveAudioPlaybackConfig = null;
                        int firatActiveAudioPlaybackConfigIndex = -1;
                        for (int i2 = 1; i2 < AudioPlayerStateMonitor.this.mSortedAudioPlaybackConfigs.size(); i2++) {
                            AudioPlaybackConfiguration audioPlaybackConfig = AudioPlayerStateMonitor.this.mSortedAudioPlaybackConfigs.get(i2);
                            if (audioPlaybackConfig != null && AudioPlayerStateMonitor.this.mActiveAudioPids.contains(Integer.valueOf(audioPlaybackConfig.getClientPid()))) {
                                firatActiveAudioPlaybackConfigIndex = i2;
                                firstActiveAudioPlaybackConfig = audioPlaybackConfig;
                                break;
                            }
                        }
                        for (int i3 = firatActiveAudioPlaybackConfigIndex; i3 > 0; i3--) {
                            AudioPlayerStateMonitor.this.mSortedAudioPlaybackConfigs.set(i3, AudioPlayerStateMonitor.this.mSortedAudioPlaybackConfigs.get(i3 - 1));
                        }
                        AudioPlayerStateMonitor.this.mSortedAudioPlaybackConfigs.set(0, firstActiveAudioPlaybackConfig);
                    }
                } else {
                    for (int i4 = 0; i4 < activeAudioPlaybackConfigs.size(); i4++) {
                        AudioPlaybackConfiguration config3 = activeAudioPlaybackConfigs.valueAt(i4);
                        int uid = config3.getClientUid();
                        if (!AudioPlayerStateMonitor.this.mPrevActiveAudioPlaybackConfigs.containsKey(Integer.valueOf(config3.getPlayerInterfaceId()))) {
                            if (AudioPlayerStateMonitor.DEBUG) {
                                Log.d(AudioPlayerStateMonitor.TAG, "Found a new active media playback. " + config3);
                            }
                            int index2 = AudioPlayerStateMonitor.this.mSortedAudioPlaybackClientUids.indexOf(uid);
                            if (index2 != 0) {
                                if (index2 > 0) {
                                    AudioPlayerStateMonitor.this.mSortedAudioPlaybackClientUids.remove(index2);
                                }
                                AudioPlayerStateMonitor.this.mSortedAudioPlaybackClientUids.add(0, uid);
                            }
                        }
                    }
                    if (AudioPlayerStateMonitor.this.mActiveAudioUids.size() > 0 && !AudioPlayerStateMonitor.this.mActiveAudioUids.contains(Integer.valueOf(AudioPlayerStateMonitor.this.mSortedAudioPlaybackClientUids.get(0)))) {
                        int firstActiveUid = -1;
                        int firatActiveUidIndex = -1;
                        for (int i5 = 1; i5 < AudioPlayerStateMonitor.this.mSortedAudioPlaybackClientUids.size(); i5++) {
                            int uid2 = AudioPlayerStateMonitor.this.mSortedAudioPlaybackClientUids.get(i5);
                            if (AudioPlayerStateMonitor.this.mActiveAudioUids.contains(Integer.valueOf(uid2))) {
                                firatActiveUidIndex = i5;
                                firstActiveUid = uid2;
                                break;
                            }
                        }
                        for (int i6 = firatActiveUidIndex; i6 > 0; i6--) {
                            AudioPlayerStateMonitor.this.mSortedAudioPlaybackClientUids.set(i6, AudioPlayerStateMonitor.this.mSortedAudioPlaybackClientUids.get(i6 - 1));
                        }
                        AudioPlayerStateMonitor.this.mSortedAudioPlaybackClientUids.set(0, firstActiveUid);
                    }
                }
                Iterator<AudioPlaybackConfiguration> it = configs.iterator();
                while (true) {
                    boolean wasActive = true;
                    if (!it.hasNext()) {
                        break;
                    }
                    AudioPlaybackConfiguration config4 = it.next();
                    int pii = config4.getPlayerInterfaceId();
                    if (AudioPlayerStateMonitor.this.mPrevActiveAudioPlaybackConfigs.remove(Integer.valueOf(pii)) == null) {
                        wasActive = false;
                    }
                    if (wasActive != config4.isActive()) {
                        AudioPlayerStateMonitor.this.sendAudioPlayerActiveStateChangedMessageLocked(config4, false);
                    }
                }
                Iterator<AudioPlaybackConfiguration> it2 = AudioPlayerStateMonitor.this.mPrevActiveAudioPlaybackConfigs.values().iterator();
                while (it2.hasNext()) {
                    AudioPlayerStateMonitor.this.sendAudioPlayerActiveStateChangedMessageLocked(it2.next(), true);
                }
                AudioPlayerStateMonitor.this.mPrevActiveAudioPlaybackConfigs = activeAudioPlaybackConfigs;
            }
        }
    }
}

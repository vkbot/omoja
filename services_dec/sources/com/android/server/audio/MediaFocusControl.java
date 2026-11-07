package com.android.server.audio;

import android.app.AppOpsManager;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusInfo;
import android.media.AudioManager;
import android.media.IAudioFocusDispatcher;
import android.media.MediaMetrics;
import android.media.audiopolicy.IAudioPolicyCallback;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import com.android.server.slice.SliceClientPermissions;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;

/* JADX INFO: loaded from: classes.dex */
public class MediaFocusControl implements PlayerFocusEnforcer {
    static final boolean DEBUG = false;
    static final int DUCKING_IN_APP_SDK_LEVEL = 25;
    static final boolean ENFORCE_DUCKING = true;
    static final boolean ENFORCE_DUCKING_FOR_NEW = true;
    static final boolean ENFORCE_MUTING_FOR_RING_OR_CALL = true;
    private static final int MAX_STACK_SIZE = 100;
    private static final int RING_CALL_MUTING_ENFORCEMENT_DELAY_MS = 100;
    private static final String TAG = "MediaFocusControl";
    private static final String mMetricsId = "audio.focus";
    private final AppOpsManager mAppOps;
    private final Context mContext;
    private long mExtFocusChangeCounter;
    private PlayerFocusEnforcer mFocusEnforcer;
    private boolean mMultiAudioFocusEnabled;
    private static final Object mAudioFocusLock = new Object();
    private static final AudioEventLogger mEventLogger = new AudioEventLogger(50, "focus commands as seen by MediaFocusControl");
    private static final int[] USAGES_TO_MUTE_IN_RING_OR_CALL = {1, 14};
    private boolean mRingOrCallActive = false;
    private final Object mExtFocusChangeLock = new Object();
    private boolean mUseSystemAutoDuck = false;
    private boolean mUseSystemHardwareDuck = false;
    private final Stack<FocusRequester> mFocusStack = new Stack<>();
    ArrayList<FocusRequester> mMultiAudioFocusList = new ArrayList<>();
    private boolean mNotifyFocusOwnerOnDuck = true;
    private ArrayList<IAudioPolicyCallback> mFocusFollowers = new ArrayList<>();
    private IAudioPolicyCallback mFocusPolicy = null;
    private IAudioPolicyCallback mPreviousFocusPolicy = null;
    private HashMap<String, FocusRequester> mFocusOwnersForFocusPolicy = new HashMap<>();

    protected MediaFocusControl(Context cntxt, PlayerFocusEnforcer pfe) {
        this.mMultiAudioFocusEnabled = false;
        this.mContext = cntxt;
        this.mAppOps = (AppOpsManager) cntxt.getSystemService("appops");
        this.mFocusEnforcer = pfe;
        this.mMultiAudioFocusEnabled = Settings.System.getInt(this.mContext.getContentResolver(), "multi_audio_focus_enabled", 0) != 0;
    }

    protected void dump(PrintWriter pw) {
        pw.println("\nMediaFocusControl dump time: " + DateFormat.getTimeInstance().format(new Date()));
        dumpFocusStack(pw);
        pw.println("\n");
        mEventLogger.dump(pw);
        dumpMultiAudioFocus(pw);
    }

    @Override // com.android.server.audio.PlayerFocusEnforcer
    public boolean duckPlayers(FocusRequester winner, FocusRequester loser, boolean forceDuck) {
        return this.mFocusEnforcer.duckPlayers(winner, loser, forceDuck);
    }

    @Override // com.android.server.audio.PlayerFocusEnforcer
    public boolean duckPlayers(FocusRequester loser) {
        return this.mFocusEnforcer.duckPlayers(loser);
    }

    @Override // com.android.server.audio.PlayerFocusEnforcer
    public boolean duckRequestPlayer(FocusRequester loser) {
        return this.mFocusEnforcer.duckRequestPlayer(loser);
    }

    @Override // com.android.server.audio.PlayerFocusEnforcer
    public void unduckRequestPlayers(FocusRequester winner) {
        this.mFocusEnforcer.unduckRequestPlayers(winner);
    }

    @Override // com.android.server.audio.PlayerFocusEnforcer
    public void unduckPlayers(FocusRequester winner) {
        this.mFocusEnforcer.unduckPlayers(winner);
    }

    @Override // com.android.server.audio.PlayerFocusEnforcer
    public void mutePlayersForCall(int[] usagesToMute) {
        this.mFocusEnforcer.mutePlayersForCall(usagesToMute);
    }

    @Override // com.android.server.audio.PlayerFocusEnforcer
    public void unmutePlayersForCall() {
        this.mFocusEnforcer.unmutePlayersForCall();
    }

    void noFocusForSuspendedApp(String packageName, int uid) {
        synchronized (mAudioFocusLock) {
            List<String> clientsToRemove = new ArrayList<>();
            for (FocusRequester focusOwner : this.mFocusStack) {
                if (focusOwner.hasSameUid(uid) && focusOwner.hasSamePackage(packageName)) {
                    clientsToRemove.add(focusOwner.getClientId());
                    mEventLogger.log(new AudioEventLogger.StringEvent("focus owner:" + focusOwner.getClientId() + " in uid:" + uid + " pack: " + packageName + " getting AUDIOFOCUS_LOSS due to app suspension").printLog(TAG));
                    focusOwner.dispatchFocusChange(-1);
                }
            }
            for (String clientToRemove : clientsToRemove) {
                removeFocusStackEntry(clientToRemove, false, true);
            }
        }
    }

    boolean hasAudioFocusUsers() {
        boolean z;
        synchronized (mAudioFocusLock) {
            z = !this.mFocusStack.empty();
        }
        return z;
    }

    protected void discardAudioFocusOwner() {
        synchronized (mAudioFocusLock) {
            if (!this.mFocusStack.empty()) {
                FocusRequester exFocusOwner = this.mFocusStack.pop();
                exFocusOwner.handleFocusLoss(-1, null, false);
                exFocusOwner.release();
            }
        }
    }

    private void notifyTopOfAudioFocusStack() {
        if (!this.mFocusStack.empty() && canReassignAudioFocus()) {
            this.mFocusStack.peek().handleFocusGain(1);
        }
        if (this.mMultiAudioFocusEnabled && !this.mMultiAudioFocusList.isEmpty()) {
            for (FocusRequester multifr : this.mMultiAudioFocusList) {
                if (isLockedFocusOwner(multifr)) {
                    multifr.handleFocusGain(1);
                }
            }
        }
    }

    private void propagateFocusLossFromGain_syncAf(int focusGain, FocusRequester fr, boolean forceDuck) {
        List<String> clientsToRemove = new LinkedList<>();
        if (!this.mFocusStack.empty()) {
            for (FocusRequester focusLoser : this.mFocusStack) {
                boolean isDefinitiveLoss = focusLoser.handleFocusLossFromGain(focusGain, fr, forceDuck);
                if (isDefinitiveLoss) {
                    clientsToRemove.add(focusLoser.getClientId());
                }
            }
        }
        if (this.mMultiAudioFocusEnabled && !this.mMultiAudioFocusList.isEmpty()) {
            for (FocusRequester multifocusLoser : this.mMultiAudioFocusList) {
                boolean isDefinitiveLoss2 = multifocusLoser.handleFocusLossFromGain(focusGain, fr, forceDuck);
                if (isDefinitiveLoss2) {
                    clientsToRemove.add(multifocusLoser.getClientId());
                }
            }
        }
        for (String clientToRemove : clientsToRemove) {
            removeFocusStackEntry(clientToRemove, false, true);
        }
    }

    private void dumpFocusStack(PrintWriter pw) {
        pw.println("\nAudio Focus stack entries (last is top of stack):");
        synchronized (mAudioFocusLock) {
            Iterator<FocusRequester> stackIterator = this.mFocusStack.iterator();
            while (stackIterator.hasNext()) {
                stackIterator.next().dump(pw);
            }
            pw.println("\n");
            if (this.mFocusPolicy == null) {
                pw.println("No external focus policy\n");
            } else {
                pw.println("External focus policy: " + this.mFocusPolicy + ", focus owners:\n");
                dumpExtFocusPolicyFocusOwners(pw);
            }
        }
        pw.println("\n");
        pw.println(" Notify on duck:  " + this.mNotifyFocusOwnerOnDuck + "\n");
        pw.println(" In ring or call: " + this.mRingOrCallActive + "\n");
    }

    private void removeFocusStackEntry(String clientToRemove, boolean signal, boolean notifyFocusFollowers) {
        if (!this.mFocusStack.empty() && this.mFocusStack.peek().hasSameClient(clientToRemove)) {
            FocusRequester fr = this.mFocusStack.pop();
            fr.release();
            if (notifyFocusFollowers) {
                AudioFocusInfo afi = fr.toAudioFocusInfo();
                afi.clearLossReceived();
                notifyExtPolicyFocusLoss_syncAf(afi, false);
            }
            if (signal) {
                notifyTopOfAudioFocusStack();
            }
        } else {
            Iterator<FocusRequester> stackIterator = this.mFocusStack.iterator();
            while (stackIterator.hasNext()) {
                FocusRequester fr2 = stackIterator.next();
                if (fr2.hasSameClient(clientToRemove)) {
                    Log.i(TAG, "AudioFocus  removeFocusStackEntry(): removing entry for " + clientToRemove);
                    stackIterator.remove();
                    fr2.release();
                }
            }
        }
        if (this.mMultiAudioFocusEnabled && !this.mMultiAudioFocusList.isEmpty()) {
            Iterator<FocusRequester> listIterator = this.mMultiAudioFocusList.iterator();
            while (listIterator.hasNext()) {
                FocusRequester fr3 = listIterator.next();
                if (fr3.hasSameClient(clientToRemove)) {
                    listIterator.remove();
                    fr3.release();
                }
            }
            if (signal) {
                notifyTopOfAudioFocusStack();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeFocusStackEntryOnDeath(IBinder cb) {
        boolean isTopOfStackForClientToRemove = !this.mFocusStack.isEmpty() && this.mFocusStack.peek().hasSameBinder(cb);
        Iterator<FocusRequester> stackIterator = this.mFocusStack.iterator();
        while (stackIterator.hasNext()) {
            FocusRequester fr = stackIterator.next();
            if (fr.hasSameBinder(cb)) {
                Log.i(TAG, "AudioFocus  removeFocusStackEntryOnDeath(): removing entry for " + cb);
                stackIterator.remove();
                fr.release();
            }
        }
        if (isTopOfStackForClientToRemove) {
            notifyTopOfAudioFocusStack();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeFocusEntryForExtPolicy(IBinder cb) {
        if (this.mFocusOwnersForFocusPolicy.isEmpty()) {
            return;
        }
        Set<Map.Entry<String, FocusRequester>> owners = this.mFocusOwnersForFocusPolicy.entrySet();
        Iterator<Map.Entry<String, FocusRequester>> ownerIterator = owners.iterator();
        while (ownerIterator.hasNext()) {
            Map.Entry<String, FocusRequester> owner = ownerIterator.next();
            FocusRequester fr = owner.getValue();
            if (fr.hasSameBinder(cb)) {
                ownerIterator.remove();
                fr.release();
                notifyExtFocusPolicyFocusAbandon_syncAf(fr.toAudioFocusInfo());
                return;
            }
        }
    }

    private boolean canReassignAudioFocus() {
        if (!this.mFocusStack.isEmpty() && isLockedFocusOwner(this.mFocusStack.peek())) {
            return false;
        }
        return true;
    }

    private boolean isLockedFocusOwner(FocusRequester fr) {
        return fr.hasSameClient("AudioFocus_For_Phone_Ring_And_Calls") || fr.isLockedFocusOwner();
    }

    private int pushBelowLockedFocusOwners(FocusRequester nfr) {
        int lastLockedFocusOwnerIndex = this.mFocusStack.size();
        for (int index = this.mFocusStack.size() - 1; index >= 0; index--) {
            if (isLockedFocusOwner(this.mFocusStack.elementAt(index))) {
                lastLockedFocusOwnerIndex = index;
            }
        }
        if (lastLockedFocusOwnerIndex == this.mFocusStack.size()) {
            Log.e(TAG, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()", new Exception());
            propagateFocusLossFromGain_syncAf(nfr.getGainRequest(), nfr, false);
            this.mFocusStack.push(nfr);
            return 1;
        }
        this.mFocusStack.insertElementAt(nfr, lastLockedFocusOwnerIndex);
        return 2;
    }

    protected class AudioFocusDeathHandler implements IBinder.DeathRecipient {
        private IBinder mCb;

        AudioFocusDeathHandler(IBinder cb) {
            this.mCb = cb;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (MediaFocusControl.mAudioFocusLock) {
                if (MediaFocusControl.this.mFocusPolicy != null) {
                    MediaFocusControl.this.removeFocusEntryForExtPolicy(this.mCb);
                } else {
                    MediaFocusControl.this.removeFocusStackEntryOnDeath(this.mCb);
                    if (MediaFocusControl.this.mMultiAudioFocusEnabled && !MediaFocusControl.this.mMultiAudioFocusList.isEmpty()) {
                        Iterator<FocusRequester> listIterator = MediaFocusControl.this.mMultiAudioFocusList.iterator();
                        while (listIterator.hasNext()) {
                            FocusRequester fr = listIterator.next();
                            if (fr.hasSameBinder(this.mCb)) {
                                listIterator.remove();
                                fr.release();
                            }
                        }
                    }
                }
            }
        }
    }

    protected void setDuckingInExtPolicyAvailable(boolean available) {
        this.mNotifyFocusOwnerOnDuck = !available;
    }

    boolean mustNotifyFocusOwnerOnDuck() {
        return this.mNotifyFocusOwnerOnDuck;
    }

    void addFocusFollower(IAudioPolicyCallback ff) {
        if (ff == null) {
            return;
        }
        synchronized (mAudioFocusLock) {
            boolean found = false;
            for (IAudioPolicyCallback pcb : this.mFocusFollowers) {
                if (pcb.asBinder().equals(ff.asBinder())) {
                    found = true;
                    break;
                }
            }
            if (found) {
                return;
            }
            this.mFocusFollowers.add(ff);
            notifyExtPolicyCurrentFocusAsync(ff);
        }
    }

    void removeFocusFollower(IAudioPolicyCallback ff) {
        if (ff == null) {
            return;
        }
        synchronized (mAudioFocusLock) {
            for (IAudioPolicyCallback pcb : this.mFocusFollowers) {
                if (pcb.asBinder().equals(ff.asBinder())) {
                    this.mFocusFollowers.remove(pcb);
                    break;
                }
            }
        }
    }

    void setFocusPolicy(IAudioPolicyCallback policy, boolean isTestFocusPolicy) {
        if (policy == null) {
            return;
        }
        synchronized (mAudioFocusLock) {
            if (isTestFocusPolicy) {
                this.mPreviousFocusPolicy = this.mFocusPolicy;
                this.mFocusPolicy = policy;
            } else {
                this.mFocusPolicy = policy;
            }
            throw th;
        }
    }

    void unsetFocusPolicy(IAudioPolicyCallback policy, boolean isTestFocusPolicy) {
        if (policy == null) {
            return;
        }
        synchronized (mAudioFocusLock) {
            if (this.mFocusPolicy == policy) {
                if (isTestFocusPolicy) {
                    this.mFocusPolicy = this.mPreviousFocusPolicy;
                } else {
                    this.mFocusPolicy = null;
                }
            }
        }
    }

    void notifyExtPolicyCurrentFocusAsync(final IAudioPolicyCallback pcb) {
        Thread thread = new Thread() { // from class: com.android.server.audio.MediaFocusControl.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                synchronized (MediaFocusControl.mAudioFocusLock) {
                    if (MediaFocusControl.this.mFocusStack.isEmpty()) {
                        return;
                    }
                    try {
                        pcb.notifyAudioFocusGrant(((FocusRequester) MediaFocusControl.this.mFocusStack.peek()).toAudioFocusInfo(), 1);
                    } catch (RemoteException e) {
                        Log.e(MediaFocusControl.TAG, "Can't call notifyAudioFocusGrant() on IAudioPolicyCallback " + pcb.asBinder(), e);
                    }
                }
            }
        };
        thread.start();
    }

    void notifyExtPolicyFocusGrant_syncAf(AudioFocusInfo afi, int requestResult) {
        for (IAudioPolicyCallback pcb : this.mFocusFollowers) {
            try {
                pcb.notifyAudioFocusGrant(afi, requestResult);
            } catch (RemoteException e) {
                Log.e(TAG, "Can't call notifyAudioFocusGrant() on IAudioPolicyCallback " + pcb.asBinder(), e);
            }
        }
    }

    void notifyExtPolicyFocusLoss_syncAf(AudioFocusInfo afi, boolean wasDispatched) {
        for (IAudioPolicyCallback pcb : this.mFocusFollowers) {
            try {
                pcb.notifyAudioFocusLoss(afi, wasDispatched);
            } catch (RemoteException e) {
                Log.e(TAG, "Can't call notifyAudioFocusLoss() on IAudioPolicyCallback " + pcb.asBinder(), e);
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x008f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean notifyExtFocusPolicyFocusRequest_syncAf(android.media.AudioFocusInfo r17, android.media.IAudioFocusDispatcher r18, android.os.IBinder r19) throws java.lang.Throwable {
        /*
            r16 = this;
            r7 = r16
            r8 = r17
            r9 = r19
            java.lang.Object r1 = r7.mExtFocusChangeLock
            monitor-enter(r1)
            long r2 = r7.mExtFocusChangeCounter     // Catch: java.lang.Throwable -> L8a
            r4 = 1
            long r4 = r4 + r2
            r7.mExtFocusChangeCounter = r4     // Catch: java.lang.Throwable -> L8a
            r8.setGen(r2)     // Catch: java.lang.Throwable -> L8a
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L8a
            java.util.HashMap<java.lang.String, com.android.server.audio.FocusRequester> r0 = r7.mFocusOwnersForFocusPolicy
            java.lang.String r1 = r17.getClientId()
            java.lang.Object r0 = r0.get(r1)
            r10 = r0
            com.android.server.audio.FocusRequester r10 = (com.android.server.audio.FocusRequester) r10
            r0 = 0
            if (r10 == 0) goto L34
            r11 = r18
            boolean r1 = r10.hasSameDispatcher(r11)
            if (r1 != 0) goto L32
            r10.release()
            r0 = 1
            r12 = r0
            goto L38
        L32:
            r12 = r0
            goto L38
        L34:
            r11 = r18
            r0 = 1
            r12 = r0
        L38:
            r13 = 0
            if (r12 == 0) goto L64
            com.android.server.audio.MediaFocusControl$AudioFocusDeathHandler r0 = new com.android.server.audio.MediaFocusControl$AudioFocusDeathHandler
            r0.<init>(r9)
            r14 = r0
            r9.linkToDeath(r14, r13)     // Catch: android.os.RemoteException -> L5f
            java.util.HashMap<java.lang.String, com.android.server.audio.FocusRequester> r0 = r7.mFocusOwnersForFocusPolicy
            java.lang.String r15 = r17.getClientId()
            com.android.server.audio.FocusRequester r6 = new com.android.server.audio.FocusRequester
            r1 = r6
            r2 = r17
            r3 = r18
            r4 = r19
            r5 = r14
            r13 = r6
            r6 = r16
            r1.<init>(r2, r3, r4, r5, r6)
            r0.put(r15, r13)
            goto L64
        L5f:
            r0 = move-exception
            r1 = r0
            r0 = r1
            r1 = 0
            return r1
        L64:
            android.media.audiopolicy.IAudioPolicyCallback r0 = r7.mFocusPolicy     // Catch: android.os.RemoteException -> L6b
            r1 = 1
            r0.notifyAudioFocusRequest(r8, r1)     // Catch: android.os.RemoteException -> L6b
            return r1
        L6b:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Can't call notifyAudioFocusRequest() on IAudioPolicyCallback "
            r1.append(r2)
            android.media.audiopolicy.IAudioPolicyCallback r2 = r7.mFocusPolicy
            android.os.IBinder r2 = r2.asBinder()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "MediaFocusControl"
            android.util.Log.e(r2, r1, r0)
            r1 = 0
            return r1
        L8a:
            r0 = move-exception
            r11 = r18
        L8d:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L8f
            throw r0
        L8f:
            r0 = move-exception
            goto L8d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.audio.MediaFocusControl.notifyExtFocusPolicyFocusRequest_syncAf(android.media.AudioFocusInfo, android.media.IAudioFocusDispatcher, android.os.IBinder):boolean");
    }

    void setFocusRequestResultFromExtPolicy(AudioFocusInfo afi, int requestResult) {
        synchronized (this.mExtFocusChangeLock) {
            if (afi.getGen() > this.mExtFocusChangeCounter) {
                return;
            }
            FocusRequester fr = this.mFocusOwnersForFocusPolicy.get(afi.getClientId());
            if (fr != null) {
                if (fr.hasSamePackage("com.lion.media.service")) {
                    AudioFocusInfo info = fr.toAudioFocusInfo();
                    Log.d(TAG, "usage=" + info.getAttributes().getUsage() + ", contentType=" + info.getAttributes().getContentType() + ", requestResult=" + requestResult + ", clientID=" + info.getClientId());
                }
                fr.dispatchFocusResultFromExtPolicy(requestResult);
            }
        }
    }

    boolean notifyExtFocusPolicyFocusAbandon_syncAf(AudioFocusInfo afi) {
        if (this.mFocusPolicy == null) {
            return false;
        }
        if (this.mUseSystemAutoDuck) {
            unduckSystemAutoDuckClient(afi.getClientId());
        }
        FocusRequester fr = this.mFocusOwnersForFocusPolicy.remove(afi.getClientId());
        if (fr != null) {
            fr.release();
        }
        try {
            this.mFocusPolicy.notifyAudioFocusAbandon(afi);
            return true;
        } catch (RemoteException e) {
            Log.e(TAG, "Can't call notifyAudioFocusAbandon() on IAudioPolicyCallback " + this.mFocusPolicy.asBinder(), e);
            return true;
        }
    }

    void setSystemAutoDuckStatus(boolean enable) {
        this.mUseSystemAutoDuck = enable;
    }

    void setSystemHardwareDuckStatus(boolean enable) {
        this.mUseSystemHardwareDuck = enable;
    }

    boolean unduckClientLegacy(String clientId) {
        FocusRequester fr = this.mFocusOwnersForFocusPolicy.get(clientId);
        if (fr == null) {
            Log.e(TAG, "unduckClient fail , fr is null  clientId " + clientId);
            return false;
        }
        unduckPlayers(fr);
        return true;
    }

    boolean isBypassFocusChangeToClient(int focusChange) {
        return focusChange == -1 || focusChange == 1 || focusChange == 3 || focusChange == 4;
    }

    void unduckSystemAutoDuckClient(String clientId) {
        FocusRequester fr = this.mFocusOwnersForFocusPolicy.get(clientId);
        if (fr == null) {
            Log.e(TAG, "unduckSystemAutoDuckClient fail , fr is null  clientId " + clientId);
            return;
        }
        Log.d(TAG, "unduckSystemAutoDuckClient " + clientId + " runDuck " + fr.getRunDuck() + " runDuck2 " + fr.getRunDuck2());
        if (fr.getRunDuck()) {
            unduckPlayers(fr);
            fr.setRunDuck(false);
        }
        if (fr.getRunDuck2()) {
            unduckRequestPlayers(fr);
            fr.setRunDuck2(false);
        }
    }

    boolean unduckSystemAutoDuckClient(String clientId, int focusChange) {
        FocusRequester fr = this.mFocusOwnersForFocusPolicy.get(clientId);
        if (fr == null) {
            Log.e(TAG, "unduckSystemAutoDuckClient fail , fr is null  clientId " + clientId + AudioService.focusChangeToString(focusChange));
            return false;
        }
        Log.d(TAG, "unduckSystemAutoDuckClient " + clientId + "runDuck " + fr.getRunDuck() + " runDuck2 " + fr.getRunDuck2() + " " + AudioService.focusChangeToString(focusChange));
        if (this.mUseSystemAutoDuck) {
            if (fr.getRunDuck()) {
                unduckPlayers(fr);
                fr.setRunDuck(false);
                return !isBypassFocusChangeToClient(focusChange);
            }
            if (fr.getRunDuck2()) {
                unduckRequestPlayers(fr);
                fr.setRunDuck2(false);
                return !isBypassFocusChangeToClient(focusChange);
            }
        }
        return false;
    }

    void duckClientIfNeeded(String clientId) {
        FocusRequester fr = this.mFocusOwnersForFocusPolicy.get(clientId);
        if (fr == null) {
            Log.e(TAG, "duckClientIfNeeded  fail,fr is null  clientId " + clientId);
            return;
        }
        if (this.mUseSystemAutoDuck) {
            Log.d(TAG, "duckClientIfNeeded mUseSystemAutoDuck clientId " + clientId);
            if (fr.getRunDuck2()) {
                Log.d(TAG, "duckClientIfNeeded ignore to duck1 mode ,as before in duck2 mode ");
                return;
            } else {
                duckPlayers(fr);
                fr.setRunDuck(true);
                return;
            }
        }
        for (FocusRequester nfr : this.mFocusOwnersForFocusPolicy.values()) {
            if (nfr.getGainRequest() == 3) {
                duckPlayers(nfr, fr, true);
                return;
            }
        }
    }

    void duckRequestClientIfNeeded(String clientId) {
        FocusRequester fr = this.mFocusOwnersForFocusPolicy.get(clientId);
        if (fr == null) {
            Log.e(TAG, "duckRequestClientIfNeeded  fail,fr is null  clientId " + clientId);
            return;
        }
        if (this.mUseSystemAutoDuck) {
            Log.d(TAG, "duckRequestClientIfNeeded mUseSystemAutoDuck clientId " + clientId);
            duckRequestPlayer(fr);
            fr.setRunDuck2(true);
        }
    }

    int dispatchFocusChange(AudioFocusInfo afi, int focusChange) {
        FocusRequester fr;
        synchronized (mAudioFocusLock) {
            if (this.mFocusPolicy == null) {
                return 0;
            }
            if (focusChange == -1) {
                fr = this.mFocusOwnersForFocusPolicy.remove(afi.getClientId());
            } else {
                fr = this.mFocusOwnersForFocusPolicy.get(afi.getClientId());
            }
            if (fr == null) {
                return 0;
            }
            return fr.dispatchFocusChange(focusChange);
        }
    }

    private void dumpExtFocusPolicyFocusOwners(PrintWriter pw) {
        Set<Map.Entry<String, FocusRequester>> owners = this.mFocusOwnersForFocusPolicy.entrySet();
        for (Map.Entry<String, FocusRequester> owner : owners) {
            FocusRequester fr = owner.getValue();
            fr.dump(pw);
        }
    }

    protected int getCurrentAudioFocus() {
        synchronized (mAudioFocusLock) {
            if (this.mFocusStack.empty()) {
                return 0;
            }
            return this.mFocusStack.peek().getGainRequest();
        }
    }

    protected static int getFocusRampTimeMs(int focusGain, AudioAttributes attr) {
        int usage = attr.getUsage();
        if (usage == 16) {
            return 700;
        }
        if (usage == 1002) {
            return 500;
        }
        if (usage != 1003) {
            switch (usage) {
                case 1:
                case 14:
                    return 1000;
                case 2:
                case 3:
                case 5:
                case 7:
                case 8:
                case 9:
                case 10:
                case 13:
                    return 500;
                case 4:
                case 6:
                case 11:
                case 12:
                    return 700;
                default:
                    return 0;
            }
        }
        return 700;
    }

    /* JADX WARN: Failed to apply debug info
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r24v0 ??, new type: android.os.IBinder
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyDebugInfo(TypeUpdate.java:77)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:137)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:133)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:75)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 8 more
     */
    /* JADX WARN: Failed to calculate best type for var: r21v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r21v0 'this'  ??, new type: com.android.server.audio.MediaFocusControl
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:319)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 8 more
     */
    /* JADX WARN: Failed to calculate best type for var: r21v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r21v0 'this'  ??, new type: com.android.server.audio.MediaFocusControl
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryToFixIncompatiblePrimitives(FixTypesVisitor.java:820)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 8 more
     */
    /* JADX WARN: Failed to calculate best type for var: r21v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r21v0 'this'  ??, new type: com.android.server.audio.MediaFocusControl
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to set immutable type for var: r21v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r21v0 'this'  ??, new type: com.android.server.audio.MediaFocusControl
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:319)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to set immutable type for var: r21v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r21v0 'this'  ??, new type: com.android.server.audio.MediaFocusControl
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryToFixIncompatiblePrimitives(FixTypesVisitor.java:820)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to set immutable type for var: r21v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r21v0 'this'  ??, new type: com.android.server.audio.MediaFocusControl
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r21v0 'this'  com.android.server.audio.MediaFocusControl, new type: com.android.server.audio.MediaFocusControl
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.applyResolvedVars(TypeSearch.java:100)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:76)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.runMultiVariableSearch(FixTypesVisitor.java:119)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 5 more
     */
    protected int requestAudioFocus(AudioAttributes audioAttributes, int i, IBinder iBinder, IAudioFocusDispatcher iAudioFocusDispatcher, String str, String str2, int i2, int i3, boolean z) throws Throwable {
        AudioFocusInfo audioFocusInfo;
        Object[] objArr;
        boolean z2;
        new MediaMetrics.Item(mMetricsId).setUid(Binder.getCallingUid()).set(MediaMetrics.Property.CALLING_PACKAGE, str2).set(MediaMetrics.Property.CLIENT_NAME, str).set(MediaMetrics.Property.EVENT, "requestAudioFocus").set(MediaMetrics.Property.FLAGS, Integer.valueOf(i2)).set(MediaMetrics.Property.FOCUS_CHANGE_HINT, AudioManager.audioFocusToString(i)).record();
        mEventLogger.log(new AudioEventLogger.StringEvent("requestAudioFocus() from uid/pid " + Binder.getCallingUid() + SliceClientPermissions.SliceAuthority.DELIMITER + Binder.getCallingPid() + " usage/content=" + audioAttributes.usageToString() + SliceClientPermissions.SliceAuthority.DELIMITER + audioAttributes.contentTypeToString() + " clientId=" + str + " callingPack=" + str2 + " req=" + i + " flags=0x" + Integer.toHexString(i2) + " sdk=" + i3).printLog(TAG));
        if (!iBinder.pingBinder()) {
            Log.e(TAG, " AudioFocus DOA client for requestAudioFocus(), aborting.");
            return 0;
        }
        if (this.mAppOps.noteOp(32, Binder.getCallingUid(), str2) != 0) {
            return 0;
        }
        synchronized (mAudioFocusLock) {
            try {
                try {
                    if (this.mFocusStack.size() > 100) {
                        Log.e(TAG, "Max AudioFocus stack size reached, failing requestAudioFocus()");
                        return 0;
                    }
                    boolean z3 = (!this.mRingOrCallActive) & ("AudioFocus_For_Phone_Ring_And_Calls".compareTo(str) == 0);
                    if (z3) {
                        this.mRingOrCallActive = true;
                    }
                    if (this.mFocusPolicy != null) {
                        try {
                            audioFocusInfo = new AudioFocusInfo(audioAttributes, Binder.getCallingUid(), str, str2, i, 0, i2, i3);
                        } catch (Throwable th) {
                            th = th;
                        }
                    } else {
                        audioFocusInfo = null;
                    }
                    if (canReassignAudioFocus()) {
                        objArr = false;
                    } else {
                        if ((i2 & 1) == 0) {
                            return 0;
                        }
                        objArr = true;
                    }
                    if (this.mFocusPolicy != null) {
                        if (notifyExtFocusPolicyFocusRequest_syncAf(audioFocusInfo, iAudioFocusDispatcher, iBinder)) {
                            return 100;
                        }
                        return r7;
                    }
                    AudioFocusDeathHandler audioFocusDeathHandler = new AudioFocusDeathHandler(iBinder);
                    try {
                        try {
                            try {
                                iBinder.linkToDeath(audioFocusDeathHandler, r7);
                                if (this.mFocusStack.empty() || !this.mFocusStack.peek().hasSameClient(str)) {
                                    z2 = true;
                                } else {
                                    FocusRequester focusRequesterPeek = this.mFocusStack.peek();
                                    if (focusRequesterPeek.getGainRequest() == i && focusRequesterPeek.getGrantFlags() == i2) {
                                        iBinder.unlinkToDeath(audioFocusDeathHandler, r7);
                                        notifyExtPolicyFocusGrant_syncAf(focusRequesterPeek.toAudioFocusInfo(), 1);
                                        return 1;
                                    }
                                    z2 = true;
                                    if (objArr == false) {
                                        this.mFocusStack.pop();
                                        focusRequesterPeek.release();
                                    }
                                }
                                removeFocusStackEntry(str, r7, r7);
                                boolean z4 = z2;
                                FocusRequester focusRequester = new FocusRequester(audioAttributes, i, i2, iAudioFocusDispatcher, iBinder, str, audioFocusDeathHandler, str2, Binder.getCallingUid(), this, i3);
                                if (this.mMultiAudioFocusEnabled && i == z4) {
                                    if (!z3) {
                                        boolean z5 = true;
                                        if (!this.mMultiAudioFocusList.isEmpty()) {
                                            Iterator<FocusRequester> it = this.mMultiAudioFocusList.iterator();
                                            while (it.hasNext()) {
                                                if (it.next().getClientUid() == Binder.getCallingUid()) {
                                                    z5 = false;
                                                    break;
                                                }
                                            }
                                        }
                                        if (z5) {
                                            this.mMultiAudioFocusList.add(focusRequester);
                                        }
                                        focusRequester.handleFocusGainFromRequest(z4 ? 1 : 0);
                                        notifyExtPolicyFocusGrant_syncAf(focusRequester.toAudioFocusInfo(), z4 ? 1 : 0);
                                        return z4 ? 1 : 0;
                                    }
                                    if (!this.mMultiAudioFocusList.isEmpty()) {
                                        Iterator<FocusRequester> it2 = this.mMultiAudioFocusList.iterator();
                                        while (it2.hasNext()) {
                                            it2.next().handleFocusLossFromGain(i, focusRequester, z);
                                        }
                                    }
                                }
                                if (objArr == true) {
                                    int iPushBelowLockedFocusOwners = pushBelowLockedFocusOwners(focusRequester);
                                    if (iPushBelowLockedFocusOwners != 0) {
                                        notifyExtPolicyFocusGrant_syncAf(focusRequester.toAudioFocusInfo(), iPushBelowLockedFocusOwners);
                                    }
                                    return iPushBelowLockedFocusOwners;
                                }
                                propagateFocusLossFromGain_syncAf(i, focusRequester, z);
                                this.mFocusStack.push(focusRequester);
                                focusRequester.handleFocusGainFromRequest(z4 ? 1 : 0);
                                notifyExtPolicyFocusGrant_syncAf(focusRequester.toAudioFocusInfo(), z4 ? 1 : 0);
                                if (z3 & true) {
                                    runAudioCheckerForRingOrCallAsync(z4);
                                }
                                return z4 ? 1 : 0;
                            } catch (RemoteException e) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("AudioFocus  requestAudioFocus() could not link to ");
                                sb.append(iBinder);
                                sb.append(" binder death");
                                Log.w(TAG, sb.toString());
                                return r7;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
            throw th;
        }
    }

    protected int abandonAudioFocus(IAudioFocusDispatcher fl, String clientId, AudioAttributes aa, String callingPackageName) {
        new MediaMetrics.Item(mMetricsId).setUid(Binder.getCallingUid()).set(MediaMetrics.Property.CALLING_PACKAGE, callingPackageName).set(MediaMetrics.Property.CLIENT_NAME, clientId).set(MediaMetrics.Property.EVENT, "abandonAudioFocus").record();
        AudioEventLogger audioEventLogger = mEventLogger;
        StringBuilder sb = new StringBuilder();
        sb.append("abandonAudioFocus() from uid/pid ");
        sb.append(Binder.getCallingUid());
        sb.append(SliceClientPermissions.SliceAuthority.DELIMITER);
        sb.append(Binder.getCallingPid());
        sb.append(" usage=");
        sb.append(aa == null ? "" : aa.usageToString());
        sb.append(" clientId=");
        sb.append(clientId);
        sb.append(" callingPack=");
        sb.append(callingPackageName);
        audioEventLogger.log(new AudioEventLogger.StringEvent(sb.toString()).printLog(TAG));
        try {
            synchronized (mAudioFocusLock) {
                if (this.mFocusPolicy != null) {
                    AudioFocusInfo afi = new AudioFocusInfo(aa, Binder.getCallingUid(), clientId, callingPackageName, 0, 0, 0, 0);
                    notifyExtPolicyFocusLoss_syncAf(afi, true);
                    if (notifyExtFocusPolicyFocusAbandon_syncAf(afi)) {
                        return 1;
                    }
                }
                boolean exitingRingOrCall = this.mRingOrCallActive & ("AudioFocus_For_Phone_Ring_And_Calls".compareTo(clientId) == 0);
                if (exitingRingOrCall) {
                    this.mRingOrCallActive = false;
                }
                removeFocusStackEntry(clientId, true, true);
                if (exitingRingOrCall & true) {
                    runAudioCheckerForRingOrCallAsync(false);
                }
                return 1;
            }
        } catch (ConcurrentModificationException cme) {
            Log.e(TAG, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused " + cme);
            cme.printStackTrace();
        }
    }

    protected void unregisterAudioFocusClient(String clientId) {
        synchronized (mAudioFocusLock) {
            removeFocusStackEntry(clientId, false, true);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.server.audio.MediaFocusControl$2] */
    private void runAudioCheckerForRingOrCallAsync(final boolean enteringRingOrCall) {
        new Thread() { // from class: com.android.server.audio.MediaFocusControl.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                if (enteringRingOrCall) {
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                synchronized (MediaFocusControl.mAudioFocusLock) {
                    if (MediaFocusControl.this.mRingOrCallActive) {
                        MediaFocusControl.this.mFocusEnforcer.mutePlayersForCall(MediaFocusControl.USAGES_TO_MUTE_IN_RING_OR_CALL);
                    } else {
                        MediaFocusControl.this.mFocusEnforcer.unmutePlayersForCall();
                    }
                }
            }
        }.start();
    }

    public void updateMultiAudioFocus(boolean z) {
        Log.d(TAG, "updateMultiAudioFocus( " + z + " )");
        this.mMultiAudioFocusEnabled = z;
        Settings.System.putInt(this.mContext.getContentResolver(), "multi_audio_focus_enabled", z ? 1 : 0);
        if (!this.mFocusStack.isEmpty()) {
            this.mFocusStack.peek().handleFocusLoss(-1, null, false);
        }
        if (!z && !this.mMultiAudioFocusList.isEmpty()) {
            Iterator<FocusRequester> it = this.mMultiAudioFocusList.iterator();
            while (it.hasNext()) {
                it.next().handleFocusLoss(-1, null, false);
            }
            this.mMultiAudioFocusList.clear();
        }
    }

    public boolean getMultiAudioFocusEnabled() {
        return this.mMultiAudioFocusEnabled;
    }

    private void dumpMultiAudioFocus(PrintWriter pw) {
        pw.println("Multi Audio Focus enabled :" + this.mMultiAudioFocusEnabled);
        if (!this.mMultiAudioFocusList.isEmpty()) {
            pw.println("Multi Audio Focus List:");
            pw.println("------------------------------");
            for (FocusRequester multifr : this.mMultiAudioFocusList) {
                multifr.dump(pw);
            }
            pw.println("------------------------------");
        }
    }
}

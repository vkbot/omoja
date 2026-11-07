package com.android.server.am;

import android.app.IStopUserCallback;
import android.os.Trace;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.ProgressReporter;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class UserState {
    public static final int STATE_BOOTING = 0;
    public static final int STATE_RUNNING_LOCKED = 1;
    public static final int STATE_RUNNING_UNLOCKED = 3;
    public static final int STATE_RUNNING_UNLOCKING = 2;
    public static final int STATE_SHUTDOWN = 5;
    public static final int STATE_STOPPING = 4;
    private static final String TAG = "ActivityManager";
    public final UserHandle mHandle;
    public final ProgressReporter mUnlockProgress;
    public boolean switching;
    public boolean tokenProvided;
    public final ArrayList<IStopUserCallback> mStopCallbacks = new ArrayList<>();
    public final ArrayList<KeyEvictedCallback> mKeyEvictedCallbacks = new ArrayList<>();
    public int state = 0;
    public int lastState = 0;
    final ArrayMap<String, Long> mProviderLastReportedFg = new ArrayMap<>();

    public interface KeyEvictedCallback {
        void keyEvicted(int i);
    }

    public UserState(UserHandle handle) {
        this.mHandle = handle;
        this.mUnlockProgress = new ProgressReporter(handle.getIdentifier());
    }

    public boolean setState(int oldState, int newState) {
        if (this.state == oldState) {
            setState(newState);
            return true;
        }
        Slog.w(TAG, "Expected user " + this.mHandle.getIdentifier() + " in state " + stateToString(oldState) + " but was in state " + stateToString(this.state));
        return false;
    }

    public void setState(int newState) {
        if (newState == this.state) {
            return;
        }
        int userId = this.mHandle.getIdentifier();
        if (this.state != 0) {
            Trace.asyncTraceEnd(64L, stateToString(this.state) + " " + userId, userId);
        }
        if (newState != 5) {
            Trace.asyncTraceBegin(64L, stateToString(newState) + " " + userId, userId);
        }
        Slog.i(TAG, "User " + userId + " state changed from " + stateToString(this.state) + " to " + stateToString(newState));
        EventLogTags.writeAmUserStateChanged(userId, newState);
        this.lastState = this.state;
        this.state = newState;
    }

    public static String stateToString(int state) {
        if (state == 0) {
            return "BOOTING";
        }
        if (state == 1) {
            return "RUNNING_LOCKED";
        }
        if (state == 2) {
            return "RUNNING_UNLOCKING";
        }
        if (state == 3) {
            return "RUNNING_UNLOCKED";
        }
        if (state == 4) {
            return "STOPPING";
        }
        if (state == 5) {
            return "SHUTDOWN";
        }
        return Integer.toString(state);
    }

    public static int stateToProtoEnum(int state) {
        if (state == 0) {
            return 0;
        }
        if (state == 1) {
            return 1;
        }
        if (state == 2) {
            return 2;
        }
        if (state == 3) {
            return 3;
        }
        if (state == 4) {
            return 4;
        }
        if (state != 5) {
            return state;
        }
        return 5;
    }

    void dump(String prefix, PrintWriter pw) {
        pw.print(prefix);
        pw.print("state=");
        pw.print(stateToString(this.state));
        if (this.switching) {
            pw.print(" SWITCHING");
        }
        pw.println();
    }

    void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        proto.write(1159641169921L, stateToProtoEnum(this.state));
        proto.write(1133871366146L, this.switching);
        proto.end(token);
    }
}

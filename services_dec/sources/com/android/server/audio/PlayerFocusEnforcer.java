package com.android.server.audio;

/* JADX INFO: loaded from: classes.dex */
public interface PlayerFocusEnforcer {
    boolean duckPlayers(FocusRequester focusRequester);

    boolean duckPlayers(FocusRequester focusRequester, FocusRequester focusRequester2, boolean z);

    boolean duckRequestPlayer(FocusRequester focusRequester);

    void mutePlayersForCall(int[] iArr);

    void unduckPlayers(FocusRequester focusRequester);

    void unduckRequestPlayers(FocusRequester focusRequester);

    void unmutePlayersForCall();
}

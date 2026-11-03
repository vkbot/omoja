package com.mega.nexus.statemachine;

import android.os.Message;

/* JADX INFO: loaded from: classes2.dex */
public class State implements IState {
    @Override // com.mega.nexus.statemachine.IState
    public void enter() {
    }

    @Override // com.mega.nexus.statemachine.IState
    public void exit() {
    }

    @Override // com.mega.nexus.statemachine.IState
    public boolean processMessage(Message message) {
        return false;
    }

    protected State() {
    }

    @Override // com.mega.nexus.statemachine.IState
    public String getName() {
        String name = getClass().getName();
        return name.substring(name.lastIndexOf(36) + 1);
    }
}

package com.mega.nexus.statemachine;

import android.os.Message;

/* JADX INFO: loaded from: classes2.dex */
public interface IState {
    public static final boolean HANDLED = true;
    public static final boolean NOT_HANDLED = false;

    void enter();

    void exit();

    String getName();

    boolean processMessage(Message message);
}

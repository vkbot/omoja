package com.android.server.power;

import android.util.proto.ProtoOutputStream;

/* JADX INFO: loaded from: classes.dex */
interface SuspendBlocker {
    void acquire();

    void dumpDebug(ProtoOutputStream protoOutputStream, long j);

    void release();
}

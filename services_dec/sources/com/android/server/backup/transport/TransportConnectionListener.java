package com.android.server.backup.transport;

import com.android.internal.backup.IBackupTransport;

/* JADX INFO: loaded from: classes.dex */
public interface TransportConnectionListener {
    void onTransportConnectionResult(IBackupTransport iBackupTransport, TransportClient transportClient);
}

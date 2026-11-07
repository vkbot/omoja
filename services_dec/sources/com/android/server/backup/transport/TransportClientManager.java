package com.android.server.backup.transport;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.android.server.backup.TransportManager;
import java.io.PrintWriter;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
public class TransportClientManager {
    private static final ComponentName ENCRYPTING_TRANSPORT = new ComponentName("com.android.server.backup.encryption", "com.android.server.backup.encryption.BackupEncryptionService");
    private static final String ENCRYPTING_TRANSPORT_REAL_TRANSPORT_KEY = "transport";
    private static final String SERVICE_ACTION_ENCRYPTING_TRANSPORT = "android.encryption.BACKUP_ENCRYPTION";
    private static final String TAG = "TransportClientManager";
    private final Context mContext;
    private final Function<ComponentName, Intent> mIntentFunction;
    private Map<TransportClient, String> mTransportClientsCallerMap;
    private int mTransportClientsCreated;
    private final Object mTransportClientsLock;
    private final TransportStats mTransportStats;
    private final int mUserId;

    public static Intent getEncryptingTransportIntent(ComponentName tranportComponent) {
        return new Intent(SERVICE_ACTION_ENCRYPTING_TRANSPORT).setComponent(ENCRYPTING_TRANSPORT).putExtra(ENCRYPTING_TRANSPORT_REAL_TRANSPORT_KEY, tranportComponent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Intent getRealTransportIntent(ComponentName transportComponent) {
        return new Intent(TransportManager.SERVICE_ACTION_TRANSPORT_HOST).setComponent(transportComponent);
    }

    public static Intent getRealTransportIntent(Intent encryptingTransportIntent) {
        ComponentName transportComponent = (ComponentName) encryptingTransportIntent.getParcelableExtra(ENCRYPTING_TRANSPORT_REAL_TRANSPORT_KEY);
        Intent intent = getRealTransportIntent(transportComponent).putExtras(encryptingTransportIntent.getExtras());
        intent.removeExtra(ENCRYPTING_TRANSPORT_REAL_TRANSPORT_KEY);
        return intent;
    }

    public static TransportClientManager createEncryptingClientManager(int userId, Context context, TransportStats transportStats) {
        return new TransportClientManager(userId, context, transportStats, new Function() { // from class: com.android.server.backup.transport.-$$Lambda$5qQlhWKmjH1n5R2ruIgEe8DQOfY
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return TransportClientManager.getEncryptingTransportIntent((ComponentName) obj);
            }
        });
    }

    public TransportClientManager(int userId, Context context, TransportStats transportStats) {
        this(userId, context, transportStats, new Function() { // from class: com.android.server.backup.transport.-$$Lambda$TransportClientManager$3-d3ib7qD5oE9G-iWpfeoufnGXc
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return TransportClientManager.getRealTransportIntent((ComponentName) obj);
            }
        });
    }

    private TransportClientManager(int userId, Context context, TransportStats transportStats, Function<ComponentName, Intent> intentFunction) {
        this.mTransportClientsLock = new Object();
        this.mTransportClientsCreated = 0;
        this.mTransportClientsCallerMap = new WeakHashMap();
        this.mUserId = userId;
        this.mContext = context;
        this.mTransportStats = transportStats;
        this.mIntentFunction = intentFunction;
    }

    public TransportClient getTransportClient(ComponentName transportComponent, String caller) {
        return getTransportClient(transportComponent, (Bundle) null, caller);
    }

    public TransportClient getTransportClient(ComponentName transportComponent, Bundle extras, String caller) {
        Intent bindIntent = this.mIntentFunction.apply(transportComponent);
        if (extras != null) {
            bindIntent.putExtras(extras);
        }
        return getTransportClient(transportComponent, caller, bindIntent);
    }

    private TransportClient getTransportClient(ComponentName transportComponent, String caller, Intent bindIntent) {
        TransportClient transportClient;
        synchronized (this.mTransportClientsLock) {
            transportClient = new TransportClient(this.mUserId, this.mContext, this.mTransportStats, bindIntent, transportComponent, Integer.toString(this.mTransportClientsCreated), caller);
            this.mTransportClientsCallerMap.put(transportClient, caller);
            this.mTransportClientsCreated++;
            TransportUtils.log(3, TAG, TransportUtils.formatMessage(null, caller, "Retrieving " + transportClient));
        }
        return transportClient;
    }

    public void disposeOfTransportClient(TransportClient transportClient, String caller) {
        transportClient.unbind(caller);
        transportClient.markAsDisposed();
        synchronized (this.mTransportClientsLock) {
            TransportUtils.log(3, TAG, TransportUtils.formatMessage(null, caller, "Disposing of " + transportClient));
            this.mTransportClientsCallerMap.remove(transportClient);
        }
    }

    public void dump(PrintWriter pw) {
        pw.println("Transport clients created: " + this.mTransportClientsCreated);
        synchronized (this.mTransportClientsLock) {
            pw.println("Current transport clients: " + this.mTransportClientsCallerMap.size());
            for (TransportClient transportClient : this.mTransportClientsCallerMap.keySet()) {
                String caller = this.mTransportClientsCallerMap.get(transportClient);
                pw.println("    " + transportClient + " [" + caller + "]");
                for (String logEntry : transportClient.getLogBuffer()) {
                    pw.println("        " + logEntry);
                }
            }
        }
    }
}

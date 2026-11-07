package com.android.server.location;

import android.app.PendingIntent;
import android.content.Context;
import android.hardware.contexthub.V1_0.ContextHubMsg;
import android.hardware.contexthub.V1_0.IContexthub;
import android.hardware.location.ContextHubInfo;
import android.hardware.location.IContextHubClient;
import android.hardware.location.IContextHubClientCallback;
import android.hardware.location.NanoAppMessage;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.util.proto.ProtoOutputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
class ContextHubClientManager {
    public static final int ACTION_CANCELLED = 2;
    public static final int ACTION_REGISTERED = 0;
    public static final int ACTION_UNREGISTERED = 1;
    private static final DateFormat DATE_FORMAT = new SimpleDateFormat("MM/dd HH:mm:ss.SSS");
    private static final boolean DEBUG_LOG_ENABLED = false;
    private static final int MAX_CLIENT_ID = 32767;
    private static final int NUM_CLIENT_RECORDS = 20;
    private static final String TAG = "ContextHubClientManager";
    private final Context mContext;
    private final IContexthub mContextHubProxy;
    private final ConcurrentHashMap<Short, ContextHubClientBroker> mHostEndPointIdToClientMap = new ConcurrentHashMap<>();
    private int mNextHostEndPointId = 0;
    private final ConcurrentLinkedEvictingDeque<RegistrationRecord> mRegistrationRecordDeque = new ConcurrentLinkedEvictingDeque<>(20);

    @Retention(RetentionPolicy.SOURCE)
    public @interface Action {
    }

    private class ConcurrentLinkedEvictingDeque<E> extends ConcurrentLinkedDeque<E> {
        private int mSize;

        ConcurrentLinkedEvictingDeque(int size) {
            this.mSize = size;
        }

        @Override // java.util.concurrent.ConcurrentLinkedDeque, java.util.AbstractCollection, java.util.Collection, java.util.Deque, java.util.Queue
        public boolean add(E elem) {
            boolean zAdd;
            synchronized (this) {
                if (size() == this.mSize) {
                    poll();
                }
                zAdd = super.add(elem);
            }
            return zAdd;
        }
    }

    private class RegistrationRecord {
        private final int mAction;
        private final String mBroker;
        private final long mTimestamp = System.currentTimeMillis();

        RegistrationRecord(String broker, int action) {
            this.mBroker = broker;
            this.mAction = action;
        }

        void dump(ProtoOutputStream proto) {
            proto.write(1112396529665L, this.mTimestamp);
            proto.write(1120986464258L, this.mAction);
            proto.write(1138166333443L, this.mBroker);
        }

        public String toString() {
            String out = "" + ContextHubClientManager.DATE_FORMAT.format(new Date(this.mTimestamp)) + " ";
            StringBuilder sb = new StringBuilder();
            sb.append(out);
            sb.append(this.mAction == 0 ? "+ " : "- ");
            String out2 = sb.toString();
            String out3 = out2 + this.mBroker;
            if (this.mAction == 2) {
                return out3 + " (cancelled)";
            }
            return out3;
        }
    }

    ContextHubClientManager(Context context, IContexthub contextHubProxy) {
        this.mContext = context;
        this.mContextHubProxy = contextHubProxy;
    }

    /* JADX WARN: Type inference failed for: r7v0, types: [android.os.IBinder, com.android.server.location.ContextHubClientBroker, java.lang.Object] */
    IContextHubClient registerClient(ContextHubInfo contextHubInfo, IContextHubClientCallback iContextHubClientCallback) {
        ?? contextHubClientBroker;
        synchronized (this) {
            short hostEndPointId = getHostEndPointId();
            contextHubClientBroker = new ContextHubClientBroker(this.mContext, this.mContextHubProxy, this, contextHubInfo, hostEndPointId, iContextHubClientCallback);
            this.mHostEndPointIdToClientMap.put(Short.valueOf(hostEndPointId), (ContextHubClientBroker) contextHubClientBroker);
            this.mRegistrationRecordDeque.add(new RegistrationRecord(contextHubClientBroker.toString(), 0));
        }
        try {
            contextHubClientBroker.attachDeathRecipient();
            Log.d(TAG, "Registered client with host endpoint ID " + ((int) contextHubClientBroker.getHostEndPointId()));
            return IContextHubClient.Stub.asInterface((IBinder) contextHubClientBroker);
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to attach death recipient to client");
            contextHubClientBroker.close();
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [android.os.IBinder, com.android.server.location.ContextHubClientBroker] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    IContextHubClient registerClient(ContextHubInfo contextHubInfo, PendingIntent pendingIntent, long j) throws Throwable {
        String str = "Regenerated";
        synchronized (this) {
            try {
                try {
                    ContextHubClientBroker clientBroker = getClientBroker(contextHubInfo.getId(), pendingIntent, j);
                    ?? r0 = clientBroker;
                    if (clientBroker == null) {
                        short hostEndPointId = getHostEndPointId();
                        ContextHubClientBroker contextHubClientBroker = new ContextHubClientBroker(this.mContext, this.mContextHubProxy, this, contextHubInfo, hostEndPointId, pendingIntent, j);
                        this.mHostEndPointIdToClientMap.put(Short.valueOf(hostEndPointId), contextHubClientBroker);
                        str = "Registered";
                        this.mRegistrationRecordDeque.add(new RegistrationRecord(contextHubClientBroker.toString(), 0));
                        r0 = contextHubClientBroker;
                    }
                    Log.d(TAG, str + " client with host endpoint ID " + ((int) r0.getHostEndPointId()));
                    return IContextHubClient.Stub.asInterface((IBinder) r0);
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    void onMessageFromNanoApp(int contextHubId, ContextHubMsg message) {
        NanoAppMessage clientMessage = ContextHubServiceUtil.createNanoAppMessage(message);
        if (clientMessage.isBroadcastMessage()) {
            broadcastMessage(contextHubId, clientMessage);
            return;
        }
        ContextHubClientBroker proxy = this.mHostEndPointIdToClientMap.get(Short.valueOf(message.hostEndPoint));
        if (proxy != null) {
            proxy.sendMessageToClient(clientMessage);
            return;
        }
        Log.e(TAG, "Cannot send message to unregistered client (host endpoint ID = " + ((int) message.hostEndPoint) + ")");
    }

    void unregisterClient(short hostEndPointId) {
        ContextHubClientBroker broker = this.mHostEndPointIdToClientMap.get(Short.valueOf(hostEndPointId));
        if (broker != null) {
            int action = broker.isPendingIntentCancelled() ? 2 : 1;
            this.mRegistrationRecordDeque.add(new RegistrationRecord(broker.toString(), action));
        }
        if (this.mHostEndPointIdToClientMap.remove(Short.valueOf(hostEndPointId)) != null) {
            Log.d(TAG, "Unregistered client with host endpoint ID " + ((int) hostEndPointId));
            return;
        }
        Log.e(TAG, "Cannot unregister non-existing client with host endpoint ID " + ((int) hostEndPointId));
    }

    void onNanoAppLoaded(int contextHubId, final long nanoAppId) {
        forEachClientOfHub(contextHubId, new Consumer() { // from class: com.android.server.location.-$$Lambda$ContextHubClientManager$VPD5ebhe8Z67S8QKuTR4KzeshK8
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ContextHubClientBroker) obj).onNanoAppLoaded(nanoAppId);
            }
        });
    }

    void onNanoAppUnloaded(int contextHubId, final long nanoAppId) {
        forEachClientOfHub(contextHubId, new Consumer() { // from class: com.android.server.location.-$$Lambda$ContextHubClientManager$gN_vRogwyzr9qBjrQpKwwHzrFAo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ContextHubClientBroker) obj).onNanoAppUnloaded(nanoAppId);
            }
        });
    }

    void onHubReset(int contextHubId) {
        forEachClientOfHub(contextHubId, new Consumer() { // from class: com.android.server.location.-$$Lambda$ContextHubClientManager$aRAV9Gn84ao-4XOiN6tFizfZjHo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ContextHubClientBroker) obj).onHubReset();
            }
        });
    }

    void onNanoAppAborted(int contextHubId, final long nanoAppId, final int abortCode) {
        forEachClientOfHub(contextHubId, new Consumer() { // from class: com.android.server.location.-$$Lambda$ContextHubClientManager$WHzSH2f-YJ3FaiF7JXPP-7oX9EE
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ContextHubClientBroker) obj).onNanoAppAborted(nanoAppId, abortCode);
            }
        });
    }

    private short getHostEndPointId() {
        if (this.mHostEndPointIdToClientMap.size() == 32768) {
            throw new IllegalStateException("Could not register client - max limit exceeded");
        }
        int id = this.mNextHostEndPointId;
        for (int i = 0; i <= MAX_CLIENT_ID; i++) {
            int i2 = 0;
            if (!this.mHostEndPointIdToClientMap.containsKey(Short.valueOf((short) id))) {
                this.mNextHostEndPointId = id != MAX_CLIENT_ID ? id + 1 : 0;
                break;
            }
            if (id != MAX_CLIENT_ID) {
                i2 = id + 1;
            }
            id = i2;
        }
        return (short) id;
    }

    private void broadcastMessage(int contextHubId, final NanoAppMessage message) {
        forEachClientOfHub(contextHubId, new Consumer() { // from class: com.android.server.location.-$$Lambda$ContextHubClientManager$f15OSYbsSONpkXn7GinnrBPeumw
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ContextHubClientBroker) obj).sendMessageToClient(message);
            }
        });
    }

    private void forEachClientOfHub(int contextHubId, Consumer<ContextHubClientBroker> callback) {
        for (ContextHubClientBroker broker : this.mHostEndPointIdToClientMap.values()) {
            if (broker.getAttachedContextHubId() == contextHubId) {
                callback.accept(broker);
            }
        }
    }

    private ContextHubClientBroker getClientBroker(int contextHubId, PendingIntent pendingIntent, long nanoAppId) {
        for (ContextHubClientBroker broker : this.mHostEndPointIdToClientMap.values()) {
            if (broker.hasPendingIntent(pendingIntent, nanoAppId) && broker.getAttachedContextHubId() == contextHubId) {
                return broker;
            }
        }
        return null;
    }

    void dump(ProtoOutputStream proto) {
        for (ContextHubClientBroker broker : this.mHostEndPointIdToClientMap.values()) {
            long token = proto.start(2246267895809L);
            broker.dump(proto);
            proto.end(token);
        }
        Iterator<RegistrationRecord> it = this.mRegistrationRecordDeque.descendingIterator();
        while (it.hasNext()) {
            long token2 = proto.start(2246267895810L);
            it.next().dump(proto);
            proto.end(token2);
        }
    }

    public String toString() {
        String out = "";
        for (ContextHubClientBroker broker : this.mHostEndPointIdToClientMap.values()) {
            out = out + broker + "\n";
        }
        String out2 = out + "\nRegistration history:\n";
        Iterator<RegistrationRecord> it = this.mRegistrationRecordDeque.descendingIterator();
        while (it.hasNext()) {
            out2 = out2 + it.next() + "\n";
        }
        return out2;
    }
}

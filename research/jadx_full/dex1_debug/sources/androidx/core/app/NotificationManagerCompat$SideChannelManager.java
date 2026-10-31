package androidx.core.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Handler$Callback;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationManagerCompat$SideChannelManager implements Handler$Callback, ServiceConnection {
    private static final int MSG_QUEUE_TASK = 0;
    private static final int MSG_RETRY_LISTENER_QUEUE = 3;
    private static final int MSG_SERVICE_CONNECTED = 1;
    private static final int MSG_SERVICE_DISCONNECTED = 2;
    private final Context mContext;
    private final Handler mHandler;
    private final HandlerThread mHandlerThread;
    private final Map<ComponentName, NotificationManagerCompat$SideChannelManager$ListenerRecord> mRecordMap = new HashMap();
    private Set<String> mCachedEnabledPackages = new HashSet();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationManagerCompat$SideChannelManager(Context context) {
        this.mContext = context;
        HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper(), this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean ensureServiceBound(NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord) {
        if (notificationManagerCompat$SideChannelManager$ListenerRecord.bound) {
            return true;
        }
        boolean zBindService = this.mContext.bindService(new Intent(NotificationManagerCompat.ACTION_BIND_SIDE_CHANNEL).setComponent(notificationManagerCompat$SideChannelManager$ListenerRecord.componentName), this, 33);
        notificationManagerCompat$SideChannelManager$ListenerRecord.bound = zBindService;
        if (zBindService) {
            notificationManagerCompat$SideChannelManager$ListenerRecord.retryCount = 0;
        } else {
            Log.w("NotifManCompat", "Unable to bind to listener " + notificationManagerCompat$SideChannelManager$ListenerRecord.componentName);
            this.mContext.unbindService(this);
        }
        return notificationManagerCompat$SideChannelManager$ListenerRecord.bound;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void ensureServiceUnbound(NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord) {
        if (notificationManagerCompat$SideChannelManager$ListenerRecord.bound) {
            this.mContext.unbindService(this);
            notificationManagerCompat$SideChannelManager$ListenerRecord.bound = false;
        }
        notificationManagerCompat$SideChannelManager$ListenerRecord.service = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void handleQueueTask(NotificationManagerCompat$Task notificationManagerCompat$Task) {
        updateListenerMap();
        for (NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord : this.mRecordMap.values()) {
            notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.add(notificationManagerCompat$Task);
            processListenerQueue(notificationManagerCompat$SideChannelManager$ListenerRecord);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void handleRetryListenerQueue(ComponentName componentName) {
        NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord = this.mRecordMap.get(componentName);
        if (notificationManagerCompat$SideChannelManager$ListenerRecord != null) {
            processListenerQueue(notificationManagerCompat$SideChannelManager$ListenerRecord);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void handleServiceConnected(ComponentName componentName, IBinder iBinder) {
        NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord = this.mRecordMap.get(componentName);
        if (notificationManagerCompat$SideChannelManager$ListenerRecord != null) {
            notificationManagerCompat$SideChannelManager$ListenerRecord.service = android.support.v4.app.b.asInterface(iBinder);
            notificationManagerCompat$SideChannelManager$ListenerRecord.retryCount = 0;
            processListenerQueue(notificationManagerCompat$SideChannelManager$ListenerRecord);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void handleServiceDisconnected(ComponentName componentName) {
        NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord = this.mRecordMap.get(componentName);
        if (notificationManagerCompat$SideChannelManager$ListenerRecord != null) {
            ensureServiceUnbound(notificationManagerCompat$SideChannelManager$ListenerRecord);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void processListenerQueue(NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord) {
        if (Log.isLoggable("NotifManCompat", 3)) {
            Log.d("NotifManCompat", "Processing component " + notificationManagerCompat$SideChannelManager$ListenerRecord.componentName + ", " + notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.size() + " queued tasks");
        }
        if (notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.isEmpty()) {
            return;
        }
        if (!ensureServiceBound(notificationManagerCompat$SideChannelManager$ListenerRecord) || notificationManagerCompat$SideChannelManager$ListenerRecord.service == null) {
            scheduleListenerRetry(notificationManagerCompat$SideChannelManager$ListenerRecord);
            return;
        }
        while (true) {
            NotificationManagerCompat$Task notificationManagerCompat$TaskPeek = notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.peek();
            if (notificationManagerCompat$TaskPeek == null) {
                break;
            }
            try {
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Sending task " + notificationManagerCompat$TaskPeek);
                }
                notificationManagerCompat$TaskPeek.send(notificationManagerCompat$SideChannelManager$ListenerRecord.service);
                notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.remove();
            } catch (DeadObjectException unused) {
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Remote service has died: " + notificationManagerCompat$SideChannelManager$ListenerRecord.componentName);
                }
            } catch (RemoteException e) {
                Log.w("NotifManCompat", "RemoteException communicating with " + notificationManagerCompat$SideChannelManager$ListenerRecord.componentName, e);
            }
        }
        if (notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.isEmpty()) {
            return;
        }
        scheduleListenerRetry(notificationManagerCompat$SideChannelManager$ListenerRecord);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void scheduleListenerRetry(NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord) {
        if (this.mHandler.hasMessages(3, notificationManagerCompat$SideChannelManager$ListenerRecord.componentName)) {
            return;
        }
        int i9 = notificationManagerCompat$SideChannelManager$ListenerRecord.retryCount;
        int i10 = i9 + 1;
        notificationManagerCompat$SideChannelManager$ListenerRecord.retryCount = i10;
        if (i10 <= 6) {
            int i11 = (1 << i9) * 1000;
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Scheduling retry for " + i11 + " ms");
            }
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(3, notificationManagerCompat$SideChannelManager$ListenerRecord.componentName), i11);
            return;
        }
        Log.w("NotifManCompat", "Giving up on delivering " + notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.size() + " tasks to " + notificationManagerCompat$SideChannelManager$ListenerRecord.componentName + " after " + notificationManagerCompat$SideChannelManager$ListenerRecord.retryCount + " retries");
        notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateListenerMap() {
        Set<String> enabledListenerPackages = NotificationManagerCompat.getEnabledListenerPackages(this.mContext);
        if (enabledListenerPackages.equals(this.mCachedEnabledPackages)) {
            return;
        }
        this.mCachedEnabledPackages = enabledListenerPackages;
        List<ResolveInfo> listQueryIntentServices = this.mContext.getPackageManager().queryIntentServices(new Intent().setAction(NotificationManagerCompat.ACTION_BIND_SIDE_CHANNEL), 0);
        HashSet<ComponentName> hashSet = new HashSet();
        for (ResolveInfo resolveInfo : listQueryIntentServices) {
            if (enabledListenerPackages.contains(resolveInfo.serviceInfo.packageName)) {
                ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                if (resolveInfo.serviceInfo.permission != null) {
                    Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                } else {
                    hashSet.add(componentName);
                }
            }
        }
        for (ComponentName componentName2 : hashSet) {
            if (!this.mRecordMap.containsKey(componentName2)) {
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                }
                this.mRecordMap.put(componentName2, new NotificationManagerCompat$SideChannelManager$ListenerRecord(componentName2));
            }
        }
        Iterator<Map$Entry<ComponentName, NotificationManagerCompat$SideChannelManager$ListenerRecord>> it = this.mRecordMap.entrySet().iterator();
        while (it.hasNext()) {
            Map$Entry<ComponentName, NotificationManagerCompat$SideChannelManager$ListenerRecord> next = it.next();
            if (!hashSet.contains(next.getKey())) {
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Removing listener record for " + next.getKey());
                }
                ensureServiceUnbound(next.getValue());
                it.remove();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Handler$Callback
    public boolean handleMessage(Message message) {
        int i9 = message.what;
        if (i9 == 0) {
            handleQueueTask((NotificationManagerCompat$Task) message.obj);
            return true;
        }
        if (i9 == 1) {
            NotificationManagerCompat$ServiceConnectedEvent notificationManagerCompat$ServiceConnectedEvent = (NotificationManagerCompat$ServiceConnectedEvent) message.obj;
            handleServiceConnected(notificationManagerCompat$ServiceConnectedEvent.componentName, notificationManagerCompat$ServiceConnectedEvent.iBinder);
            return true;
        }
        if (i9 == 2) {
            handleServiceDisconnected((ComponentName) message.obj);
            return true;
        }
        if (i9 != 3) {
            return false;
        }
        handleRetryListenerQueue((ComponentName) message.obj);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("NotifManCompat", 3)) {
            Log.d("NotifManCompat", "Connected to service " + componentName);
        }
        this.mHandler.obtainMessage(1, new NotificationManagerCompat$ServiceConnectedEvent(componentName, iBinder)).sendToTarget();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("NotifManCompat", 3)) {
            Log.d("NotifManCompat", "Disconnected from service " + componentName);
        }
        this.mHandler.obtainMessage(2, componentName).sendToTarget();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void queueTask(NotificationManagerCompat$Task notificationManagerCompat$Task) {
        this.mHandler.obtainMessage(0, notificationManagerCompat$Task).sendToTarget();
    }
}

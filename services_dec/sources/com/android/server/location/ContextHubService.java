package com.android.server.location;

import android.app.PendingIntent;
import android.content.Context;
import android.database.ContentObserver;
import android.hardware.contexthub.V1_0.ContextHub;
import android.hardware.contexthub.V1_0.ContextHubMsg;
import android.hardware.contexthub.V1_0.HubAppInfo;
import android.hardware.contexthub.V1_0.IContexthubCallback;
import android.hardware.location.ContextHubInfo;
import android.hardware.location.ContextHubMessage;
import android.hardware.location.ContextHubTransaction;
import android.hardware.location.IContextHubCallback;
import android.hardware.location.IContextHubClient;
import android.hardware.location.IContextHubClientCallback;
import android.hardware.location.IContextHubService;
import android.hardware.location.IContextHubTransactionCallback;
import android.hardware.location.NanoApp;
import android.hardware.location.NanoAppBinary;
import android.hardware.location.NanoAppFilter;
import android.hardware.location.NanoAppInstanceInfo;
import android.hardware.location.NanoAppMessage;
import android.hardware.location.NanoAppState;
import android.location.LocationManager;
import android.os.Handler;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.Log;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.DumpUtils;
import com.android.server.utils.PriorityDump;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class ContextHubService extends IContextHubService.Stub {
    private static final boolean DEBUG_LOG_ENABLED = false;
    public static final int MSG_DISABLE_NANO_APP = 2;
    public static final int MSG_ENABLE_NANO_APP = 1;
    public static final int MSG_HUB_RESET = 7;
    public static final int MSG_LOAD_NANO_APP = 3;
    public static final int MSG_QUERY_MEMORY = 6;
    public static final int MSG_QUERY_NANO_APPS = 5;
    public static final int MSG_UNLOAD_NANO_APP = 4;
    private static final int OS_APP_INSTANCE = -1;
    private static final String TAG = "ContextHubService";
    private final ContextHubClientManager mClientManager;
    private final Context mContext;
    private final Map<Integer, ContextHubInfo> mContextHubIdToInfoMap;
    private final List<ContextHubInfo> mContextHubInfoList;
    private final IContextHubWrapper mContextHubWrapper;
    private final Map<Integer, IContextHubClient> mDefaultClientMap;
    private final ContextHubTransactionManager mTransactionManager;
    private final RemoteCallbackList<IContextHubCallback> mCallbacksList = new RemoteCallbackList<>();
    private final NanoAppStateManager mNanoAppStateManager = new NanoAppStateManager();

    private class ContextHubServiceCallback extends IContexthubCallback.Stub {
        private final int mContextHubId;

        ContextHubServiceCallback(int contextHubId) {
            this.mContextHubId = contextHubId;
        }

        @Override // android.hardware.contexthub.V1_0.IContexthubCallback
        public void handleClientMsg(ContextHubMsg message) {
            ContextHubService.this.handleClientMessageCallback(this.mContextHubId, message);
        }

        @Override // android.hardware.contexthub.V1_0.IContexthubCallback
        public void handleTxnResult(int transactionId, int result) {
            ContextHubService.this.handleTransactionResultCallback(this.mContextHubId, transactionId, result);
        }

        @Override // android.hardware.contexthub.V1_0.IContexthubCallback
        public void handleHubEvent(int eventType) {
            ContextHubService.this.handleHubEventCallback(this.mContextHubId, eventType);
        }

        @Override // android.hardware.contexthub.V1_0.IContexthubCallback
        public void handleAppAbort(long nanoAppId, int abortCode) {
            ContextHubService.this.handleAppAbortCallback(this.mContextHubId, nanoAppId, abortCode);
        }

        @Override // android.hardware.contexthub.V1_0.IContexthubCallback
        public void handleAppsInfo(ArrayList<HubAppInfo> nanoAppInfoList) {
            ContextHubService.this.handleQueryAppsCallback(this.mContextHubId, nanoAppInfoList);
        }
    }

    public ContextHubService(Context context) {
        List<ContextHub> hubList;
        this.mContext = context;
        IContextHubWrapper contextHubWrapper = getContextHubWrapper();
        this.mContextHubWrapper = contextHubWrapper;
        Handler handler = null;
        if (contextHubWrapper == null) {
            this.mTransactionManager = null;
            this.mClientManager = null;
            this.mDefaultClientMap = Collections.emptyMap();
            this.mContextHubIdToInfoMap = Collections.emptyMap();
            this.mContextHubInfoList = Collections.emptyList();
            return;
        }
        this.mClientManager = new ContextHubClientManager(this.mContext, this.mContextHubWrapper.getHub());
        this.mTransactionManager = new ContextHubTransactionManager(this.mContextHubWrapper.getHub(), this.mClientManager, this.mNanoAppStateManager);
        try {
            hubList = this.mContextHubWrapper.getHub().getHubs();
        } catch (RemoteException e) {
            Log.e(TAG, "RemoteException while getting Context Hub info", e);
            hubList = Collections.emptyList();
        }
        this.mContextHubIdToInfoMap = Collections.unmodifiableMap(ContextHubServiceUtil.createContextHubInfoMap(hubList));
        this.mContextHubInfoList = new ArrayList(this.mContextHubIdToInfoMap.values());
        HashMap<Integer, IContextHubClient> defaultClientMap = new HashMap<>();
        Iterator<Integer> it = this.mContextHubIdToInfoMap.keySet().iterator();
        while (it.hasNext()) {
            int contextHubId = it.next().intValue();
            ContextHubInfo contextHubInfo = this.mContextHubIdToInfoMap.get(Integer.valueOf(contextHubId));
            IContextHubClient client = this.mClientManager.registerClient(contextHubInfo, createDefaultClientCallback(contextHubId));
            defaultClientMap.put(Integer.valueOf(contextHubId), client);
            try {
                this.mContextHubWrapper.getHub().registerCallback(contextHubId, new ContextHubServiceCallback(contextHubId));
            } catch (RemoteException e2) {
                Log.e(TAG, "RemoteException while registering service callback for hub (ID = " + contextHubId + ")", e2);
            }
            queryNanoAppsInternal(contextHubId);
        }
        this.mDefaultClientMap = Collections.unmodifiableMap(defaultClientMap);
        if (this.mContextHubWrapper.supportsSettingNotifications()) {
            sendLocationSettingUpdate();
            this.mContext.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("location_mode"), true, new ContentObserver(handler) { // from class: com.android.server.location.ContextHubService.1
                @Override // android.database.ContentObserver
                public void onChange(boolean selfChange) {
                    ContextHubService.this.sendLocationSettingUpdate();
                }
            }, -1);
        }
    }

    private IContextHubClientCallback createDefaultClientCallback(final int contextHubId) {
        return new IContextHubClientCallback.Stub() { // from class: com.android.server.location.ContextHubService.2
            public void onMessageFromNanoApp(NanoAppMessage message) {
                int nanoAppHandle = ContextHubService.this.mNanoAppStateManager.getNanoAppHandle(contextHubId, message.getNanoAppId());
                ContextHubService.this.onMessageReceiptOldApi(message.getMessageType(), contextHubId, nanoAppHandle, message.getMessageBody());
            }

            public void onHubReset() {
                byte[] data = {0};
                ContextHubService.this.onMessageReceiptOldApi(7, contextHubId, -1, data);
            }

            public void onNanoAppAborted(long nanoAppId, int abortCode) {
            }

            public void onNanoAppLoaded(long nanoAppId) {
            }

            public void onNanoAppUnloaded(long nanoAppId) {
            }

            public void onNanoAppEnabled(long nanoAppId) {
            }

            public void onNanoAppDisabled(long nanoAppId) {
            }
        };
    }

    private IContextHubWrapper getContextHubWrapper() {
        IContextHubWrapper wrapper = IContextHubWrapper.maybeConnectTo1_1();
        if (wrapper == null) {
            return IContextHubWrapper.maybeConnectTo1_0();
        }
        return wrapper;
    }

    public int registerCallback(IContextHubCallback callback) throws RemoteException {
        checkPermissions();
        this.mCallbacksList.register(callback);
        Log.d(TAG, "Added callback, total callbacks " + this.mCallbacksList.getRegisteredCallbackCount());
        return 0;
    }

    public int[] getContextHubHandles() throws RemoteException {
        checkPermissions();
        return ContextHubServiceUtil.createPrimitiveIntArray(this.mContextHubIdToInfoMap.keySet());
    }

    public ContextHubInfo getContextHubInfo(int contextHubHandle) throws RemoteException {
        checkPermissions();
        if (!this.mContextHubIdToInfoMap.containsKey(Integer.valueOf(contextHubHandle))) {
            Log.e(TAG, "Invalid Context Hub handle " + contextHubHandle + " in getContextHubInfo");
            return null;
        }
        return this.mContextHubIdToInfoMap.get(Integer.valueOf(contextHubHandle));
    }

    public List<ContextHubInfo> getContextHubs() throws RemoteException {
        checkPermissions();
        return this.mContextHubInfoList;
    }

    private IContextHubTransactionCallback createLoadTransactionCallback(final int contextHubId, final NanoAppBinary nanoAppBinary) {
        return new IContextHubTransactionCallback.Stub() { // from class: com.android.server.location.ContextHubService.3
            public void onTransactionComplete(int result) {
                ContextHubService.this.handleLoadResponseOldApi(contextHubId, result, nanoAppBinary);
            }

            public void onQueryResponse(int result, List<NanoAppState> nanoAppStateList) {
            }
        };
    }

    private IContextHubTransactionCallback createUnloadTransactionCallback(final int contextHubId) {
        return new IContextHubTransactionCallback.Stub() { // from class: com.android.server.location.ContextHubService.4
            public void onTransactionComplete(int result) {
                ContextHubService.this.handleUnloadResponseOldApi(contextHubId, result);
            }

            public void onQueryResponse(int result, List<NanoAppState> nanoAppStateList) {
            }
        };
    }

    private IContextHubTransactionCallback createQueryTransactionCallback(final int contextHubId) {
        return new IContextHubTransactionCallback.Stub() { // from class: com.android.server.location.ContextHubService.5
            public void onTransactionComplete(int result) {
            }

            public void onQueryResponse(int result, List<NanoAppState> nanoAppStateList) {
                byte[] data = {(byte) result};
                ContextHubService.this.onMessageReceiptOldApi(5, contextHubId, -1, data);
            }
        };
    }

    public int loadNanoApp(int contextHubHandle, NanoApp nanoApp) throws RemoteException {
        checkPermissions();
        if (this.mContextHubWrapper == null) {
            return -1;
        }
        if (!isValidContextHubId(contextHubHandle)) {
            Log.e(TAG, "Invalid Context Hub handle " + contextHubHandle + " in loadNanoApp");
            return -1;
        }
        if (nanoApp == null) {
            Log.e(TAG, "NanoApp cannot be null in loadNanoApp");
            return -1;
        }
        NanoAppBinary nanoAppBinary = new NanoAppBinary(nanoApp.getAppBinary());
        IContextHubTransactionCallback onCompleteCallback = createLoadTransactionCallback(contextHubHandle, nanoAppBinary);
        ContextHubServiceTransaction transaction = this.mTransactionManager.createLoadTransaction(contextHubHandle, nanoAppBinary, onCompleteCallback);
        this.mTransactionManager.addTransaction(transaction);
        return 0;
    }

    public int unloadNanoApp(int nanoAppHandle) throws RemoteException {
        checkPermissions();
        if (this.mContextHubWrapper == null) {
            return -1;
        }
        NanoAppInstanceInfo info = this.mNanoAppStateManager.getNanoAppInstanceInfo(nanoAppHandle);
        if (info == null) {
            Log.e(TAG, "Invalid nanoapp handle " + nanoAppHandle + " in unloadNanoApp");
            return -1;
        }
        int contextHubId = info.getContexthubId();
        long nanoAppId = info.getAppId();
        IContextHubTransactionCallback onCompleteCallback = createUnloadTransactionCallback(contextHubId);
        ContextHubServiceTransaction transaction = this.mTransactionManager.createUnloadTransaction(contextHubId, nanoAppId, onCompleteCallback);
        this.mTransactionManager.addTransaction(transaction);
        return 0;
    }

    public NanoAppInstanceInfo getNanoAppInstanceInfo(int nanoAppHandle) throws RemoteException {
        checkPermissions();
        return this.mNanoAppStateManager.getNanoAppInstanceInfo(nanoAppHandle);
    }

    public int[] findNanoAppOnHub(int contextHubHandle, final NanoAppFilter filter) throws RemoteException {
        checkPermissions();
        final ArrayList<Integer> foundInstances = new ArrayList<>();
        if (filter != null) {
            this.mNanoAppStateManager.foreachNanoAppInstanceInfo(new Consumer() { // from class: com.android.server.location.-$$Lambda$ContextHubService$yrt4Ybb62ufyqsQQMJoTJ2JMw_4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ContextHubService.lambda$findNanoAppOnHub$0(filter, foundInstances, (NanoAppInstanceInfo) obj);
                }
            });
        }
        int[] retArray = new int[foundInstances.size()];
        for (int i = 0; i < foundInstances.size(); i++) {
            retArray[i] = foundInstances.get(i).intValue();
        }
        return retArray;
    }

    static /* synthetic */ void lambda$findNanoAppOnHub$0(NanoAppFilter filter, ArrayList foundInstances, NanoAppInstanceInfo info) {
        if (filter.testMatch(info)) {
            foundInstances.add(Integer.valueOf(info.getHandle()));
        }
    }

    private int queryNanoAppsInternal(int contextHubId) {
        if (this.mContextHubWrapper == null) {
            return 1;
        }
        IContextHubTransactionCallback onCompleteCallback = createQueryTransactionCallback(contextHubId);
        ContextHubServiceTransaction transaction = this.mTransactionManager.createQueryTransaction(contextHubId, onCompleteCallback);
        this.mTransactionManager.addTransaction(transaction);
        return 0;
    }

    public int sendMessage(int contextHubHandle, int nanoAppHandle, ContextHubMessage msg) throws RemoteException {
        checkPermissions();
        if (this.mContextHubWrapper == null) {
            return -1;
        }
        if (msg == null) {
            Log.e(TAG, "ContextHubMessage cannot be null in sendMessage");
            return -1;
        }
        if (msg.getData() == null) {
            Log.e(TAG, "ContextHubMessage message body cannot be null in sendMessage");
            return -1;
        }
        if (!isValidContextHubId(contextHubHandle)) {
            Log.e(TAG, "Invalid Context Hub handle " + contextHubHandle + " in sendMessage");
            return -1;
        }
        boolean success = false;
        if (nanoAppHandle == -1) {
            if (msg.getMsgType() == 5) {
                success = queryNanoAppsInternal(contextHubHandle) == 0;
            } else {
                Log.e(TAG, "Invalid OS message params of type " + msg.getMsgType());
            }
        } else {
            NanoAppInstanceInfo info = getNanoAppInstanceInfo(nanoAppHandle);
            if (info != null) {
                NanoAppMessage message = NanoAppMessage.createMessageToNanoApp(info.getAppId(), msg.getMsgType(), msg.getData());
                IContextHubClient client = this.mDefaultClientMap.get(Integer.valueOf(contextHubHandle));
                success = client.sendMessageToNanoApp(message) == 0;
            } else {
                Log.e(TAG, "Failed to send nanoapp message - nanoapp with handle " + nanoAppHandle + " does not exist.");
            }
        }
        return success ? 0 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleClientMessageCallback(int contextHubId, ContextHubMsg message) {
        this.mClientManager.onMessageFromNanoApp(contextHubId, message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLoadResponseOldApi(int contextHubId, int result, NanoAppBinary nanoAppBinary) {
        if (nanoAppBinary == null) {
            Log.e(TAG, "Nanoapp binary field was null for a load transaction");
            return;
        }
        byte[] data = new byte[5];
        data[0] = (byte) result;
        int nanoAppHandle = this.mNanoAppStateManager.getNanoAppHandle(contextHubId, nanoAppBinary.getNanoAppId());
        ByteBuffer.wrap(data, 1, 4).order(ByteOrder.nativeOrder()).putInt(nanoAppHandle);
        onMessageReceiptOldApi(3, contextHubId, -1, data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUnloadResponseOldApi(int contextHubId, int result) {
        byte[] data = {(byte) result};
        onMessageReceiptOldApi(4, contextHubId, -1, data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTransactionResultCallback(int contextHubId, int transactionId, int result) {
        this.mTransactionManager.onTransactionResponse(transactionId, result);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleHubEventCallback(int contextHubId, int eventType) {
        if (eventType == 1) {
            sendLocationSettingUpdate();
            this.mTransactionManager.onHubReset();
            queryNanoAppsInternal(contextHubId);
            this.mClientManager.onHubReset(contextHubId);
            return;
        }
        Log.i(TAG, "Received unknown hub event (hub ID = " + contextHubId + ", type = " + eventType + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAppAbortCallback(int contextHubId, long nanoAppId, int abortCode) {
        this.mClientManager.onNanoAppAborted(contextHubId, nanoAppId, abortCode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleQueryAppsCallback(int contextHubId, List<HubAppInfo> nanoAppInfoList) {
        List<NanoAppState> nanoAppStateList = ContextHubServiceUtil.createNanoAppStateList(nanoAppInfoList);
        this.mNanoAppStateManager.updateCache(contextHubId, nanoAppInfoList);
        this.mTransactionManager.onQueryResponse(nanoAppStateList);
    }

    private boolean isValidContextHubId(int contextHubId) {
        return this.mContextHubIdToInfoMap.containsKey(Integer.valueOf(contextHubId));
    }

    public IContextHubClient createClient(int contextHubId, IContextHubClientCallback clientCallback) throws RemoteException {
        checkPermissions();
        if (!isValidContextHubId(contextHubId)) {
            throw new IllegalArgumentException("Invalid context hub ID " + contextHubId);
        }
        if (clientCallback == null) {
            throw new NullPointerException("Cannot register client with null callback");
        }
        ContextHubInfo contextHubInfo = this.mContextHubIdToInfoMap.get(Integer.valueOf(contextHubId));
        return this.mClientManager.registerClient(contextHubInfo, clientCallback);
    }

    public IContextHubClient createPendingIntentClient(int contextHubId, PendingIntent pendingIntent, long nanoAppId) throws RemoteException {
        checkPermissions();
        if (!isValidContextHubId(contextHubId)) {
            throw new IllegalArgumentException("Invalid context hub ID " + contextHubId);
        }
        ContextHubInfo contextHubInfo = this.mContextHubIdToInfoMap.get(Integer.valueOf(contextHubId));
        return this.mClientManager.registerClient(contextHubInfo, pendingIntent, nanoAppId);
    }

    public void loadNanoAppOnHub(int contextHubId, IContextHubTransactionCallback transactionCallback, NanoAppBinary nanoAppBinary) throws RemoteException {
        checkPermissions();
        if (!checkHalProxyAndContextHubId(contextHubId, transactionCallback, 0)) {
            return;
        }
        if (nanoAppBinary == null) {
            Log.e(TAG, "NanoAppBinary cannot be null in loadNanoAppOnHub");
            transactionCallback.onTransactionComplete(2);
        } else {
            ContextHubServiceTransaction transaction = this.mTransactionManager.createLoadTransaction(contextHubId, nanoAppBinary, transactionCallback);
            this.mTransactionManager.addTransaction(transaction);
        }
    }

    public void unloadNanoAppFromHub(int contextHubId, IContextHubTransactionCallback transactionCallback, long nanoAppId) throws RemoteException {
        checkPermissions();
        if (!checkHalProxyAndContextHubId(contextHubId, transactionCallback, 1)) {
            return;
        }
        ContextHubServiceTransaction transaction = this.mTransactionManager.createUnloadTransaction(contextHubId, nanoAppId, transactionCallback);
        this.mTransactionManager.addTransaction(transaction);
    }

    public void enableNanoApp(int contextHubId, IContextHubTransactionCallback transactionCallback, long nanoAppId) throws RemoteException {
        checkPermissions();
        if (!checkHalProxyAndContextHubId(contextHubId, transactionCallback, 2)) {
            return;
        }
        ContextHubServiceTransaction transaction = this.mTransactionManager.createEnableTransaction(contextHubId, nanoAppId, transactionCallback);
        this.mTransactionManager.addTransaction(transaction);
    }

    public void disableNanoApp(int contextHubId, IContextHubTransactionCallback transactionCallback, long nanoAppId) throws RemoteException {
        checkPermissions();
        if (!checkHalProxyAndContextHubId(contextHubId, transactionCallback, 3)) {
            return;
        }
        ContextHubServiceTransaction transaction = this.mTransactionManager.createDisableTransaction(contextHubId, nanoAppId, transactionCallback);
        this.mTransactionManager.addTransaction(transaction);
    }

    public void queryNanoApps(int contextHubId, IContextHubTransactionCallback transactionCallback) throws RemoteException {
        checkPermissions();
        if (!checkHalProxyAndContextHubId(contextHubId, transactionCallback, 4)) {
            return;
        }
        ContextHubServiceTransaction transaction = this.mTransactionManager.createQueryTransaction(contextHubId, transactionCallback);
        this.mTransactionManager.addTransaction(transaction);
    }

    protected void dump(FileDescriptor fd, final PrintWriter pw, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, pw)) {
            for (String arg : args) {
                if (PriorityDump.PROTO_ARG.equals(arg)) {
                    dump(new ProtoOutputStream(fd));
                    return;
                }
            }
            pw.println("Dumping ContextHub Service");
            pw.println("");
            pw.println("=================== CONTEXT HUBS ====================");
            for (ContextHubInfo hubInfo : this.mContextHubIdToInfoMap.values()) {
                pw.println(hubInfo);
            }
            pw.println("");
            pw.println("=================== NANOAPPS ====================");
            this.mNanoAppStateManager.foreachNanoAppInstanceInfo(new Consumer() { // from class: com.android.server.location.-$$Lambda$ContextHubService$HPGvKluemttyVfAcSog-eXiJyHE
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    pw.println((NanoAppInstanceInfo) obj);
                }
            });
            pw.println("");
            pw.println("=================== CLIENTS ====================");
            pw.println(this.mClientManager);
        }
    }

    private void dump(final ProtoOutputStream proto) {
        this.mContextHubIdToInfoMap.values().forEach(new Consumer() { // from class: com.android.server.location.-$$Lambda$ContextHubService$CF_XmCHU9Bf2P5yun6nYrbm6Fpk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ContextHubService.lambda$dump$2(proto, (ContextHubInfo) obj);
            }
        });
        long token = proto.start(1146756268034L);
        this.mClientManager.dump(proto);
        proto.end(token);
        proto.flush();
    }

    static /* synthetic */ void lambda$dump$2(ProtoOutputStream proto, ContextHubInfo hubInfo) {
        long token = proto.start(2246267895809L);
        hubInfo.dump(proto);
        proto.end(token);
    }

    private void checkPermissions() {
        ContextHubServiceUtil.checkPermissions(this.mContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int onMessageReceiptOldApi(int msgType, int contextHubHandle, int appInstance, byte[] data) {
        if (data == null) {
            return -1;
        }
        int callbacksCount = this.mCallbacksList.beginBroadcast();
        if (callbacksCount < 1) {
            return 0;
        }
        ContextHubMessage msg = new ContextHubMessage(msgType, 0, data);
        for (int i = 0; i < callbacksCount; i++) {
            IContextHubCallback callback = this.mCallbacksList.getBroadcastItem(i);
            try {
                callback.onMessageReceipt(contextHubHandle, appInstance, msg);
            } catch (RemoteException e) {
                Log.i(TAG, "Exception (" + e + ") calling remote callback (" + callback + ").");
            }
        }
        this.mCallbacksList.finishBroadcast();
        return 0;
    }

    private boolean checkHalProxyAndContextHubId(int contextHubId, IContextHubTransactionCallback callback, int transactionType) {
        if (this.mContextHubWrapper == null) {
            try {
                callback.onTransactionComplete(8);
            } catch (RemoteException e) {
                Log.e(TAG, "RemoteException while calling onTransactionComplete", e);
            }
            return false;
        }
        if (!isValidContextHubId(contextHubId)) {
            Log.e(TAG, "Cannot start " + ContextHubTransaction.typeToString(transactionType, false) + " transaction for invalid hub ID " + contextHubId);
            try {
                callback.onTransactionComplete(2);
            } catch (RemoteException e2) {
                Log.e(TAG, "RemoteException while calling onTransactionComplete", e2);
            }
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void sendLocationSettingUpdate() {
        this.mContextHubWrapper.onSettingChanged((byte) 0, ((LocationManager) this.mContext.getSystemService(LocationManager.class)).isLocationEnabledForUser(UserHandle.CURRENT) ? (byte) 1 : (byte) 0);
    }
}

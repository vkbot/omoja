package com.android.server.hdmi;

import android.hardware.hdmi.HdmiPortInfo;
import android.hardware.tv.cec.V1_0.CecMessage;
import android.hardware.tv.cec.V1_0.HotplugEvent;
import android.hardware.tv.cec.V1_0.IHdmiCec;
import android.hardware.tv.cec.V1_0.IHdmiCecCallback;
import android.os.Handler;
import android.os.IHwBinder;
import android.os.Looper;
import android.os.MessageQueue;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.util.IndentingPrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.function.Predicate;
import libcore.util.EmptyArray;
import sun.util.locale.LanguageTag;

/* JADX INFO: loaded from: classes.dex */
final class HdmiCecController {
    private static final byte[] EMPTY_BODY = EmptyArray.BYTE;
    protected static final int HDMI_CEC_HAL_DEATH_COOKIE = 353;
    private static final int INVALID_PHYSICAL_ADDRESS = 65535;
    private static final int MAX_HDMI_MESSAGE_HISTORY = 250;
    private static final int NUM_LOGICAL_ADDRESS = 16;
    private static final String TAG = "HdmiCecController";
    private Handler mControlHandler;
    private Handler mIoHandler;
    private final NativeWrapper mNativeWrapperImpl;
    private final HdmiControlService mService;
    private final Predicate<Integer> mRemoteDeviceAddressPredicate = new Predicate<Integer>() { // from class: com.android.server.hdmi.HdmiCecController.1
        @Override // java.util.function.Predicate
        public boolean test(Integer address) {
            return !HdmiCecController.this.isAllocatedLocalDeviceAddress(address.intValue());
        }
    };
    private final Predicate<Integer> mSystemAudioAddressPredicate = new Predicate<Integer>() { // from class: com.android.server.hdmi.HdmiCecController.2
        @Override // java.util.function.Predicate
        public boolean test(Integer address) {
            return HdmiUtils.getTypeFromAddress(address.intValue()) == 5;
        }
    };
    private final SparseArray<HdmiCecLocalDevice> mLocalDevices = new SparseArray<>();
    private final ArrayBlockingQueue<Dumpable> mMessageHistory = new ArrayBlockingQueue<>(MAX_HDMI_MESSAGE_HISTORY);
    private final List<Integer> mNeverAssignLogicalAddresses = HdmiControlService.getIntList(SystemProperties.get("ro.hdmi.property_hdmi_cec_never_assign_logical_addresses"));

    interface AllocateAddressCallback {
        void onAllocated(int i, int i2);
    }

    protected interface NativeWrapper {
        int nativeAddLogicalAddress(int i);

        void nativeClearLogicalAddress();

        void nativeEnableAudioReturnChannel(int i, boolean z);

        int nativeGetPhysicalAddress();

        HdmiPortInfo[] nativeGetPortInfos();

        int nativeGetVendorId();

        int nativeGetVersion();

        String nativeInit();

        boolean nativeIsConnected(int i);

        int nativeSendCecCommand(int i, int i2, byte[] bArr);

        void nativeSetLanguage(String str);

        void nativeSetOption(int i, boolean z);

        void setCallback(HdmiCecCallback hdmiCecCallback);
    }

    private static native int nativeAddLogicalAddress(long j, int i);

    private static native void nativeClearLogicalAddress(long j);

    private static native void nativeEnableAudioReturnChannel(long j, int i, boolean z);

    private static native int nativeGetPhysicalAddress(long j);

    private static native HdmiPortInfo[] nativeGetPortInfos(long j);

    private static native int nativeGetVendorId(long j);

    private static native int nativeGetVersion(long j);

    private static native long nativeInit(HdmiCecController hdmiCecController, MessageQueue messageQueue);

    private static native boolean nativeIsConnected(long j, int i);

    private static native int nativeSendCecCommand(long j, int i, int i2, byte[] bArr);

    private static native void nativeSetLanguage(long j, String str);

    private static native void nativeSetOption(long j, int i, boolean z);

    private HdmiCecController(HdmiControlService service, NativeWrapper nativeWrapper) {
        this.mService = service;
        this.mNativeWrapperImpl = nativeWrapper;
    }

    static HdmiCecController create(HdmiControlService service) {
        return createWithNativeWrapper(service, new NativeWrapperImpl());
    }

    static HdmiCecController createWithNativeWrapper(HdmiControlService service, NativeWrapper nativeWrapper) {
        HdmiCecController controller = new HdmiCecController(service, nativeWrapper);
        String nativePtr = nativeWrapper.nativeInit();
        if (nativePtr == null) {
            HdmiLogger.warning("Couldn't get tv.cec service.", new Object[0]);
            return null;
        }
        controller.init(nativeWrapper);
        return controller;
    }

    private void init(NativeWrapper nativeWrapper) {
        this.mIoHandler = new Handler(this.mService.getIoLooper());
        this.mControlHandler = new Handler(this.mService.getServiceLooper());
        nativeWrapper.setCallback(new HdmiCecCallback());
    }

    @HdmiAnnotations.ServiceThreadOnly
    void addLocalDevice(int deviceType, HdmiCecLocalDevice device) {
        assertRunOnServiceThread();
        this.mLocalDevices.put(deviceType, device);
    }

    @HdmiAnnotations.ServiceThreadOnly
    void allocateLogicalAddress(final int deviceType, final int preferredAddress, final AllocateAddressCallback callback) {
        assertRunOnServiceThread();
        runOnIoThread(new Runnable() { // from class: com.android.server.hdmi.HdmiCecController.3
            @Override // java.lang.Runnable
            public void run() {
                HdmiCecController.this.handleAllocateLogicalAddress(deviceType, preferredAddress, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @HdmiAnnotations.IoThreadOnly
    public void handleAllocateLogicalAddress(final int deviceType, int preferredAddress, final AllocateAddressCallback callback) {
        assertRunOnIoThread();
        int startAddress = preferredAddress;
        if (preferredAddress == 15) {
            for (int i = 0; i < 16; i++) {
                if (deviceType == HdmiUtils.getTypeFromAddress(i)) {
                    startAddress = i;
                    break;
                }
            }
        }
        int logicalAddress = 15;
        for (int i2 = 0; i2 < 16; i2++) {
            int curAddress = (startAddress + i2) % 16;
            if (curAddress != 15 && deviceType == HdmiUtils.getTypeFromAddress(curAddress) && !this.mNeverAssignLogicalAddresses.contains(Integer.valueOf(curAddress))) {
                boolean acked = false;
                for (int j = 0; j < 3; j++) {
                    if (sendPollMessage(curAddress, curAddress, 1)) {
                        acked = true;
                        break;
                    }
                }
                if (!acked) {
                    logicalAddress = curAddress;
                    break;
                }
            }
        }
        final int assignedAddress = logicalAddress;
        HdmiLogger.debug("New logical address for device [%d]: [preferred:%d, assigned:%d]", Integer.valueOf(deviceType), Integer.valueOf(preferredAddress), Integer.valueOf(assignedAddress));
        if (callback != null) {
            runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiCecController.4
                @Override // java.lang.Runnable
                public void run() {
                    callback.onAllocated(deviceType, assignedAddress);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] buildBody(int opcode, byte[] params) {
        byte[] body = new byte[params.length + 1];
        body[0] = (byte) opcode;
        System.arraycopy(params, 0, body, 1, params.length);
        return body;
    }

    HdmiPortInfo[] getPortInfos() {
        return this.mNativeWrapperImpl.nativeGetPortInfos();
    }

    HdmiCecLocalDevice getLocalDevice(int deviceType) {
        return this.mLocalDevices.get(deviceType);
    }

    @HdmiAnnotations.ServiceThreadOnly
    int addLogicalAddress(int newLogicalAddress) {
        assertRunOnServiceThread();
        if (HdmiUtils.isValidAddress(newLogicalAddress)) {
            return this.mNativeWrapperImpl.nativeAddLogicalAddress(newLogicalAddress);
        }
        return 2;
    }

    @HdmiAnnotations.ServiceThreadOnly
    void clearLogicalAddress() {
        assertRunOnServiceThread();
        for (int i = 0; i < this.mLocalDevices.size(); i++) {
            this.mLocalDevices.valueAt(i).clearAddress();
        }
        this.mNativeWrapperImpl.nativeClearLogicalAddress();
    }

    @HdmiAnnotations.ServiceThreadOnly
    void clearLocalDevices() {
        assertRunOnServiceThread();
        this.mLocalDevices.clear();
    }

    @HdmiAnnotations.ServiceThreadOnly
    int getPhysicalAddress() {
        assertRunOnServiceThread();
        return this.mNativeWrapperImpl.nativeGetPhysicalAddress();
    }

    @HdmiAnnotations.ServiceThreadOnly
    int getVersion() {
        assertRunOnServiceThread();
        return this.mNativeWrapperImpl.nativeGetVersion();
    }

    @HdmiAnnotations.ServiceThreadOnly
    int getVendorId() {
        assertRunOnServiceThread();
        return this.mNativeWrapperImpl.nativeGetVendorId();
    }

    @HdmiAnnotations.ServiceThreadOnly
    void setOption(int flag, boolean enabled) {
        assertRunOnServiceThread();
        HdmiLogger.debug("setOption: [flag:%d, enabled:%b]", Integer.valueOf(flag), Boolean.valueOf(enabled));
        this.mNativeWrapperImpl.nativeSetOption(flag, enabled);
    }

    @HdmiAnnotations.ServiceThreadOnly
    void setLanguage(String language) {
        assertRunOnServiceThread();
        if (!LanguageTag.isLanguage(language)) {
            return;
        }
        this.mNativeWrapperImpl.nativeSetLanguage(language);
    }

    @HdmiAnnotations.ServiceThreadOnly
    void enableAudioReturnChannel(int port, boolean enabled) {
        assertRunOnServiceThread();
        this.mNativeWrapperImpl.nativeEnableAudioReturnChannel(port, enabled);
    }

    @HdmiAnnotations.ServiceThreadOnly
    boolean isConnected(int port) {
        assertRunOnServiceThread();
        return this.mNativeWrapperImpl.nativeIsConnected(port);
    }

    @HdmiAnnotations.ServiceThreadOnly
    void pollDevices(HdmiControlService.DevicePollingCallback callback, int sourceAddress, int pickStrategy, int retryCount) {
        assertRunOnServiceThread();
        List<Integer> pollingCandidates = pickPollCandidates(pickStrategy);
        ArrayList<Integer> allocated = new ArrayList<>();
        runDevicePolling(sourceAddress, pollingCandidates, retryCount, callback, allocated);
    }

    @HdmiAnnotations.ServiceThreadOnly
    List<HdmiCecLocalDevice> getLocalDeviceList() {
        assertRunOnServiceThread();
        return HdmiUtils.sparseArrayToList(this.mLocalDevices);
    }

    private List<Integer> pickPollCandidates(int pickStrategy) {
        Predicate<Integer> pickPredicate;
        int strategy = pickStrategy & 3;
        if (strategy == 2) {
            pickPredicate = this.mSystemAudioAddressPredicate;
        } else {
            pickPredicate = this.mRemoteDeviceAddressPredicate;
        }
        int iterationStrategy = 196608 & pickStrategy;
        LinkedList<Integer> pollingCandidates = new LinkedList<>();
        if (iterationStrategy == 65536) {
            for (int i = 0; i <= 14; i++) {
                if (pickPredicate.test(Integer.valueOf(i))) {
                    pollingCandidates.add(Integer.valueOf(i));
                }
            }
        } else {
            for (int i2 = 14; i2 >= 0; i2--) {
                if (pickPredicate.test(Integer.valueOf(i2))) {
                    pollingCandidates.add(Integer.valueOf(i2));
                }
            }
        }
        return pollingCandidates;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @HdmiAnnotations.ServiceThreadOnly
    public boolean isAllocatedLocalDeviceAddress(int address) {
        assertRunOnServiceThread();
        for (int i = 0; i < this.mLocalDevices.size(); i++) {
            if (this.mLocalDevices.valueAt(i).isAddressOf(address)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @HdmiAnnotations.ServiceThreadOnly
    public void runDevicePolling(final int sourceAddress, final List<Integer> candidates, final int retryCount, final HdmiControlService.DevicePollingCallback callback, final List<Integer> allocated) {
        assertRunOnServiceThread();
        if (candidates.isEmpty()) {
            if (callback != null) {
                HdmiLogger.debug("[P]:AllocatedAddress=%s", allocated.toString());
                callback.onPollingFinished(allocated);
                return;
            }
            return;
        }
        final Integer candidate = candidates.remove(0);
        runOnIoThread(new Runnable() { // from class: com.android.server.hdmi.HdmiCecController.5
            @Override // java.lang.Runnable
            public void run() {
                if (HdmiCecController.this.sendPollMessage(sourceAddress, candidate.intValue(), retryCount)) {
                    allocated.add(candidate);
                }
                HdmiCecController.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiCecController.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        HdmiCecController.this.runDevicePolling(sourceAddress, candidates, retryCount, callback, allocated);
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @HdmiAnnotations.IoThreadOnly
    public boolean sendPollMessage(int sourceAddress, int destinationAddress, int retryCount) {
        assertRunOnIoThread();
        for (int i = 0; i < retryCount; i++) {
            int ret = this.mNativeWrapperImpl.nativeSendCecCommand(sourceAddress, destinationAddress, EMPTY_BODY);
            if (ret == 0) {
                return true;
            }
            if (ret != 1) {
                HdmiLogger.warning("Failed to send a polling message(%d->%d) with return code %d", Integer.valueOf(sourceAddress), Integer.valueOf(destinationAddress), Integer.valueOf(ret));
            }
        }
        return false;
    }

    private void assertRunOnIoThread() {
        if (Looper.myLooper() != this.mIoHandler.getLooper()) {
            throw new IllegalStateException("Should run on io thread.");
        }
    }

    private void assertRunOnServiceThread() {
        if (Looper.myLooper() != this.mControlHandler.getLooper()) {
            throw new IllegalStateException("Should run on service thread.");
        }
    }

    private void runOnIoThread(Runnable runnable) {
        this.mIoHandler.post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOnServiceThread(Runnable runnable) {
        this.mControlHandler.post(runnable);
    }

    @HdmiAnnotations.ServiceThreadOnly
    void flush(final Runnable runnable) {
        assertRunOnServiceThread();
        runOnIoThread(new Runnable() { // from class: com.android.server.hdmi.HdmiCecController.6
            @Override // java.lang.Runnable
            public void run() {
                HdmiCecController.this.runOnServiceThread(runnable);
            }
        });
    }

    private boolean isAcceptableAddress(int address) {
        if (address == 15) {
            return true;
        }
        return isAllocatedLocalDeviceAddress(address);
    }

    @HdmiAnnotations.ServiceThreadOnly
    private void onReceiveCommand(HdmiCecMessage message) {
        assertRunOnServiceThread();
        if ((isAcceptableAddress(message.getDestination()) || !this.mService.isAddressAllocated()) && this.mService.handleCecCommand(message)) {
            return;
        }
        maySendFeatureAbortCommand(message, 0);
    }

    @HdmiAnnotations.ServiceThreadOnly
    void maySendFeatureAbortCommand(HdmiCecMessage message, int reason) {
        int originalOpcode;
        assertRunOnServiceThread();
        int src = message.getDestination();
        int dest = message.getSource();
        if (src == 15 || dest == 15 || (originalOpcode = message.getOpcode()) == 0) {
            return;
        }
        sendCommand(HdmiCecMessageBuilder.buildFeatureAbortCommand(src, dest, originalOpcode, reason));
    }

    @HdmiAnnotations.ServiceThreadOnly
    void sendCommand(HdmiCecMessage cecMessage) {
        assertRunOnServiceThread();
        sendCommand(cecMessage, null);
    }

    @HdmiAnnotations.ServiceThreadOnly
    void sendCommand(final HdmiCecMessage cecMessage, final HdmiControlService.SendMessageCallback callback) {
        assertRunOnServiceThread();
        addCecMessageToHistory(false, cecMessage);
        runOnIoThread(new Runnable() { // from class: com.android.server.hdmi.HdmiCecController.7
            @Override // java.lang.Runnable
            public void run() {
                final int errorCode;
                HdmiLogger.debug("[S]:" + cecMessage, new Object[0]);
                byte[] body = HdmiCecController.buildBody(cecMessage.getOpcode(), cecMessage.getParams());
                int i = 0;
                while (true) {
                    errorCode = HdmiCecController.this.mNativeWrapperImpl.nativeSendCecCommand(cecMessage.getSource(), cecMessage.getDestination(), body);
                    if (errorCode == 0) {
                        break;
                    }
                    int i2 = i + 1;
                    if (i >= 1) {
                        break;
                    } else {
                        i = i2;
                    }
                }
                if (errorCode != 0) {
                    Slog.w(HdmiCecController.TAG, "Failed to send " + cecMessage + " with errorCode=" + errorCode);
                }
                if (callback != null) {
                    HdmiCecController.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiCecController.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            callback.onSendCompleted(errorCode);
                        }
                    });
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @HdmiAnnotations.ServiceThreadOnly
    public void handleIncomingCecCommand(int srcAddress, int dstAddress, byte[] body) {
        assertRunOnServiceThread();
        HdmiCecMessage command = HdmiCecMessageBuilder.of(srcAddress, dstAddress, body);
        HdmiLogger.debug("[R]:" + command, new Object[0]);
        addCecMessageToHistory(true, command);
        onReceiveCommand(command);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @HdmiAnnotations.ServiceThreadOnly
    public void handleHotplug(int port, boolean connected) {
        assertRunOnServiceThread();
        HdmiLogger.debug("Hotplug event:[port:%d, connected:%b]", Integer.valueOf(port), Boolean.valueOf(connected));
        addHotplugEventToHistory(port, connected);
        this.mService.onHotplug(port, connected);
    }

    @HdmiAnnotations.ServiceThreadOnly
    private void addHotplugEventToHistory(int port, boolean connected) {
        assertRunOnServiceThread();
        addEventToHistory(new HotplugHistoryRecord(port, connected));
    }

    @HdmiAnnotations.ServiceThreadOnly
    private void addCecMessageToHistory(boolean isReceived, HdmiCecMessage message) {
        assertRunOnServiceThread();
        addEventToHistory(new MessageHistoryRecord(isReceived, message));
    }

    private void addEventToHistory(Dumpable event) {
        if (!this.mMessageHistory.offer(event)) {
            this.mMessageHistory.poll();
            this.mMessageHistory.offer(event);
        }
    }

    void dump(IndentingPrintWriter pw) {
        for (int i = 0; i < this.mLocalDevices.size(); i++) {
            pw.println("HdmiCecLocalDevice #" + this.mLocalDevices.keyAt(i) + ":");
            pw.increaseIndent();
            this.mLocalDevices.valueAt(i).dump(pw);
            pw.decreaseIndent();
        }
        pw.println("CEC message history:");
        pw.increaseIndent();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        for (Dumpable record : this.mMessageHistory) {
            record.dump(pw, sdf);
        }
        pw.decreaseIndent();
    }

    private static final class NativeWrapperImpl implements NativeWrapper, IHwBinder.DeathRecipient, IHdmiCec.getPhysicalAddressCallback {
        private IHdmiCec mHdmiCec;
        private final Object mLock;
        private int mPhysicalAddress;

        private NativeWrapperImpl() {
            this.mLock = new Object();
            this.mPhysicalAddress = HdmiCecController.INVALID_PHYSICAL_ADDRESS;
        }

        @Override // com.android.server.hdmi.HdmiCecController.NativeWrapper
        public String nativeInit() {
            if (connectToHal()) {
                return this.mHdmiCec.toString();
            }
            return null;
        }

        boolean connectToHal() {
            try {
                IHdmiCec service = IHdmiCec.getService();
                this.mHdmiCec = service;
                try {
                    service.linkToDeath(this, 353L);
                    return true;
                } catch (RemoteException e) {
                    HdmiLogger.error("Couldn't link to death : ", e, new Object[0]);
                    return true;
                }
            } catch (RemoteException e2) {
                HdmiLogger.error("Couldn't get tv.cec service : ", e2, new Object[0]);
                return false;
            }
        }

        @Override // com.android.server.hdmi.HdmiCecController.NativeWrapper
        public void setCallback(HdmiCecCallback callback) {
            try {
                this.mHdmiCec.setCallback(callback);
            } catch (RemoteException e) {
                HdmiLogger.error("Couldn't initialise tv.cec callback : ", e, new Object[0]);
            }
        }

        @Override // com.android.server.hdmi.HdmiCecController.NativeWrapper
        public int nativeSendCecCommand(int srcAddress, int dstAddress, byte[] body) {
            CecMessage message = new CecMessage();
            message.initiator = srcAddress;
            message.destination = dstAddress;
            message.body = new ArrayList<>(body.length);
            for (byte b : body) {
                message.body.add(Byte.valueOf(b));
            }
            try {
                return this.mHdmiCec.sendMessage(message);
            } catch (RemoteException e) {
                HdmiLogger.error("Failed to send CEC message : ", e, new Object[0]);
                return 3;
            }
        }

        @Override // com.android.server.hdmi.HdmiCecController.NativeWrapper
        public int nativeAddLogicalAddress(int logicalAddress) {
            try {
                return this.mHdmiCec.addLogicalAddress(logicalAddress);
            } catch (RemoteException e) {
                HdmiLogger.error("Failed to add a logical address : ", e, new Object[0]);
                return 2;
            }
        }

        @Override // com.android.server.hdmi.HdmiCecController.NativeWrapper
        public void nativeClearLogicalAddress() {
            try {
                this.mHdmiCec.clearLogicalAddress();
            } catch (RemoteException e) {
                HdmiLogger.error("Failed to clear logical address : ", e, new Object[0]);
            }
        }

        @Override // com.android.server.hdmi.HdmiCecController.NativeWrapper
        public int nativeGetPhysicalAddress() {
            try {
                this.mHdmiCec.getPhysicalAddress(this);
                return this.mPhysicalAddress;
            } catch (RemoteException e) {
                HdmiLogger.error("Failed to get physical address : ", e, new Object[0]);
                return HdmiCecController.INVALID_PHYSICAL_ADDRESS;
            }
        }

        @Override // com.android.server.hdmi.HdmiCecController.NativeWrapper
        public int nativeGetVersion() {
            try {
                return this.mHdmiCec.getCecVersion();
            } catch (RemoteException e) {
                HdmiLogger.error("Failed to get cec version : ", e, new Object[0]);
                return 1;
            }
        }

        @Override // com.android.server.hdmi.HdmiCecController.NativeWrapper
        public int nativeGetVendorId() {
            try {
                return this.mHdmiCec.getVendorId();
            } catch (RemoteException e) {
                HdmiLogger.error("Failed to get vendor id : ", e, new Object[0]);
                return 1;
            }
        }

        @Override // com.android.server.hdmi.HdmiCecController.NativeWrapper
        public HdmiPortInfo[] nativeGetPortInfos() {
            try {
                ArrayList<android.hardware.tv.cec.V1_0.HdmiPortInfo> hdmiPortInfos = this.mHdmiCec.getPortInfo();
                HdmiPortInfo[] hdmiPortInfo = new HdmiPortInfo[hdmiPortInfos.size()];
                int i = 0;
                for (android.hardware.tv.cec.V1_0.HdmiPortInfo portInfo : hdmiPortInfos) {
                    hdmiPortInfo[i] = new HdmiPortInfo(portInfo.portId, portInfo.type, portInfo.physicalAddress, portInfo.cecSupported, false, portInfo.arcSupported);
                    i++;
                }
                return hdmiPortInfo;
            } catch (RemoteException e) {
                HdmiLogger.error("Failed to get port information : ", e, new Object[0]);
                return null;
            }
        }

        @Override // com.android.server.hdmi.HdmiCecController.NativeWrapper
        public void nativeSetOption(int flag, boolean enabled) {
            try {
                this.mHdmiCec.setOption(flag, enabled);
            } catch (RemoteException e) {
                HdmiLogger.error("Failed to set option : ", e, new Object[0]);
            }
        }

        @Override // com.android.server.hdmi.HdmiCecController.NativeWrapper
        public void nativeSetLanguage(String language) {
            try {
                this.mHdmiCec.setLanguage(language);
            } catch (RemoteException e) {
                HdmiLogger.error("Failed to set language : ", e, new Object[0]);
            }
        }

        @Override // com.android.server.hdmi.HdmiCecController.NativeWrapper
        public void nativeEnableAudioReturnChannel(int port, boolean flag) {
            try {
                this.mHdmiCec.enableAudioReturnChannel(port, flag);
            } catch (RemoteException e) {
                HdmiLogger.error("Failed to enable/disable ARC : ", e, new Object[0]);
            }
        }

        @Override // com.android.server.hdmi.HdmiCecController.NativeWrapper
        public boolean nativeIsConnected(int port) {
            try {
                return this.mHdmiCec.isConnected(port);
            } catch (RemoteException e) {
                HdmiLogger.error("Failed to get connection info : ", e, new Object[0]);
                return false;
            }
        }

        public void serviceDied(long cookie) {
            if (cookie == 353) {
                HdmiLogger.error(HdmiCecController.TAG, "Service died cokkie : " + cookie + "; reconnecting");
                connectToHal();
            }
        }

        @Override // android.hardware.tv.cec.V1_0.IHdmiCec.getPhysicalAddressCallback
        public void onValues(int result, short addr) {
            if (result == 0) {
                synchronized (this.mLock) {
                    this.mPhysicalAddress = new Short(addr).intValue();
                }
            }
        }
    }

    final class HdmiCecCallback extends IHdmiCecCallback.Stub {
        HdmiCecCallback() {
        }

        @Override // android.hardware.tv.cec.V1_0.IHdmiCecCallback
        public void onCecMessage(final CecMessage message) throws RemoteException {
            final byte[] body = new byte[message.body.size()];
            for (int i = 0; i < message.body.size(); i++) {
                body[i] = message.body.get(i).byteValue();
            }
            HdmiCecController.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.-$$Lambda$HdmiCecController$HdmiCecCallback$-7fhWuVwUiBxScm6sqwHxovK41E
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCecMessage$0$HdmiCecController$HdmiCecCallback(message, body);
                }
            });
        }

        public /* synthetic */ void lambda$onCecMessage$0$HdmiCecController$HdmiCecCallback(CecMessage message, byte[] body) {
            HdmiCecController.this.handleIncomingCecCommand(message.initiator, message.destination, body);
        }

        public /* synthetic */ void lambda$onHotplugEvent$1$HdmiCecController$HdmiCecCallback(HotplugEvent event) {
            HdmiCecController.this.handleHotplug(event.portId, event.connected);
        }

        @Override // android.hardware.tv.cec.V1_0.IHdmiCecCallback
        public void onHotplugEvent(final HotplugEvent event) throws RemoteException {
            HdmiCecController.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.-$$Lambda$HdmiCecController$HdmiCecCallback$4-RVFN1kudwsncLnWj5l8GAvuWE
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onHotplugEvent$1$HdmiCecController$HdmiCecCallback(event);
                }
            });
        }
    }

    private static abstract class Dumpable {
        protected final long mTime = System.currentTimeMillis();

        abstract void dump(IndentingPrintWriter indentingPrintWriter, SimpleDateFormat simpleDateFormat);

        Dumpable() {
        }
    }

    private static final class MessageHistoryRecord extends Dumpable {
        private final boolean mIsReceived;
        private final HdmiCecMessage mMessage;

        MessageHistoryRecord(boolean isReceived, HdmiCecMessage message) {
            this.mIsReceived = isReceived;
            this.mMessage = message;
        }

        @Override // com.android.server.hdmi.HdmiCecController.Dumpable
        void dump(IndentingPrintWriter pw, SimpleDateFormat sdf) {
            pw.print(this.mIsReceived ? "[R]" : "[S]");
            pw.print(" time=");
            pw.print(sdf.format(new Date(this.mTime)));
            pw.print(" message=");
            pw.println(this.mMessage);
        }
    }

    private static final class HotplugHistoryRecord extends Dumpable {
        private final boolean mConnected;
        private final int mPort;

        HotplugHistoryRecord(int port, boolean connected) {
            this.mPort = port;
            this.mConnected = connected;
        }

        @Override // com.android.server.hdmi.HdmiCecController.Dumpable
        void dump(IndentingPrintWriter pw, SimpleDateFormat sdf) {
            pw.print("[H]");
            pw.print(" time=");
            pw.print(sdf.format(new Date(this.mTime)));
            pw.print(" hotplug port=");
            pw.print(this.mPort);
            pw.print(" connected=");
            pw.println(this.mConnected);
        }
    }
}

package com.mega.carlink.base;

import com.mega.carlink.model.PhoneInfo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IConnectInfoProvider {

    @Retention(RetentionPolicy.SOURCE)
    public @interface ActionType {
        public static final int OPEN_MIX_CARLINK = 0;
        public static final int OPEN_MIX_HICAR = 1;
        public static final int TEL_CALL = 2;
        public static final int TEL_END_CALL = 3;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface CallType {
        public static final int ACTIVE = 5;
        public static final int ALERTING = 4;
        public static final int DIALING = 3;
        public static final int HOLDING = 6;
        public static final int IDLE = 1;
        public static final int INCOMING = 2;
        public static final int UNKNOWN_STATE = 0;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ConnectPlatform {
        public static final int CAR_LINK = 2;
        public static final int CAR_PLAY = 3;
        public static final int HI_CAR = 1;
        public static final int MIRROR_CONNECT = 4;
        public static final int UNKNOWN = 0;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ConnectionType {
        public static final int CONNECTING = 0;
        public static final int NOT_CONNECTED = -1;
        public static final int WIRED = 3;
        public static final int WIRELESS_AP = 1;
        public static final int WIRELESS_P2P = 2;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface KeyCodeType {
        public static final int KEY_CODE_MEDIA = 3;
        public static final int KEY_CODE_NAVI = 2;
        public static final int KEY_CODE_TEL = 1;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ProjectionState {
        public static final int DISPLAY_PAUSE = 2;
        public static final int DISPLAY_START = 1;
        public static final int DISPLAY_STOP = 3;
        public static final int STATE_UNKNOWN = 0;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Result {
        public static final int FAILURE = 1;
        public static final int SUCCESS = 0;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface UiDisplayType {
        public static final int APP_LIST = 4;
        public static final int BLUETOOTH_OPENING = 5;
        public static final int CONNECTING_PROGRESS = 8;
        public static final int CONNECT_FAILED = 10;
        public static final int EXIT_FUSION_UI = 9;
        public static final int INITIALIZE_FAILED = 7;
        public static final int INITIALIZING = 6;
        public static final int WIRED_ONLY = 3;
        public static final int WIRELESS_PIN_CODE = 1;
        public static final int WIRELESS_QR_CODE = 2;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface VRState {
        public static final int STATE_IDLE = 1;
        public static final int STATE_UNKNOWN = 0;
        public static final int STATE_WAKEUP = 2;
    }

    void connectPhone(int i, String str);

    int deletePhone(int i, String str);

    int disconnectPhone(int i, String str);

    String getConnectPhoneID(int i);

    int getConnectionType(int i);

    List<PhoneInfo> getPhoneList(int i);

    default void registerAppInfoChangeListener(int i, IAppInfoChangeListener iAppInfoChangeListener) {
    }

    default void registerCallInfoChangeListener(int i, ICallInfoChangedListener iCallInfoChangedListener) {
    }

    default void registerConnectStatusListener(int i, IDeviceConnectStatusListener iDeviceConnectStatusListener) {
    }

    default void registerMediaChangeListener(int i, IMediaChangeListener iMediaChangeListener) {
    }

    default void registerNavigationInfoChangeListener(int i, INavigationInfoChangedListener iNavigationInfoChangedListener) {
    }

    default void registerPinCodeChangeListener(int i, IPinCodeChangeListener iPinCodeChangeListener) {
    }

    default void registerProgressChangeListener(int i, IConnectingProgressChangedListener iConnectingProgressChangedListener) {
    }

    default void registerProjectionChangeListener(int i, IProjectionChangedListener iProjectionChangedListener) {
    }

    default void registerVRChangeListener(int i, IVRStateChangedListener iVRStateChangedListener) {
    }

    void setMediaNext(int i);

    void setMediaPlayPause(int i);

    void setMediaPreview(int i);

    default void unregisterAppInfoChangeListener(int i, IAppInfoChangeListener iAppInfoChangeListener) {
    }

    default void unregisterCallInfoChangeListener(int i, ICallInfoChangedListener iCallInfoChangedListener) {
    }

    default void unregisterConnectStatusListener(int i, IDeviceConnectStatusListener iDeviceConnectStatusListener) {
    }

    default void unregisterMediaChangeListener(int i, IMediaChangeListener iMediaChangeListener) {
    }

    default void unregisterNavigationInfoChangeListener(int i, INavigationInfoChangedListener iNavigationInfoChangedListener) {
    }

    default void unregisterPinCodeChangeListener(int i, IPinCodeChangeListener iPinCodeChangeListener) {
    }

    default void unregisterProgressChangeListener(int i, IConnectingProgressChangedListener iConnectingProgressChangedListener) {
    }

    default void unregisterProjectionChangeListener(int i, IProjectionChangedListener iProjectionChangedListener) {
    }

    default void unregisterVRChangeListener(int i, IVRStateChangedListener iVRStateChangedListener) {
    }
}

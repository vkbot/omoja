package com.android.launcher3.util;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.mega.carlink.CarLinkDeviceManager;
import com.mega.sdk.linkmanager.IAndroidAutoLinkCallback;
import com.mega.sdk.linkmanager.ICarPlayLinkCallback;
import com.mega.sdk.linkmanager.IHiCarLinkCallback;
import com.mega.sdk.linkmanager.ILinkMgrSrvConnListener;
import com.mega.sdk.linkmanager.MegaLinkManager;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: LinkManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000]\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001\u0014\u0018\u0000 .2\u00020\u0001:\u0001.B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010)\u001a\u00020*H\u0002J\b\u0010+\u001a\u00020*H\u0002J\b\u0010,\u001a\u00020*H\u0002J\b\u0010-\u001a\u00020*H\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u0017\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0010R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0010R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00070\u000e8F¢\u0006\u0006\u001a\u0004\b!\u0010\u0010R\u0011\u0010\"\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0011\u0010$\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b$\u0010#R\u0011\u0010%\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b%\u0010#R\u0011\u0010&\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b&\u0010#R\u000e\u0010'\u001a\u00020(X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcom/android/launcher3/util/LinkManager;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "_androidAutoState", "Landroidx/lifecycle/MutableLiveData;", "", "_carLinkState", "_carPlayState", "_hiCarState", "aaLinkCallback", "Lcom/mega/sdk/linkmanager/IAndroidAutoLinkCallback;", "androidAutoState", "Landroidx/lifecycle/LiveData;", "getAndroidAutoState", "()Landroidx/lifecycle/LiveData;", "carLinkCallback", "Lcom/mega/carlink/CarLinkDeviceManager$OnConnectionChangeListener;", "carLinkConnectionListener", "com/android/launcher3/util/LinkManager$carLinkConnectionListener$1", "Lcom/android/launcher3/util/LinkManager$carLinkConnectionListener$1;", "carLinkState", "getCarLinkState", "carPlayLinkCallback", "Lcom/mega/sdk/linkmanager/ICarPlayLinkCallback;", "carPlayState", "getCarPlayState", "connectionListener", "Lcom/mega/sdk/linkmanager/ILinkMgrSrvConnListener;", "hiCarCallback", "Lcom/mega/sdk/linkmanager/IHiCarLinkCallback;", "hiCarState", "getHiCarState", "isAndroidAutoConnected", "()Z", "isCarLinkConnected", "isCarPlayConnected", "isHiCarConnected", "mainHandler", "Landroid/os/Handler;", "registerListenersInner", "", "registerListenersInnerForCarLink", "unregisterListenersInner", "unregisterListenersInnerForCarLink", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class LinkManager {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final boolean ENABLE_ANDROID_AUTO = true;
    private static final boolean ENABLE_CAR_LINK = true;
    private static final boolean ENABLE_CAR_PLAY = true;
    private static final boolean ENABLE_HI_CAR = true;
    private static final String TAG = "Launcher.LinkManager";
    public static final int TYPE_ANDROID_AUTO = 8;
    public static final int TYPE_CAR_LINK = 4;
    public static final int TYPE_CAR_PLAY = 1;
    public static final int TYPE_HI_CAR = 2;
    private final MutableLiveData<Boolean> _androidAutoState;
    private final MutableLiveData<Boolean> _carLinkState;
    private final MutableLiveData<Boolean> _carPlayState;
    private final MutableLiveData<Boolean> _hiCarState;
    private final IAndroidAutoLinkCallback aaLinkCallback;
    private final CarLinkDeviceManager.OnConnectionChangeListener carLinkCallback;
    private final LinkManager$carLinkConnectionListener$1 carLinkConnectionListener;
    private final ICarPlayLinkCallback carPlayLinkCallback;
    private final ILinkMgrSrvConnListener connectionListener;
    private final Context context;
    private final IHiCarLinkCallback hiCarCallback;
    private final Handler mainHandler;

    public /* synthetic */ LinkManager(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.launcher3.util.LinkManager$carLinkConnectionListener$1] */
    private LinkManager(Context context) {
        this.context = context;
        this.mainHandler = new Handler(Looper.getMainLooper());
        this._carPlayState = new MutableLiveData<>();
        this._hiCarState = new MutableLiveData<>();
        this._carLinkState = new MutableLiveData<>();
        this._androidAutoState = new MutableLiveData<>();
        ILinkMgrSrvConnListener iLinkMgrSrvConnListener = new ILinkMgrSrvConnListener() { // from class: com.android.launcher3.util.LinkManager$$ExternalSyntheticLambda0
            @Override // com.mega.sdk.linkmanager.ILinkMgrSrvConnListener
            public final void onLinkMgrSrvConnChange(boolean z) {
                LinkManager.connectionListener$lambda$0(this.f$0, z);
            }
        };
        this.connectionListener = iLinkMgrSrvConnListener;
        ?? r1 = new CarLinkDeviceManager.OnCarlinkInitCallback() { // from class: com.android.launcher3.util.LinkManager$carLinkConnectionListener$1
            @Override // com.mega.carlink.CarLinkDeviceManager.OnCarlinkInitCallback
            public void onInitSuccess() {
                Log.d("Launcher.LinkManager", "onInitSuccess: CarLink");
                this.this$0.registerListenersInnerForCarLink();
            }

            @Override // com.mega.carlink.CarLinkDeviceManager.OnCarlinkInitCallback
            public void onInitFailed() {
                Log.d("Launcher.LinkManager", "onInitFailed: CarLink");
                this.this$0.unregisterListenersInnerForCarLink();
            }
        };
        this.carLinkConnectionListener = r1;
        this.carPlayLinkCallback = new ICarPlayLinkCallback() { // from class: com.android.launcher3.util.LinkManager$carPlayLinkCallback$1
            @Override // com.mega.sdk.linkmanager.ICarPlayLinkCallback
            public void onCarPlayDeviceBatteryLeveChanged(String s, int i) {
                Intrinsics.checkNotNullParameter(s, "s");
            }

            @Override // com.mega.sdk.linkmanager.ICarPlayLinkCallback
            public void onCarPlayDeviceDeleted(String s) {
                Intrinsics.checkNotNullParameter(s, "s");
            }

            @Override // com.mega.sdk.linkmanager.ICarPlayLinkCallback
            public void onCarPlayConnectStatusChanged(int state, int type, String deviceInfo) {
                Intrinsics.checkNotNullParameter(deviceInfo, "deviceInfo");
                boolean z = state == 2;
                MLog.d("Launcher.LinkManager", "onCarPlayConnectStatusChanged: state=" + state + " connected=" + z + " type=" + type + " deviceInfo" + deviceInfo);
                this.this$0._carPlayState.postValue(Boolean.valueOf(z));
            }
        };
        this.hiCarCallback = new IHiCarLinkCallback() { // from class: com.android.launcher3.util.LinkManager$$ExternalSyntheticLambda1
            @Override // com.mega.sdk.linkmanager.IHiCarLinkCallback
            public final void onHiCarConnectStatusChanged(int i, String str) {
                LinkManager.hiCarCallback$lambda$1(this.f$0, i, str);
            }
        };
        this.carLinkCallback = new CarLinkDeviceManager.OnConnectionChangeListener() { // from class: com.android.launcher3.util.LinkManager$$ExternalSyntheticLambda2
            @Override // com.mega.carlink.CarLinkDeviceManager.OnConnectionChangeListener
            public final void onConnStateChanged(int i, String str, int i2) {
                LinkManager.carLinkCallback$lambda$2(this.f$0, i, str, i2);
            }
        };
        this.aaLinkCallback = new IAndroidAutoLinkCallback() { // from class: com.android.launcher3.util.LinkManager$$ExternalSyntheticLambda3
            @Override // com.mega.sdk.linkmanager.IAndroidAutoLinkCallback
            public final void onAndroidAutoConnectStatusChanged(int i, int i2, String str) {
                LinkManager.aaLinkCallback$lambda$3(this.f$0, i, i2, str);
            }
        };
        if (MegaLinkManager.getInstance().isAvailable()) {
            registerListenersInner();
        } else {
            MegaLinkManager.getInstance().init(context.getApplicationContext());
            MegaLinkManager.getInstance().registerSrvConnChangeListener(iLinkMgrSrvConnListener);
        }
        CarLinkDeviceManager.getInstance().init(context, (CarLinkDeviceManager.OnCarlinkInitCallback) r1);
        if (CarLinkDeviceManager.getInstance().isBindSuccess()) {
            registerListenersInnerForCarLink();
        }
    }

    public final LiveData<Boolean> getCarPlayState() {
        return this._carPlayState;
    }

    public final boolean isCarPlayConnected() {
        Boolean value = this._carPlayState.getValue();
        if (value == null) {
            return false;
        }
        return value.booleanValue();
    }

    public final LiveData<Boolean> getHiCarState() {
        return this._hiCarState;
    }

    public final boolean isHiCarConnected() {
        Boolean value = this._hiCarState.getValue();
        if (value == null) {
            return false;
        }
        return value.booleanValue();
    }

    public final LiveData<Boolean> getCarLinkState() {
        return this._carLinkState;
    }

    public final boolean isCarLinkConnected() {
        Boolean value = this._carLinkState.getValue();
        if (value == null) {
            return false;
        }
        return value.booleanValue();
    }

    public final LiveData<Boolean> getAndroidAutoState() {
        return this._androidAutoState;
    }

    public final boolean isAndroidAutoConnected() {
        Boolean value = this._androidAutoState.getValue();
        if (value == null) {
            return false;
        }
        return value.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void connectionListener$lambda$0(LinkManager this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MLog.d("onLinkMgrSrvConnChange: " + z);
        if (z) {
            this$0.registerListenersInner();
        } else {
            this$0.unregisterListenersInner();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void hiCarCallback$lambda$1(LinkManager this$0, int i, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        boolean z = i == 2;
        MLog.d(TAG, "onHiCarConnectStatusChanged: state=" + i + " deviceID=" + str);
        this$0._hiCarState.postValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void carLinkCallback$lambda$2(LinkManager this$0, int i, String str, int i2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
        MLog.d(TAG, "onICCOACarLinkConnectStatusChanged: state=" + i2);
        this$0._carLinkState.postValue(Boolean.valueOf(i2 == 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void aaLinkCallback$lambda$3(LinkManager this$0, int i, int i2, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        boolean z = i == 2;
        MLog.d(TAG, "onAndroidAutoConnectStatusChanged: state=" + i + " connected=" + z);
        this$0._androidAutoState.postValue(Boolean.valueOf(z));
    }

    private final void registerListenersInner() {
        MegaLinkManager.getInstance().registerCarPlayLinkMgrListener(this.carPlayLinkCallback);
        boolean zIsCarPlayConnected = MegaLinkManager.getInstance().isCarPlayConnected();
        MLog.d(TAG, "init: isCarPlayConnected=" + zIsCarPlayConnected);
        this._carPlayState.postValue(Boolean.valueOf(zIsCarPlayConnected));
        MegaLinkManager.getInstance().registerHiCarLinkListener(this.hiCarCallback);
        boolean zIsHiCarConnected = MegaLinkManager.getInstance().isHiCarConnected();
        MLog.d(TAG, "init: isHiCarConnected=" + zIsHiCarConnected);
        this._hiCarState.postValue(Boolean.valueOf(zIsHiCarConnected));
        MegaLinkManager.getInstance().registerAndroidAutoConnectionStateListener(this.aaLinkCallback);
        boolean z = MegaLinkManager.getInstance().getAndroidAutoConnectionStatus() == 2;
        MLog.d(TAG, "init: isAndroidAutoConnected=" + z);
        this._androidAutoState.postValue(Boolean.valueOf(z));
    }

    private final void unregisterListenersInner() {
        MegaLinkManager.getInstance().unRegisterCarPlayLinkMgrListener(this.carPlayLinkCallback);
        MegaLinkManager.getInstance().unregisterHiCarLinkListener(this.hiCarCallback);
        MegaLinkManager.getInstance().unregisterAndroidAutoListener(this.aaLinkCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void registerListenersInnerForCarLink() {
        CarLinkDeviceManager.getInstance().registerCarLinkConnectionListener(this.carLinkCallback);
        boolean zIsCarLinkConnected = CarLinkDeviceManager.getInstance().isCarLinkConnected();
        MLog.d(TAG, "init: isCarLinkConnected=" + zIsCarLinkConnected);
        this._carLinkState.postValue(Boolean.valueOf(zIsCarLinkConnected));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void unregisterListenersInnerForCarLink() {
        CarLinkDeviceManager.getInstance().unregisterCarLinkConnectionListener(this.carLinkCallback);
    }

    /* JADX INFO: compiled from: LinkManager.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0004R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/android/launcher3/util/LinkManager$Companion;", "Lcom/android/launcher3/util/SingletonHolder;", "Lcom/android/launcher3/util/LinkManager;", "Landroid/content/Context;", "()V", "ENABLE_ANDROID_AUTO", "", "ENABLE_CAR_LINK", "ENABLE_CAR_PLAY", "ENABLE_HI_CAR", "TAG", "", "TYPE_ANDROID_AUTO", "", "TYPE_CAR_LINK", "TYPE_CAR_PLAY", "TYPE_HI_CAR", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion extends SingletonHolder<LinkManager, Context> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: renamed from: com.android.launcher3.util.LinkManager$Companion$1, reason: invalid class name */
        /* JADX INFO: compiled from: LinkManager.kt */
        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
        /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<Context, LinkManager> {
            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

            AnonymousClass1() {
                super(1, LinkManager.class, "<init>", "<init>(Landroid/content/Context;)V", 0);
            }

            @Override // kotlin.jvm.functions.Function1
            public final LinkManager invoke(Context p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return new LinkManager(p0, null);
            }
        }

        private Companion() {
            super(AnonymousClass1.INSTANCE);
        }
    }
}

package com.mega.carlink.view;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.android.launcher3.LauncherSettings;
import com.mega.carlink.CarLinkDeviceManager;
import com.mega.carlink.model.AppInfo;
import com.mega.carlink.receiver.DeviceNameReceiver;
import com.mega.carlink.util.BluetoothUtils;
import com.mega.carlink.view.dialog.CarLinkBluetoothDeviceDialog;
import com.mega.carlink.view.dialog.CheckDeviceDialog;
import com.mega.nexus.bluetooth.MegaBluetoothAdapter;
import com.mega.sdk.linkmanager.MegaLinkManager;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: CarLinkAppListManager.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 ?2\u00020\u00012\u00020\u0002:\u0002>?B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0006\u0010&\u001a\u00020'J\u0006\u0010(\u001a\u00020'J\b\u0010)\u001a\u0004\u0018\u00010\u0007J\u000e\u0010*\u001a\u00020'2\u0006\u0010+\u001a\u00020,J\b\u0010-\u001a\u00020'H\u0016J\b\u0010.\u001a\u00020'H\u0016J\u000e\u0010/\u001a\u00020'2\u0006\u00100\u001a\u00020\fJ\b\u00101\u001a\u00020'H\u0016J\b\u00102\u001a\u00020'H\u0016J\b\u00103\u001a\u00020'H\u0002J\b\u00104\u001a\u00020'H\u0002J\b\u00105\u001a\u00020'H\u0002J\b\u00106\u001a\u00020'H\u0002J\b\u00107\u001a\u00020'H\u0002J\b\u00108\u001a\u00020'H\u0002J\u000e\u00109\u001a\u00020'2\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010:\u001a\u00020'J\u000e\u0010;\u001a\u00020'2\u0006\u0010<\u001a\u00020=R\u0014\u0010\u0006\u001a\u00020\u0007X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\n \u0013*\u0004\u0018\u00010\u00120\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006@"}, d2 = {"Lcom/mega/carlink/view/CarLinkAppListManager;", "Lcom/mega/carlink/view/dialog/CarLinkBluetoothDeviceDialog$OnConfirmBluetoothDialogListener;", "Lcom/mega/carlink/view/dialog/CheckDeviceDialog$OnCheckDialogClickListener;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "TAG", "", "getTAG", "()Ljava/lang/String;", "deviceName", "mAppListViewVisible", "", "getMAppListViewVisible", "()Z", "setMAppListViewVisible", "(Z)V", "mBluetoothAdapter", "Landroid/bluetooth/BluetoothAdapter;", "kotlin.jvm.PlatformType", "mBluetoothDialog", "Lcom/mega/carlink/view/dialog/CarLinkBluetoothDeviceDialog;", "mBluetoothEnableState", "mCarLinkConnectState", "mContext", "mDeviceDialog", "Lcom/mega/carlink/view/dialog/CheckDeviceDialog;", "mHasRegisterBluetoothReceiver", "mHasRegisterCarLinkAppinfosListener", "mHasRegisterCarLinkConnectionListener", "mHasRegisterCarLinkPinCodeListener", "mHasRegisterCarLinkProgressListener", "mView", "Lcom/mega/carlink/view/ICarLinkAppListView;", "getMView", "()Lcom/mega/carlink/view/ICarLinkAppListView;", "setMView", "(Lcom/mega/carlink/view/ICarLinkAppListView;)V", "checkCarLinkState", "", "dismissAllDialog", "getDeviceName", "init", "carLinkAppListView", "Lcom/mega/carlink/view/CarLinkAppListView;", "onBluetoothDialogCancelClick", "onBluetoothDialogConfirmClick", "onBluetoothEnableStateChanged", "enable", "onCheckDialogCancelClick", "onCheckDialogConfirmClick", "registerBluetoothBroadcastReceiver", "registerCarLinkConnectionListener", "registerCarLinkPinCodeListener", "registerCarLinkProgressListener", "registerDeviceNameReceiver", "registerRegisterCarLinkAppinfoListener", "setDeviceName", "startAppList", "startApplication", "appInfo", "Lcom/mega/carlink/model/AppInfo;", "BluetoothBroadcastReceiver", "Companion", "carlink-lib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CarLinkAppListManager implements CarLinkBluetoothDeviceDialog.OnConfirmBluetoothDialogListener, CheckDeviceDialog.OnCheckDialogClickListener {
    public static final String CLS_NAME = "com.android.launcher3.activity.AppListActivity";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String EXTRA_TO_TAB = "to_tab";
    private static volatile CarLinkAppListManager INSTANCE = null;
    public static final String PKG_NAME = "com.android.launcher3";
    public static final int TAB_APPS = 0;
    public static final int TAB_HICAR_APPS = 1;
    private final String TAG;
    private String deviceName;
    private boolean mAppListViewVisible;
    private final BluetoothAdapter mBluetoothAdapter;
    private CarLinkBluetoothDeviceDialog mBluetoothDialog;
    private boolean mBluetoothEnableState;
    private boolean mCarLinkConnectState;
    private Context mContext;
    private CheckDeviceDialog mDeviceDialog;
    private boolean mHasRegisterBluetoothReceiver;
    private boolean mHasRegisterCarLinkAppinfosListener;
    private boolean mHasRegisterCarLinkConnectionListener;
    private boolean mHasRegisterCarLinkPinCodeListener;
    private boolean mHasRegisterCarLinkProgressListener;
    private ICarLinkAppListView mView;

    @JvmStatic
    public static final CarLinkAppListManager getInstance(Context context) {
        return INSTANCE.getInstance(context);
    }

    public final String getDeviceName() {
        return this.deviceName;
    }

    public final boolean getMAppListViewVisible() {
        return this.mAppListViewVisible;
    }

    public final ICarLinkAppListView getMView() {
        return this.mView;
    }

    public final String getTAG() {
        return this.TAG;
    }

    public final void setDeviceName(String deviceName) {
        Intrinsics.checkNotNullParameter(deviceName, "deviceName");
        this.deviceName = deviceName;
    }

    public final void setMAppListViewVisible(boolean z) {
        this.mAppListViewVisible = z;
    }

    public final void setMView(ICarLinkAppListView iCarLinkAppListView) {
        this.mView = iCarLinkAppListView;
    }

    public CarLinkAppListManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.TAG = "CarLinkAppListManager";
        this.mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        this.deviceName = "";
        MLog.d("CarLinkAppListManager", "initforkotlin");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.mContext = applicationContext;
        CarLinkDeviceManager.getInstance(applicationContext).init();
    }

    /* JADX INFO: compiled from: CarLinkAppListManager.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/mega/carlink/view/CarLinkAppListManager$Companion;", "", "()V", "CLS_NAME", "", "EXTRA_TO_TAB", "INSTANCE", "Lcom/mega/carlink/view/CarLinkAppListManager;", "PKG_NAME", "TAB_APPS", "", "TAB_HICAR_APPS", "buildDatabase", "context", "Landroid/content/Context;", "getInstance", "carlink-lib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final CarLinkAppListManager getInstance(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            CarLinkAppListManager carLinkAppListManager = CarLinkAppListManager.INSTANCE;
            if (carLinkAppListManager == null) {
                synchronized (this) {
                    carLinkAppListManager = CarLinkAppListManager.INSTANCE;
                    if (carLinkAppListManager == null) {
                        CarLinkAppListManager carLinkAppListManagerBuildDatabase = CarLinkAppListManager.INSTANCE.buildDatabase(context);
                        Companion companion = CarLinkAppListManager.INSTANCE;
                        CarLinkAppListManager.INSTANCE = carLinkAppListManagerBuildDatabase;
                        carLinkAppListManager = carLinkAppListManagerBuildDatabase;
                    }
                }
            }
            return carLinkAppListManager;
        }

        private final CarLinkAppListManager buildDatabase(Context context) {
            return new CarLinkAppListManager(context);
        }
    }

    public final void init(CarLinkAppListView carLinkAppListView) {
        Intrinsics.checkNotNullParameter(carLinkAppListView, "carLinkAppListView");
        MLog.d(this.TAG, "init");
        this.mView = carLinkAppListView;
        this.mCarLinkConnectState = CarLinkDeviceManager.getInstance(this.mContext).isCarLinkConnected();
        registerBluetoothBroadcastReceiver();
        registerDeviceNameReceiver();
        registerCarLinkPinCodeListener();
        registerCarLinkConnectionListener();
        registerRegisterCarLinkAppinfoListener();
        registerCarLinkProgressListener();
        this.mBluetoothDialog = new CarLinkBluetoothDeviceDialog(this.mContext);
        this.mDeviceDialog = new CheckDeviceDialog(this.mContext);
    }

    public final void startApplication(AppInfo appInfo) {
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        MLog.d(this.TAG, "startApplication: appId==" + appInfo.generalInfo.appId + ", appName==" + appInfo.generalInfo.label);
        CarLinkDeviceManager.getInstance(this.mContext).startCarLinkRemoteApp(CarLinkDeviceManager.getInstance(this.mContext).getConnectPhoneID(2), appInfo.generalInfo.appId, appInfo.generalInfo.category);
    }

    public final void dismissAllDialog() {
        CarLinkBluetoothDeviceDialog carLinkBluetoothDeviceDialog = this.mBluetoothDialog;
        CheckDeviceDialog checkDeviceDialog = null;
        if (carLinkBluetoothDeviceDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mBluetoothDialog");
            carLinkBluetoothDeviceDialog = null;
        }
        if (carLinkBluetoothDeviceDialog.isShowing()) {
            CarLinkBluetoothDeviceDialog carLinkBluetoothDeviceDialog2 = this.mBluetoothDialog;
            if (carLinkBluetoothDeviceDialog2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mBluetoothDialog");
                carLinkBluetoothDeviceDialog2 = null;
            }
            carLinkBluetoothDeviceDialog2.dismiss();
        }
        CheckDeviceDialog checkDeviceDialog2 = this.mDeviceDialog;
        if (checkDeviceDialog2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mDeviceDialog");
            checkDeviceDialog2 = null;
        }
        if (checkDeviceDialog2.isShowing()) {
            CheckDeviceDialog checkDeviceDialog3 = this.mDeviceDialog;
            if (checkDeviceDialog3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mDeviceDialog");
            } else {
                checkDeviceDialog = checkDeviceDialog3;
            }
            checkDeviceDialog.dismiss();
        }
    }

    public final void checkCarLinkState() {
        ICarLinkAppListView iCarLinkAppListView;
        BluetoothAdapter bluetoothAdapter;
        MLog.d(this.TAG, "checkCarLinkState() " + this.mCarLinkConnectState);
        if (!this.mBluetoothEnableState && (bluetoothAdapter = this.mBluetoothAdapter) != null) {
            boolean zIsEnabled = bluetoothAdapter.isEnabled();
            this.mBluetoothEnableState = zIsEnabled;
            ICarLinkAppListView iCarLinkAppListView2 = this.mView;
            if (iCarLinkAppListView2 != null) {
                iCarLinkAppListView2.onBluetoothEnableStatusChanged(zIsEnabled);
            }
            if (!this.mBluetoothEnableState) {
                MLog.d(this.TAG, "checkCarLinkState() bluetooth is not enabled");
                bluetoothAdapter.enable();
                return;
            }
        }
        if (this.mCarLinkConnectState) {
            ICarLinkAppListView iCarLinkAppListView3 = this.mView;
            if (iCarLinkAppListView3 != null) {
                iCarLinkAppListView3.onCarLinkConnectStatusChanged(2, false);
                return;
            }
            return;
        }
        this.mCarLinkConnectState = !Intrinsics.areEqual(CarLinkDeviceManager.getInstance(this.mContext).getConnectPhoneID(2), "");
        MLog.d(this.TAG, "checkCarLinkState() mCarLinkConnectState = " + this.mCarLinkConnectState);
        if (this.mCarLinkConnectState) {
            ICarLinkAppListView iCarLinkAppListView4 = this.mView;
            if (iCarLinkAppListView4 != null) {
                iCarLinkAppListView4.onCarLinkConnectStatusChanged(2, false);
                return;
            }
            return;
        }
        ICarLinkAppListView iCarLinkAppListView5 = this.mView;
        if (iCarLinkAppListView5 != null) {
            iCarLinkAppListView5.onCarLinkConnectStatusChanged(1, false);
        }
        if (this.mCarLinkConnectState) {
            return;
        }
        MLog.d(this.TAG, "checkCarLinkState() bluetoothConnected: " + BluetoothUtils.getInstance().isBluetoothConnected() + ", carPlayConnected: " + MegaLinkManager.getInstance().isCarPlayConnected());
        String strRequestCarLinkPinCode = CarLinkDeviceManager.getInstance(this.mContext).requestCarLinkPinCode();
        MLog.d(this.TAG, "checkCarLinkState() requestPinCode==" + strRequestCarLinkPinCode);
        if (Intrinsics.areEqual(strRequestCarLinkPinCode, "") || (iCarLinkAppListView = this.mView) == null) {
            return;
        }
        iCarLinkAppListView.onPinCodeChange(strRequestCarLinkPinCode);
    }

    private final void registerRegisterCarLinkAppinfoListener() {
        if (this.mHasRegisterCarLinkAppinfosListener) {
            return;
        }
        CarLinkDeviceManager.getInstance(this.mContext).registerCarLinkAppInfoListener(new CarLinkDeviceManager.OnCarLinkAppInfoListener() { // from class: com.mega.carlink.view.CarLinkAppListManager.registerRegisterCarLinkAppinfoListener.1
            @Override // com.mega.carlink.CarLinkDeviceManager.OnCarLinkAppInfoListener
            public void onLoadAllAppInfo(String deviceId, List<AppInfo> list) {
                ICarLinkAppListView mView;
                if (list == null || (mView = CarLinkAppListManager.this.getMView()) == null) {
                    return;
                }
                mView.onLoadAllAppInfo(list);
            }

            @Override // com.mega.carlink.CarLinkDeviceManager.OnCarLinkAppInfoListener
            public void onAppInfoAdd(String deviceId, List<AppInfo> list) {
                ICarLinkAppListView mView;
                if (list == null || (mView = CarLinkAppListManager.this.getMView()) == null) {
                    return;
                }
                mView.onAppInfoAdd(list);
            }

            @Override // com.mega.carlink.CarLinkDeviceManager.OnCarLinkAppInfoListener
            public void onAppInfoRemove(String deviceId, List<AppInfo> list) {
                ICarLinkAppListView mView;
                if (list == null || (mView = CarLinkAppListManager.this.getMView()) == null) {
                    return;
                }
                mView.onAppInfoRemove(list);
            }

            @Override // com.mega.carlink.CarLinkDeviceManager.OnCarLinkAppInfoListener
            public void onAppInfoUpdate(String deviceId, List<AppInfo> list) {
                ICarLinkAppListView mView;
                if (list == null || (mView = CarLinkAppListManager.this.getMView()) == null) {
                    return;
                }
                mView.onAppInfoUpdate(list);
            }
        });
        this.mHasRegisterCarLinkAppinfosListener = true;
        MLog.d(this.TAG, "registerRegisterCarLinkAppinfoListener");
    }

    private final void registerBluetoothBroadcastReceiver() {
        if (this.mHasRegisterBluetoothReceiver) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        this.mContext.registerReceiver(new BluetoothBroadcastReceiver(), intentFilter);
        this.mHasRegisterBluetoothReceiver = true;
        MLog.d(this.TAG, "registerBluetoothBroadcastReceiver");
    }

    private final void registerDeviceNameReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("device_name_action");
        this.mContext.registerReceiver(new DeviceNameReceiver(), intentFilter);
    }

    private final void registerCarLinkConnectionListener() {
        if (this.mHasRegisterCarLinkConnectionListener) {
            return;
        }
        CarLinkDeviceManager.getInstance(this.mContext).registerCarLinkConnectionListener(new CarLinkDeviceManager.OnConnectionChangeListener() { // from class: com.mega.carlink.view.CarLinkAppListManager$$ExternalSyntheticLambda0
            @Override // com.mega.carlink.CarLinkDeviceManager.OnConnectionChangeListener
            public final void onConnStateChanged(int i, String str, int i2) {
                CarLinkAppListManager.registerCarLinkConnectionListener$lambda$1(this.f$0, i, str, i2);
            }
        });
        this.mHasRegisterCarLinkConnectionListener = true;
        MLog.d(this.TAG, "registerCarLinkConnectionListener");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerCarLinkConnectionListener$lambda$1(CarLinkAppListManager this$0, int i, String str, int i2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MLog.d(this$0.TAG, "registerCarLinkConnectionListener platform==" + i + ", deviceId==" + str + ", state==" + i2);
        ICarLinkAppListView iCarLinkAppListView = this$0.mView;
        if (iCarLinkAppListView != null) {
            iCarLinkAppListView.onCarLinkConnectStatusChanged(i2, true);
        }
        this$0.mCarLinkConnectState = i2 == 2;
        if (i2 == 1 && this$0.mAppListViewVisible) {
            this$0.checkCarLinkState();
        }
    }

    private final void registerCarLinkPinCodeListener() {
        MLog.d(this.TAG, "registerCarLinkPinCodeListener()");
        if (this.mHasRegisterCarLinkPinCodeListener) {
            return;
        }
        CarLinkDeviceManager.getInstance(this.mContext).registerCarLinkPinCodeChangeListener(new CarLinkDeviceManager.OnCarLinkPinCodeChangeListener() { // from class: com.mega.carlink.view.CarLinkAppListManager$$ExternalSyntheticLambda1
            @Override // com.mega.carlink.CarLinkDeviceManager.OnCarLinkPinCodeChangeListener
            public final void onPinCodeChange(int i, String str) {
                CarLinkAppListManager.registerCarLinkPinCodeListener$lambda$2(this.f$0, i, str);
            }
        });
        this.mHasRegisterCarLinkPinCodeListener = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerCarLinkPinCodeListener$lambda$2(CarLinkAppListManager this$0, int i, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MLog.d(this$0.TAG, "registerCarLinkPinCodeListener platform = " + i + ", pinCode = " + str);
        ICarLinkAppListView iCarLinkAppListView = this$0.mView;
        if (iCarLinkAppListView != null) {
            iCarLinkAppListView.onPinCodeChange(str);
        }
    }

    private final void registerCarLinkProgressListener() {
        MLog.d(this.TAG, "registerCarLinkProgressListener()");
        if (this.mHasRegisterCarLinkProgressListener) {
            return;
        }
        CarLinkDeviceManager.getInstance(this.mContext).registerCarLinkConnectingProgressChangeListener(new CarLinkDeviceManager.OnCarLinkProgressChangeListener() { // from class: com.mega.carlink.view.CarLinkAppListManager$$ExternalSyntheticLambda2
            @Override // com.mega.carlink.CarLinkDeviceManager.OnCarLinkProgressChangeListener
            public final void onProgressChange(int i, String str, int i2, String str2, String str3) {
                CarLinkAppListManager.registerCarLinkProgressListener$lambda$3(this.f$0, i, str, i2, str2, str3);
            }
        });
        this.mHasRegisterCarLinkProgressListener = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerCarLinkProgressListener$lambda$3(CarLinkAppListManager this$0, int i, String deviceID, int i2, String deviceName, String productName) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MLog.d(this$0.TAG, "registerCarLinkProgressListener platform = " + i + ", deviceID = " + deviceID + ", progress = " + i2 + ", deviceName = " + deviceName + ", productName = " + productName);
        ICarLinkAppListView iCarLinkAppListView = this$0.mView;
        if (iCarLinkAppListView != null) {
            Intrinsics.checkNotNullExpressionValue(deviceID, "deviceID");
            Intrinsics.checkNotNullExpressionValue(deviceName, "deviceName");
            Intrinsics.checkNotNullExpressionValue(productName, "productName");
            iCarLinkAppListView.onConnectingProgress(deviceID, i2, deviceName, productName);
        }
    }

    public final void onBluetoothEnableStateChanged(boolean enable) {
        MLog.d(this.TAG, "onBluetoothEnableStateChanged: enable: " + enable + ", mAppListViewVisible: " + this.mAppListViewVisible);
        this.mBluetoothEnableState = enable;
        ICarLinkAppListView iCarLinkAppListView = this.mView;
        if (iCarLinkAppListView != null) {
            iCarLinkAppListView.onBluetoothEnableStatusChanged(enable);
        }
        if (!this.mAppListViewVisible || CarLinkDeviceManager.getInstance(this.mContext).isCarLinkConnected()) {
            return;
        }
        checkCarLinkState();
    }

    /* JADX INFO: compiled from: CarLinkAppListManager.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/mega/carlink/view/CarLinkAppListManager$BluetoothBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "TAG", "", "onReceive", "", "context", "Landroid/content/Context;", LauncherSettings.Favorites.INTENT, "Landroid/content/Intent;", "carlink-lib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    private static final class BluetoothBroadcastReceiver extends BroadcastReceiver {
        private final String TAG = "BluetoothBroadcastReceiver";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(intent, "intent");
            String action = intent.getAction();
            MLog.i(this.TAG, "onReceive: action==" + action);
            if (Intrinsics.areEqual("android.bluetooth.adapter.action.STATE_CHANGED", action)) {
                int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", 0);
                MLog.i(this.TAG, "BluetoothState: " + intExtra);
                CarLinkAppListManager.INSTANCE.getInstance(context).onBluetoothEnableStateChanged(intExtra == 12);
                if (intExtra == 12) {
                    MLog.d(this.TAG, "Bluetooth has opened");
                }
            }
        }
    }

    @Override // com.mega.carlink.view.dialog.CarLinkBluetoothDeviceDialog.OnConfirmBluetoothDialogListener
    public void onBluetoothDialogConfirmClick() {
        ICarLinkAppListView iCarLinkAppListView;
        MLog.d(this.TAG, "onBluetoothDialogConfirmClick()");
        MegaBluetoothAdapter.setScanMode(this.mBluetoothAdapter, 21);
        BluetoothUtils.getInstance().disconnectAllBluetooth(false);
        String strRequestCarLinkPinCode = CarLinkDeviceManager.getInstance(this.mContext).requestCarLinkPinCode();
        MLog.d(this.TAG, "requestPinCode = " + strRequestCarLinkPinCode);
        if (Intrinsics.areEqual(strRequestCarLinkPinCode, "") || (iCarLinkAppListView = this.mView) == null) {
            return;
        }
        iCarLinkAppListView.onPinCodeChange(strRequestCarLinkPinCode);
    }

    @Override // com.mega.carlink.view.dialog.CarLinkBluetoothDeviceDialog.OnConfirmBluetoothDialogListener
    public void onBluetoothDialogCancelClick() {
        MLog.d(this.TAG, "onBluetoothDialogCancelClick()");
        startAppList();
    }

    @Override // com.mega.carlink.view.dialog.CheckDeviceDialog.OnCheckDialogClickListener
    public void onCheckDialogConfirmClick() {
        ICarLinkAppListView iCarLinkAppListView;
        MLog.d(this.TAG, "onCheckDialogConfirmClick()");
        MegaLinkManager.getInstance().disconnectCarPlay();
        String strRequestCarLinkPinCode = CarLinkDeviceManager.getInstance(this.mContext).requestCarLinkPinCode();
        MLog.d(this.TAG, "requestPinCode = " + strRequestCarLinkPinCode);
        if (Intrinsics.areEqual(strRequestCarLinkPinCode, "") || (iCarLinkAppListView = this.mView) == null) {
            return;
        }
        iCarLinkAppListView.onPinCodeChange(strRequestCarLinkPinCode);
    }

    @Override // com.mega.carlink.view.dialog.CheckDeviceDialog.OnCheckDialogClickListener
    public void onCheckDialogCancelClick() {
        MLog.d(this.TAG, "onCheckDialogCancelClick()");
        startAppList();
    }

    public final void startAppList() {
        MLog.d(this.TAG, "startAppList()");
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.android.launcher3", "com.android.launcher3.activity.AppListActivity"));
        intent.putExtra("to_tab", 0);
        intent.addFlags(805306368);
        this.mContext.startActivity(intent);
    }
}

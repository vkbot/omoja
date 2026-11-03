package com.mega.hicar.view;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.android.launcher3.LauncherSettings;
import com.mega.hicar.HiCarDeviceManager;
import com.mega.hicar.model.AppInfo;
import com.mega.hicar.receiver.DeviceNameReceiver;
import com.mega.hicar.util.BluetoothUtils;
import com.mega.hicar.util.ExecutorsUtils;
import com.mega.hicar.view.dialog.BluetoothDeviceDialog;
import com.mega.hicar.view.dialog.CheckDeviceDialog;
import com.mega.nexus.bluetooth.MegaBluetoothAdapter;
import com.mega.sdk.linkmanager.MegaLinkManager;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: HiCarAppListManager.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 >2\u00020\u00012\u00020\u0002:\u0002=>B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0006\u0010%\u001a\u00020&J\u0006\u0010'\u001a\u00020&J\b\u0010(\u001a\u0004\u0018\u00010\u0007J\u000e\u0010)\u001a\u00020&2\u0006\u0010*\u001a\u00020+J\b\u0010,\u001a\u00020&H\u0016J\b\u0010-\u001a\u00020&H\u0016J\u000e\u0010.\u001a\u00020&2\u0006\u0010/\u001a\u00020\fJ\b\u00100\u001a\u00020&H\u0016J\b\u00101\u001a\u00020&H\u0016J\b\u00102\u001a\u00020&H\u0002J\b\u00103\u001a\u00020&H\u0002J\b\u00104\u001a\u00020&H\u0002J\b\u00105\u001a\u00020&H\u0002J\b\u00106\u001a\u00020&H\u0002J\u000e\u00107\u001a\u00020&2\u0006\u0010\n\u001a\u00020\u0007J\b\u00108\u001a\u00020&H\u0002J\u000e\u00109\u001a\u00020&2\u0006\u0010:\u001a\u00020;J\b\u0010<\u001a\u00020&H\u0002R\u0014\u0010\u0006\u001a\u00020\u0007X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\n \u0013*\u0004\u0018\u00010\u00120\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006?"}, d2 = {"Lcom/mega/hicar/view/HiCarAppListManager;", "Lcom/mega/hicar/view/dialog/BluetoothDeviceDialog$OnConfirmBluetoothDialogListener;", "Lcom/mega/hicar/view/dialog/CheckDeviceDialog$OnCheckDialogClickListener;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "TAG", "", "getTAG", "()Ljava/lang/String;", "deviceName", "mAppListViewVisible", "", "getMAppListViewVisible", "()Z", "setMAppListViewVisible", "(Z)V", "mBluetoothAdapter", "Landroid/bluetooth/BluetoothAdapter;", "kotlin.jvm.PlatformType", "mBluetoothDialog", "Lcom/mega/hicar/view/dialog/BluetoothDeviceDialog;", "mBluetoothEnableState", "mContext", "mDeviceDialog", "Lcom/mega/hicar/view/dialog/CheckDeviceDialog;", "mHasRegisterBluetoothReceiver", "mHasRegisterHiCarAppinfosListener", "mHasRegisterHiCarConnectionListener", "mHasRegisterHiCarPinCodeListener", "mHicarConnectState", "mView", "Lcom/mega/hicar/view/IHiCarAppListView;", "getMView", "()Lcom/mega/hicar/view/IHiCarAppListView;", "setMView", "(Lcom/mega/hicar/view/IHiCarAppListView;)V", "checkHicarState", "", "dismissAllDialog", "getDeviceName", "init", "hiCarAppListView", "Lcom/mega/hicar/view/HiCarAppListView;", "onBluetoothDialogCancelClick", "onBluetoothDialogConfirmClick", "onBluetoothEnableStateChanged", "enable", "onCheckDialogCancelClick", "onCheckDialogConfirmClick", "registerBluetoothBroadcastReceiver", "registerDeviceNameReceiver", "registerHiCarConnectionListener", "registerHiCarPinCodeListener", "registerRegisterHiCarAppinfoListener", "setDeviceName", "startAppList", "startApplication", "appInfo", "Lcom/mega/hicar/model/AppInfo;", "tryRequestPinCode", "BluetoothBroadcastReceiver", "Companion", "hicar-lib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class HiCarAppListManager implements BluetoothDeviceDialog.OnConfirmBluetoothDialogListener, CheckDeviceDialog.OnCheckDialogClickListener {
    public static final String CLS_NAME = "com.android.launcher3.activity.AppListActivity";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String EXTRA_TO_TAB = "to_tab";
    private static volatile HiCarAppListManager INSTANCE = null;
    public static final String PKG_NAME = "com.android.launcher3";
    public static final int TAB_APPS = 0;
    public static final int TAB_HICAR_APPS = 1;
    private final String TAG;
    private String deviceName;
    private boolean mAppListViewVisible;
    private final BluetoothAdapter mBluetoothAdapter;
    private BluetoothDeviceDialog mBluetoothDialog;
    private boolean mBluetoothEnableState;
    private Context mContext;
    private CheckDeviceDialog mDeviceDialog;
    private boolean mHasRegisterBluetoothReceiver;
    private boolean mHasRegisterHiCarAppinfosListener;
    private boolean mHasRegisterHiCarConnectionListener;
    private boolean mHasRegisterHiCarPinCodeListener;
    private boolean mHicarConnectState;
    private IHiCarAppListView mView;

    @JvmStatic
    public static final HiCarAppListManager getInstance(Context context) {
        return INSTANCE.getInstance(context);
    }

    public final String getDeviceName() {
        return this.deviceName;
    }

    public final boolean getMAppListViewVisible() {
        return this.mAppListViewVisible;
    }

    public final IHiCarAppListView getMView() {
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

    public final void setMView(IHiCarAppListView iHiCarAppListView) {
        this.mView = iHiCarAppListView;
    }

    public HiCarAppListManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.TAG = "HiCarAppListManager";
        this.mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        this.deviceName = "";
        MLog.d("HiCarAppListManager", "initforkotlin");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.mContext = applicationContext;
        HiCarDeviceManager.getInstance().init(this.mContext);
    }

    /* JADX INFO: compiled from: HiCarAppListManager.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/mega/hicar/view/HiCarAppListManager$Companion;", "", "()V", "CLS_NAME", "", "EXTRA_TO_TAB", "INSTANCE", "Lcom/mega/hicar/view/HiCarAppListManager;", "PKG_NAME", "TAB_APPS", "", "TAB_HICAR_APPS", "buildDatabase", "context", "Landroid/content/Context;", "getInstance", "hicar-lib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final HiCarAppListManager getInstance(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            HiCarAppListManager hiCarAppListManager = HiCarAppListManager.INSTANCE;
            if (hiCarAppListManager == null) {
                synchronized (this) {
                    hiCarAppListManager = HiCarAppListManager.INSTANCE;
                    if (hiCarAppListManager == null) {
                        HiCarAppListManager hiCarAppListManagerBuildDatabase = HiCarAppListManager.INSTANCE.buildDatabase(context);
                        Companion companion = HiCarAppListManager.INSTANCE;
                        HiCarAppListManager.INSTANCE = hiCarAppListManagerBuildDatabase;
                        hiCarAppListManager = hiCarAppListManagerBuildDatabase;
                    }
                }
            }
            return hiCarAppListManager;
        }

        private final HiCarAppListManager buildDatabase(Context context) {
            return new HiCarAppListManager(context);
        }
    }

    public final void init(HiCarAppListView hiCarAppListView) {
        Intrinsics.checkNotNullParameter(hiCarAppListView, "hiCarAppListView");
        MLog.d(this.TAG, "init");
        this.mView = hiCarAppListView;
        registerBluetoothBroadcastReceiver();
        registerDeviceNameReceiver();
        registerHiCarPinCodeListener();
        registerHiCarConnectionListener();
        registerRegisterHiCarAppinfoListener();
        this.mBluetoothDialog = new BluetoothDeviceDialog(this.mContext);
        this.mDeviceDialog = new CheckDeviceDialog(this.mContext);
    }

    public final void startApplication(AppInfo appInfo) {
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        HiCarDeviceManager.getInstance().sendAppInfo("start", appInfo.packageName);
    }

    public final void dismissAllDialog() {
        BluetoothDeviceDialog bluetoothDeviceDialog = this.mBluetoothDialog;
        CheckDeviceDialog checkDeviceDialog = null;
        if (bluetoothDeviceDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mBluetoothDialog");
            bluetoothDeviceDialog = null;
        }
        if (bluetoothDeviceDialog.isShowing()) {
            BluetoothDeviceDialog bluetoothDeviceDialog2 = this.mBluetoothDialog;
            if (bluetoothDeviceDialog2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mBluetoothDialog");
                bluetoothDeviceDialog2 = null;
            }
            bluetoothDeviceDialog2.dismiss();
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

    public final void checkHicarState() {
        IHiCarAppListView iHiCarAppListView;
        BluetoothAdapter bluetoothAdapter;
        MLog.d(this.TAG, "checkHicarState");
        if (!this.mBluetoothEnableState && (bluetoothAdapter = this.mBluetoothAdapter) != null) {
            boolean zIsEnabled = bluetoothAdapter.isEnabled();
            this.mBluetoothEnableState = zIsEnabled;
            IHiCarAppListView iHiCarAppListView2 = this.mView;
            if (iHiCarAppListView2 != null) {
                iHiCarAppListView2.onBluetoothEnableStatusChanged(zIsEnabled);
            }
            if (!this.mBluetoothEnableState) {
                MLog.d(this.TAG, "checkHicarState bluetooth is not enabled");
                bluetoothAdapter.enable();
                return;
            }
        }
        if (this.mHicarConnectState) {
            IHiCarAppListView iHiCarAppListView3 = this.mView;
            if (iHiCarAppListView3 != null) {
                iHiCarAppListView3.onHiCarConnectStatusChanged(101, false);
                return;
            }
            return;
        }
        this.mHicarConnectState = !Intrinsics.areEqual(HiCarDeviceManager.getInstance().getConnectPhoneID(), "");
        MLog.d(this.TAG, "checkHicarState mHicarConnectState = " + this.mHicarConnectState);
        if (this.mHicarConnectState) {
            IHiCarAppListView iHiCarAppListView4 = this.mView;
            if (iHiCarAppListView4 != null) {
                iHiCarAppListView4.onHiCarConnectStatusChanged(101, false);
                return;
            }
            return;
        }
        IHiCarAppListView iHiCarAppListView5 = this.mView;
        if (iHiCarAppListView5 != null) {
            iHiCarAppListView5.onHiCarConnectStatusChanged(102, false);
        }
        if (this.mHicarConnectState) {
            return;
        }
        boolean zIsBluetoothConnected = BluetoothUtils.getInstance().isBluetoothConnected();
        boolean zIsCarPlayConnected = MegaLinkManager.getInstance().isCarPlayConnected();
        MLog.d(this.TAG, "checkHicarState() bluetoothConnected: " + zIsBluetoothConnected + ", carPlayConnected: " + zIsCarPlayConnected);
        if (zIsCarPlayConnected) {
            CheckDeviceDialog checkDeviceDialog = this.mDeviceDialog;
            CheckDeviceDialog checkDeviceDialog2 = null;
            if (checkDeviceDialog == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mDeviceDialog");
                checkDeviceDialog = null;
            }
            checkDeviceDialog.setOnCheckDialogClickListener(this);
            CheckDeviceDialog checkDeviceDialog3 = this.mDeviceDialog;
            if (checkDeviceDialog3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mDeviceDialog");
            } else {
                checkDeviceDialog2 = checkDeviceDialog3;
            }
            checkDeviceDialog2.show();
        }
        if (zIsCarPlayConnected) {
            return;
        }
        String strRequestPinCode = HiCarDeviceManager.getInstance().requestPinCode();
        MLog.d(this.TAG, "requestPinCode = " + strRequestPinCode);
        if (Intrinsics.areEqual(strRequestPinCode, "-1")) {
            tryRequestPinCode();
        }
        if (Intrinsics.areEqual(strRequestPinCode, "") || (iHiCarAppListView = this.mView) == null) {
            return;
        }
        iHiCarAppListView.onPinCodeChange(strRequestPinCode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void tryRequestPinCode() {
        MLog.d(this.TAG, "tryRequestPinCode()");
        String strRequestPinCode = HiCarDeviceManager.getInstance().requestPinCode();
        MLog.d(this.TAG, "tryRequestPinCode requestPinCode = " + strRequestPinCode);
        if (Intrinsics.areEqual(strRequestPinCode, "-1")) {
            ExecutorsUtils.getInstance().getWorkerThreadHandler().postDelayed(new Runnable() { // from class: com.mega.hicar.view.HiCarAppListManager$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.tryRequestPinCode();
                }
            }, 30L);
        } else {
            ExecutorsUtils.getInstance().getWorkerThreadHandler().removeCallbacksAndMessages(null);
        }
    }

    private final void registerRegisterHiCarAppinfoListener() {
        if (this.mHasRegisterHiCarAppinfosListener) {
            return;
        }
        HiCarDeviceManager.getInstance().registerHiCarAppInfoListener(new HiCarDeviceManager.OnHiCarAppInfoListener() { // from class: com.mega.hicar.view.HiCarAppListManager.registerRegisterHiCarAppinfoListener.1
            @Override // com.mega.hicar.HiCarDeviceManager.OnHiCarAppInfoListener
            public void onLoadAllAppInfo(String deviceId, List<AppInfo> list) {
                IHiCarAppListView mView;
                HiCarAppListManager hiCarAppListManager = HiCarAppListManager.this;
                if (list == null || (mView = hiCarAppListManager.getMView()) == null) {
                    return;
                }
                mView.onLoadAllAppInfo(list);
            }

            @Override // com.mega.hicar.HiCarDeviceManager.OnHiCarAppInfoListener
            public void onAppInfoAdd(String deviceId, List<AppInfo> list) {
                IHiCarAppListView mView;
                if (list == null || (mView = HiCarAppListManager.this.getMView()) == null) {
                    return;
                }
                mView.onAppInfoAdd(list);
            }

            @Override // com.mega.hicar.HiCarDeviceManager.OnHiCarAppInfoListener
            public void onAppInfoRemove(String deviceId, List<AppInfo> list) {
                IHiCarAppListView mView;
                if (list == null || (mView = HiCarAppListManager.this.getMView()) == null) {
                    return;
                }
                mView.onAppInfoRemove(list);
            }

            @Override // com.mega.hicar.HiCarDeviceManager.OnHiCarAppInfoListener
            public void onAppInfoUpdate(String deviceId, List<AppInfo> list) {
                IHiCarAppListView mView;
                if (list == null || (mView = HiCarAppListManager.this.getMView()) == null) {
                    return;
                }
                mView.onAppInfoUpdate(list);
            }
        });
        this.mHasRegisterHiCarAppinfosListener = true;
        MLog.d(this.TAG, "registerRegisterHiCarAppinfoListener");
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

    private final void registerHiCarConnectionListener() {
        if (this.mHasRegisterHiCarConnectionListener) {
            return;
        }
        HiCarDeviceManager.getInstance().registerHiCarConnectionListener(new HiCarDeviceManager.OnHiCarConnectionListener() { // from class: com.mega.hicar.view.HiCarAppListManager$$ExternalSyntheticLambda0
            @Override // com.mega.hicar.HiCarDeviceManager.OnHiCarConnectionListener
            public final void onConnStateChanged(int i) {
                HiCarAppListManager.registerHiCarConnectionListener$lambda$1(this.f$0, i);
            }
        });
        this.mHasRegisterHiCarConnectionListener = true;
        MLog.d(this.TAG, "registerHiCarConnectionListener");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerHiCarConnectionListener$lambda$1(HiCarAppListManager this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MLog.d(this$0.TAG, "registerHiCarConnectionListener state = " + i);
        IHiCarAppListView iHiCarAppListView = this$0.mView;
        if (iHiCarAppListView != null) {
            iHiCarAppListView.onHiCarConnectStatusChanged(i, true);
        }
        boolean z = i == 101;
        this$0.mHicarConnectState = z;
        if (z || i == 104 || !this$0.mAppListViewVisible) {
            return;
        }
        this$0.checkHicarState();
    }

    private final void registerHiCarPinCodeListener() {
        if (this.mHasRegisterHiCarPinCodeListener) {
            return;
        }
        HiCarDeviceManager.getInstance().registerHiCarPinCodeListener(new HiCarDeviceManager.OnHiCarPinCodeListener() { // from class: com.mega.hicar.view.HiCarAppListManager$$ExternalSyntheticLambda2
            @Override // com.mega.hicar.HiCarDeviceManager.OnHiCarPinCodeListener
            public final void onPinCodeChange(String str) {
                HiCarAppListManager.registerHiCarPinCodeListener$lambda$2(this.f$0, str);
            }
        });
        this.mHasRegisterHiCarPinCodeListener = true;
        MLog.d(this.TAG, "registerHiCarPinCodeListener");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerHiCarPinCodeListener$lambda$2(HiCarAppListManager this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MLog.d(this$0.TAG, "registerHiCarPinCodeListener pinCode = " + str);
        IHiCarAppListView iHiCarAppListView = this$0.mView;
        if (iHiCarAppListView != null) {
            iHiCarAppListView.onPinCodeChange(str);
        }
    }

    public final void onBluetoothEnableStateChanged(boolean enable) {
        MLog.d(this.TAG, "onBluetoothEnableStateChanged: enable: " + enable + ", mAppListViewVisible: " + this.mAppListViewVisible);
        this.mBluetoothEnableState = enable;
        IHiCarAppListView iHiCarAppListView = this.mView;
        if (iHiCarAppListView != null) {
            iHiCarAppListView.onBluetoothEnableStatusChanged(enable);
        }
        if (this.mAppListViewVisible) {
            checkHicarState();
        }
    }

    /* JADX INFO: compiled from: HiCarAppListManager.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/mega/hicar/view/HiCarAppListManager$BluetoothBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "TAG", "", "onReceive", "", "context", "Landroid/content/Context;", LauncherSettings.Favorites.INTENT, "Landroid/content/Intent;", "hicar-lib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
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
                HiCarAppListManager.INSTANCE.getInstance(context).onBluetoothEnableStateChanged(intExtra == 12);
                if (intExtra == 12) {
                    MLog.d(this.TAG, "Bluetooth has opened");
                }
            }
        }
    }

    @Override // com.mega.hicar.view.dialog.BluetoothDeviceDialog.OnConfirmBluetoothDialogListener
    public void onBluetoothDialogConfirmClick() {
        IHiCarAppListView iHiCarAppListView;
        MLog.d(this.TAG, "onBluetoothDialogConfirmClick()");
        MegaBluetoothAdapter.setScanMode(this.mBluetoothAdapter, 21);
        BluetoothUtils.getInstance().disconnectAllBluetooth();
        String strRequestPinCode = HiCarDeviceManager.getInstance().requestPinCode();
        MLog.d(this.TAG, "requestPinCode = " + strRequestPinCode);
        if (Intrinsics.areEqual(strRequestPinCode, "") || (iHiCarAppListView = this.mView) == null) {
            return;
        }
        iHiCarAppListView.onPinCodeChange(strRequestPinCode);
    }

    @Override // com.mega.hicar.view.dialog.BluetoothDeviceDialog.OnConfirmBluetoothDialogListener
    public void onBluetoothDialogCancelClick() {
        MLog.d(this.TAG, "onBluetoothDialogCancelClick()");
        startAppList();
    }

    @Override // com.mega.hicar.view.dialog.CheckDeviceDialog.OnCheckDialogClickListener
    public void onCheckDialogConfirmClick() {
        IHiCarAppListView iHiCarAppListView;
        MLog.d(this.TAG, "onCheckDialogConfirmClick()");
        MegaLinkManager.getInstance().disconnectCarPlay();
        String strRequestPinCode = HiCarDeviceManager.getInstance().requestPinCode();
        MLog.d(this.TAG, "requestPinCode = " + strRequestPinCode);
        if (Intrinsics.areEqual(strRequestPinCode, "") || (iHiCarAppListView = this.mView) == null) {
            return;
        }
        iHiCarAppListView.onPinCodeChange(strRequestPinCode);
    }

    @Override // com.mega.hicar.view.dialog.CheckDeviceDialog.OnCheckDialogClickListener
    public void onCheckDialogCancelClick() {
        MLog.d(this.TAG, "onCheckDialogCancelClick()");
        startAppList();
    }

    private final void startAppList() {
        MLog.d(this.TAG, "startAppList()");
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.android.launcher3", "com.android.launcher3.activity.AppListActivity"));
        intent.putExtra("to_tab", 0);
        intent.addFlags(805306368);
        this.mContext.startActivity(intent);
    }
}

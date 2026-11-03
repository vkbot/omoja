package com.lion.datapoint.log;

import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.lion.datapoint.ILogDataCallBack;
import com.lion.datapoint.ILogDataInterface;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public class LogDataInterfaceManager extends BaseConnectManager<ILogDataInterface> {
    private static final String PACKAGE_NAME = "com.lion.datapoint";
    private static final long RETRY_TIME = 5000;
    private static final String SERVICE_ACTION = "com.lion.datapoint.log.LogDataService";
    private static final String TAG = "LogDataInterfaceManager : 250225";
    private static volatile LogDataInterfaceManager mInstance;

    @Retention(RetentionPolicy.SOURCE)
    public @interface DCType {
        public static final int ALL = -1;
        public static final int APPLICATION_USAGE = 1;
        public static final int BROWSE = 2;
        public static final int VEHICLE_SETTING = 3;
    }

    public static class POINT_MODE {
        public static final int DEBUG_MODE = 1;
        public static final int DEBUG_SDK_MODE = 3;
        public static final int RELEASE_MODE = 2;
        public static final int RELEASE_SDK_MODE = 4;
    }

    @Override // com.lion.datapoint.log.BaseConnectManager
    protected long getRetryBindTimeMill() {
        return 5000L;
    }

    @Override // com.lion.datapoint.log.BaseConnectManager
    protected String getServiceAction() {
        return SERVICE_ACTION;
    }

    @Override // com.lion.datapoint.log.BaseConnectManager
    protected String getServicePkgName() {
        return "com.lion.datapoint";
    }

    public static LogDataInterfaceManager getInstances() {
        if (mInstance == null) {
            synchronized (LogDataInterfaceManager.class) {
                if (mInstance == null) {
                    mInstance = new LogDataInterfaceManager();
                }
            }
        }
        return mInstance;
    }

    private LogDataInterfaceManager() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.lion.datapoint.log.BaseConnectManager
    public ILogDataInterface asInterface(IBinder iBinder) {
        return ILogDataInterface.Stub.asInterface(iBinder);
    }

    public void deInitialize(int i) {
        m235x8ab30123(i);
        release();
    }

    public void unBindService() {
        release();
    }

    /* JADX INFO: renamed from: judgeAllowUpLoad, reason: merged with bridge method [inline-methods] */
    public void m225x8fecb615(final int i) {
        Remote.tryExec(new Remote.RemoteVoidFunction() { // from class: com.lion.datapoint.log.LogDataInterfaceManager$$ExternalSyntheticLambda3
            @Override // com.lion.datapoint.log.Remote.RemoteVoidFunction
            public final void call() throws RemoteException {
                this.f$0.m226xc9b757f4(i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$judgeAllowUpLoad$1$com-lion-datapoint-log-LogDataInterfaceManager, reason: not valid java name */
    /* synthetic */ void m226xc9b757f4(final int i) throws RemoteException {
        if (isServiceConnected(true)) {
            getProxy().judgeAllowUpLoad(i);
        } else {
            getTaskQueue().offer(new Runnable() { // from class: com.lion.datapoint.log.LogDataInterfaceManager$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m225x8fecb615(i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: registerCallback, reason: merged with bridge method [inline-methods] */
    public void m227x4e54bd9e(final int i, final ILogDataCallBack iLogDataCallBack) {
        Remote.tryExec(new Remote.RemoteVoidFunction() { // from class: com.lion.datapoint.log.LogDataInterfaceManager$$ExternalSyntheticLambda9
            @Override // com.lion.datapoint.log.Remote.RemoteVoidFunction
            public final void call() throws RemoteException {
                this.f$0.m228x881f5f7d(i, iLogDataCallBack);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$registerCallback$3$com-lion-datapoint-log-LogDataInterfaceManager, reason: not valid java name */
    /* synthetic */ void m228x881f5f7d(final int i, final ILogDataCallBack iLogDataCallBack) throws RemoteException {
        if (isServiceConnected(true)) {
            getProxy().registerCallback(i, iLogDataCallBack);
        } else {
            getTaskQueue().offer(new Runnable() { // from class: com.lion.datapoint.log.LogDataInterfaceManager$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m227x4e54bd9e(i, iLogDataCallBack);
                }
            });
        }
    }

    /* JADX INFO: renamed from: unregisterCallback, reason: merged with bridge method [inline-methods] */
    public void m235x8ab30123(final int i) {
        Remote.tryExec(new Remote.RemoteVoidFunction() { // from class: com.lion.datapoint.log.LogDataInterfaceManager$$ExternalSyntheticLambda10
            @Override // com.lion.datapoint.log.Remote.RemoteVoidFunction
            public final void call() throws RemoteException {
                this.f$0.m236xc47da302(i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$unregisterCallback$5$com-lion-datapoint-log-LogDataInterfaceManager, reason: not valid java name */
    /* synthetic */ void m236xc47da302(final int i) throws RemoteException {
        if (isServiceConnected(true)) {
            getProxy().unregisterCallback(i);
        } else {
            getTaskQueue().offer(new Runnable() { // from class: com.lion.datapoint.log.LogDataInterfaceManager$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m235x8ab30123(i);
                }
            });
        }
    }

    public boolean isBindSuccess() {
        return isServiceConnected();
    }

    public void accOffNotify() {
        Log.d(TAG, "accOffNotify()");
        Remote.tryExec(new Remote.RemoteVoidFunction() { // from class: com.lion.datapoint.log.LogDataInterfaceManager$$ExternalSyntheticLambda7
            @Override // com.lion.datapoint.log.Remote.RemoteVoidFunction
            public final void call() throws RemoteException {
                this.f$0.m224xce4d806b();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$accOffNotify$6$com-lion-datapoint-log-LogDataInterfaceManager, reason: not valid java name */
    /* synthetic */ void m224xce4d806b() throws RemoteException {
        if (isServiceConnected(true)) {
            getProxy().accOffNotify();
        } else {
            getTaskQueue().offer(new Runnable() { // from class: com.lion.datapoint.log.LogDataInterfaceManager$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.accOffNotify();
                }
            });
        }
    }

    /* JADX INFO: renamed from: trackJsonJsonObjectValue, reason: merged with bridge method [inline-methods] */
    public void m231xd36f85ca(final String str, final int i) {
        Log.d(TAG, " trackJsonJsonObjectValue content:" + str + " nodeType " + i);
        if (str == null || str.isEmpty()) {
            Log.e(TAG, "trackJsonJsonObjectValue content is null or empty");
        } else {
            Remote.tryExec(new Remote.RemoteVoidFunction() { // from class: com.lion.datapoint.log.LogDataInterfaceManager$$ExternalSyntheticLambda5
                @Override // com.lion.datapoint.log.Remote.RemoteVoidFunction
                public final void call() throws RemoteException {
                    this.f$0.m232xd3a27a9(str, i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$trackJsonJsonObjectValue$8$com-lion-datapoint-log-LogDataInterfaceManager, reason: not valid java name */
    /* synthetic */ void m232xd3a27a9(final String str, final int i) throws RemoteException {
        if (isServiceConnected(true)) {
            getProxy().trackJsonJsonObjectValue(str, i);
        } else {
            getTaskQueue().offer(new Runnable() { // from class: com.lion.datapoint.log.LogDataInterfaceManager$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m231xd36f85ca(str, i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: trackJsonNewValue, reason: merged with bridge method [inline-methods] */
    public void m234xf2d0cc35(final String str, final int i) {
        Log.d(TAG, " trackJsonNewValue content:" + str + " nodeType " + i);
        if (str == null || str.isEmpty()) {
            Log.e(TAG, "trackJsonNewValue content is null or empty");
        } else {
            Remote.tryExec(new Remote.RemoteVoidFunction() { // from class: com.lion.datapoint.log.LogDataInterfaceManager$$ExternalSyntheticLambda2
                @Override // com.lion.datapoint.log.Remote.RemoteVoidFunction
                public final void call() throws RemoteException {
                    this.f$0.m233xcbd82b35(str, i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$trackJsonNewValue$10$com-lion-datapoint-log-LogDataInterfaceManager, reason: not valid java name */
    /* synthetic */ void m233xcbd82b35(final String str, final int i) throws RemoteException {
        if (isServiceConnected(true)) {
            getProxy().trackJsonValue(str, i);
        } else {
            getTaskQueue().offer(new Runnable() { // from class: com.lion.datapoint.log.LogDataInterfaceManager$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m234xf2d0cc35(str, i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: trackJsonJsonObjectValue, reason: merged with bridge method [inline-methods] */
    public void m229x37ee7a21(final String str, final String str2, final int i) {
        Log.d(TAG, " trackJsonJsonObjectValue() key:" + str + " ,value:" + str2 + " ,nodeType:" + i);
        if (str == null || str.isEmpty()) {
            Log.e(TAG, " some data is error!");
        } else {
            Remote.tryExec(new Remote.RemoteVoidFunction() { // from class: com.lion.datapoint.log.LogDataInterfaceManager$$ExternalSyntheticLambda0
                @Override // com.lion.datapoint.log.Remote.RemoteVoidFunction
                public final void call() throws RemoteException {
                    this.f$0.m230x71b91c00(str, str2, i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$trackJsonJsonObjectValue$12$com-lion-datapoint-log-LogDataInterfaceManager, reason: not valid java name */
    /* synthetic */ void m230x71b91c00(final String str, final String str2, final int i) throws RemoteException {
        if (isServiceConnected(true)) {
            getProxy().trackJsonJsonValue(str, str2, i);
        } else {
            getTaskQueue().offer(new Runnable() { // from class: com.lion.datapoint.log.LogDataInterfaceManager$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m229x37ee7a21(str, str2, i);
                }
            });
        }
    }
}

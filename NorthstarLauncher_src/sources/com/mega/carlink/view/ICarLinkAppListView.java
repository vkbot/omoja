package com.mega.carlink.view;

import com.android.launcher3.testing.TestProtocol;
import com.mega.carlink.model.AppInfo;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: ICarLinkAppListView.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0016\u0010\u0004\u001a\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H&J\u0016\u0010\b\u001a\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H&J\u0016\u0010\t\u001a\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\fH&J(\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0013H&J\u0016\u0010\u0017\u001a\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H&J\u0012\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u0013H&¨\u0006\u001a"}, d2 = {"Lcom/mega/carlink/view/ICarLinkAppListView;", "", "initApplistManager", "", "onAppInfoAdd", "list", "", "Lcom/mega/carlink/model/AppInfo;", "onAppInfoRemove", "onAppInfoUpdate", "onBluetoothEnableStatusChanged", "enable", "", "onCarLinkConnectStatusChanged", TestProtocol.STATE_FIELD, "", "showAnim", "onConnectingProgress", "deviceID", "", "progress", "deviceName", "productName", "onLoadAllAppInfo", "onPinCodeChange", "pinCode", "carlink-lib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface ICarLinkAppListView {
    void initApplistManager();

    void onAppInfoAdd(List<AppInfo> list);

    void onAppInfoRemove(List<AppInfo> list);

    void onAppInfoUpdate(List<AppInfo> list);

    void onBluetoothEnableStatusChanged(boolean enable);

    void onCarLinkConnectStatusChanged(int state, boolean showAnim);

    void onConnectingProgress(String deviceID, int progress, String deviceName, String productName);

    void onLoadAllAppInfo(List<AppInfo> list);

    void onPinCodeChange(String pinCode);
}

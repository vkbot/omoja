package com.mega.carlink.base;

import com.mega.carlink.model.AppInfo;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IAppInfoChangeListener {
    void getAppDetailInfo(String str, List<AppInfo> list);

    void onAppInfoAdd(String str, List<AppInfo> list);

    void onAppInfoRemove(String str, List<AppInfo> list);

    void onAppInfoUpdate(String str, List<AppInfo> list);
}

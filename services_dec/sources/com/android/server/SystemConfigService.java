package com.android.server;

import android.content.Context;
import android.os.CarrierAssociatedAppEntry;
import android.os.ISystemConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class SystemConfigService extends SystemService {
    private final Context mContext;
    private final ISystemConfig.Stub mInterface;

    /* JADX INFO: renamed from: com.android.server.SystemConfigService$1, reason: invalid class name */
    class AnonymousClass1 extends ISystemConfig.Stub {
        AnonymousClass1() {
        }

        public List<String> getDisabledUntilUsedPreinstalledCarrierApps() {
            SystemConfigService.this.mContext.enforceCallingOrSelfPermission("android.permission.READ_CARRIER_APP_INFO", "getDisabledUntilUsedPreInstalledCarrierApps requires READ_CARRIER_APP_INFO");
            return new ArrayList(SystemConfig.getInstance().getDisabledUntilUsedPreinstalledCarrierApps());
        }

        public Map getDisabledUntilUsedPreinstalledCarrierAssociatedApps() {
            SystemConfigService.this.mContext.enforceCallingOrSelfPermission("android.permission.READ_CARRIER_APP_INFO", "getDisabledUntilUsedPreInstalledCarrierAssociatedApps requires READ_CARRIER_APP_INFO");
            return (Map) SystemConfig.getInstance().getDisabledUntilUsedPreinstalledCarrierAssociatedApps().entrySet().stream().collect(Collectors.toMap(new Function() { // from class: com.android.server.-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return (String) ((Map.Entry) obj).getKey();
                }
            }, new Function() { // from class: com.android.server.-$$Lambda$SystemConfigService$1$f5VXiRcg7rUiMtx0mLy75Mhd1ec
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SystemConfigService.AnonymousClass1.lambda$getDisabledUntilUsedPreinstalledCarrierAssociatedApps$1((Map.Entry) obj);
                }
            }));
        }

        static /* synthetic */ List lambda$getDisabledUntilUsedPreinstalledCarrierAssociatedApps$1(Map.Entry e) {
            return (List) ((List) e.getValue()).stream().map(new Function() { // from class: com.android.server.-$$Lambda$SystemConfigService$1$48nhaXPvuCaH0ZzSd3oLBI99uhI
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((CarrierAssociatedAppEntry) obj).packageName;
                }
            }).collect(Collectors.toList());
        }

        public Map getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries() {
            SystemConfigService.this.mContext.enforceCallingOrSelfPermission("android.permission.READ_CARRIER_APP_INFO", "getDisabledUntilUsedPreInstalledCarrierAssociatedAppEntries requires READ_CARRIER_APP_INFO");
            return SystemConfig.getInstance().getDisabledUntilUsedPreinstalledCarrierAssociatedApps();
        }
    }

    public SystemConfigService(Context context) {
        super(context);
        this.mInterface = new AnonymousClass1();
        this.mContext = context;
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("system_config", this.mInterface);
    }
}

package com.android.launcher3.carproperty;

import com.mega.ecu.MegaProperties;
import com.mega.nexus.os.MegaSystemProperties;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: TboxNetworkType.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u0011\u0010\u0002\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004\"\u001b\u0010\u0005\u001a\u00020\u00018FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"NETWORK_NO", "", "isNetworkArea", "", "()Z", "vehicleNetwork", "getVehicleNetwork", "()I", "vehicleNetwork$delegate", "Lkotlin/Lazy;", "NorthstarLauncher_northstarRelease"}, k = 5, mv = {1, 8, 0}, xi = 48, xs = "com/android/launcher3/carproperty/TboxNetworkType")
final /* synthetic */ class TboxNetworkType__TboxNetworkTypeKt {
    private static final Lazy vehicleNetwork$delegate = LazyKt.lazy(new Function0<Integer>() { // from class: com.android.launcher3.carproperty.TboxNetworkType__TboxNetworkTypeKt$vehicleNetwork$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(MegaSystemProperties.getInt(MegaProperties.CONFIG_VEHICLE_NETWORK, 0));
        }
    });

    public static final int getVehicleNetwork() {
        return ((Number) vehicleNetwork$delegate.getValue()).intValue();
    }

    public static final boolean isNetworkArea() {
        return TboxNetworkType.getVehicleNetwork() != 0;
    }
}

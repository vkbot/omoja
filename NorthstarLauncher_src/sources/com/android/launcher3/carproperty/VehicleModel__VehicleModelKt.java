package com.android.launcher3.carproperty;

import com.mega.chery.utils.CountryCode;
import com.mega.nexus.os.MegaSystemProperties;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VehicleModel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\f\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0011\u0010\u0006\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\b\"\u0011\u0010\t\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\t\u0010\b\"\u0011\u0010\n\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\n\u0010\b\"\u0011\u0010\u000b\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\b\"\u0011\u0010\f\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\f\u0010\b\"\u0011\u0010\r\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\r\u0010\b\"\u001b\u0010\u000e\u001a\u00020\u00018FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"PROP_VEHICLE_MODEL", "", "T19CFL1", "T1GC", "T1GC_INT", "T28", "isLiveWallpaperDisabled", "", "()Z", "isMediaSelectSupported", "isT19CFL1", "isT1GC", "isT1GCInt", "isT28", "vehicleMode", "getVehicleMode", "()Ljava/lang/String;", "vehicleMode$delegate", "Lkotlin/Lazy;", "NorthstarLauncher_northstarRelease"}, k = 5, mv = {1, 8, 0}, xi = 48, xs = "com/android/launcher3/carproperty/VehicleModel")
final /* synthetic */ class VehicleModel__VehicleModelKt {
    private static final String PROP_VEHICLE_MODEL = "ro.build.vehicle_model";
    private static final String T19CFL1 = "T19CFL1";
    private static final String T1GC = "T1GC";
    private static final String T1GC_INT = "T1GC_INT";
    private static final String T28 = "T28";
    private static final Lazy vehicleMode$delegate = LazyKt.lazy(new Function0<String>() { // from class: com.android.launcher3.carproperty.VehicleModel__VehicleModelKt$vehicleMode$2
        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            return MegaSystemProperties.get("ro.build.vehicle_model", "T28");
        }
    });

    public static final String getVehicleMode() {
        Object value = vehicleMode$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-vehicleMode>(...)");
        return (String) value;
    }

    public static final boolean isT28() {
        return Intrinsics.areEqual(VehicleModel.getVehicleMode(), "T28");
    }

    public static final boolean isT1GC() {
        return Intrinsics.areEqual(VehicleModel.getVehicleMode(), "T1GC");
    }

    public static final boolean isT1GCInt() {
        return Intrinsics.areEqual(VehicleModel.getVehicleMode(), "T1GC_INT");
    }

    public static final boolean isT19CFL1() {
        return Intrinsics.areEqual(VehicleModel.getVehicleMode(), "T19CFL1");
    }

    public static final boolean isMediaSelectSupported() {
        return VehicleModel.isT28() || VehicleModel.isT1GC() || ((VehicleModel.isT1GCInt() || VehicleModel.isT19CFL1()) && !TboxNetworkType.isNetworkArea());
    }

    public static final boolean isLiveWallpaperDisabled() {
        return (VehicleModel.isT1GCInt() || VehicleModel.isT19CFL1()) && CountryCode.inCountries(CountryCode.NEW_ZEALAND, CountryCode.AUSTRALIA);
    }
}

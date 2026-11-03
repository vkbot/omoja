package com.android.launcher3.carproperty;

import com.mega.ecu.MegaProperties;
import com.mega.nexus.os.MegaSystemProperties;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: DrivingPowerType.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0005\"\u001b\u0010\u0000\u001a\u00020\u00018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0002\u0010\u0003\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\f\u0010\u000e\"\u0011\u0010\u000f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u000e\"\u0011\u0010\u0010\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000e\"\u0011\u0010\u0011\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000e¨\u0006\u0012"}, d2 = {"CONFIG_DRIVING_POWER_TYPE", "", "getCONFIG_DRIVING_POWER_TYPE", "()I", "CONFIG_DRIVING_POWER_TYPE$delegate", "Lkotlin/Lazy;", "EV", "FCEV", "HEV", "ICE", "PHEV", "REEV", "isEV", "", "()Z", "isHEV", "isICE", "isPHEV", "NorthstarLauncher_northstarRelease"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class DrivingPowerTypeKt {
    private static final Lazy CONFIG_DRIVING_POWER_TYPE$delegate = LazyKt.lazy(new Function0<Integer>() { // from class: com.android.launcher3.carproperty.DrivingPowerTypeKt$CONFIG_DRIVING_POWER_TYPE$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            int i = MegaSystemProperties.getInt(MegaProperties.CONFIG_DRIVING_POWER_TYPE, 3);
            int i2 = 0;
            int i3 = MegaSystemProperties.getInt(MegaProperties.CONFIG_DRIVING_POWER_TYPE2, 0);
            if (i == 1 && i3 == 0) {
                i2 = 2;
            } else if (i == 2 && i3 == 0) {
                i2 = 1;
            } else if (i == 3 && i3 == 1) {
                i2 = 5;
            }
            return Integer.valueOf(i2);
        }
    });
    public static final int EV = 1;
    public static final int FCEV = 4;
    public static final int HEV = 5;
    public static final int ICE = 0;
    public static final int PHEV = 2;
    public static final int REEV = 3;

    private static final int getCONFIG_DRIVING_POWER_TYPE() {
        return ((Number) CONFIG_DRIVING_POWER_TYPE$delegate.getValue()).intValue();
    }

    public static final boolean isICE() {
        return getCONFIG_DRIVING_POWER_TYPE() == 0;
    }

    public static final boolean isPHEV() {
        return getCONFIG_DRIVING_POWER_TYPE() == 2;
    }

    public static final boolean isEV() {
        return getCONFIG_DRIVING_POWER_TYPE() == 1;
    }

    public static final boolean isHEV() {
        return getCONFIG_DRIVING_POWER_TYPE() == 5;
    }
}

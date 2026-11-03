package com.android.launcher3.util;

import com.mega.ecu.MegaProperties;
import com.mega.nexus.os.MegaSystemProperties;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FlavorUtils.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u001e\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\u0002\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0018\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u0002\u001a\u0004\b\u0019\u0010\u0012R\u001a\u0010\u001b\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\u0002\u001a\u0004\b\u001b\u0010\u0012R\u001a\u0010\u001d\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\u0002\u001a\u0004\b\u001d\u0010\u0012R\u001a\u0010\u001f\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b \u0010\u0002\u001a\u0004\b\u001f\u0010\u0012R\u001a\u0010!\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010\u0002\u001a\u0004\b!\u0010\u0012R\u001a\u0010#\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b$\u0010\u0002\u001a\u0004\b%\u0010\u0012R\u001b\u0010&\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010\u0017\u001a\u0004\b'\u0010(R\u001b\u0010*\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b,\u0010\u0017\u001a\u0004\b+\u0010\u0015¨\u0006-"}, d2 = {"Lcom/android/launcher3/util/FlavorUtils;", "", "()V", "FACE_STYLE2_24MY", "", "FACE_STYLE2_25MY", "NETWORK_NO", "PROP_VEHICLE_MODEL", "", "T19CFL1", "T1GC", "T1GC_INT", "T28", "TAG", "enableFloatingDock", "", "getEnableFloatingDock$annotations", "getEnableFloatingDock", "()Z", "faceStyle2", "getFaceStyle2", "()I", "faceStyle2$delegate", "Lkotlin/Lazy;", "is25My", "isNetworkArea", "isNetworkArea$annotations", "isT19CFL1", "isT19CFL1$annotations", "isT1GC", "isT1GC$annotations", "isT1GCInt", "isT1GCInt$annotations", "isT28", "isT28$annotations", "showLionMediaIcons", "getShowLionMediaIcons$annotations", "getShowLionMediaIcons", "vehicleMode", "getVehicleMode", "()Ljava/lang/String;", "vehicleMode$delegate", "vehicleNetwork", "getVehicleNetwork", "vehicleNetwork$delegate", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FlavorUtils {
    public static final int FACE_STYLE2_24MY = 1;
    public static final int FACE_STYLE2_25MY = 2;
    public static final int NETWORK_NO = 0;
    private static final String PROP_VEHICLE_MODEL = "ro.build.vehicle_model";
    private static final String T19CFL1 = "T19CFL1";
    private static final String T1GC = "T1GC";
    private static final String T1GC_INT = "T1GC_INT";
    private static final String T28 = "T28";
    private static final String TAG = "FlavorUtils";
    public static final FlavorUtils INSTANCE = new FlavorUtils();

    /* JADX INFO: renamed from: vehicleMode$delegate, reason: from kotlin metadata */
    private static final Lazy vehicleMode = LazyKt.lazy(new Function0<String>() { // from class: com.android.launcher3.util.FlavorUtils$vehicleMode$2
        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            return MegaSystemProperties.get("ro.build.vehicle_model", "T28");
        }
    });
    private static final boolean enableFloatingDock = isT19CFL1();

    /* JADX INFO: renamed from: vehicleNetwork$delegate, reason: from kotlin metadata */
    private static final Lazy vehicleNetwork = LazyKt.lazy(new Function0<Integer>() { // from class: com.android.launcher3.util.FlavorUtils$vehicleNetwork$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(MegaSystemProperties.getInt(MegaProperties.CONFIG_VEHICLE_NETWORK, 0));
        }
    });

    /* JADX INFO: renamed from: faceStyle2$delegate, reason: from kotlin metadata */
    private static final Lazy faceStyle2 = LazyKt.lazy(new Function0<Integer>() { // from class: com.android.launcher3.util.FlavorUtils$faceStyle2$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(MegaSystemProperties.getInt(MegaProperties.CONFIG_FACE_STYLE2, 0));
        }
    });

    public static final boolean getEnableFloatingDock() {
        return enableFloatingDock;
    }

    @JvmStatic
    public static /* synthetic */ void getEnableFloatingDock$annotations() {
    }

    @JvmStatic
    public static /* synthetic */ void getShowLionMediaIcons$annotations() {
    }

    @JvmStatic
    public static /* synthetic */ void isNetworkArea$annotations() {
    }

    @JvmStatic
    public static /* synthetic */ void isT19CFL1$annotations() {
    }

    @JvmStatic
    public static /* synthetic */ void isT1GC$annotations() {
    }

    @JvmStatic
    public static /* synthetic */ void isT1GCInt$annotations() {
    }

    @JvmStatic
    public static /* synthetic */ void isT28$annotations() {
    }

    private FlavorUtils() {
    }

    private final String getVehicleMode() {
        Object value = vehicleMode.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-vehicleMode>(...)");
        return (String) value;
    }

    public static final boolean isT28() {
        return Intrinsics.areEqual(INSTANCE.getVehicleMode(), "T28");
    }

    public static final boolean isT1GC() {
        return Intrinsics.areEqual(INSTANCE.getVehicleMode(), "T1GC");
    }

    public static final boolean isT1GCInt() {
        return Intrinsics.areEqual(INSTANCE.getVehicleMode(), "T1GC_INT");
    }

    public static final boolean isT19CFL1() {
        return Intrinsics.areEqual(INSTANCE.getVehicleMode(), "T19CFL1");
    }

    public static final boolean getShowLionMediaIcons() {
        return isT28() || isT1GC();
    }

    public final int getVehicleNetwork() {
        return ((Number) vehicleNetwork.getValue()).intValue();
    }

    public static final boolean isNetworkArea() {
        return INSTANCE.getVehicleNetwork() != 0;
    }

    public final int getFaceStyle2() {
        return ((Number) faceStyle2.getValue()).intValue();
    }

    public final boolean is25My() {
        return getFaceStyle2() == 2;
    }
}

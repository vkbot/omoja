package com.android.launcher3.util;

import com.mega.ecu.MegaProperties;
import com.mega.nexus.os.MegaSystemProperties;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: Props.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0011\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u000e\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\b\u001a\u0004\b\u000f\u0010\fR\u001b\u0010\u0011\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\b\u001a\u0004\b\u0012\u0010\fR\u001b\u0010\u0014\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\b\u001a\u0004\b\u0015\u0010\fR\u0011\u0010\u0017\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\fR\u001b\u0010\u0018\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\b\u001a\u0004\b\u0019\u0010\u0006¨\u0006\u001b"}, d2 = {"Lcom/android/launcher3/util/Props;", "", "()V", "driverSeatMemory", "", "getDriverSeatMemory", "()I", "driverSeatMemory$delegate", "Lkotlin/Lazy;", "hasCLM", "", "getHasCLM", "()Z", "hasCLM$delegate", "hasFatigueMonitor", "getHasFatigueMonitor", "hasFatigueMonitor$delegate", "hasMainDriverSeatMassageFunction", "getHasMainDriverSeatMassageFunction", "hasMainDriverSeatMassageFunction$delegate", "hasPM25", "getHasPM25", "hasPM25$delegate", "isShowScene", "seatRearviewMirrorMemory", "getSeatRearviewMirrorMemory", "seatRearviewMirrorMemory$delegate", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Props {
    public static final Props INSTANCE = new Props();

    /* JADX INFO: renamed from: hasPM25$delegate, reason: from kotlin metadata */
    private static final Lazy hasPM25 = LazyKt.lazy(new Function0<Boolean>() { // from class: com.android.launcher3.util.Props$hasPM25$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(MegaSystemProperties.getInt(MegaProperties.CONFIG_PM25_MONITOR, 0) == 1);
        }
    });

    /* JADX INFO: renamed from: hasCLM$delegate, reason: from kotlin metadata */
    private static final Lazy hasCLM = LazyKt.lazy(new Function0<Boolean>() { // from class: com.android.launcher3.util.Props$hasCLM$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(MegaSystemProperties.getInt(MegaProperties.CONFIG_CLM, 0) == 1);
        }
    });

    /* JADX INFO: renamed from: hasFatigueMonitor$delegate, reason: from kotlin metadata */
    private static final Lazy hasFatigueMonitor = LazyKt.lazy(new Function0<Boolean>() { // from class: com.android.launcher3.util.Props$hasFatigueMonitor$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(MegaSystemProperties.getInt(MegaProperties.CONFIG_FATIGUE_MONITOR, 0) == 1);
        }
    });

    /* JADX INFO: renamed from: hasMainDriverSeatMassageFunction$delegate, reason: from kotlin metadata */
    private static final Lazy hasMainDriverSeatMassageFunction = LazyKt.lazy(new Function0<Boolean>() { // from class: com.android.launcher3.util.Props$hasMainDriverSeatMassageFunction$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(MegaSystemProperties.getInt(MegaProperties.CONFIG_MAIN_DRIVER_SEAT_MASSAGE, 0) == 1);
        }
    });

    /* JADX INFO: renamed from: seatRearviewMirrorMemory$delegate, reason: from kotlin metadata */
    private static final Lazy seatRearviewMirrorMemory = LazyKt.lazy(new Function0<Integer>() { // from class: com.android.launcher3.util.Props$seatRearviewMirrorMemory$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(MegaSystemProperties.getInt(MegaProperties.CONFIG_MIRROR_MEMORY, 0));
        }
    });

    /* JADX INFO: renamed from: driverSeatMemory$delegate, reason: from kotlin metadata */
    private static final Lazy driverSeatMemory = LazyKt.lazy(new Function0<Integer>() { // from class: com.android.launcher3.util.Props$driverSeatMemory$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(MegaSystemProperties.getInt(MegaProperties.CONFIG_DRIVER_SEAT_MEMORY, 0));
        }
    });

    private Props() {
    }

    public final boolean isShowScene() {
        if (getHasPM25() && getHasCLM()) {
            return true;
        }
        if (getHasFatigueMonitor() && getHasCLM() && getHasMainDriverSeatMassageFunction()) {
            return true;
        }
        if (getHasCLM() && getSeatRearviewMirrorMemory() == 1) {
            return true;
        }
        return getHasCLM() && getSeatRearviewMirrorMemory() == 0 && getDriverSeatMemory() == 1;
    }

    private final boolean getHasPM25() {
        return ((Boolean) hasPM25.getValue()).booleanValue();
    }

    private final boolean getHasCLM() {
        return ((Boolean) hasCLM.getValue()).booleanValue();
    }

    private final boolean getHasFatigueMonitor() {
        return ((Boolean) hasFatigueMonitor.getValue()).booleanValue();
    }

    private final boolean getHasMainDriverSeatMassageFunction() {
        return ((Boolean) hasMainDriverSeatMassageFunction.getValue()).booleanValue();
    }

    private final int getSeatRearviewMirrorMemory() {
        return ((Number) seatRearviewMirrorMemory.getValue()).intValue();
    }

    private final int getDriverSeatMemory() {
        return ((Number) driverSeatMemory.getValue()).intValue();
    }
}

package com.android.launcher3.carproperty;

import com.mega.ecu.MegaProperties;
import com.mega.nexus.os.MegaSystemProperties;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import mega.log.MLog;

/* JADX INFO: compiled from: CarProperty.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u001a\u0006\u0010\r\u001a\u00020\u000e\"\u001b\u0010\u0000\u001a\u00020\u00018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0002\u0010\u0003\"\u001b\u0010\u0006\u001a\u00020\u00018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\u0005\u001a\u0004\b\u0007\u0010\u0003\"\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\t\u0010\u000b\"\u0011\u0010\f\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\f\u0010\u000b¨\u0006\u000f"}, d2 = {"CONFIG_DVR", "", "getCONFIG_DVR", "()I", "CONFIG_DVR$delegate", "Lkotlin/Lazy;", "CONFIG_DVR_INTEGRATION", "getCONFIG_DVR_INTEGRATION", "CONFIG_DVR_INTEGRATION$delegate", "isDvrVisible", "", "()Z", "isT28DvrIntegrated", "dump", "", "NorthstarLauncher_northstarRelease"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class CarPropertyKt {
    private static final Lazy CONFIG_DVR$delegate = LazyKt.lazy(new Function0<Integer>() { // from class: com.android.launcher3.carproperty.CarPropertyKt$CONFIG_DVR$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(MegaSystemProperties.getInt(MegaProperties.CONFIG_DVR, -1));
        }
    });
    private static final Lazy CONFIG_DVR_INTEGRATION$delegate = LazyKt.lazy(new Function0<Integer>() { // from class: com.android.launcher3.carproperty.CarPropertyKt$CONFIG_DVR_INTEGRATION$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(MegaSystemProperties.getInt(MegaProperties.CONFIG_DVR_INTEGRATION, -1));
        }
    });

    private static final int getCONFIG_DVR() {
        return ((Number) CONFIG_DVR$delegate.getValue()).intValue();
    }

    public static final boolean isDvrVisible() {
        return getCONFIG_DVR() == 1;
    }

    private static final int getCONFIG_DVR_INTEGRATION() {
        return ((Number) CONFIG_DVR_INTEGRATION$delegate.getValue()).intValue();
    }

    public static final boolean isT28DvrIntegrated() {
        return getCONFIG_DVR_INTEGRATION() == 0 || getCONFIG_DVR_INTEGRATION() == 2;
    }

    public static final void dump() {
        MLog.d("CarProperty", "dump: \r\tCONFIG_DVR=" + getCONFIG_DVR() + " \n\tCONFIG_DVR_INTEGRATION=" + getCONFIG_DVR_INTEGRATION());
    }
}

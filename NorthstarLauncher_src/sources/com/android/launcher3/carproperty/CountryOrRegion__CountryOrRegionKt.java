package com.android.launcher3.carproperty;

import com.mega.chery.utils.CountryCode;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CountryOrRegion.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\"\u001b\u0010\u0000\u001a\u00020\u00018FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0002\u0010\u0003\"\u001b\u0010\u0006\u001a\u00020\u00078FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\u0005\u001a\u0004\b\u0006\u0010\b¨\u0006\n"}, d2 = {"countryOrRegin", "", "getCountryOrRegin", "()Ljava/lang/String;", "countryOrRegin$delegate", "Lkotlin/Lazy;", "isEuropeGroup", "", "()Z", "isEuropeGroup$delegate", "NorthstarLauncher_northstarRelease"}, k = 5, mv = {1, 8, 0}, xi = 48, xs = "com/android/launcher3/carproperty/CountryOrRegion")
final /* synthetic */ class CountryOrRegion__CountryOrRegionKt {
    private static final Lazy countryOrRegin$delegate = LazyKt.lazy(new Function0<String>() { // from class: com.android.launcher3.carproperty.CountryOrRegion__CountryOrRegionKt$countryOrRegin$2
        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            return CountryCode.getCurrentCountry();
        }
    });
    private static final Lazy isEuropeGroup$delegate = LazyKt.lazy(new Function0<Boolean>() { // from class: com.android.launcher3.carproperty.CountryOrRegion__CountryOrRegionKt.isEuropeGroup.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(CountryCode.isEUGroup());
        }
    });

    public static final String getCountryOrRegin() {
        Object value = countryOrRegin$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-countryOrRegin>(...)");
        return (String) value;
    }

    public static final boolean isEuropeGroup() {
        return ((Boolean) isEuropeGroup$delegate.getValue()).booleanValue();
    }
}

package com.mega.launcher.wallpaper;

import android.content.Context;
import android.content.SharedPreferences;
import com.android.launcher3.LauncherApplication;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.icons.cache.BaseIconCache;
import com.android.launcher3.views.LandmarkWallpaperView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import mega.car.MegaCar;

/* JADX INFO: compiled from: WallpaperPreference.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002%&B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\u001eJ\u0006\u0010!\u001a\u00020\"J\u0016\u0010#\u001a\u00020\"2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020 R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R+\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R+\u0010\u0015\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00048F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006'"}, d2 = {"Lcom/mega/launcher/wallpaper/WallpaperPreference;", "", "()V", "KEY_LANDMARK_INTERVAL", "", "KEY_WALLPAPER_TAG", "KEY_WALLPAPER_VERSION", "NAME", "<set-?>", "", "landmarkInterval", "getLandmarkInterval", "()J", "setLandmarkInterval", "(J)V", "landmarkInterval$delegate", "Lcom/mega/launcher/wallpaper/WallpaperPreference$LongProperty;", "preferences", "Landroid/content/SharedPreferences;", "getPreferences", "()Landroid/content/SharedPreferences;", "wallpaperTag", "getWallpaperTag", "()Ljava/lang/String;", "setWallpaperTag", "(Ljava/lang/String;)V", "wallpaperTag$delegate", "Lcom/mega/launcher/wallpaper/WallpaperPreference$StringProperty;", "getPreference", "context", "Landroid/content/Context;", "getWallpaperVersion", "", "removeLandmarkInterval", "", "setWallpaperVersion", BaseIconCache.IconDB.COLUMN_VERSION, "LongProperty", "StringProperty", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WallpaperPreference {
    private static final String KEY_WALLPAPER_VERSION = "wallpaper_version";
    private static final String NAME = "wallpaper";
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(WallpaperPreference.class, "landmarkInterval", "getLandmarkInterval()J", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(WallpaperPreference.class, "wallpaperTag", "getWallpaperTag()Ljava/lang/String;", 0))};
    public static final WallpaperPreference INSTANCE = new WallpaperPreference();
    private static final String KEY_LANDMARK_INTERVAL = "landmark_interval";

    /* JADX INFO: renamed from: landmarkInterval$delegate, reason: from kotlin metadata */
    private static final LongProperty landmarkInterval = new LongProperty(KEY_LANDMARK_INTERVAL, LandmarkWallpaperView.SHOW_NEXT_DELAY);
    private static final String KEY_WALLPAPER_TAG = "wallpaper_tag";

    /* JADX INFO: renamed from: wallpaperTag$delegate, reason: from kotlin metadata */
    private static final StringProperty wallpaperTag = new StringProperty(KEY_WALLPAPER_TAG, "");

    private WallpaperPreference() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SharedPreferences getPreferences() {
        SharedPreferences sharedPreferences = LauncherApplication.INSTANCE.get().getSharedPreferences(NAME, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "LauncherApplication.get(…ME, Context.MODE_PRIVATE)");
        return sharedPreferences;
    }

    public final long getLandmarkInterval() {
        return landmarkInterval.getValue(this, $$delegatedProperties[0]).longValue();
    }

    public final void setLandmarkInterval(long j) {
        landmarkInterval.setValue(this, $$delegatedProperties[0], j);
    }

    public final String getWallpaperTag() {
        return wallpaperTag.getValue(this, $$delegatedProperties[1]);
    }

    public final void setWallpaperTag(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        wallpaperTag.setValue2(this, $$delegatedProperties[1], str);
    }

    public final void removeLandmarkInterval() {
        getPreferences().edit().remove(KEY_LANDMARK_INTERVAL).apply();
    }

    private final SharedPreferences getPreference(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(NAME, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)");
        return sharedPreferences;
    }

    public final int getWallpaperVersion(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return getPreference(context).getInt(KEY_WALLPAPER_VERSION, 0);
    }

    public final void setWallpaperVersion(Context context, int version) {
        Intrinsics.checkNotNullParameter(context, "context");
        getPreference(context).edit().putInt(KEY_WALLPAPER_VERSION, version).apply();
    }

    /* JADX INFO: compiled from: WallpaperPreference.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\u001d\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00022\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0096\u0002J%\u0010\u000b\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u00022\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\n2\u0006\u0010\r\u001a\u00020\u0003H\u0096\u0002R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/mega/launcher/wallpaper/WallpaperPreference$StringProperty;", "Lkotlin/properties/ReadWriteProperty;", "Lcom/mega/launcher/wallpaper/WallpaperPreference;", "", "key", "defaultValue", "(Ljava/lang/String;Ljava/lang/String;)V", "getValue", "thisRef", MegaCar.PROPERTY_SERVICE, "Lkotlin/reflect/KProperty;", "setValue", "", LauncherSettings.Settings.EXTRA_VALUE, "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    private static final class StringProperty implements ReadWriteProperty<WallpaperPreference, String> {
        private final String defaultValue;
        private final String key;

        public StringProperty(String key, String defaultValue) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
            this.key = key;
            this.defaultValue = defaultValue;
        }

        @Override // kotlin.properties.ReadWriteProperty, kotlin.properties.ReadOnlyProperty
        public /* bridge */ /* synthetic */ Object getValue(Object obj, KProperty kProperty) {
            return getValue((WallpaperPreference) obj, (KProperty<?>) kProperty);
        }

        @Override // kotlin.properties.ReadWriteProperty
        public /* bridge */ /* synthetic */ void setValue(WallpaperPreference wallpaperPreference, KProperty kProperty, String str) {
            setValue2(wallpaperPreference, (KProperty<?>) kProperty, str);
        }

        public String getValue(WallpaperPreference thisRef, KProperty<?> property) {
            Intrinsics.checkNotNullParameter(thisRef, "thisRef");
            Intrinsics.checkNotNullParameter(property, "property");
            String string = thisRef.getPreferences().getString(this.key, this.defaultValue);
            return string == null ? this.defaultValue : string;
        }

        /* JADX INFO: renamed from: setValue, reason: avoid collision after fix types in other method */
        public void setValue2(WallpaperPreference thisRef, KProperty<?> property, String value) {
            Intrinsics.checkNotNullParameter(thisRef, "thisRef");
            Intrinsics.checkNotNullParameter(property, "property");
            Intrinsics.checkNotNullParameter(value, "value");
            thisRef.getPreferences().edit().putString(this.key, value).apply();
        }
    }

    /* JADX INFO: compiled from: WallpaperPreference.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\"\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00022\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u000bH\u0096\u0002¢\u0006\u0002\u0010\fJ%\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u00022\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u000b2\u0006\u0010\u000f\u001a\u00020\u0003H\u0096\u0002R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/mega/launcher/wallpaper/WallpaperPreference$LongProperty;", "Lkotlin/properties/ReadWriteProperty;", "Lcom/mega/launcher/wallpaper/WallpaperPreference;", "", "key", "", "defaultValue", "(Ljava/lang/String;J)V", "getValue", "thisRef", MegaCar.PROPERTY_SERVICE, "Lkotlin/reflect/KProperty;", "(Lcom/mega/launcher/wallpaper/WallpaperPreference;Lkotlin/reflect/KProperty;)Ljava/lang/Long;", "setValue", "", LauncherSettings.Settings.EXTRA_VALUE, "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    private static final class LongProperty implements ReadWriteProperty<WallpaperPreference, Long> {
        private final long defaultValue;
        private final String key;

        public LongProperty(String key, long j) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.key = key;
            this.defaultValue = j;
        }

        public /* synthetic */ LongProperty(String str, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? -1L : j);
        }

        @Override // kotlin.properties.ReadWriteProperty, kotlin.properties.ReadOnlyProperty
        public /* bridge */ /* synthetic */ Object getValue(Object obj, KProperty kProperty) {
            return getValue((WallpaperPreference) obj, (KProperty<?>) kProperty);
        }

        @Override // kotlin.properties.ReadWriteProperty
        public /* bridge */ /* synthetic */ void setValue(WallpaperPreference wallpaperPreference, KProperty kProperty, Long l) {
            setValue(wallpaperPreference, (KProperty<?>) kProperty, l.longValue());
        }

        public Long getValue(WallpaperPreference thisRef, KProperty<?> property) {
            Intrinsics.checkNotNullParameter(thisRef, "thisRef");
            Intrinsics.checkNotNullParameter(property, "property");
            return Long.valueOf(thisRef.getPreferences().getLong(this.key, this.defaultValue));
        }

        public void setValue(WallpaperPreference thisRef, KProperty<?> property, long value) {
            Intrinsics.checkNotNullParameter(thisRef, "thisRef");
            Intrinsics.checkNotNullParameter(property, "property");
            thisRef.getPreferences().edit().putLong(this.key, value).apply();
        }
    }
}

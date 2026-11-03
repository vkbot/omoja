package com.android.launcher3.icons;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.SafeCloseable;
import com.mega.launcher.model.AppIcon;
import java.util.Calendar;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;

/* JADX INFO: loaded from: classes.dex */
public class IconProvider {
    private static final boolean DEBUG = false;
    private static final String ICON_METADATA_KEY_PREFIX = ".dynamic_icons";
    private static final int NO_ID = 0;
    private static final String SYSTEM_STATE_SEPARATOR = " ";
    private static final String TAG = "IconProvider";
    private final ComponentName mCalendar;
    private final ComponentName mClock;
    private final Context mContext;
    private static final BiFunction<LauncherActivityInfo, Integer, Drawable> LAI_LOADER = new BiFunction() { // from class: com.android.launcher3.icons.IconProvider$$ExternalSyntheticLambda0
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return ((LauncherActivityInfo) obj).getIcon(((Integer) obj2).intValue());
        }
    };
    private static final BiFunction<ActivityInfo, PackageManager, Drawable> AI_LOADER = new BiFunction() { // from class: com.android.launcher3.icons.IconProvider$$ExternalSyntheticLambda1
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return ((ActivityInfo) obj).loadUnbadgedIcon((PackageManager) obj2);
        }
    };

    static /* synthetic */ void lambda$registerIconChangeListener$0() {
    }

    public IconProvider(Context context) {
        this.mContext = context;
        this.mCalendar = parseComponentOrNull(context, com.android.launcher3.R.string.calendar_component_name);
        this.mClock = parseComponentOrNull(context, com.android.launcher3.R.string.clock_component_name);
    }

    public String getSystemStateForPackage(String systemState, String packageName) {
        ComponentName componentName = this.mCalendar;
        return (componentName == null || !componentName.getPackageName().equals(packageName)) ? systemState : systemState + SYSTEM_STATE_SEPARATOR + getDay();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getIconForUI(LauncherActivityInfo info, int iconDpi) {
        Drawable icon = getIcon(info, iconDpi);
        if (icon instanceof BitmapInfo.Extender) {
            ((BitmapInfo.Extender) icon).prepareToDrawOnUi();
        }
        return icon;
    }

    public Drawable getIcon(LauncherActivityInfo info, int iconDpi) {
        return getIcon(info.getApplicationInfo().packageName, info.getApplicationInfo().name, info.getUser(), info, Integer.valueOf(iconDpi), LAI_LOADER);
    }

    public Drawable getIcon(ActivityInfo info, UserHandle user) {
        return getIcon(info.applicationInfo.packageName, info.applicationInfo.name, user, info, this.mContext.getPackageManager(), AI_LOADER);
    }

    private <T, P> Drawable getIcon(String packageName, String className, UserHandle user, T obj, P param, BiFunction<T, P, Drawable> loader) {
        ComponentName componentName = this.mCalendar;
        if (componentName != null && componentName.getPackageName().equals(packageName)) {
            loadCalendarDrawable(0);
        } else {
            ComponentName componentName2 = this.mClock;
            if (componentName2 != null && componentName2.getPackageName().equals(packageName) && Process.myUserHandle().equals(user)) {
                loadClockDrawable(0);
            }
        }
        Drawable appIcon = AppIcon.getInstance().getAppIcon(this.mContext, packageName, className);
        return appIcon == null ? loader.apply(obj, param) : appIcon;
    }

    private Drawable loadCalendarDrawable(int iconDpi) {
        PackageManager packageManager = this.mContext.getPackageManager();
        try {
            Bundle bundle = packageManager.getActivityInfo(this.mCalendar, 8320).metaData;
            Resources resourcesForApplication = packageManager.getResourcesForApplication(this.mCalendar.getPackageName());
            int dynamicIconId = getDynamicIconId(bundle, resourcesForApplication);
            if (dynamicIconId != 0) {
                return resourcesForApplication.getDrawableForDensity(dynamicIconId, iconDpi, null);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return null;
    }

    private Drawable loadClockDrawable(int iconDpi) {
        return ClockDrawableWrapper.forPackage(this.mContext, this.mClock.getPackageName(), iconDpi);
    }

    protected boolean isClockIcon(ComponentKey key) {
        ComponentName componentName = this.mClock;
        return componentName != null && componentName.equals(key.componentName) && Process.myUserHandle().equals(key.user);
    }

    private int getDynamicIconId(Bundle metadata, Resources resources) {
        int i;
        if (metadata == null || (i = metadata.getInt(this.mCalendar.getPackageName() + ICON_METADATA_KEY_PREFIX, 0)) == 0) {
            return 0;
        }
        TypedArray typedArrayObtainTypedArray = null;
        try {
            typedArrayObtainTypedArray = resources.obtainTypedArray(i);
            return typedArrayObtainTypedArray.getResourceId(getDay(), 0);
        } catch (Resources.NotFoundException unused) {
            return 0;
        } finally {
            if (typedArrayObtainTypedArray != null) {
                typedArrayObtainTypedArray.recycle();
            }
        }
    }

    private int getDay() {
        return Calendar.getInstance().get(5) - 1;
    }

    public static SafeCloseable registerIconChangeListener(final Context context, BiConsumer<String, UserHandle> callback, Handler handler) {
        ComponentName componentOrNull = parseComponentOrNull(context, com.android.launcher3.R.string.calendar_component_name);
        ComponentName componentOrNull2 = parseComponentOrNull(context, com.android.launcher3.R.string.clock_component_name);
        if (componentOrNull == null && componentOrNull2 == null) {
            return new SafeCloseable() { // from class: com.android.launcher3.icons.IconProvider$$ExternalSyntheticLambda2
                @Override // com.android.launcher3.util.SafeCloseable, java.lang.AutoCloseable
                public final void close() {
                    IconProvider.lambda$registerIconChangeListener$0();
                }
            };
        }
        final DateTimeChangeReceiver dateTimeChangeReceiver = new DateTimeChangeReceiver(callback);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.TIMEZONE_CHANGED");
        if (componentOrNull != null) {
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.DATE_CHANGED");
        }
        context.registerReceiver(dateTimeChangeReceiver, intentFilter, null, handler);
        return new SafeCloseable() { // from class: com.android.launcher3.icons.IconProvider$$ExternalSyntheticLambda3
            @Override // com.android.launcher3.util.SafeCloseable, java.lang.AutoCloseable
            public final void close() {
                context.unregisterReceiver(dateTimeChangeReceiver);
            }
        };
    }

    private static class DateTimeChangeReceiver extends BroadcastReceiver {
        private final BiConsumer<String, UserHandle> mCallback;

        DateTimeChangeReceiver(BiConsumer<String, UserHandle> callback) {
            this.mCallback = callback;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ComponentName componentOrNull;
            if ("android.intent.action.TIMEZONE_CHANGED".equals(intent.getAction()) && (componentOrNull = IconProvider.parseComponentOrNull(context, com.android.launcher3.R.string.clock_component_name)) != null) {
                this.mCallback.accept(componentOrNull.getPackageName(), Process.myUserHandle());
            }
            ComponentName componentOrNull2 = IconProvider.parseComponentOrNull(context, com.android.launcher3.R.string.calendar_component_name);
            if (componentOrNull2 != null) {
                Iterator<UserHandle> it = UserCache.INSTANCE.m166x39265fe7(context).getUserProfiles().iterator();
                while (it.hasNext()) {
                    this.mCallback.accept(componentOrNull2.getPackageName(), it.next());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ComponentName parseComponentOrNull(Context context, int resId) {
        String string = context.getString(resId);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return ComponentName.unflattenFromString(string);
    }
}

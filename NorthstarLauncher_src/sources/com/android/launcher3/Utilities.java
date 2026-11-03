package com.android.launcher3;

import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.app.Person;
import android.app.WallpaperManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.TransactionTooLargeException;
import android.provider.Settings;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TtsSpan;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewTreeObserver;
import android.view.animation.Interpolator;
import androidx.core.os.BuildCompat;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.FolderAdaptiveIcon;
import com.android.launcher3.graphics.TintedDrawableSpan;
import com.android.launcher3.icons.IconProvider;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.icons.ShortcutCachingLogic;
import com.android.launcher3.icons.cache.BaseIconCache;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.views.AppTransitionContext;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.mega.chery.utils.CheryCountryArea;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public final class Utilities {
    public static final int EDGE_NAV_BAR = 256;
    public static final String EXTRA_WALLPAPER_FLAVOR = "com.android.launcher3.WALLPAPER_FLAVOR";
    public static final String EXTRA_WALLPAPER_OFFSET = "com.android.launcher3.WALLPAPER_OFFSET";
    public static final boolean IS_DEBUG_DEVICE;
    public static boolean IS_RUNNING_IN_TEST_HARNESS = false;
    public static final int SCREEN_HEIGHT = 1440;
    public static final int SCREEN_WIDTH = 2560;
    private static final String TAG = "Launcher.Utilities";
    private static final Pattern sTrimPattern = Pattern.compile("^[\\s|\\p{javaSpaceChar}]*(.*)[\\s|\\p{javaSpaceChar}]*$");
    private static final int[] sLoc0 = new int[2];
    private static final int[] sLoc1 = new int[2];
    private static final Matrix sMatrix = new Matrix();
    private static final Matrix sInverseMatrix = new Matrix();
    public static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final Person[] EMPTY_PERSON_ARRAY = new Person[0];
    public static final boolean ATLEAST_R = BuildCompat.isAtLeastR();
    public static final boolean ATLEAST_Q = true;
    public static final boolean ATLEAST_P = true;
    public static final boolean ATLEAST_OREO_MR1 = true;
    public static final boolean ATLEAST_OREO = true;

    public static float comp(float a) {
        return 1.0f - a;
    }

    public static void enableRunningInTestHarnessForTests() {
        IS_RUNNING_IN_TEST_HARNESS = true;
    }

    static /* synthetic */ String lambda$joinToString$1(String str) {
        return str;
    }

    static /* synthetic */ String lambda$joinToString$2(String str) {
        return str;
    }

    public static float mapRange(float value, float min, float max) {
        return min + (value * (max - min));
    }

    public static float squaredHypot(float x, float y) {
        return (x * x) + (y * y);
    }

    static {
        IS_DEBUG_DEVICE = Build.TYPE.toLowerCase(Locale.ROOT).contains("debug") || Build.TYPE.toLowerCase(Locale.ROOT).equals("eng");
        IS_RUNNING_IN_TEST_HARNESS = ActivityManager.isRunningInTestHarness();
    }

    public static boolean isDevelopersOptionsEnabled(Context context) {
        return Settings.Global.getInt(context.getApplicationContext().getContentResolver(), "development_settings_enabled", 0) != 0;
    }

    public static boolean isPropertyEnabled(String propertyName) {
        return Log.isLoggable(propertyName, 2);
    }

    public static boolean existsStyleWallpapers(Context context) {
        return context.getPackageManager().resolveActivity(PackageManagerHelper.getStyleWallpapersIntent(context), 0) != null;
    }

    public static float getDescendantCoordRelativeToAncestor(View descendant, View ancestor, float[] coord, boolean includeRootScroll) {
        return getDescendantCoordRelativeToAncestor(descendant, ancestor, coord, includeRootScroll, false);
    }

    public static float getDescendantCoordRelativeToAncestor(View descendant, View ancestor, float[] coord, boolean includeRootScroll, boolean ignoreTransform) {
        float scaleX = 1.0f;
        for (View view = descendant; view != ancestor && view != null; view = (View) view.getParent()) {
            if (view != descendant || includeRootScroll) {
                offsetPoints(coord, -view.getScrollX(), -view.getScrollY());
            }
            if (!ignoreTransform) {
                view.getMatrix().mapPoints(coord);
            }
            offsetPoints(coord, view.getLeft(), view.getTop());
            scaleX *= view.getScaleX();
        }
        return scaleX;
    }

    public static void mapCoordInSelfToDescendant(View descendant, View root, float[] coord) {
        sMatrix.reset();
        while (descendant != root) {
            Matrix matrix = sMatrix;
            matrix.postTranslate(-descendant.getScrollX(), -descendant.getScrollY());
            matrix.postConcat(descendant.getMatrix());
            matrix.postTranslate(descendant.getLeft(), descendant.getTop());
            descendant = (View) descendant.getParent();
        }
        Matrix matrix2 = sMatrix;
        matrix2.postTranslate(-descendant.getScrollX(), -descendant.getScrollY());
        Matrix matrix3 = sInverseMatrix;
        matrix2.invert(matrix3);
        matrix3.mapPoints(coord);
    }

    public static void roundArray(float[] in, int[] out) {
        for (int i = 0; i < in.length; i++) {
            out[i] = Math.round(in[i]);
        }
    }

    public static void offsetPoints(float[] points, float offsetX, float offsetY) {
        for (int i = 0; i < points.length; i += 2) {
            points[i] = points[i] + offsetX;
            int i2 = i + 1;
            points[i2] = points[i2] + offsetY;
        }
    }

    public static boolean pointInView(View v, float localX, float localY, float slop) {
        float f = -slop;
        return localX >= f && localY >= f && localX < ((float) v.getWidth()) + slop && localY < ((float) v.getHeight()) + slop;
    }

    public static int[] getCenterDeltaInScreenSpace(View v0, View v1) {
        int[] iArr = sLoc0;
        v0.getLocationInWindow(iArr);
        int[] iArr2 = sLoc1;
        v1.getLocationInWindow(iArr2);
        iArr[0] = (int) (iArr[0] + ((v0.getMeasuredWidth() * v0.getScaleX()) / 2.0f));
        iArr[1] = (int) (iArr[1] + ((v0.getMeasuredHeight() * v0.getScaleY()) / 2.0f));
        iArr2[0] = (int) (iArr2[0] + ((v1.getMeasuredWidth() * v1.getScaleX()) / 2.0f));
        int measuredHeight = (int) (iArr2[1] + ((v1.getMeasuredHeight() * v1.getScaleY()) / 2.0f));
        iArr2[1] = measuredHeight;
        return new int[]{iArr2[0] - iArr[0], measuredHeight - iArr[1]};
    }

    public static void scaleRectFAboutCenter(RectF r, float scale) {
        if (scale != 1.0f) {
            float fCenterX = r.centerX();
            float fCenterY = r.centerY();
            r.offset(-fCenterX, -fCenterY);
            r.left *= scale;
            r.top *= scale;
            r.right *= scale;
            r.bottom *= scale;
            r.offset(fCenterX, fCenterY);
        }
    }

    public static void scaleRectAboutCenter(Rect r, float scale) {
        if (scale != 1.0f) {
            int iCenterX = r.centerX();
            int iCenterY = r.centerY();
            r.offset(-iCenterX, -iCenterY);
            scaleRect(r, scale);
            r.offset(iCenterX, iCenterY);
        }
    }

    public static void scaleRect(Rect r, float scale) {
        if (scale != 1.0f) {
            r.left = (int) ((r.left * scale) + 0.5f);
            r.top = (int) ((r.top * scale) + 0.5f);
            r.right = (int) ((r.right * scale) + 0.5f);
            r.bottom = (int) ((r.bottom * scale) + 0.5f);
        }
    }

    public static void insetRect(Rect r, Rect insets) {
        r.left = Math.min(r.right, r.left + insets.left);
        r.top = Math.min(r.bottom, r.top + insets.top);
        r.right = Math.max(r.left, r.right - insets.right);
        r.bottom = Math.max(r.top, r.bottom - insets.bottom);
    }

    public static float shrinkRect(Rect r, float scaleX, float scaleY) {
        float fMin = Math.min(Math.min(scaleX, scaleY), 1.0f);
        if (fMin < 1.0f) {
            int iWidth = (int) (r.width() * (scaleX - fMin) * 0.5f);
            r.left += iWidth;
            r.right -= iWidth;
            int iHeight = (int) (r.height() * (scaleY - fMin) * 0.5f);
            r.top += iHeight;
            r.bottom -= iHeight;
        }
        return fMin;
    }

    public static float mapToRange(float t, float fromMin, float fromMax, float toMin, float toMax, Interpolator interpolator) {
        if (fromMin == fromMax || toMin == toMax) {
            Log.e(TAG, "mapToRange: range has 0 length");
            return toMin;
        }
        return mapRange(interpolator.getInterpolation(getProgress(t, fromMin, fromMax)), toMin, toMax);
    }

    public static float getProgress(float current, float min, float max) {
        return Math.abs(current - min) / Math.abs(max - min);
    }

    public static float saturate(float a) {
        return boundToRange(a, 0.0f, 1.0f);
    }

    public static float or(float a, float b) {
        float fSaturate = saturate(a);
        float fSaturate2 = saturate(b);
        return (fSaturate + fSaturate2) - (fSaturate * fSaturate2);
    }

    public static String trim(CharSequence s) {
        if (s == null) {
            return null;
        }
        return sTrimPattern.matcher(s).replaceAll("$1");
    }

    public static int calculateTextHeight(float textSizePx) {
        Paint paint = new Paint();
        paint.setTextSize(textSizePx);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        return (int) Math.ceil(fontMetrics.bottom - fontMetrics.top);
    }

    public static boolean isRtl(Resources res) {
        return res.getConfiguration().getLayoutDirection() == 1;
    }

    public static float dpiFromPx(float size, DisplayMetrics metrics) {
        return size / (metrics.densityDpi / 160.0f);
    }

    public static int pxFromSp(float size, DisplayMetrics metrics) {
        return Math.round(TypedValue.applyDimension(2, size, metrics));
    }

    public static String createDbSelectionQuery(String columnName, IntArray values) {
        return String.format(Locale.ENGLISH, "%s IN (%s)", columnName, values.toConcatString());
    }

    public static boolean isBootCompleted() {
        return CheryCountryArea.KEY_CHILE.equals(getSystemProperty("sys.boot_completed", CheryCountryArea.KEY_CHILE));
    }

    public static String getSystemProperty(String property, String defaultValue) {
        try {
            String str = (String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, property);
            return !TextUtils.isEmpty(str) ? str : defaultValue;
        } catch (Exception unused) {
            Log.d(TAG, "Unable to read system properties");
        }
    }

    public static boolean checkPosition(List<?> list, int position) {
        return list != null && position >= 0 && position < list.size();
    }

    public static int boundToRange(int value, int lowerBound, int upperBound) {
        return Math.max(lowerBound, Math.min(value, upperBound));
    }

    public static float boundToRange(float value, float lowerBound, float upperBound) {
        return Math.max(lowerBound, Math.min(value, upperBound));
    }

    public static long boundToRange(long value, long lowerBound, long upperBound) {
        return Math.max(lowerBound, Math.min(value, upperBound));
    }

    public static int boundToRange(int value, List<?> list) {
        return Math.max(0, Math.min(value, list.size() - 1));
    }

    public static CharSequence wrapForTts(CharSequence msg, String ttsMsg) {
        SpannableString spannableString = new SpannableString(msg);
        spannableString.setSpan(new TtsSpan.TextBuilder(ttsMsg).build(), 0, spannableString.length(), 18);
        return spannableString;
    }

    public static CharSequence prefixTextWithIcon(Context context, int iconRes, CharSequence msg) {
        SpannableString spannableString = new SpannableString("  " + ((Object) msg));
        spannableString.setSpan(new TintedDrawableSpan(context, iconRes), 0, 1, 34);
        return spannableString;
    }

    public static SharedPreferences getPrefs(Context context) {
        return context.getApplicationContext().getSharedPreferences(LauncherFiles.SHARED_PREFERENCES_KEY, 0);
    }

    public static SharedPreferences getDevicePrefs(Context context) {
        return context.getApplicationContext().getSharedPreferences(LauncherFiles.DEVICE_PREFERENCES_KEY, 0);
    }

    public static SharedPreferences getFeatureFlagsPrefs(Context context) {
        return context.getApplicationContext().getSharedPreferences(FeatureFlags.FLAGS_PREF_NAME, 0);
    }

    public static boolean areAnimationsEnabled(Context context) {
        if (ATLEAST_OREO) {
            return ValueAnimator.areAnimatorsEnabled();
        }
        return !((PowerManager) context.getSystemService(PowerManager.class)).isPowerSaveMode();
    }

    public static boolean isWallpaperAllowed(Context context) {
        return ((WallpaperManager) context.getSystemService(WallpaperManager.class)).isSetWallpaperAllowed();
    }

    public static boolean isBinderSizeError(Exception e) {
        return (e.getCause() instanceof TransactionTooLargeException) || (e.getCause() instanceof DeadObjectException);
    }

    private static boolean isComponentEnabled(PackageManager pm, String pkgName, final String clsName) {
        int componentEnabledSetting = pm.getComponentEnabledSetting(new ComponentName(pkgName, clsName));
        if (componentEnabledSetting == 1) {
            return true;
        }
        if (componentEnabledSetting != 2) {
            try {
                PackageInfo packageInfo = pm.getPackageInfo(pkgName, 520);
                if (packageInfo.providers != null) {
                    return Arrays.stream(packageInfo.providers).anyMatch(new Predicate() { // from class: com.android.launcher3.Utilities$$ExternalSyntheticLambda1
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return Utilities.lambda$isComponentEnabled$0(clsName, (ProviderInfo) obj);
                        }
                    });
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
    }

    static /* synthetic */ boolean lambda$isComponentEnabled$0(String str, ProviderInfo providerInfo) {
        return providerInfo.name.equals(str) && providerInfo.isEnabled();
    }

    public static void postAsyncCallback(Handler handler, Runnable callback) {
        Message messageObtain = Message.obtain(handler, callback);
        messageObtain.setAsynchronous(true);
        handler.sendMessage(messageObtain);
    }

    public static void postAtFrontOfQueueAsynchronously(Handler h, Runnable r) {
        h.sendMessageAtFrontOfQueue(Message.obtain(h, r));
    }

    public static Point parsePoint(String point) {
        String[] strArrSplit = point.split(",");
        return new Point(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]));
    }

    public static String getPointString(int x, int y) {
        return String.format(Locale.ENGLISH, "%d,%d", Integer.valueOf(x), Integer.valueOf(y));
    }

    public static void unregisterReceiverSafely(Context context, BroadcastReceiver receiver) {
        try {
            context.unregisterReceiver(receiver);
        } catch (IllegalArgumentException unused) {
        }
    }

    public static Drawable getFullDrawable(Launcher launcher, ItemInfo info, int width, int height, Object[] outObj) {
        FolderAdaptiveIcon folderAdaptiveIconCreateFolderAdaptiveIcon;
        LauncherAppState launcherAppState = LauncherAppState.getInstance(launcher);
        if (info.itemType == 0) {
            LauncherActivityInfo launcherActivityInfoResolveActivity = ((LauncherApps) launcher.getSystemService(LauncherApps.class)).resolveActivity(info.getIntent(), info.user);
            outObj[0] = launcherActivityInfoResolveActivity;
            if (launcherActivityInfoResolveActivity == null) {
                return null;
            }
            return new IconProvider(launcher).getIconForUI(launcherActivityInfoResolveActivity, launcher.getDeviceProfile().inv.fillResIconDpi);
        }
        if (info.itemType == 6) {
            if (info instanceof PendingAddShortcutInfo) {
                ShortcutConfigActivityInfo shortcutConfigActivityInfo = ((PendingAddShortcutInfo) info).activityInfo;
                outObj[0] = shortcutConfigActivityInfo;
                return shortcutConfigActivityInfo.getFullResIcon(launcherAppState.getIconCache());
            }
            if (info.getIntent() == null || info.getIntent().getPackage() == null) {
                return null;
            }
            ShortcutRequest.QueryResult queryResultQuery = ShortcutKey.fromItemInfo(info).buildRequest(launcher).query(11);
            if (queryResultQuery.isEmpty()) {
                return null;
            }
            outObj[0] = queryResultQuery.get(0);
            return ShortcutCachingLogic.getIcon(launcher, queryResultQuery.get(0), launcherAppState.getInvariantDeviceProfile().fillResIconDpi);
        }
        if (info.itemType != 2 || (folderAdaptiveIconCreateFolderAdaptiveIcon = FolderAdaptiveIcon.createFolderAdaptiveIcon(launcher, info.id, new Point(width, height))) == null) {
            return null;
        }
        outObj[0] = folderAdaptiveIconCreateFolderAdaptiveIcon;
        return folderAdaptiveIconCreateFolderAdaptiveIcon;
    }

    public static Drawable getFullDrawable(AppTransitionContext appTransContext, ItemInfo info, int width, int height, Object[] outObj) {
        if (info.itemType == 0) {
            LauncherActivityInfo launcherActivityInfoResolveActivity = ((LauncherApps) appTransContext.getHostActivity().getSystemService(LauncherApps.class)).resolveActivity(info.getIntent(), info.user);
            outObj[0] = launcherActivityInfoResolveActivity;
            if (launcherActivityInfoResolveActivity == null) {
                return null;
            }
            return new IconProvider(appTransContext.getHostActivity()).getIconForUI(launcherActivityInfoResolveActivity, appTransContext.getDeviceProfile().inv.fillResIconDpi);
        }
        if (info.itemType == 6) {
            if (info instanceof PendingAddShortcutInfo) {
                ShortcutConfigActivityInfo shortcutConfigActivityInfo = ((PendingAddShortcutInfo) info).activityInfo;
                outObj[0] = shortcutConfigActivityInfo;
                return shortcutConfigActivityInfo.getFullResIcon(appTransContext.getIconCache());
            }
            if (info.getIntent() != null && info.getIntent().getPackage() != null) {
                ShortcutRequest.QueryResult queryResultQuery = ShortcutKey.fromItemInfo(info).buildRequest(appTransContext.getHostActivity()).query(11);
                if (queryResultQuery.isEmpty()) {
                    return null;
                }
                outObj[0] = queryResultQuery.get(0);
                return ShortcutCachingLogic.getIcon(appTransContext.getHostActivity(), queryResultQuery.get(0), 0);
            }
        }
        return null;
    }

    public static Drawable getBadge(AppTransitionContext appTransContext, ItemInfo info, Object obj) {
        int iconBitmapSize = appTransContext.getIconBitmapSize();
        if (info.itemType == 6) {
            boolean z = (info instanceof ItemInfoWithIcon) && (((ItemInfoWithIcon) info).runtimeStatusFlags & 512) > 0;
            if ((info.id == -1 && !z) || !(obj instanceof ShortcutInfo)) {
                return new FixedSizeEmptyDrawable(iconBitmapSize);
            }
            Bitmap bitmap = appTransContext.getIconCache().getShortcutInfoBadge((ShortcutInfo) obj).icon;
            float f = iconBitmapSize;
            float badgeSizeForIconSize = (f - LauncherIcons.getBadgeSizeForIconSize(iconBitmapSize)) / f;
            return new InsetDrawable(new FastBitmapDrawable(bitmap), badgeSizeForIconSize, badgeSizeForIconSize, 0.0f, 0.0f);
        }
        if (info.itemType == 2) {
            return ((FolderAdaptiveIcon) obj).getBadge();
        }
        return appTransContext.getHostActivity().getPackageManager().getUserBadgedIcon(new FixedSizeEmptyDrawable(iconBitmapSize), info.user);
    }

    public static Drawable getBadge(Launcher launcher, ItemInfo info, Object obj) {
        LauncherAppState launcherAppState = LauncherAppState.getInstance(launcher);
        int i = launcherAppState.getInvariantDeviceProfile().iconBitmapSize;
        if (info.itemType == 6) {
            boolean z = (info instanceof ItemInfoWithIcon) && (((ItemInfoWithIcon) info).runtimeStatusFlags & 512) > 0;
            if ((info.id == -1 && !z) || !(obj instanceof ShortcutInfo)) {
                return new FixedSizeEmptyDrawable(i);
            }
            Bitmap bitmap = LauncherAppState.getInstance(launcherAppState.getContext()).getIconCache().getShortcutInfoBadge((ShortcutInfo) obj).icon;
            float f = i;
            float badgeSizeForIconSize = (f - LauncherIcons.getBadgeSizeForIconSize(i)) / f;
            return new InsetDrawable(new FastBitmapDrawable(bitmap), badgeSizeForIconSize, badgeSizeForIconSize, 0.0f, 0.0f);
        }
        if (info.itemType == 2) {
            return ((FolderAdaptiveIcon) obj).getBadge();
        }
        return launcher.getPackageManager().getUserBadgedIcon(new FixedSizeEmptyDrawable(i), info.user);
    }

    public static float squaredTouchSlop(Context context) {
        float scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        return scaledTouchSlop * scaledTouchSlop;
    }

    public static int dp2px(Context context, float dipValue) {
        return (int) ((dipValue * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static String getStackTraceSingleLine(Throwable throwable) {
        StringBuilder sb = new StringBuilder();
        for (StackTraceElement stackTraceElement : throwable.getStackTrace()) {
            String className = stackTraceElement.getClassName();
            sb.append(className.substring(Math.max(0, Math.min(className.lastIndexOf(BaseIconCache.EMPTY_CLASS_NAME) + 1, className.length() - 1)))).append(BaseIconCache.EMPTY_CLASS_NAME).append(stackTraceElement.getMethodName()).append("@").append(stackTraceElement.getLineNumber()).append(" ");
        }
        return sb.toString();
    }

    public static boolean isDarkTheme(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public static <T> String joinToString(List<T> list, Function<T, String> transform) {
        return joinToString(list, ", ", "[", "]", transform);
    }

    public static String joinToString(String[] list) {
        return joinToString((List<String>) Arrays.asList(list));
    }

    public static String joinToString(List<String> list) {
        return joinToString(list, ", ", "[", "]", new Function() { // from class: com.android.launcher3.Utilities$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Utilities.lambda$joinToString$1((String) obj);
            }
        });
    }

    public static String joinToString(List<String> list, CharSequence separator, CharSequence prefix, CharSequence postfix) {
        return joinToString(list, separator, prefix, postfix, new Function() { // from class: com.android.launcher3.Utilities$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Utilities.lambda$joinToString$2((String) obj);
            }
        });
    }

    public static <T> String joinToString(List<T> list, CharSequence separator, CharSequence prefix, CharSequence postfix, Function<T, String> transform) {
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        int i = 0;
        for (T t : list) {
            i++;
            if (i > 1) {
                sb.append(separator);
            }
            sb.append(transform.apply(t));
        }
        sb.append(postfix);
        return sb.toString();
    }

    public static Optional<String> getActivityLabel(Context context, ResolveInfo info) {
        if (context == null || info == null) {
            return Optional.empty();
        }
        int activityLabelResourceId = getActivityLabelResourceId(info);
        if (activityLabelResourceId <= 0) {
            return Optional.empty();
        }
        try {
            return Optional.of(context.createPackageContext(info.activityInfo.packageName, 0).createConfigurationContext(context.getResources().getConfiguration()).getResources().getText(activityLabelResourceId).toString());
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return Optional.empty();
        } catch (RuntimeException e2) {
            e2.printStackTrace();
            return Optional.empty();
        }
    }

    private static int getActivityLabelResourceId(ResolveInfo info) {
        if (info == null) {
            return 0;
        }
        if (info.labelRes > 0) {
            return info.labelRes;
        }
        ActivityInfo activityInfo = info.activityInfo;
        if (activityInfo == null) {
            return 0;
        }
        if (activityInfo.labelRes > 0) {
            return activityInfo.labelRes;
        }
        return Math.max(activityInfo.applicationInfo.labelRes, 0);
    }

    public static void postOnPreDraw(final View view, final Runnable task) {
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.android.launcher3.Utilities.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                try {
                    view.getViewTreeObserver().removeOnPreDrawListener(this);
                } catch (IllegalStateException e) {
                    e.printStackTrace();
                }
                task.run();
                return true;
            }
        });
    }

    public static ApplicationInfo getApplicationInfo(AppWidgetProviderInfo widgetInfo) {
        ActivityInfo activityInfo = getActivityInfo(widgetInfo);
        if (activityInfo != null) {
            return activityInfo.applicationInfo;
        }
        return null;
    }

    public static ActivityInfo getActivityInfo(AppWidgetProviderInfo widgetInfo) {
        if (widgetInfo == null) {
            return null;
        }
        try {
            return (ActivityInfo) widgetInfo.getClass().getField("providerInfo").get(widgetInfo);
        } catch (IllegalAccessException | NoSuchFieldException | RuntimeException e) {
            MLog.e(TAG, "getActivityInfo: ", e);
            return null;
        }
    }

    public static void setDownTime(MotionEvent ev, long downTime) {
        try {
            Method declaredMethod = ev.getClass().getDeclaredMethod("setDownTime", Long.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(ev, Long.valueOf(downTime));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            MLog.e(TAG, "setDownTime: ", e);
        }
    }

    private static class FixedSizeEmptyDrawable extends ColorDrawable {
        private final int mSize;

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.mSize;
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.mSize;
        }

        public FixedSizeEmptyDrawable(int size) {
            super(0);
            this.mSize = size;
        }
    }
}

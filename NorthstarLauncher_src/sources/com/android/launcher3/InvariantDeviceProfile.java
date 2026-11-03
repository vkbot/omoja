package com.android.launcher3;

import android.appwidget.AppWidgetHostView;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Process;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Xml;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.util.ConfigMonitor;
import com.android.launcher3.util.DefaultDisplay;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.function.Consumer;
import mega.log.MLog;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class InvariantDeviceProfile {
    public static final int CHANGE_FLAG_GRID = 1;
    public static final int CHANGE_FLAG_ICON_PARAMS = 2;
    private static final float ICON_SIZE_DEFINED_IN_APP_DP = 48.0f;
    public static final String KEY_ICON_PATH_REF = "pref_icon_shape_path";
    private static final String KEY_IDP_GRID_NAME = "idp_grid_name";
    public static final String KEY_MIGRATION_SRC_HOTSEAT_COUNT = "migration_src_hotseat_count";
    public static final String KEY_MIGRATION_SRC_WORKSPACE_SIZE = "migration_src_workspace_size";
    private static final float KNEARESTNEIGHBOR = 3.0f;
    public static final String TAG = "IDP";
    private static final float WEIGHT_EFFICIENT = 100000.0f;
    private static final float WEIGHT_POWER = 5.0f;
    public float allAppsIconSize;
    public float allAppsIconTextSize;
    public String dbFile;
    public int defaultLayoutId;
    public Point defaultWallpaperSize;
    public Rect defaultWidgetPadding;
    int demoModeLayoutId;
    public int fillResIconDpi;
    public int iconBitmapSize;
    public String iconShapePath;
    public float iconSize;
    public float iconTextSize;
    public float landscapeIconSize;
    public DeviceProfile landscapeProfile;
    private final ArrayList<OnIDPChangeListener> mChangeListeners;
    private ConfigMonitor mConfigMonitor;
    public int numAllAppsColumns;
    public int numColumns;
    public int numFolderColumns;
    public int numFolderRows;
    public int numHotseatIcons;
    public int numRows;
    public DeviceProfile portraitProfile;
    public static final MainThreadInitializedObject<InvariantDeviceProfile> INSTANCE = new MainThreadInitializedObject<>(new MainThreadInitializedObject.ObjectProvider() { // from class: com.android.launcher3.InvariantDeviceProfile$$ExternalSyntheticLambda1
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return InvariantDeviceProfile.$r8$lambda$DNcXzmawjoq65q3wgQi9M48DryY(context);
        }
    });
    private static final int CONFIG_ICON_MASK_RES_ID = Resources.getSystem().getIdentifier("config_icon_mask", TypedValues.Custom.S_STRING, "android");

    public interface OnIDPChangeListener {
        void onIdpChanged(int changeFlags, InvariantDeviceProfile profile);
    }

    public static /* synthetic */ InvariantDeviceProfile $r8$lambda$DNcXzmawjoq65q3wgQi9M48DryY(Context context) {
        return new InvariantDeviceProfile(context);
    }

    public static String getCurrentGridName(Context context) {
        return null;
    }

    private static float wallpaperTravelToScreenWidthRatio(int width, int height) {
        return ((width / height) * 0.30769226f) + 1.0076923f;
    }

    public InvariantDeviceProfile() {
        this.mChangeListeners = new ArrayList<>();
    }

    private InvariantDeviceProfile(InvariantDeviceProfile p) {
        this.mChangeListeners = new ArrayList<>();
        this.numRows = p.numRows;
        this.numColumns = 256;
        this.numFolderRows = p.numFolderRows;
        this.numFolderColumns = p.numFolderColumns;
        this.iconSize = p.iconSize;
        this.iconShapePath = p.iconShapePath;
        this.landscapeIconSize = p.landscapeIconSize;
        this.iconBitmapSize = p.iconBitmapSize;
        this.iconTextSize = p.iconTextSize;
        this.numHotseatIcons = p.numHotseatIcons;
        this.numAllAppsColumns = p.numAllAppsColumns;
        this.dbFile = p.dbFile;
        this.allAppsIconSize = p.allAppsIconSize;
        this.allAppsIconTextSize = p.allAppsIconTextSize;
        this.defaultLayoutId = p.defaultLayoutId;
        this.demoModeLayoutId = p.demoModeLayoutId;
    }

    private InvariantDeviceProfile(Context context) {
        this.mChangeListeners = new ArrayList<>();
        String currentGridName = getCurrentGridName(context);
        String strInitGrid = initGrid(context, currentGridName);
        if (!strInitGrid.equals(currentGridName)) {
            Utilities.getPrefs(context).edit().putString(KEY_IDP_GRID_NAME, strInitGrid).apply();
        }
        Utilities.getPrefs(context).edit().putInt(KEY_MIGRATION_SRC_HOTSEAT_COUNT, this.numHotseatIcons).putString(KEY_MIGRATION_SRC_WORKSPACE_SIZE, Utilities.getPointString(this.numColumns, this.numRows)).apply();
        this.mConfigMonitor = new ConfigMonitor(context, FeatureFlags.APPLY_CONFIG_AT_RUNTIME.get() ? new InvariantDeviceProfile$$ExternalSyntheticLambda2(this) : new Consumer() { // from class: com.android.launcher3.InvariantDeviceProfile$$ExternalSyntheticLambda3
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.killProcess((Context) obj);
            }
        });
    }

    private static String getIconShapePath(Context context) {
        int i = CONFIG_ICON_MASK_RES_ID;
        if (i == 0) {
            Log.e(TAG, "Icon mask res identifier failed to retrieve.");
            return "";
        }
        return context.getResources().getString(i);
    }

    private String initGrid(Context context, String gridName) {
        DefaultDisplay.Info info = DefaultDisplay.INSTANCE.m166x39265fe7(context).getInfo();
        DisplayOption displayOptionInvDistWeightedInterpolate = invDistWeightedInterpolate(info, getPredefinedDeviceProfiles(context, gridName));
        initGrid(context, info, displayOptionInvDistWeightedInterpolate);
        return displayOptionInvDistWeightedInterpolate.grid.name;
    }

    private void initGrid(Context context, DefaultDisplay.Info displayInfo, DisplayOption displayOption) {
        GridOption gridOption = displayOption.grid;
        this.numRows = gridOption.numRows;
        this.numColumns = 256;
        this.numHotseatIcons = gridOption.numHotseatIcons;
        this.dbFile = gridOption.dbFile;
        this.defaultLayoutId = gridOption.defaultLayoutId;
        this.demoModeLayoutId = gridOption.demoModeLayoutId;
        this.numFolderRows = gridOption.numFolderRows;
        this.numFolderColumns = gridOption.numFolderColumns;
        this.numAllAppsColumns = gridOption.numAllAppsColumns;
        this.iconSize = displayOption.iconSize;
        this.iconShapePath = getIconShapePath(context);
        this.landscapeIconSize = displayOption.landscapeIconSize;
        this.iconBitmapSize = ResourceUtils.pxFromDp(this.iconSize, displayInfo.metrics);
        this.iconTextSize = displayOption.iconTextSize;
        this.fillResIconDpi = getLauncherIconDensity(this.iconBitmapSize);
        this.allAppsIconSize = this.iconSize;
        this.allAppsIconTextSize = this.iconTextSize;
        applyPartnerDeviceProfileOverrides(context, displayInfo.metrics);
        Point point = new Point(displayInfo.realSize);
        int iMin = Math.min(point.x, point.y);
        int iMax = Math.max(point.x, point.y);
        DeviceProfile.Builder sizeRange = new DeviceProfile.Builder(context, this, displayInfo).setSizeRange(new Point(displayInfo.smallestSize), new Point(displayInfo.largestSize));
        this.landscapeProfile = sizeRange.setSize(iMax, iMin).build();
        this.portraitProfile = sizeRange.setSize(iMin, iMax).build();
        if (context.getResources().getConfiguration().smallestScreenWidthDp >= 720) {
            this.defaultWallpaperSize = new Point((int) (iMax * wallpaperTravelToScreenWidthRatio(iMax, iMin)), iMax);
        } else {
            this.defaultWallpaperSize = new Point(Math.max(iMin * 2, iMax), iMax);
        }
        this.defaultWidgetPadding = AppWidgetHostView.getDefaultPaddingForWidget(context, new ComponentName(context.getPackageName(), getClass().getName()), null);
        MLog.d(TAG, "initGrid: " + gridOption);
    }

    public void addOnChangeListener(OnIDPChangeListener listener) {
        this.mChangeListeners.add(listener);
    }

    public void removeOnChangeListener(OnIDPChangeListener listener) {
        this.mChangeListeners.remove(listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void killProcess(Context context) {
        Log.e("ConfigMonitor", "restarting launcher");
        Process.killProcess(Process.myPid());
    }

    public void verifyConfigChangedInBackground(final Context context) {
        String string = Utilities.getDevicePrefs(context).getString(KEY_ICON_PATH_REF, "");
        if (string.isEmpty()) {
            Utilities.getDevicePrefs(context).edit().putString(KEY_ICON_PATH_REF, getIconShapePath(context)).apply();
        } else {
            if (string.equals(getIconShapePath(context))) {
                return;
            }
            Utilities.getDevicePrefs(context).edit().putString(KEY_ICON_PATH_REF, getIconShapePath(context)).apply();
            apply(context, 2);
        }
    }

    public void setCurrentGrid(Context context, String gridName) {
        final Context applicationContext = context.getApplicationContext();
        Utilities.getPrefs(applicationContext).edit().putString(KEY_IDP_GRID_NAME, gridName).apply();
        Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.InvariantDeviceProfile$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m24x6b1de455(applicationContext);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onConfigChanged, reason: merged with bridge method [inline-methods] */
    public void m24x6b1de455(Context context) {
        InvariantDeviceProfile invariantDeviceProfile = new InvariantDeviceProfile(this);
        initGrid(context, getCurrentGridName(context));
        int i = (this.numRows == invariantDeviceProfile.numRows && this.numColumns == invariantDeviceProfile.numColumns && this.numFolderColumns == invariantDeviceProfile.numFolderColumns && this.numFolderRows == invariantDeviceProfile.numFolderRows && this.numHotseatIcons == invariantDeviceProfile.numHotseatIcons) ? 0 : 1;
        if (this.iconSize != invariantDeviceProfile.iconSize || this.iconBitmapSize != invariantDeviceProfile.iconBitmapSize || !this.iconShapePath.equals(invariantDeviceProfile.iconShapePath)) {
            i |= 2;
        }
        if (!this.iconShapePath.equals(invariantDeviceProfile.iconShapePath)) {
            IconShape.init(context);
        }
        apply(context, i);
    }

    private void apply(Context context, int changeFlags) {
        this.mConfigMonitor.unregister();
        this.mConfigMonitor = new ConfigMonitor(context, new InvariantDeviceProfile$$ExternalSyntheticLambda2(this));
        Iterator<OnIDPChangeListener> it = this.mChangeListeners.iterator();
        while (it.hasNext()) {
            it.next().onIdpChanged(changeFlags, this);
        }
    }

    static ArrayList<DisplayOption> getPredefinedDeviceProfiles(Context context, String gridName) {
        ArrayList<DisplayOption> arrayList = new ArrayList();
        try {
            XmlResourceParser xml = context.getResources().getXml(R.xml.device_profiles);
            try {
                int depth = xml.getDepth();
                while (true) {
                    int next = xml.next();
                    if ((next == 3 && xml.getDepth() <= depth) || next == 1) {
                        break;
                    }
                    if (next == 2 && GridOption.TAG_NAME.equals(xml.getName())) {
                        GridOption gridOption = new GridOption(context, Xml.asAttributeSet(xml));
                        int depth2 = xml.getDepth();
                        while (true) {
                            int next2 = xml.next();
                            if ((next2 == 3 && xml.getDepth() <= depth2) || next2 == 1) {
                                break;
                            }
                            if (next2 == 2 && "display-option".equals(xml.getName())) {
                                arrayList.add(new DisplayOption(gridOption, context, Xml.asAttributeSet(xml)));
                            }
                        }
                    }
                }
                if (xml != null) {
                    xml.close();
                }
                ArrayList<DisplayOption> arrayList2 = new ArrayList<>();
                if (!TextUtils.isEmpty(gridName)) {
                    for (DisplayOption displayOption : arrayList) {
                        if (gridName.equals(displayOption.grid.name)) {
                            arrayList2.add(displayOption);
                        }
                    }
                }
                if (arrayList2.isEmpty()) {
                    for (DisplayOption displayOption2 : arrayList) {
                        if (displayOption2.canBeDefault) {
                            arrayList2.add(displayOption2);
                        }
                    }
                }
                if (arrayList2.isEmpty()) {
                    throw new RuntimeException("No display option with canBeDefault=true");
                }
                MLog.d(TAG, "getPredefinedDeviceProfiles() gridName = [" + gridName + "], filteredProfiles = [" + arrayList2 + "]");
                return arrayList2;
            } catch (Throwable th) {
                if (xml != null) {
                    try {
                        xml.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException | XmlPullParserException e) {
            throw new RuntimeException(e);
        }
    }

    private int getLauncherIconDensity(int requiredSize) {
        int[] iArr = {120, 160, 213, 240, 320, 480, 640};
        int i = 640;
        for (int i2 = 6; i2 >= 0; i2--) {
            int i3 = iArr[i2];
            if ((i3 * ICON_SIZE_DEFINED_IN_APP_DP) / 160.0f >= requiredSize) {
                i = i3;
            }
        }
        return i;
    }

    private void applyPartnerDeviceProfileOverrides(Context context, DisplayMetrics dm) {
        Partner partner = Partner.get(context.getPackageManager());
        if (partner != null) {
            partner.applyInvariantDeviceProfileOverrides(this, dm);
        }
    }

    private static float dist(float x0, float y0, float x1, float y1) {
        return (float) Math.hypot(x1 - x0, y1 - y0);
    }

    static DisplayOption invDistWeightedInterpolate(DefaultDisplay.Info displayInfo, ArrayList<DisplayOption> points) {
        Point point = new Point(displayInfo.smallestSize);
        Point point2 = new Point(displayInfo.largestSize);
        final float fDpiFromPx = Utilities.dpiFromPx(Math.min(point.x, point.y), displayInfo.metrics);
        final float fDpiFromPx2 = Utilities.dpiFromPx(Math.min(point2.x, point2.y), displayInfo.metrics);
        Collections.sort(points, new Comparator() { // from class: com.android.launcher3.InvariantDeviceProfile$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                float f = fDpiFromPx;
                float f2 = fDpiFromPx2;
                InvariantDeviceProfile.DisplayOption displayOption = (InvariantDeviceProfile.DisplayOption) obj;
                InvariantDeviceProfile.DisplayOption displayOption2 = (InvariantDeviceProfile.DisplayOption) obj2;
                return Float.compare(InvariantDeviceProfile.dist(f, f2, displayOption.minWidthDps, displayOption.minHeightDps), InvariantDeviceProfile.dist(f, f2, displayOption2.minWidthDps, displayOption2.minHeightDps));
            }
        });
        GridOption gridOption = points.get(0).grid;
        DisplayOption displayOption = points.get(0);
        float f = 0.0f;
        if (dist(fDpiFromPx, fDpiFromPx2, displayOption.minWidthDps, displayOption.minHeightDps) == 0.0f) {
            return displayOption;
        }
        DisplayOption displayOption2 = new DisplayOption(gridOption);
        for (int i = 0; i < points.size() && i < 3.0f; i++) {
            DisplayOption displayOption3 = points.get(i);
            float fWeight = weight(fDpiFromPx, fDpiFromPx2, displayOption3.minWidthDps, displayOption3.minHeightDps, WEIGHT_POWER);
            f += fWeight;
            displayOption2.add(new DisplayOption().add(displayOption3).multiply(fWeight));
        }
        return displayOption2.multiply(1.0f / f);
    }

    public DeviceProfile getDeviceProfile(Context context) {
        return context.getResources().getConfiguration().orientation == 2 ? this.landscapeProfile : this.portraitProfile;
    }

    private static float weight(float x0, float y0, float x1, float y1, float pow) {
        float fDist = dist(x0, y0, x1, y1);
        if (Float.compare(fDist, 0.0f) == 0) {
            return Float.POSITIVE_INFINITY;
        }
        return (float) (100000.0d / Math.pow(fDist, pow));
    }

    public static final class GridOption {
        public static final String TAG_NAME = "grid-option";
        private final String dbFile;
        private final int defaultLayoutId;
        private final int demoModeLayoutId;
        public final String name;
        private final int numAllAppsColumns;
        public final int numColumns;
        private final int numFolderColumns;
        private final int numFolderRows;
        private final int numHotseatIcons;
        public final int numRows;

        public GridOption(Context context, AttributeSet attrs) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.GridDisplayOption);
            this.name = typedArrayObtainStyledAttributes.getString(3);
            int i = typedArrayObtainStyledAttributes.getInt(9, 0);
            this.numRows = i;
            this.numColumns = 256;
            this.dbFile = typedArrayObtainStyledAttributes.getString(0);
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, 0);
            this.defaultLayoutId = resourceId;
            this.demoModeLayoutId = typedArrayObtainStyledAttributes.getResourceId(2, resourceId);
            this.numHotseatIcons = typedArrayObtainStyledAttributes.getInt(8, 256);
            this.numFolderRows = typedArrayObtainStyledAttributes.getInt(7, i);
            this.numFolderColumns = typedArrayObtainStyledAttributes.getInt(6, 256);
            this.numAllAppsColumns = typedArrayObtainStyledAttributes.getInt(4, 256);
            typedArrayObtainStyledAttributes.recycle();
        }

        public String toString() {
            return "GridOption{name='" + this.name + "', numRows=" + this.numRows + ", numColumns=" + this.numColumns + ", numFolderRows=" + this.numFolderRows + ", numFolderColumns=" + this.numFolderColumns + ", numHotseatIcons=" + this.numHotseatIcons + ", dbFile='" + this.dbFile + "', numAllAppsColumns=" + this.numAllAppsColumns + ", defaultLayoutId=" + this.defaultLayoutId + ", demoModeLayoutId=" + this.demoModeLayoutId + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class DisplayOption {
        private float allAppsIconSize;
        private float allAppsIconTextSize;
        private final boolean canBeDefault;
        private final GridOption grid;
        private float iconSize;
        private float iconTextSize;
        private float landscapeIconSize;
        private final float minHeightDps;
        private final float minWidthDps;

        /* JADX INFO: Access modifiers changed from: private */
        public DisplayOption multiply(float w) {
            this.iconSize *= w;
            this.landscapeIconSize *= w;
            this.allAppsIconSize *= w;
            this.iconTextSize *= w;
            this.allAppsIconTextSize *= w;
            return this;
        }

        DisplayOption(GridOption grid, Context context, AttributeSet attrs) {
            this.grid = grid;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.ProfileDisplayOption);
            this.minWidthDps = typedArrayObtainStyledAttributes.getFloat(7, 0.0f);
            this.minHeightDps = typedArrayObtainStyledAttributes.getFloat(6, 0.0f);
            this.canBeDefault = typedArrayObtainStyledAttributes.getBoolean(2, false);
            float f = typedArrayObtainStyledAttributes.getFloat(3, 0.0f);
            this.iconSize = f;
            this.landscapeIconSize = typedArrayObtainStyledAttributes.getFloat(5, f);
            this.iconTextSize = typedArrayObtainStyledAttributes.getFloat(4, 0.0f);
            this.allAppsIconSize = typedArrayObtainStyledAttributes.getFloat(0, this.iconSize);
            this.allAppsIconTextSize = typedArrayObtainStyledAttributes.getFloat(1, this.iconTextSize);
            typedArrayObtainStyledAttributes.recycle();
        }

        DisplayOption() {
            this(null);
        }

        DisplayOption(GridOption grid) {
            this.grid = grid;
            this.minWidthDps = 0.0f;
            this.minHeightDps = 0.0f;
            this.canBeDefault = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public DisplayOption add(DisplayOption p) {
            this.iconSize += p.iconSize;
            this.landscapeIconSize += p.landscapeIconSize;
            this.allAppsIconSize += p.allAppsIconSize;
            this.iconTextSize += p.iconTextSize;
            this.allAppsIconTextSize += p.allAppsIconTextSize;
            return this;
        }

        public String toString() {
            return "DisplayOption{grid=" + this.grid + ", minWidthDps=" + this.minWidthDps + ", minHeightDps=" + this.minHeightDps + ", canBeDefault=" + this.canBeDefault + ", iconSize=" + this.iconSize + ", iconTextSize=" + this.iconTextSize + ", landscapeIconSize=" + this.landscapeIconSize + ", allAppsIconSize=" + this.allAppsIconSize + ", allAppsIconTextSize=" + this.allAppsIconTextSize + '}';
        }
    }

    public String toString() {
        return "InvariantDeviceProfile{numRows=" + this.numRows + ", numColumns=" + this.numColumns + ", numFolderRows=" + this.numFolderRows + ", numFolderColumns=" + this.numFolderColumns + ", iconSize=" + this.iconSize + ", iconShapePath='" + this.iconShapePath + "', landscapeIconSize=" + this.landscapeIconSize + ", iconBitmapSize=" + this.iconBitmapSize + ", fillResIconDpi=" + this.fillResIconDpi + ", iconTextSize=" + this.iconTextSize + ", allAppsIconSize=" + this.allAppsIconSize + ", allAppsIconTextSize=" + this.allAppsIconTextSize + ", numHotseatIcons=" + this.numHotseatIcons + ", numAllAppsColumns=" + this.numAllAppsColumns + ", dbFile='" + this.dbFile + "', defaultLayoutId=" + this.defaultLayoutId + ", demoModeLayoutId=" + this.demoModeLayoutId + ", landscapeProfile=" + this.landscapeProfile + ", portraitProfile=" + this.portraitProfile + ", defaultWallpaperSize=" + this.defaultWallpaperSize + ", defaultWidgetPadding=" + this.defaultWidgetPadding + ", mChangeListeners=" + this.mChangeListeners + ", mConfigMonitor=" + this.mConfigMonitor + '}';
    }
}

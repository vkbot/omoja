package com.mega.launcher.wallpaper;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.core.app.NotificationCompat;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.Utilities;
import com.android.launcher3.carproperty.VehicleModel;
import com.mega.launcher.wallpaper.bean.Wallpaper;
import com.mega.launcher.wallpaper.bean.WallpaperInfo;
import com.mega.launcher.wallpaper.service.WallpaperService;
import com.mega.launcherapi.WallpaperConstant;
import com.mega.launcherapi.utils.Item;
import com.mega.launcherapi.utils.LauncherWallpapersParser;
import com.mega.launcherapi.utils.WallpaperUtils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import mega.log.MLog;

/* JADX INFO: compiled from: WallpaperRepository.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\"\n\u0002\b\u001a\u0018\u0000 `2\u00020\u0001:\u0005`abcdB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J8\u0010#\u001a\u00020$2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020'0&2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020)0&2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020)0&2\u0006\u0010+\u001a\u00020'J \u0010,\u001a\u00020$2\b\u0010-\u001a\u0004\u0018\u00010'2\u0006\u0010.\u001a\u00020)2\u0006\u0010+\u001a\u00020'J\u0012\u0010/\u001a\u00020$2\b\u00100\u001a\u0004\u0018\u000101H\u0002J\u0012\u00102\u001a\u00020$2\b\u00100\u001a\u0004\u0018\u000101H\u0002J\u0006\u00103\u001a\u00020$J\u0010\u00104\u001a\u00020\u000f2\b\u00105\u001a\u0004\u0018\u00010'J\b\u00106\u001a\u00020$H\u0002J\u0018\u00107\u001a\u00020$2\u0010\u0010%\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010'\u0018\u00010&J\u0016\u00108\u001a\u00020$2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020'0&H\u0002J\u0006\u00109\u001a\u00020$J\"\u0010:\u001a\u00020'2\b\u00105\u001a\u0004\u0018\u00010'2\u0006\u0010+\u001a\u00020'2\u0006\u0010;\u001a\u00020<H\u0002J&\u0010=\u001a\u0004\u0018\u00010)2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\u0010>\u001a\u0004\u0018\u00010\u00072\b\u0010?\u001a\u0004\u0018\u00010@J\u0012\u0010A\u001a\u0004\u0018\u00010\u00072\b\u0010B\u001a\u0004\u0018\u00010'J\u0012\u0010C\u001a\u0004\u0018\u00010\u00072\u0006\u0010B\u001a\u00020'H\u0002J\u0014\u0010D\u001a\u0004\u0018\u00010\u00072\b\u00105\u001a\u0004\u0018\u00010'H\u0002J\u0018\u0010E\u001a\u00020$2\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&H\u0002J\b\u0010F\u001a\u00020$H\u0002J\b\u0010G\u001a\u00020$H\u0002J\u0010\u0010H\u001a\u00020\u000f2\u0006\u00105\u001a\u00020'H\u0002J*\u0010I\u001a\u00020$2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u000e\u0010J\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010K2\b\u0010?\u001a\u0004\u0018\u00010@J:\u0010I\u001a\u00020$2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u000e\u0010J\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010K2\b\u0010?\u001a\u0004\u0018\u00010@2\u0006\u0010L\u001a\u00020\u000f2\u0006\u0010M\u001a\u00020\u000fJ\b\u0010N\u001a\u00020$H\u0002J\u000e\u0010O\u001a\u00020$2\u0006\u0010P\u001a\u00020'J\u0010\u0010Q\u001a\u00020$2\u0006\u0010P\u001a\u00020'H\u0002J\b\u0010R\u001a\u00020$H\u0002J\u0010\u0010S\u001a\u00020$2\b\u0010B\u001a\u0004\u0018\u00010'J\u0010\u0010T\u001a\u00020$2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010U\u001a\u00020$2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eJ\u0006\u0010V\u001a\u00020$J\u0010\u0010W\u001a\u00020$2\b\u0010>\u001a\u0004\u0018\u00010\u0007J\u0006\u0010X\u001a\u00020$J\u0010\u0010X\u001a\u00020$2\b\u0010>\u001a\u0004\u0018\u00010\u0007J\u0018\u0010Y\u001a\u00020$2\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&H\u0002J \u0010Z\u001a\u00020$2\b\u0010>\u001a\u0004\u0018\u00010\u00072\u0006\u0010[\u001a\u00020\u000f2\u0006\u0010P\u001a\u00020'J \u0010\\\u001a\u00020$2\u0006\u0010>\u001a\u00020\u00072\u0006\u0010[\u001a\u00020\u000f2\u0006\u0010P\u001a\u00020'H\u0002J \u0010]\u001a\u00020$2\u0006\u0010>\u001a\u00020\u00072\u0006\u0010[\u001a\u00020\u000f2\u0006\u0010P\u001a\u00020'H\u0002J \u0010^\u001a\u00020$2\u0010\u0010%\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010'\u0018\u00010&2\u0006\u0010_\u001a\u00020\u000fR\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b\f\u0010\nR\u001e\u0010\r\u001a\u0004\u0018\u00010\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00078B@BX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0011j\b\u0012\u0004\u0012\u00020\u0007`\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00060\u0014R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00070\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u00060\"R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006e"}, d2 = {"Lcom/mega/launcher/wallpaper/WallpaperRepository;", "", "ctx", "Landroid/content/Context;", "(Landroid/content/Context;)V", "context", "<set-?>", "Lcom/mega/launcher/wallpaper/bean/WallpaperInfo;", "currentLiveWallpaper", "getCurrentLiveWallpaper", "()Lcom/mega/launcher/wallpaper/bean/WallpaperInfo;", "currentStaticWallpaper", "getCurrentStaticWallpaper", "currentWallpaper", "lastIsNightMode", "", "liveWallpapers", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "mainHandler", "Lcom/mega/launcher/wallpaper/WallpaperRepository$MainHandler;", "onWallpaperChangedListener", "Lcom/mega/launcher/wallpaper/WallpaperRepository$OnWallpaperChangedListener;", "staticWallpapers", "Ljava/util/concurrent/CopyOnWriteArrayList;", "getStaticWallpapers", "()Ljava/util/concurrent/CopyOnWriteArrayList;", "wallpaperBitmap", "Lcom/mega/launcher/wallpaper/WallpaperBitmap;", "wallpaperService", "Lcom/mega/launcher/wallpaper/service/WallpaperService;", "wallpaperStorage", "Lcom/mega/launcher/wallpaper/WallpaperStorage;", "workHandler", "Lcom/mega/launcher/wallpaper/WallpaperRepository$WorkHandler;", "addLauncherWallpapers", "", "ids", "", "", "dayWallpapers", "Landroid/graphics/Bitmap;", "nightWallpapers", "callingPackage", "addSingleWallpaper", WallpaperConstant.WALLPAPER_COLUMN_ID, "wallpaper", "addSingleWallpaperImpl", "tempAddBean", "Lcom/mega/launcher/wallpaper/WallpaperRepository$TempAddBean;", "addWallpapersImpl", "beginLoadingBitmap", "changeLauncherWallpaper", WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID, "clearCacheDayNightWallpaper", "deleteLauncherWallpapers", "deleteWallpapersImpl", "finishLoadingBitmap", "generateWallpaperName", "index", "", "getBitmap", "wallpaperInfo", LauncherSettings.Favorites.OPTIONS, "Landroid/graphics/BitmapFactory$Options;", "getLiveWallpaper", "wallpaperName", "getWallpaperInfo", "getWallpaperInfoById", "hideWallpaperImpl", "initLiveWallpapers", "initWallpaperList", "isLastVisibleWallpaper", "refreshCache", "infoSet", "", "clearAll", "sync", "removeExtraWallpaper", "reset", "reason", "resetDefaultWallpapers", "resetImpl", "resetLauncherSystemWallpaper", "setOnWallpaperChangedListener", "setWallpaperService", "showLandmarkWallpaper", "showLiveWallpaper", "showStaticWallpapers", "showWallpaperImpl", "storeCurrentWallpaper", "changeType", "storeLiveWallpaper", "storeStaticCurrentWallpaper", "updateLauncherWallpapers", WallpaperConstant.WALLPAPER_COLUMN_HIDE, "Companion", "MainHandler", "OnWallpaperChangedListener", "TempAddBean", "WorkHandler", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WallpaperRepository {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int MAIN_CHANGE_TO_LANDMARK_WALLPAPER = 7;
    private static final int MAIN_CHANGE_TO_LIVE_WALLPAPER = 6;
    private static final int MAIN_DELETE_BITMAP_WALLPAPER = 3;
    private static final int MAIN_INIT_BITMAP_FILE_LIST = 1;
    private static final int MAIN_INIT_LIVE_WALLPAPER = 5;
    private static final int MAIN_NEW_BITMAP_WALLPAPER = 2;
    private static final int MAX_WALLPAPER_SIZE = 20;
    private static final String TAG = "WallpaperRepository";
    private static final int WORK_ADD_NEW_SINGLE_WALLPAPER = 60;
    private static final int WORK_ADD_NEW_WALLPAPER = 40;
    private static final int WORK_CLEAR_DAY_NIGHT_WALLPAPER_CACHE = 61;
    private static final int WORK_DELETE_WALLPAPER = 50;
    private static final int WORK_HIDE_WALLPAPER = 70;
    private static final int WORK_INIT_BITMAP_FILE_LIST = 20;
    private static final int WORK_INIT_LIVE_WALLPAPER = 30;
    private static final int WORK_MSG_CHECK_DIRS = 10;
    private static final int WORK_RESET = 72;
    private static final int WORK_SHOW_WALLPAPER = 71;
    private static volatile WallpaperRepository sInstance;
    private final Context context;
    private WallpaperInfo currentLiveWallpaper;
    private WallpaperInfo currentWallpaper;
    private boolean lastIsNightMode;
    private final ArrayList<WallpaperInfo> liveWallpapers;
    private final MainHandler mainHandler;
    private OnWallpaperChangedListener onWallpaperChangedListener;
    private final CopyOnWriteArrayList<WallpaperInfo> staticWallpapers;
    private final WallpaperBitmap wallpaperBitmap;
    private WallpaperService wallpaperService;
    private final WallpaperStorage wallpaperStorage;
    private final WorkHandler workHandler;

    /* JADX INFO: compiled from: WallpaperRepository.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u001a\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH&J \u0010\t\u001a\u00020\u00032\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0006H&J\u0016\u0010\r\u001a\u00020\u00032\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u000bH&¨\u0006\u000e"}, d2 = {"Lcom/mega/launcher/wallpaper/WallpaperRepository$OnWallpaperChangedListener;", "", "onLandmarkWallpaperChanged", "", "onLiveWallpaperChanged", "liveWallpaper", "Lcom/mega/launcher/wallpaper/bean/WallpaperInfo;", "isInit", "", "onNewWallpaper", "wallpaperInfos", "", "newWallpaperInfo", "onWallpaperChanged", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public interface OnWallpaperChangedListener {
        void onLandmarkWallpaperChanged();

        void onLiveWallpaperChanged(WallpaperInfo liveWallpaper, boolean isInit);

        void onNewWallpaper(List<WallpaperInfo> wallpaperInfos, WallpaperInfo newWallpaperInfo);

        void onWallpaperChanged(List<WallpaperInfo> wallpaperInfos);
    }

    public /* synthetic */ WallpaperRepository(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    @JvmStatic
    public static final WallpaperRepository getInstance(Context context) {
        return INSTANCE.getInstance(context);
    }

    public final WallpaperInfo getCurrentLiveWallpaper() {
        return this.currentLiveWallpaper;
    }

    /* JADX INFO: renamed from: getCurrentStaticWallpaper, reason: from getter */
    public final WallpaperInfo getCurrentWallpaper() {
        return this.currentWallpaper;
    }

    public final CopyOnWriteArrayList<WallpaperInfo> getStaticWallpapers() {
        return this.staticWallpapers;
    }

    public final void setOnWallpaperChangedListener(OnWallpaperChangedListener onWallpaperChangedListener) {
        this.onWallpaperChangedListener = onWallpaperChangedListener;
    }

    public final void setWallpaperService(WallpaperService wallpaperService) {
        this.wallpaperService = wallpaperService;
    }

    private WallpaperRepository(Context context) {
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "ctx.applicationContext");
        this.context = applicationContext;
        this.mainHandler = new MainHandler();
        HandlerThread handlerThread = new HandlerThread(TAG, 10);
        handlerThread.start();
        Unit unit = Unit.INSTANCE;
        Looper looper = handlerThread.getLooper();
        Intrinsics.checkNotNullExpressionValue(looper, "HandlerThread(TAG, Threa….apply { start() }.looper");
        WorkHandler workHandler = new WorkHandler(this, looper);
        this.workHandler = workHandler;
        this.wallpaperStorage = new WallpaperStorage(applicationContext);
        this.staticWallpapers = new CopyOnWriteArrayList<>();
        this.liveWallpapers = new ArrayList<>();
        this.wallpaperBitmap = new WallpaperBitmap();
        workHandler.sendEmptyMessage(10);
        int wallpaperType = WallpaperUtils.getWallpaperType(context);
        if (VehicleModel.isLiveWallpaperDisabled() && wallpaperType == 1) {
            MLog.d(TAG, "<init>: change to static wallpaper");
            WallpaperUtils.setCurrentWallpaperType(applicationContext, 0);
        } else if (wallpaperType != 0) {
            workHandler.sendEmptyMessage(30);
            workHandler.sendEmptyMessage(20);
            return;
        }
        workHandler.sendEmptyMessage(20);
        workHandler.sendEmptyMessage(30);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initLiveWallpapers() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Stream<Pair<File, File>> stream = WallpaperUtils.getDefaultLiveWallpapers().stream();
        final WallpaperRepository$initLiveWallpapers$collect$1 wallpaperRepository$initLiveWallpapers$collect$1 = new Function1<Pair<File, File>, WallpaperInfo>() { // from class: com.mega.launcher.wallpaper.WallpaperRepository$initLiveWallpapers$collect$1
            @Override // kotlin.jvm.functions.Function1
            public final WallpaperInfo invoke(Pair<File, File> pair) {
                WallpaperInfo.Companion companion = WallpaperInfo.INSTANCE;
                Object obj = pair.first;
                Intrinsics.checkNotNullExpressionValue(obj, "it.first");
                return companion.newLiveWallpaper((File) obj, (File) pair.second);
            }
        };
        this.liveWallpapers.addAll((List) stream.map(new Function() { // from class: com.mega.launcher.wallpaper.WallpaperRepository$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return WallpaperRepository.initLiveWallpapers$lambda$1(wallpaperRepository$initLiveWallpapers$collect$1, obj);
            }
        }).collect(Collectors.toList()));
        WallpaperInfo liveWallpaper = getLiveWallpaper(WallpaperUtils.getCurrentLiveWallpaperName(this.context));
        this.currentLiveWallpaper = liveWallpaper;
        if (liveWallpaper == null && (!this.liveWallpapers.isEmpty())) {
            this.currentLiveWallpaper = this.liveWallpapers.get(0);
        }
        if (this.currentLiveWallpaper == null && WallpaperUtils.isLiveWallpaperActive(this.context)) {
            WallpaperUtils.setCurrentWallpaperType(this.context, 0);
        }
        MLog.d(TAG, "initLiveWallpapers: cost " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + " cur " + this.currentLiveWallpaper + ' ' + this.liveWallpapers);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WallpaperInfo initLiveWallpapers$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (WallpaperInfo) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initWallpaperList() {
        Wallpaper wallpaper;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int wallpaperVersion = WallpaperPreference.INSTANCE.getWallpaperVersion(this.context);
        String wallpaperTag = WallpaperPreference.INSTANCE.getWallpaperTag();
        LauncherWallpapersParser.INSTANCE.parse(this.context);
        MLog.d(TAG, "initWallpaperList: curVersion=" + wallpaperVersion + " curTag=" + wallpaperTag);
        MLog.d(TAG, "initWallpaperList: " + LauncherWallpapersParser.INSTANCE);
        int version = LauncherWallpapersParser.INSTANCE.getVersion();
        if (version > wallpaperVersion || !Intrinsics.areEqual(wallpaperTag, LauncherWallpapersParser.INSTANCE.getTag())) {
            resetDefaultWallpapers("wallpaper_upgrade");
            WallpaperPreference.INSTANCE.setWallpaperVersion(this.context, version);
            WallpaperPreference.INSTANCE.setWallpaperTag(LauncherWallpapersParser.INSTANCE.getTag());
        }
        List<WallpaperInfo> wallpaperListFromDatabase = this.wallpaperStorage.getWallpaperListFromDatabase();
        if (wallpaperListFromDatabase.isEmpty()) {
            resetDefaultWallpapers("database_error");
            wallpaperListFromDatabase = this.wallpaperStorage.getWallpaperListFromDatabase();
        }
        this.staticWallpapers.clear();
        this.staticWallpapers.addAll(wallpaperListFromDatabase);
        CopyOnWriteArrayList<WallpaperInfo> copyOnWriteArrayList = this.staticWallpapers;
        final AnonymousClass1 anonymousClass1 = new Function1<WallpaperInfo, Integer>() { // from class: com.mega.launcher.wallpaper.WallpaperRepository.initWallpaperList.1
            @Override // kotlin.jvm.functions.Function1
            public final Integer invoke(WallpaperInfo wallpaperInfo) {
                return Integer.valueOf(wallpaperInfo.getWallpaper().getRank());
            }
        };
        Comparator comparatorComparingInt = Comparator.comparingInt(new ToIntFunction() { // from class: com.mega.launcher.wallpaper.WallpaperRepository$$ExternalSyntheticLambda0
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return WallpaperRepository.initWallpaperList$lambda$2(anonymousClass1, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(comparatorComparingInt, "comparingInt { it.wallpaper.rank }");
        CollectionsKt.sortWith(copyOnWriteArrayList, comparatorComparingInt);
        String wallpaperName = Settings.Global.getString(this.context.getContentResolver(), WallpaperUtils.KEY_USER_WALLPAPER);
        if (TextUtils.isEmpty(wallpaperName)) {
            wallpaperName = WallpaperUtils.getDefaultWallpaper(this.context);
            MLog.d(TAG, "initWallpaperList: use defaultWallpaper " + wallpaperName);
        }
        Intrinsics.checkNotNullExpressionValue(wallpaperName, "wallpaperName");
        this.currentWallpaper = getWallpaperInfo(wallpaperName);
        StringBuilder sbAppend = new StringBuilder("initWallpaperList: version ").append(wallpaperVersion).append("->").append(version).append(" cost ").append(SystemClock.elapsedRealtime() - jElapsedRealtime).append(" cur ");
        WallpaperInfo wallpaperInfo = this.currentWallpaper;
        MLog.d(TAG, sbAppend.append((wallpaperInfo == null || (wallpaper = wallpaperInfo.getWallpaper()) == null) ? null : wallpaper.getName()).append(" all ").append(this.staticWallpapers).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int initWallpaperList$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj)).intValue();
    }

    private final void resetDefaultWallpapers(String reason) {
        MLog.d(TAG, "resetDefaultWallpapers: reason=" + reason);
        ArrayList arrayList = new ArrayList();
        Stream stream = LauncherWallpapersParser.INSTANCE.getItems().stream();
        final WallpaperRepository$resetDefaultWallpapers$wallpaperList$1 wallpaperRepository$resetDefaultWallpapers$wallpaperList$1 = new Function1<Item, WallpaperInfo>() { // from class: com.mega.launcher.wallpaper.WallpaperRepository$resetDefaultWallpapers$wallpaperList$1
            @Override // kotlin.jvm.functions.Function1
            public final WallpaperInfo invoke(Item item) {
                WallpaperInfo wallpaperInfoNewStaticDefaultWallpaper = WallpaperInfo.INSTANCE.newStaticDefaultWallpaper(item.getName());
                wallpaperInfoNewStaticDefaultWallpaper.getWallpaper().addFlags(1);
                wallpaperInfoNewStaticDefaultWallpaper.getWallpaper().setHide(item.getVisible() ? 0 : 1);
                return wallpaperInfoNewStaticDefaultWallpaper;
            }
        };
        List list = (List) stream.map(new Function() { // from class: com.mega.launcher.wallpaper.WallpaperRepository$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return WallpaperRepository.resetDefaultWallpapers$lambda$3(wallpaperRepository$resetDefaultWallpapers$wallpaperList$1, obj);
            }
        }).collect(Collectors.toList());
        for (int i = 0; i < list.size(); i++) {
            WallpaperInfo wallpaperInfo = (WallpaperInfo) list.get(i);
            MLog.d(TAG, "resetDefaultWallpapers: wallpaperInfo=" + wallpaperInfo);
            wallpaperInfo.getWallpaper().setRank(i);
            Intrinsics.checkNotNullExpressionValue(wallpaperInfo, "wallpaperInfo");
            arrayList.add(wallpaperInfo);
        }
        if (arrayList.isEmpty()) {
            MLog.d(TAG, "resetDefaultWallpapers: nothing added");
            return;
        }
        this.wallpaperStorage.removeDefaultWallpapers();
        this.wallpaperStorage.saveWallpapersToDatabase(arrayList);
        String defaultItem = LauncherWallpapersParser.INSTANCE.getDefaultItem();
        WallpaperInfo wallpaperInfoWithWallpaperId = !TextUtils.isEmpty(defaultItem) ? this.wallpaperStorage.getWallpaperInfoWithWallpaperId(defaultItem) : null;
        if (wallpaperInfoWithWallpaperId == null) {
            wallpaperInfoWithWallpaperId = (WallpaperInfo) arrayList.get(0);
        }
        storeCurrentWallpaper(wallpaperInfoWithWallpaperId, false, reason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WallpaperInfo resetDefaultWallpapers$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (WallpaperInfo) tmp0.invoke(obj);
    }

    private final WallpaperInfo getWallpaperInfo(String wallpaperName) {
        if (StringsKt.startsWith$default(wallpaperName, WallpaperUtils.LAUNCHER_SYSTEM_RESOURCE_PREFIX, false, 2, (Object) null)) {
            return WallpaperInfo.INSTANCE.newStaticWallpaper(wallpaperName, wallpaperName, wallpaperName, wallpaperName, "com.android.launcher3", 0);
        }
        WallpaperInfo wallpaperInfoWithName = this.wallpaperStorage.getWallpaperInfoWithName(wallpaperName);
        if (wallpaperInfoWithName != null) {
            return wallpaperInfoWithName;
        }
        String defaultItem = LauncherWallpapersParser.INSTANCE.getDefaultItem();
        WallpaperInfo wallpaperInfo = getWallpaperInfo(defaultItem);
        storeCurrentWallpaper(wallpaperInfo, false, "reset_if_not_found_" + defaultItem);
        return wallpaperInfo;
    }

    public final void storeCurrentWallpaper(WallpaperInfo wallpaperInfo, boolean changeType, String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        if (wallpaperInfo == null) {
            return;
        }
        if (wallpaperInfo.getIsLiveWallpaper()) {
            storeLiveWallpaper(wallpaperInfo, changeType, reason);
        } else {
            storeStaticCurrentWallpaper(wallpaperInfo, changeType, reason);
        }
    }

    private final void storeStaticCurrentWallpaper(WallpaperInfo wallpaperInfo, boolean changeType, String reason) {
        MLog.d(TAG, "storeStaticCurrentWallpaper: " + wallpaperInfo + ' ' + changeType + ' ' + reason);
        if (changeType) {
            WallpaperUtils.setCurrentWallpaperType(this.context, 0);
        }
        WallpaperUtils.setCurrentWallpaperName(this.context, wallpaperInfo.getWallpaper().getName());
        WallpaperUtils.setCurrentWallpaperId(this.context, wallpaperInfo.getWallpaper().getWallpaperId());
        this.currentWallpaper = wallpaperInfo;
        WallpaperService wallpaperService = this.wallpaperService;
        if (wallpaperService != null) {
            wallpaperService.notifyWallpaperChanged(wallpaperInfo);
        }
    }

    private final void storeLiveWallpaper(WallpaperInfo wallpaperInfo, boolean changeType, String reason) {
        MLog.d(TAG, "storeLiveWallpaper: " + wallpaperInfo + ' ' + changeType + ' ' + reason);
        if (changeType) {
            WallpaperUtils.setCurrentWallpaperType(this.context, 1);
        }
        WallpaperUtils.setCurrentLiveWallpaperName(this.context, wallpaperInfo.getWallpaper().getName());
        this.currentLiveWallpaper = wallpaperInfo;
    }

    public final WallpaperInfo getLiveWallpaper(String wallpaperName) {
        for (WallpaperInfo wallpaperInfo : this.liveWallpapers) {
            if (Intrinsics.areEqual(wallpaperInfo.getWallpaper().getName(), wallpaperName)) {
                return wallpaperInfo;
            }
        }
        return null;
    }

    private final WallpaperInfo getWallpaperInfoById(String wallpaperId) {
        CopyOnWriteArrayList<WallpaperInfo> copyOnWriteArrayList = this.staticWallpapers;
        if (copyOnWriteArrayList.isEmpty()) {
            return null;
        }
        for (WallpaperInfo wallpaperInfo : copyOnWriteArrayList) {
            if (Intrinsics.areEqual(wallpaperInfo.getWallpaper().getWallpaperId(), wallpaperId)) {
                return wallpaperInfo;
            }
        }
        return null;
    }

    public final void addSingleWallpaper(String id, Bitmap wallpaper, String callingPackage) {
        Intrinsics.checkNotNullParameter(wallpaper, "wallpaper");
        Intrinsics.checkNotNullParameter(callingPackage, "callingPackage");
        MLog.d(TAG, "addSingleWallpaper: id=" + id + " bitmap=" + wallpaper.getWidth() + '*' + wallpaper.getHeight() + ' ' + callingPackage);
        Message.obtain(this.workHandler, 60, new TempAddBean(id, wallpaper, callingPackage)).sendToTarget();
    }

    public final void addLauncherWallpapers(List<String> ids, List<Bitmap> dayWallpapers, List<Bitmap> nightWallpapers, String callingPackage) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        Intrinsics.checkNotNullParameter(dayWallpapers, "dayWallpapers");
        Intrinsics.checkNotNullParameter(nightWallpapers, "nightWallpapers");
        Intrinsics.checkNotNullParameter(callingPackage, "callingPackage");
        MLog.d(TAG, "addLauncherWallpapers: ids=" + ids + " dayWallpapers = " + dayWallpapers + " nightWallpapers = " + nightWallpapers);
        Message.obtain(this.workHandler, 40, new TempAddBean(ids, dayWallpapers, nightWallpapers, callingPackage)).sendToTarget();
    }

    public final void deleteLauncherWallpapers(List<String> ids) {
        MLog.d(TAG, "deleteLauncherWallpapers: ids=" + ids);
        Message messageObtainMessage = this.workHandler.obtainMessage();
        Intrinsics.checkNotNullExpressionValue(messageObtainMessage, "workHandler.obtainMessage()");
        messageObtainMessage.what = 50;
        messageObtainMessage.obj = ids;
        this.workHandler.sendMessage(messageObtainMessage);
    }

    public final void updateLauncherWallpapers(List<String> ids, boolean hide) {
        MLog.d(TAG, "updateLauncherWallpapers: ids=" + ids + " hide=" + hide);
        Message messageObtainMessage = this.workHandler.obtainMessage();
        Intrinsics.checkNotNullExpressionValue(messageObtainMessage, "workHandler.obtainMessage()");
        messageObtainMessage.what = hide ? 70 : 71;
        messageObtainMessage.obj = ids;
        this.workHandler.sendMessage(messageObtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void addWallpapersImpl(TempAddBean tempAddBean) {
        boolean zSaveWallpaperInfoToDatabase;
        String dayPath;
        String nightPath;
        String dayPath2;
        String nightPath2;
        if (tempAddBean == null) {
            MLog.d(TAG, "addWallpapersImpl: tempAddBean is null");
            return;
        }
        if (tempAddBean.getIds() != null) {
            List<String> ids = tempAddBean.getIds();
            Intrinsics.checkNotNull(ids);
            if (!ids.isEmpty() && tempAddBean.getDayWallpapers() != null) {
                List<String> ids2 = tempAddBean.getIds();
                Intrinsics.checkNotNull(ids2);
                int size = ids2.size();
                List<Bitmap> dayWallpapers = tempAddBean.getDayWallpapers();
                Intrinsics.checkNotNull(dayWallpapers);
                if (size == dayWallpapers.size()) {
                    MLog.d(TAG, "addWallpapersImpl: " + tempAddBean);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    String callingPackage = tempAddBean.getCallingPackage();
                    List<Bitmap> dayWallpapers2 = tempAddBean.getDayWallpapers();
                    Intrinsics.checkNotNull(dayWallpapers2);
                    int size2 = dayWallpapers2.size();
                    for (int i = 0; i < size2; i++) {
                        List<String> ids3 = tempAddBean.getIds();
                        Intrinsics.checkNotNull(ids3);
                        String str = ids3.get(i);
                        List<Bitmap> dayWallpapers3 = tempAddBean.getDayWallpapers();
                        Intrinsics.checkNotNull(dayWallpapers3);
                        Bitmap bitmap = dayWallpapers3.get(i);
                        if (bitmap != null) {
                            List<Bitmap> nightWallpapers = tempAddBean.getNightWallpapers();
                            Intrinsics.checkNotNull(nightWallpapers);
                            Bitmap bitmap2 = nightWallpapers.get(i);
                            WallpaperInfo wallpaperInfoById = getWallpaperInfoById(str);
                            WallpaperInfo wallpaperInfoSaveNewWallpaper = null;
                            if (wallpaperInfoById != null) {
                                MLog.d(TAG, "addWallpapersImpl: update bitmap for " + str);
                                boolean z = wallpaperInfoById.getWallpaper().getType() == 0;
                                if (z) {
                                    dayPath2 = this.wallpaperStorage.buildDayPath(wallpaperInfoById.getWallpaper().getName());
                                } else {
                                    dayPath2 = wallpaperInfoById.getDayPath();
                                }
                                if (z) {
                                    nightPath2 = this.wallpaperStorage.buildNightPath(wallpaperInfoById.getWallpaper().getName());
                                } else {
                                    nightPath2 = wallpaperInfoById.getNightPath();
                                    Intrinsics.checkNotNull(nightPath2);
                                }
                                boolean zSaveOrReplaceWallpaper = WallpaperUtilities.saveOrReplaceWallpaper(bitmap, dayPath2);
                                boolean zSaveOrReplaceWallpaper2 = zSaveOrReplaceWallpaper ? WallpaperUtilities.saveOrReplaceWallpaper(bitmap2, nightPath2) : false;
                                if (zSaveOrReplaceWallpaper && z) {
                                    wallpaperInfoById.getWallpaper().setType(1);
                                    wallpaperInfoById.getWallpaper().setDayPath(dayPath2);
                                    Wallpaper wallpaper = wallpaperInfoById.getWallpaper();
                                    if (bitmap2 == null || !zSaveOrReplaceWallpaper2) {
                                        nightPath2 = null;
                                    }
                                    wallpaper.setNightPath(nightPath2);
                                }
                                this.wallpaperStorage.updateWallpaperFromDatabase(wallpaperInfoById);
                                arrayList.add(wallpaperInfoById);
                            } else {
                                WallpaperInfo wallpaperInfoWithWallpaperId = this.wallpaperStorage.getWallpaperInfoWithWallpaperId(str);
                                if (wallpaperInfoWithWallpaperId != null) {
                                    MLog.d(TAG, "addWallpapersImpl: update db bitmap for " + str);
                                    boolean z2 = wallpaperInfoWithWallpaperId.getWallpaper().getType() == 0;
                                    if (z2) {
                                        dayPath = this.wallpaperStorage.buildDayPath(wallpaperInfoWithWallpaperId.getWallpaper().getName());
                                    } else {
                                        dayPath = wallpaperInfoWithWallpaperId.getDayPath();
                                    }
                                    if (z2) {
                                        nightPath = this.wallpaperStorage.buildNightPath(wallpaperInfoWithWallpaperId.getWallpaper().getName());
                                    } else {
                                        nightPath = wallpaperInfoWithWallpaperId.getNightPath();
                                        Intrinsics.checkNotNull(nightPath);
                                    }
                                    boolean zSaveOrReplaceWallpaper3 = WallpaperUtilities.saveOrReplaceWallpaper(bitmap, dayPath);
                                    boolean zSaveOrReplaceWallpaper4 = zSaveOrReplaceWallpaper3 ? WallpaperUtilities.saveOrReplaceWallpaper(bitmap2, nightPath) : false;
                                    if (zSaveOrReplaceWallpaper3 && z2) {
                                        wallpaperInfoWithWallpaperId.getWallpaper().setType(1);
                                        wallpaperInfoWithWallpaperId.getWallpaper().setDayPath(dayPath);
                                        Wallpaper wallpaper2 = wallpaperInfoWithWallpaperId.getWallpaper();
                                        if (bitmap2 == null || !zSaveOrReplaceWallpaper4) {
                                            nightPath = null;
                                        }
                                        wallpaper2.setNightPath(nightPath);
                                    }
                                    wallpaperInfoWithWallpaperId.updateHideStatus(false);
                                    this.wallpaperStorage.updateWallpaperFromDatabase(wallpaperInfoWithWallpaperId);
                                    arrayList.add(wallpaperInfoWithWallpaperId);
                                    arrayList2.add(wallpaperInfoWithWallpaperId);
                                } else {
                                    try {
                                        wallpaperInfoSaveNewWallpaper = this.wallpaperStorage.saveNewWallpaper(str, bitmap, bitmap2, generateWallpaperName(str, callingPackage, i), callingPackage);
                                        zSaveWallpaperInfoToDatabase = true;
                                    } catch (IOException e) {
                                        MLog.e(TAG, "addWallpapersImpl: error", e);
                                        zSaveWallpaperInfoToDatabase = false;
                                    }
                                    WallpaperInfo wallpaperInfo = wallpaperInfoSaveNewWallpaper;
                                    if (wallpaperInfo != null) {
                                        zSaveWallpaperInfoToDatabase = this.wallpaperStorage.saveWallpaperInfoToDatabase(wallpaperInfo);
                                    }
                                    MLog.d(TAG, "addWallpapersImpl: success=" + zSaveWallpaperInfoToDatabase + ' ' + wallpaperInfo);
                                    if (wallpaperInfo == null || !zSaveWallpaperInfoToDatabase) {
                                        WallpaperService wallpaperService = this.wallpaperService;
                                        if (wallpaperService == null) {
                                            break;
                                        }
                                        WallpaperInfo wallpaperInfo2 = this.currentWallpaper;
                                        Intrinsics.checkNotNull(wallpaperInfo2);
                                        wallpaperService.notifyWallpaperSetResult(false, wallpaperInfo2);
                                        break;
                                    }
                                    arrayList.add(wallpaperInfo);
                                    arrayList2.add(wallpaperInfo);
                                }
                            }
                        }
                    }
                    if (arrayList.isEmpty()) {
                        MLog.d(TAG, "addWallpapersImpl: no wallpaper added");
                        return;
                    }
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        this.wallpaperStorage.updateDatabaseId((WallpaperInfo) it.next());
                    }
                    this.staticWallpapers.addAll(arrayList2);
                    WallpaperInfo wallpaperInfo3 = (WallpaperInfo) arrayList.get(arrayList.size() - 1);
                    storeCurrentWallpaper(wallpaperInfo3, true, "addWallpapers");
                    WallpaperService wallpaperService2 = this.wallpaperService;
                    if (wallpaperService2 != null) {
                        wallpaperService2.notifyWallpaperSetResult(true, wallpaperInfo3);
                    }
                    removeExtraWallpaper();
                    this.mainHandler.sendEmptyMessage(2);
                    return;
                }
            }
        }
        MLog.d(TAG, "addWallpapersImpl: invalid args " + tempAddBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void addSingleWallpaperImpl(TempAddBean tempAddBean) {
        boolean zSaveWallpaperInfoToDatabase;
        String dayPath;
        String dayPath2;
        if (tempAddBean == null) {
            Log.w(TAG, "addSingleWallpaperImpl: invalid tempAddBean");
            return;
        }
        String singleId = tempAddBean.getSingleId();
        Bitmap singleBitmap = tempAddBean.getSingleBitmap();
        String callingPackage = tempAddBean.getCallingPackage();
        if (!TextUtils.isEmpty(singleId) && singleBitmap != null && !TextUtils.isEmpty(callingPackage)) {
            MLog.d(TAG, "addSingleWallpaperImpl: " + tempAddBean);
            WallpaperInfo wallpaperInfoById = getWallpaperInfoById(singleId);
            WallpaperInfo wallpaperInfoSaveNewWallpaper = null;
            if (wallpaperInfoById != null) {
                boolean z = wallpaperInfoById.getWallpaper().getType() == 0;
                if (z) {
                    dayPath2 = this.wallpaperStorage.buildDayPath(wallpaperInfoById.getWallpaper().getName());
                } else {
                    dayPath2 = wallpaperInfoById.getDayPath();
                }
                if (WallpaperUtilities.saveOrReplaceWallpaper(singleBitmap, dayPath2) && z) {
                    wallpaperInfoById.getWallpaper().setType(1);
                    wallpaperInfoById.getWallpaper().setDayPath(dayPath2);
                    wallpaperInfoById.getWallpaper().setNightPath(null);
                }
                wallpaperInfoById.updateHideStatus(false);
                this.wallpaperStorage.updateWallpaperFromDatabase(wallpaperInfoById);
                storeCurrentWallpaper(wallpaperInfoById, true, "add_single_wallpaper_exist");
                WallpaperService wallpaperService = this.wallpaperService;
                if (wallpaperService != null) {
                    WallpaperInfo wallpaperInfo = this.currentWallpaper;
                    Intrinsics.checkNotNull(wallpaperInfo);
                    wallpaperService.notifyWallpaperSetResult(true, wallpaperInfo);
                }
                this.mainHandler.sendEmptyMessage(2);
                return;
            }
            WallpaperStorage wallpaperStorage = this.wallpaperStorage;
            Intrinsics.checkNotNull(singleId);
            WallpaperInfo wallpaperInfoWithWallpaperId = wallpaperStorage.getWallpaperInfoWithWallpaperId(singleId);
            if (wallpaperInfoWithWallpaperId != null) {
                MLog.d(TAG, "addSingleWallpaperBg: show wallpaper " + wallpaperInfoWithWallpaperId);
                boolean z2 = wallpaperInfoWithWallpaperId.getWallpaper().getType() == 0;
                if (z2) {
                    dayPath = this.wallpaperStorage.buildDayPath(wallpaperInfoWithWallpaperId.getWallpaper().getName());
                } else {
                    dayPath = wallpaperInfoWithWallpaperId.getDayPath();
                }
                if (WallpaperUtilities.saveOrReplaceWallpaper(singleBitmap, dayPath) && z2) {
                    wallpaperInfoWithWallpaperId.getWallpaper().setType(1);
                    wallpaperInfoWithWallpaperId.getWallpaper().setDayPath(dayPath);
                    wallpaperInfoWithWallpaperId.getWallpaper().setNightPath(null);
                }
                wallpaperInfoWithWallpaperId.updateHideStatus(false);
                this.wallpaperStorage.updateWallpaperFromDatabase(wallpaperInfoWithWallpaperId);
                this.staticWallpapers.remove(wallpaperInfoWithWallpaperId);
                this.staticWallpapers.add(wallpaperInfoWithWallpaperId);
                storeCurrentWallpaper(wallpaperInfoWithWallpaperId, true, "add_single_wallpaper_exist2");
                WallpaperService wallpaperService2 = this.wallpaperService;
                if (wallpaperService2 != null) {
                    WallpaperInfo wallpaperInfo2 = this.currentWallpaper;
                    Intrinsics.checkNotNull(wallpaperInfo2);
                    wallpaperService2.notifyWallpaperSetResult(true, wallpaperInfo2);
                }
                this.mainHandler.sendEmptyMessage(2);
                return;
            }
            try {
                wallpaperInfoSaveNewWallpaper = this.wallpaperStorage.saveNewWallpaper(singleId, singleBitmap, null, generateWallpaperName(singleId, callingPackage, 0), callingPackage);
                zSaveWallpaperInfoToDatabase = true;
            } catch (IOException e) {
                MLog.e(TAG, "addSingleWallpaperImpl: error", e);
                zSaveWallpaperInfoToDatabase = false;
            }
            if (wallpaperInfoSaveNewWallpaper != null) {
                zSaveWallpaperInfoToDatabase = this.wallpaperStorage.saveWallpaperInfoToDatabase(wallpaperInfoSaveNewWallpaper);
            }
            MLog.d(TAG, "addSingleWallpaperImpl: success=" + zSaveWallpaperInfoToDatabase + ' ' + wallpaperInfoSaveNewWallpaper);
            if (!zSaveWallpaperInfoToDatabase) {
                WallpaperService wallpaperService3 = this.wallpaperService;
                if (wallpaperService3 != null) {
                    WallpaperInfo wallpaperInfo3 = this.currentWallpaper;
                    Intrinsics.checkNotNull(wallpaperInfo3);
                    wallpaperService3.notifyWallpaperSetResult(false, wallpaperInfo3);
                }
                return;
            }
            WallpaperStorage wallpaperStorage2 = this.wallpaperStorage;
            Intrinsics.checkNotNull(wallpaperInfoSaveNewWallpaper);
            wallpaperStorage2.updateDatabaseId(wallpaperInfoSaveNewWallpaper);
            this.staticWallpapers.remove(wallpaperInfoSaveNewWallpaper);
            this.staticWallpapers.add(wallpaperInfoSaveNewWallpaper);
            this.currentWallpaper = wallpaperInfoSaveNewWallpaper;
            storeCurrentWallpaper(wallpaperInfoSaveNewWallpaper, true, "add_single_wallpaper_success");
            WallpaperService wallpaperService4 = this.wallpaperService;
            if (wallpaperService4 != null) {
                WallpaperInfo wallpaperInfo4 = this.currentWallpaper;
                Intrinsics.checkNotNull(wallpaperInfo4);
                wallpaperService4.notifyWallpaperSetResult(true, wallpaperInfo4);
            }
            removeExtraWallpaper();
            this.mainHandler.sendEmptyMessage(2);
            return;
        }
        Log.w(TAG, "addSingleWallpaperImpl: invalid args");
    }

    private final void removeExtraWallpaper() {
        WallpaperService wallpaperService;
        if (this.staticWallpapers.size() <= 20) {
            return;
        }
        int size = this.staticWallpapers.size() - 20;
        ArrayList<WallpaperInfo> arrayList = new ArrayList();
        int i = 0;
        for (WallpaperInfo wallpaperInfo : this.staticWallpapers) {
            if (!Intrinsics.areEqual(wallpaperInfo, this.currentWallpaper) && wallpaperInfo.getWallpaper().getType() == 1 && !wallpaperInfo.getWallpaper().isHide()) {
                Intrinsics.checkNotNullExpressionValue(wallpaperInfo, "wallpaperInfo");
                arrayList.add(wallpaperInfo);
                i++;
                if (i >= size) {
                    break;
                }
            }
        }
        for (WallpaperInfo wallpaperInfo2 : arrayList) {
            wallpaperInfo2.updateHideStatus(true);
            MLog.d(TAG, "removeExtraWallpaper: " + wallpaperInfo2 + " dbResult=" + this.wallpaperStorage.updateWallpaperFromDatabase(wallpaperInfo2) + " removed=" + this.staticWallpapers.remove(wallpaperInfo2));
        }
        if (!(!arrayList.isEmpty()) || (wallpaperService = this.wallpaperService) == null) {
            return;
        }
        wallpaperService.notifyWallpapersChanged();
    }

    private final boolean isLastVisibleWallpaper(String wallpaperId) {
        if (this.staticWallpapers.size() == 1) {
            return Intrinsics.areEqual(this.staticWallpapers.get(0).getWallpaper().getWallpaperId(), wallpaperId);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void deleteWallpapersImpl(List<String> ids) {
        MLog.d(TAG, "deleteWallpapersBg: " + ids);
        int size = ids.size();
        for (int i = 0; i < size; i++) {
            String str = ids.get(i);
            if (isLastVisibleWallpaper(str)) {
                WallpaperService wallpaperService = this.wallpaperService;
                if (wallpaperService != null) {
                    wallpaperService.notifyWallpaperDeleteResult(5, str);
                }
                return;
            }
            WallpaperInfo wallpaperInfoWithWallpaperId = this.wallpaperStorage.getWallpaperInfoWithWallpaperId(str);
            if (wallpaperInfoWithWallpaperId == null) {
                MLog.d(TAG, "deleteWallpapersBg: wallpaper not found.");
                WallpaperService wallpaperService2 = this.wallpaperService;
                if (wallpaperService2 != null) {
                    wallpaperService2.notifyWallpaperDeleteResult(2, str);
                }
            } else if (!this.wallpaperStorage.removeWallpaperFromDatabase(wallpaperInfoWithWallpaperId)) {
                MLog.d(TAG, "deleteWallpapersBg: delete database failed");
                WallpaperService wallpaperService3 = this.wallpaperService;
                if (wallpaperService3 != null) {
                    wallpaperService3.notifyWallpaperDeleteResult(3, wallpaperInfoWithWallpaperId.getWallpaper().getWallpaperId());
                }
            } else {
                int iIndexOf = this.staticWallpapers.indexOf(wallpaperInfoWithWallpaperId);
                if (iIndexOf != -1) {
                    this.staticWallpapers.remove(iIndexOf);
                }
                if (!this.wallpaperStorage.removeWallpaper(wallpaperInfoWithWallpaperId)) {
                    MLog.d(TAG, "deleteWallpapersBg: delete file failed");
                }
                if (Intrinsics.areEqual(wallpaperInfoWithWallpaperId, this.currentWallpaper)) {
                    MLog.d(TAG, "deleteWallpapersBg: delete current wallpaper index=" + iIndexOf + ", deleteWallpaper=" + wallpaperInfoWithWallpaperId);
                    if (iIndexOf == -1 || this.staticWallpapers.isEmpty()) {
                        this.currentWallpaper = getWallpaperInfo(LauncherWallpapersParser.INSTANCE.getDefaultItem());
                    } else {
                        this.currentWallpaper = this.staticWallpapers.get(Utilities.boundToRange(iIndexOf, 0, this.staticWallpapers.size() - 1));
                    }
                    this.mainHandler.sendEmptyMessage(2);
                }
                WallpaperService wallpaperService4 = this.wallpaperService;
                if (wallpaperService4 != null) {
                    wallpaperService4.notifyWallpaperDeleteResult(0, wallpaperInfoWithWallpaperId.getWallpaper().getWallpaperId());
                }
            }
        }
        this.mainHandler.sendEmptyMessage(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void hideWallpaperImpl(List<String> ids) {
        WallpaperInfo wallpaperInfo;
        List<String> list = ids;
        if (list != null && !list.isEmpty()) {
            if (this.staticWallpapers.size() == 1) {
                MLog.w(TAG, "hideWallpaperImpl: only last one");
                return;
            }
            MLog.d(TAG, "hideWallpaperImpl: ids=" + ids);
            int size = ids.size();
            for (int i = 0; i < size; i++) {
                String str = ids.get(i);
                WallpaperInfo wallpaperInfoById = getWallpaperInfoById(str);
                if (wallpaperInfoById == null) {
                    MLog.w(TAG, "hideWallpaperImpl: wallpaper not found");
                    WallpaperService wallpaperService = this.wallpaperService;
                    if (wallpaperService != null) {
                        wallpaperService.notifyWallpaperDeleteResult(2, str);
                    }
                } else {
                    if (wallpaperInfoById.getWallpaper().isHide()) {
                        MLog.d(TAG, "hideWallpaperImpl: already hide.");
                        return;
                    }
                    wallpaperInfoById.updateHideStatus(true);
                    if (!this.wallpaperStorage.updateWallpaperFromDatabase(wallpaperInfoById)) {
                        MLog.d(TAG, "hideWallpaperImpl: update database failed");
                        WallpaperService wallpaperService2 = this.wallpaperService;
                        if (wallpaperService2 != null) {
                            wallpaperService2.notifyWallpaperDeleteResult(4, str);
                        }
                    } else {
                        int iIndexOf = this.staticWallpapers.indexOf(wallpaperInfoById);
                        MLog.d(TAG, "hideWallpaperImpl: index=" + iIndexOf + ", removed=" + this.staticWallpapers.remove(wallpaperInfoById) + ", tempWallpaper=" + wallpaperInfoById + ", mCurrentWallpaper=" + this.currentWallpaper);
                        if (Intrinsics.areEqual(this.currentWallpaper, wallpaperInfoById)) {
                            if (iIndexOf == this.staticWallpapers.size()) {
                                wallpaperInfo = this.staticWallpapers.get(iIndexOf - 1);
                            } else {
                                wallpaperInfo = this.staticWallpapers.get(iIndexOf);
                            }
                            this.currentWallpaper = wallpaperInfo;
                        }
                        this.mainHandler.sendEmptyMessage(2);
                    }
                }
            }
            return;
        }
        MLog.w(TAG, "hideWallpaperImpl: invalid args");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void showWallpaperImpl(List<String> ids) {
        List<String> list = ids;
        if (list != null && !list.isEmpty()) {
            MLog.d(TAG, "showWallpaperImpl: ids=" + ids);
            int size = ids.size();
            for (int i = 0; i < size; i++) {
                String str = ids.get(i);
                WallpaperInfo wallpaperInfoById = getWallpaperInfoById(str);
                if (wallpaperInfoById != null) {
                    if (wallpaperInfoById.getWallpaper().isHide()) {
                        wallpaperInfoById.updateHideStatus(false);
                        WallpaperService wallpaperService = this.wallpaperService;
                        if (wallpaperService != null) {
                            wallpaperService.notifyWallpaperSetResult(true, wallpaperInfoById);
                        }
                    }
                } else {
                    WallpaperInfo wallpaperInfoWithWallpaperId = this.wallpaperStorage.getWallpaperInfoWithWallpaperId(str);
                    if (wallpaperInfoWithWallpaperId == null) {
                        MLog.w(TAG, "showWallpaperImpl: wallpaper not found");
                    } else {
                        wallpaperInfoWithWallpaperId.updateHideStatus(false);
                        if (!this.wallpaperStorage.updateWallpaperFromDatabase(wallpaperInfoWithWallpaperId)) {
                            MLog.d(TAG, "showWallpaperImpl: update database failed");
                            WallpaperService wallpaperService2 = this.wallpaperService;
                            if (wallpaperService2 != null) {
                                wallpaperService2.notifyWallpaperSetResult(false, wallpaperInfoWithWallpaperId);
                            }
                        } else {
                            int size2 = this.staticWallpapers.size();
                            int i2 = 0;
                            while (true) {
                                if (i2 >= size2) {
                                    i2 = 0;
                                    break;
                                } else if (wallpaperInfoWithWallpaperId.getWallpaper().getId() < this.staticWallpapers.get(i2).getWallpaper().getId()) {
                                    break;
                                } else {
                                    i2++;
                                }
                            }
                            int i3 = i2 - 1;
                            if (i3 < 0) {
                                i3 = 0;
                            }
                            MLog.d(TAG, "showWallpaperImpl: insertIndex=" + i3 + ", tempWallpaper=" + wallpaperInfoWithWallpaperId + ", mCurrentWallpaper=" + this.currentWallpaper);
                            this.staticWallpapers.remove(wallpaperInfoWithWallpaperId);
                            this.staticWallpapers.add(i3, wallpaperInfoWithWallpaperId);
                            removeExtraWallpaper();
                            this.mainHandler.sendEmptyMessage(2);
                        }
                    }
                }
            }
            return;
        }
        MLog.w(TAG, "showWallpaperImpl: invalid args");
    }

    private final String generateWallpaperName(String wallpaperId, String callingPackage, int index) {
        if (TextUtils.isEmpty(callingPackage)) {
            callingPackage = "unknown";
        }
        String strReplace$default = callingPackage;
        if (StringsKt.contains$default((CharSequence) strReplace$default, (CharSequence) ":", false, 2, (Object) null)) {
            strReplace$default = StringsKt.replace$default(strReplace$default, ":", "", false, 4, (Object) null);
        }
        if (wallpaperId != null && !TextUtils.isEmpty(wallpaperId)) {
            return "bitmap_" + strReplace$default + '_' + wallpaperId.hashCode() + '_' + index + '_' + System.currentTimeMillis();
        }
        return "bitmap_" + strReplace$default + '_' + index + '_' + System.currentTimeMillis();
    }

    public final boolean changeLauncherWallpaper(String wallpaperId) {
        MLog.d(TAG, "changeLauncherWallpaper: wallpaperId=" + wallpaperId);
        if (wallpaperId != null && !TextUtils.isEmpty(wallpaperId)) {
            for (WallpaperInfo wallpaperInfo : this.staticWallpapers) {
                if (Intrinsics.areEqual(wallpaperInfo.getWallpaper().getWallpaperId(), wallpaperId)) {
                    this.currentWallpaper = wallpaperInfo;
                    storeCurrentWallpaper(wallpaperInfo, true, "changeLauncherWallpaper");
                    this.mainHandler.sendEmptyMessage(2);
                    return true;
                }
            }
            WallpaperInfo wallpaperInfoWithWallpaperId = this.wallpaperStorage.getWallpaperInfoWithWallpaperId(wallpaperId);
            if (wallpaperInfoWithWallpaperId != null && wallpaperInfoWithWallpaperId.getWallpaper().isHide()) {
                wallpaperInfoWithWallpaperId.getWallpaper().setHide(0);
                MLog.d(TAG, "changeLauncherWallpaper: update " + this.wallpaperStorage.updateWallpaperFromDatabase(wallpaperInfoWithWallpaperId));
                this.currentWallpaper = wallpaperInfoWithWallpaperId;
                storeCurrentWallpaper(wallpaperInfoWithWallpaperId, true, "changeLauncherWallpaper");
                this.staticWallpapers.remove(wallpaperInfoWithWallpaperId);
                this.staticWallpapers.add(wallpaperInfoWithWallpaperId);
                removeExtraWallpaper();
                this.mainHandler.sendEmptyMessage(2);
            }
        }
        return false;
    }

    public final void resetLauncherSystemWallpaper(String wallpaperName) {
        MLog.d(TAG, "resetLauncherSystemWallpaper: " + wallpaperName);
        if (wallpaperName == null) {
            wallpaperName = LauncherWallpapersParser.INSTANCE.getDefaultItem();
        }
        WallpaperInfo wallpaperInfo = getWallpaperInfo(wallpaperName);
        if (wallpaperInfo == null) {
            MLog.d(TAG, "resetLauncherSystemWallpaper() wallpaperInfo is null");
        } else {
            this.currentWallpaper = wallpaperInfo;
            this.mainHandler.sendEmptyMessage(2);
        }
    }

    public final void reset(String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        MLog.d(TAG, "reset: " + reason);
        this.workHandler.sendEmptyMessage(72);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetImpl() {
        this.wallpaperStorage.hideUserWallpapers();
        this.wallpaperStorage.showDefaultWallpapers();
        WallpaperUtils.setCurrentWallpaperType(this.context, 1);
        WallpaperUtils.setCurrentLiveWallpaperName(this.context, null);
        WallpaperPreference.INSTANCE.setWallpaperVersion(this.context, 0);
        initWallpaperList();
        initLiveWallpapers();
    }

    public final void showLiveWallpaper(WallpaperInfo wallpaperInfo) {
        if (wallpaperInfo != null) {
            this.currentLiveWallpaper = wallpaperInfo;
            storeCurrentWallpaper(wallpaperInfo, true, "showLiveWallpaper");
            this.mainHandler.sendEmptyMessage(6);
        }
    }

    public final void showStaticWallpapers() {
        storeCurrentWallpaper(getCurrentWallpaper(), true, "showStaticWallpapers");
        this.mainHandler.sendEmptyMessage(2);
    }

    public final void showStaticWallpapers(WallpaperInfo wallpaperInfo) {
        storeCurrentWallpaper(wallpaperInfo, true, "showStaticWallpapers");
        this.mainHandler.sendEmptyMessage(2);
    }

    public final void showLandmarkWallpaper() {
        WallpaperUtils.setCurrentWallpaperType(this.context, 2);
        this.mainHandler.sendEmptyMessage(7);
    }

    /* JADX INFO: compiled from: WallpaperRepository.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/mega/launcher/wallpaper/WallpaperRepository$WorkHandler;", "Landroid/os/Handler;", "looper", "Landroid/os/Looper;", "(Lcom/mega/launcher/wallpaper/WallpaperRepository;Landroid/os/Looper;)V", "handleMessage", "", NotificationCompat.CATEGORY_MESSAGE, "Landroid/os/Message;", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    private final class WorkHandler extends Handler {
        final /* synthetic */ WallpaperRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WorkHandler(WallpaperRepository wallpaperRepository, Looper looper) {
            super(looper);
            Intrinsics.checkNotNullParameter(looper, "looper");
            this.this$0 = wallpaperRepository;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Intrinsics.checkNotNullParameter(msg, "msg");
            int i = msg.what;
            if (i == 10) {
                this.this$0.wallpaperStorage.checkDirExist();
            }
            if (i == 20) {
                this.this$0.initWallpaperList();
                this.this$0.mainHandler.sendEmptyMessage(1);
                return;
            }
            if (i == 30) {
                this.this$0.initLiveWallpapers();
                this.this$0.mainHandler.sendEmptyMessage(5);
                return;
            }
            if (i == 40) {
                Object obj = msg.obj;
                if (obj instanceof TempAddBean) {
                    this.this$0.addWallpapersImpl((TempAddBean) obj);
                    return;
                }
                return;
            }
            if (i == 50) {
                WallpaperRepository wallpaperRepository = this.this$0;
                Object obj2 = msg.obj;
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>");
                wallpaperRepository.deleteWallpapersImpl((List) obj2);
                return;
            }
            if (i == 60) {
                Object obj3 = msg.obj;
                if (obj3 instanceof TempAddBean) {
                    this.this$0.addSingleWallpaperImpl((TempAddBean) obj3);
                    return;
                }
                return;
            }
            if (i == 61) {
                this.this$0.clearCacheDayNightWallpaper();
                return;
            }
            switch (i) {
                case 70:
                    WallpaperRepository wallpaperRepository2 = this.this$0;
                    Object obj4 = msg.obj;
                    Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>");
                    wallpaperRepository2.hideWallpaperImpl((List) obj4);
                    break;
                case 71:
                    WallpaperRepository wallpaperRepository3 = this.this$0;
                    Object obj5 = msg.obj;
                    Intrinsics.checkNotNull(obj5, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>");
                    wallpaperRepository3.showWallpaperImpl((List) obj5);
                    break;
                case 72:
                    this.this$0.resetImpl();
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void clearCacheDayNightWallpaper() {
        MLog.d(TAG, "clearCacheDayNightWallpaper: mLastIsNightMode " + this.lastIsNightMode);
        if (this.lastIsNightMode) {
            this.staticWallpapers.forEach(new Consumer() { // from class: com.mega.launcher.wallpaper.WallpaperRepository$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    WallpaperRepository.clearCacheDayNightWallpaper$lambda$4((WallpaperInfo) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearCacheDayNightWallpaper$lambda$4(WallpaperInfo wallpaperInfo) {
        if (wallpaperInfo != null) {
            wallpaperInfo.clearCache();
        }
    }

    /* JADX INFO: compiled from: WallpaperRepository.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0083\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/mega/launcher/wallpaper/WallpaperRepository$MainHandler;", "Landroid/os/Handler;", "(Lcom/mega/launcher/wallpaper/WallpaperRepository;)V", "handleMessage", "", NotificationCompat.CATEGORY_MESSAGE, "Landroid/os/Message;", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    private final class MainHandler extends Handler {
        public MainHandler() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            OnWallpaperChangedListener onWallpaperChangedListener;
            OnWallpaperChangedListener onWallpaperChangedListener2;
            OnWallpaperChangedListener onWallpaperChangedListener3;
            OnWallpaperChangedListener onWallpaperChangedListener4;
            Intrinsics.checkNotNullParameter(msg, "msg");
            MLog.d(WallpaperRepository.TAG, "handleMessage: " + msg.what);
            int i = msg.what;
            if (i == 1) {
                if (WallpaperUtils.getWallpaperType(WallpaperRepository.this.context) != 0 || (onWallpaperChangedListener = WallpaperRepository.this.onWallpaperChangedListener) == null) {
                    return;
                }
                onWallpaperChangedListener.onWallpaperChanged(WallpaperRepository.this.getStaticWallpapers());
                return;
            }
            if (i == 2 || i == 3) {
                if (WallpaperRepository.this.onWallpaperChangedListener == null || WallpaperUtils.getWallpaperType(WallpaperRepository.this.context) != 0 || (onWallpaperChangedListener2 = WallpaperRepository.this.onWallpaperChangedListener) == null) {
                    return;
                }
                onWallpaperChangedListener2.onNewWallpaper(WallpaperRepository.this.getStaticWallpapers(), WallpaperRepository.this.currentWallpaper);
                return;
            }
            if (i == 5 || i == 6) {
                if (WallpaperUtils.getWallpaperType(WallpaperRepository.this.context) != 1 || (onWallpaperChangedListener3 = WallpaperRepository.this.onWallpaperChangedListener) == null) {
                    return;
                }
                onWallpaperChangedListener3.onLiveWallpaperChanged(WallpaperRepository.this.getCurrentLiveWallpaper(), msg.what == 5);
                return;
            }
            if (i == 7 && WallpaperUtils.getWallpaperType(WallpaperRepository.this.context) == 2 && (onWallpaperChangedListener4 = WallpaperRepository.this.onWallpaperChangedListener) != null) {
                onWallpaperChangedListener4.onLandmarkWallpaperChanged();
            }
        }
    }

    /* JADX INFO: compiled from: WallpaperRepository.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001c\b\u0002\u0018\u00002\u00020\u0001BC\b\u0016\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0003\u0012\u0010\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0003\u0012\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0002\u0010\tB#\b\u0016\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0002\u0010\fJ\b\u0010!\u001a\u00020\u0004H\u0016R\u001a\u0010\b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R$\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u000e\"\u0004\b \u0010\u0010¨\u0006\""}, d2 = {"Lcom/mega/launcher/wallpaper/WallpaperRepository$TempAddBean;", "", "ids", "", "", "dayWallpapers", "Landroid/graphics/Bitmap;", "nightWallpapers", "callingPackage", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", WallpaperConstant.WALLPAPER_COLUMN_ID, "bitmap", "(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V", "getCallingPackage", "()Ljava/lang/String;", "setCallingPackage", "(Ljava/lang/String;)V", "getDayWallpapers", "()Ljava/util/List;", "setDayWallpapers", "(Ljava/util/List;)V", "getIds", "setIds", "getNightWallpapers", "setNightWallpapers", "singleBitmap", "getSingleBitmap", "()Landroid/graphics/Bitmap;", "setSingleBitmap", "(Landroid/graphics/Bitmap;)V", "singleId", "getSingleId", "setSingleId", "toString", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    private static final class TempAddBean {
        private String callingPackage;
        private List<Bitmap> dayWallpapers;
        private List<String> ids;
        private List<Bitmap> nightWallpapers;
        private Bitmap singleBitmap;
        private String singleId;

        public final String getCallingPackage() {
            return this.callingPackage;
        }

        public final List<Bitmap> getDayWallpapers() {
            return this.dayWallpapers;
        }

        public final List<String> getIds() {
            return this.ids;
        }

        public final List<Bitmap> getNightWallpapers() {
            return this.nightWallpapers;
        }

        public final Bitmap getSingleBitmap() {
            return this.singleBitmap;
        }

        public final String getSingleId() {
            return this.singleId;
        }

        public final void setCallingPackage(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.callingPackage = str;
        }

        public final void setDayWallpapers(List<Bitmap> list) {
            this.dayWallpapers = list;
        }

        public final void setIds(List<String> list) {
            this.ids = list;
        }

        public final void setNightWallpapers(List<Bitmap> list) {
            this.nightWallpapers = list;
        }

        public final void setSingleBitmap(Bitmap bitmap) {
            this.singleBitmap = bitmap;
        }

        public final void setSingleId(String str) {
            this.singleId = str;
        }

        public TempAddBean(List<String> list, List<Bitmap> list2, List<Bitmap> list3, String callingPackage) {
            Intrinsics.checkNotNullParameter(callingPackage, "callingPackage");
            this.ids = list;
            this.dayWallpapers = list2;
            this.nightWallpapers = list3;
            this.callingPackage = callingPackage;
        }

        public TempAddBean(String str, Bitmap bitmap, String callingPackage) {
            Intrinsics.checkNotNullParameter(callingPackage, "callingPackage");
            this.singleId = str;
            this.singleBitmap = bitmap;
            this.callingPackage = callingPackage;
        }

        public String toString() {
            return "TempAddBean{ids=" + this.ids + ", dayWallpapers=" + this.dayWallpapers + ", nightWallpapers=" + this.nightWallpapers + ", singleId=" + this.singleId + ", singleBitmap=" + this.singleBitmap + ", callingPackage='" + this.callingPackage + "'}";
        }
    }

    public final Bitmap getBitmap(Context context, WallpaperInfo wallpaperInfo, BitmapFactory.Options options) {
        return this.wallpaperBitmap.getBitmap(context, wallpaperInfo, options);
    }

    public final void refreshCache(Context context, Set<WallpaperInfo> infoSet, BitmapFactory.Options options) {
        this.wallpaperBitmap.refreshCache(context, infoSet, options);
    }

    public final void refreshCache(Context context, Set<WallpaperInfo> infoSet, BitmapFactory.Options options, boolean clearAll, boolean sync) {
        this.wallpaperBitmap.refreshCache(context, infoSet, options, clearAll, sync);
    }

    public final void beginLoadingBitmap() {
        this.wallpaperBitmap.beginLoadingBitmap();
    }

    public final void finishLoadingBitmap() {
        this.wallpaperBitmap.finishLoadingBitmap();
    }

    /* JADX INFO: compiled from: WallpaperRepository.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/mega/launcher/wallpaper/WallpaperRepository$Companion;", "", "()V", "MAIN_CHANGE_TO_LANDMARK_WALLPAPER", "", "MAIN_CHANGE_TO_LIVE_WALLPAPER", "MAIN_DELETE_BITMAP_WALLPAPER", "MAIN_INIT_BITMAP_FILE_LIST", "MAIN_INIT_LIVE_WALLPAPER", "MAIN_NEW_BITMAP_WALLPAPER", "MAX_WALLPAPER_SIZE", "TAG", "", "WORK_ADD_NEW_SINGLE_WALLPAPER", "WORK_ADD_NEW_WALLPAPER", "WORK_CLEAR_DAY_NIGHT_WALLPAPER_CACHE", "WORK_DELETE_WALLPAPER", "WORK_HIDE_WALLPAPER", "WORK_INIT_BITMAP_FILE_LIST", "WORK_INIT_LIVE_WALLPAPER", "WORK_MSG_CHECK_DIRS", "WORK_RESET", "WORK_SHOW_WALLPAPER", "sInstance", "Lcom/mega/launcher/wallpaper/WallpaperRepository;", "getInstance", "context", "Landroid/content/Context;", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final WallpaperRepository getInstance(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (WallpaperRepository.sInstance == null) {
                synchronized (WallpaperRepository.class) {
                    if (WallpaperRepository.sInstance == null) {
                        Companion companion = WallpaperRepository.INSTANCE;
                        WallpaperRepository.sInstance = new WallpaperRepository(context, null);
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
            WallpaperRepository wallpaperRepository = WallpaperRepository.sInstance;
            Intrinsics.checkNotNull(wallpaperRepository);
            return wallpaperRepository;
        }
    }
}

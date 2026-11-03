package com.android.launcher3;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.CancellationSignal;
import android.os.Process;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.Pair;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.icons.ShadowGenerator;
import com.android.launcher3.icons.cache.BaseIconCache;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.Preconditions;
import com.android.launcher3.util.SQLiteCacheHelper;
import com.android.launcher3.widget.WidgetCell;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public class WidgetPreviewLoader {
    private static final boolean DEBUG = false;
    private static final String TAG = "WidgetPreviewLoader";
    private final Context mContext;
    private final CacheDb mDb;
    private final IconCache mIconCache;
    private final UserCache mUserCache;
    private final HashMap<String, long[]> mPackageVersions = new HashMap<>();
    final Set<Bitmap> mUnusedBitmaps = Collections.newSetFromMap(new WeakHashMap());
    private final UserHandle mMyUser = Process.myUserHandle();
    private final ArrayMap<UserHandle, Bitmap> mUserBadges = new ArrayMap<>();

    public WidgetPreviewLoader(Context context, IconCache iconCache) {
        this.mContext = context;
        this.mIconCache = iconCache;
        this.mUserCache = UserCache.INSTANCE.m166x39265fe7(context);
        this.mDb = new CacheDb(context);
    }

    public Drawable getBadgeForUser(UserHandle user, int badgeSize) {
        if (this.mMyUser.equals(user)) {
            return null;
        }
        Bitmap userBadge = getUserBadge(user, badgeSize);
        FastBitmapDrawable fastBitmapDrawable = new FastBitmapDrawable(userBadge);
        fastBitmapDrawable.setFilterBitmap(true);
        fastBitmapDrawable.setBounds(0, 0, userBadge.getWidth(), userBadge.getHeight());
        return fastBitmapDrawable;
    }

    private Bitmap getUserBadge(UserHandle user, int badgeSize) {
        synchronized (this.mUserBadges) {
            Bitmap bitmap = this.mUserBadges.get(user);
            if (bitmap != null) {
                return bitmap;
            }
            Resources resources = this.mContext.getResources();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(badgeSize, badgeSize, Bitmap.Config.ARGB_8888);
            Drawable userBadgedDrawableForDensity = this.mContext.getPackageManager().getUserBadgedDrawableForDensity(new BitmapDrawable(resources, bitmapCreateBitmap), user, new Rect(0, 0, badgeSize, badgeSize), 0);
            if (userBadgedDrawableForDensity instanceof BitmapDrawable) {
                bitmapCreateBitmap = ((BitmapDrawable) userBadgedDrawableForDensity).getBitmap();
            } else {
                bitmapCreateBitmap.eraseColor(0);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                userBadgedDrawableForDensity.setBounds(0, 0, badgeSize, badgeSize);
                userBadgedDrawableForDensity.draw(canvas);
                canvas.setBitmap(null);
            }
            this.mUserBadges.put(user, bitmapCreateBitmap);
            return bitmapCreateBitmap;
        }
    }

    public CancellationSignal getPreview(WidgetItem item, int previewWidth, int previewHeight, WidgetCell caller) {
        PreviewLoadTask previewLoadTask = new PreviewLoadTask(new WidgetCacheKey(item.componentName, item.user, previewWidth + "x" + previewHeight), item, previewWidth, previewHeight, caller);
        previewLoadTask.executeOnExecutor(Executors.THREAD_POOL_EXECUTOR, new Void[0]);
        CancellationSignal cancellationSignal = new CancellationSignal();
        cancellationSignal.setOnCancelListener(previewLoadTask);
        return cancellationSignal;
    }

    public void refresh() {
        this.mDb.clear();
    }

    private static class CacheDb extends SQLiteCacheHelper {
        private static final String COLUMN_COMPONENT = "componentName";
        private static final String COLUMN_LAST_UPDATED = "lastUpdated";
        private static final String COLUMN_PACKAGE = "packageName";
        private static final String COLUMN_PREVIEW_BITMAP = "preview_bitmap";
        private static final String COLUMN_SIZE = "size";
        private static final String COLUMN_USER = "profileId";
        private static final String COLUMN_VERSION = "version";
        private static final int DB_VERSION = 9;
        private static final String TABLE_NAME = "shortcut_and_widget_previews";

        public CacheDb(Context context) {
            super(context, LauncherFiles.WIDGET_PREVIEWS_DB, 9, TABLE_NAME);
        }

        @Override // com.android.launcher3.util.SQLiteCacheHelper
        public void onCreateTable(SQLiteDatabase database) {
            database.execSQL("CREATE TABLE IF NOT EXISTS shortcut_and_widget_previews (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, size TEXT NOT NULL, packageName TEXT NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, preview_bitmap BLOB, PRIMARY KEY (componentName, profileId, size) );");
        }
    }

    void writeToDb(WidgetCacheKey key, long[] versions, Bitmap preview) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(BaseIconCache.IconDB.COLUMN_COMPONENT, key.componentName.flattenToShortString());
        contentValues.put("profileId", Long.valueOf(this.mUserCache.getSerialNumberForUser(key.user)));
        contentValues.put("size", key.size);
        contentValues.put("packageName", key.componentName.getPackageName());
        contentValues.put(BaseIconCache.IconDB.COLUMN_VERSION, Long.valueOf(versions[0]));
        contentValues.put(BaseIconCache.IconDB.COLUMN_LAST_UPDATED, Long.valueOf(versions[1]));
        contentValues.put("preview_bitmap", GraphicsUtils.flattenBitmap(preview));
        this.mDb.insertOrReplace(contentValues);
    }

    public void removePackage(String packageName, UserHandle user) {
        removePackage(packageName, user, this.mUserCache.getSerialNumberForUser(user));
    }

    private void removePackage(String packageName, UserHandle user, long userSerial) {
        synchronized (this.mPackageVersions) {
            this.mPackageVersions.remove(packageName);
        }
        this.mDb.delete("packageName = ? AND profileId = ?", new String[]{packageName, Long.toString(userSerial)});
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00b3 A[Catch: all -> 0x00f7, SQLException -> 0x00f9, Merged into TryCatch #1 {all -> 0x00f7, SQLException -> 0x00f9, blocks: (B:14:0x0051, B:15:0x006e, B:17:0x0074, B:19:0x0086, B:24:0x0094, B:26:0x009c, B:28:0x00a2, B:30:0x00ac, B:33:0x00b3, B:35:0x00bb, B:36:0x00c3, B:37:0x00c7, B:39:0x00cd, B:40:0x00e1, B:42:0x00e7, B:50:0x00fa), top: B:57:0x0051 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00bb A[Catch: all -> 0x00f7, SQLException -> 0x00f9, Merged into TryCatch #1 {all -> 0x00f7, SQLException -> 0x00f9, blocks: (B:14:0x0051, B:15:0x006e, B:17:0x0074, B:19:0x0086, B:24:0x0094, B:26:0x009c, B:28:0x00a2, B:30:0x00ac, B:33:0x00b3, B:35:0x00bb, B:36:0x00c3, B:37:0x00c7, B:39:0x00cd, B:40:0x00e1, B:42:0x00e7, B:50:0x00fa), top: B:57:0x0051 }] */
    public void removeObsoletePreviews(ArrayList<? extends ComponentKey> list, PackageUserKey packageUser) {
        HashSet hashSet;
        Preconditions.assertWorkerThread();
        LongSparseArray longSparseArray = new LongSparseArray();
        for (ComponentKey componentKey : list) {
            long serialNumberForUser = this.mUserCache.getSerialNumberForUser(componentKey.user);
            HashSet hashSet2 = (HashSet) longSparseArray.get(serialNumberForUser);
            if (hashSet2 == null) {
                hashSet2 = new HashSet();
                longSparseArray.put(serialNumberForUser, hashSet2);
            }
            hashSet2.add(componentKey.componentName.getPackageName());
        }
        LongSparseArray longSparseArray2 = new LongSparseArray();
        long serialNumberForUser2 = packageUser == null ? 0L : this.mUserCache.getSerialNumberForUser(packageUser.mUser);
        Cursor cursorQuery = null;
        try {
            int i = 2;
            cursorQuery = this.mDb.query(new String[]{"profileId", "packageName", BaseIconCache.IconDB.COLUMN_LAST_UPDATED, BaseIconCache.IconDB.COLUMN_VERSION}, null, null);
            while (cursorQuery.moveToNext()) {
                long j = cursorQuery.getLong(0);
                String string = cursorQuery.getString(1);
                long j2 = cursorQuery.getLong(i);
                long j3 = cursorQuery.getLong(3);
                if (packageUser == null || (string.equals(packageUser.mPackageName) && j == serialNumberForUser2)) {
                    HashSet hashSet3 = (HashSet) longSparseArray.get(j);
                    if (hashSet3 != null && hashSet3.contains(string)) {
                        long[] packageVersion = getPackageVersion(string);
                        if (packageVersion[0] != j3 || packageVersion[1] != j2) {
                            hashSet = (HashSet) longSparseArray2.get(j);
                            if (hashSet == null) {
                                hashSet = new HashSet();
                                longSparseArray2.put(j, hashSet);
                            }
                            hashSet.add(string);
                        }
                    } else {
                        hashSet = (HashSet) longSparseArray2.get(j);
                        if (hashSet == null) {
                            hashSet = new HashSet();
                            longSparseArray2.put(j, hashSet);
                        }
                        hashSet.add(string);
                    }
                }
                i = 2;
            }
            for (int i2 = 0; i2 < longSparseArray2.size(); i2++) {
                long jKeyAt = longSparseArray2.keyAt(i2);
                UserHandle userForSerialNumber = this.mUserCache.getUserForSerialNumber(jKeyAt);
                Iterator it = ((HashSet) longSparseArray2.valueAt(i2)).iterator();
                while (it.hasNext()) {
                    removePackage((String) it.next(), userForSerialNumber, jKeyAt);
                }
            }
        } catch (SQLException e) {
            Log.e(TAG, "Error updating widget previews", e);
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0075 A[PHI: r9
  0x0075: PHI (r9v4 android.database.Cursor) = (r9v3 android.database.Cursor), (r9v8 android.database.Cursor) binds: [B:30:0x0073, B:21:0x0063] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:36:0x007d  */
    Bitmap readFromDb(WidgetCacheKey key, Bitmap recycle, PreviewLoadTask loadTask) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            cursorQuery = this.mDb.query(new String[]{"preview_bitmap"}, "componentName = ? AND profileId = ? AND size = ?", new String[]{key.componentName.flattenToShortString(), Long.toString(this.mUserCache.getSerialNumberForUser(key.user)), key.size});
            try {
                try {
                    if (loadTask.isCancelled()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    if (cursorQuery.moveToNext()) {
                        byte[] blob = cursorQuery.getBlob(0);
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inBitmap = recycle;
                        try {
                            if (!loadTask.isCancelled()) {
                                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(blob, 0, blob.length, options);
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                return bitmapDecodeByteArray;
                            }
                        } catch (Exception unused) {
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            return null;
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (SQLException e) {
                    e = e;
                    Log.w(TAG, "Error loading preview from DB", e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLException e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Pair<Bitmap, Boolean> generatePreview(BaseActivity launcher, WidgetItem item, Bitmap recycle, int previewWidth, int previewHeight) {
        if (item.widgetInfo != null) {
            return generateWidgetPreview(launcher, item.widgetInfo, previewWidth, recycle, null);
        }
        if (item.appInfo != null) {
            return new Pair<>(item.appInfo.bitmap.icon, true);
        }
        return new Pair<>(generateShortcutPreview(launcher, item.activityInfo, previewWidth, previewHeight, recycle), false);
    }

    public Pair<Bitmap, Boolean> generateWidgetPreview(BaseActivity launcher, LauncherAppWidgetProviderInfo info, int maxPreviewWidth, Bitmap preview, int[] preScaledWidthOut) {
        Drawable drawableMutateOnMainThread;
        int iMax;
        int iMax2;
        Canvas canvas;
        Bitmap bitmap;
        boolean z;
        Bitmap bitmapCreateBitmap = preview;
        int i = maxPreviewWidth < 0 ? Integer.MAX_VALUE : maxPreviewWidth;
        if (info.previewImage != 0) {
            try {
                drawableMutateOnMainThread = info.loadPreviewImage(this.mContext, 0);
            } catch (OutOfMemoryError e) {
                Log.w(TAG, "Error loading widget preview for: " + info.provider, e);
                drawableMutateOnMainThread = null;
            }
            if (drawableMutateOnMainThread != null) {
                drawableMutateOnMainThread = mutateOnMainThread(drawableMutateOnMainThread);
            } else {
                Log.w(TAG, "Can't load widget preview drawable 0x" + Integer.toHexString(info.previewImage) + " for provider: " + info.provider);
            }
        } else {
            drawableMutateOnMainThread = null;
        }
        boolean z2 = drawableMutateOnMainThread != null;
        int i2 = info.spanX;
        int i3 = info.spanY;
        boolean z3 = z2 || info.previewImage == 0;
        if (z2 && drawableMutateOnMainThread.getIntrinsicWidth() > 0 && drawableMutateOnMainThread.getIntrinsicHeight() > 0) {
            iMax2 = drawableMutateOnMainThread.getIntrinsicWidth();
            iMax = drawableMutateOnMainThread.getIntrinsicHeight();
        } else {
            DeviceProfile deviceProfile = launcher.getDeviceProfile();
            int iMin = Math.min(deviceProfile.cellWidthPx, deviceProfile.cellHeightPx);
            iMax = iMin * i3;
            iMax2 = iMin * i2;
        }
        if (preScaledWidthOut != null) {
            preScaledWidthOut[0] = iMax2;
        }
        float f = iMax2 > i ? i / iMax2 : 1.0f;
        if (f != 1.0f) {
            iMax2 = Math.max((int) (iMax2 * f), 1);
            iMax = Math.max((int) (iMax * f), 1);
        }
        Canvas canvas2 = new Canvas();
        if (bitmapCreateBitmap == null) {
            bitmapCreateBitmap = Bitmap.createBitmap(iMax2, iMax, Bitmap.Config.ARGB_8888);
            canvas2.setBitmap(bitmapCreateBitmap);
        } else {
            if (preview.getHeight() > iMax) {
                bitmapCreateBitmap.reconfigure(preview.getWidth(), iMax, preview.getConfig());
            }
            canvas2.setBitmap(bitmapCreateBitmap);
            canvas2.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        int width = (bitmapCreateBitmap.getWidth() - iMax2) / 2;
        if (z2) {
            drawableMutateOnMainThread.setBounds(width, 0, iMax2 + width, iMax);
            drawableMutateOnMainThread.draw(canvas2);
        } else {
            RectF rectFDrawBoxWithShadow = drawBoxWithShadow(canvas2, iMax2, iMax);
            Paint paint = new Paint(1);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(this.mContext.getResources().getDimension(R.dimen.widget_preview_cell_divider_width));
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            float f2 = rectFDrawBoxWithShadow.left;
            float fWidth = rectFDrawBoxWithShadow.width() / i2;
            int i4 = 1;
            while (i4 < i2) {
                f2 += fWidth;
                canvas2.drawLine(f2, 0.0f, f2, iMax, paint);
                i4++;
                canvas2 = canvas2;
            }
            Canvas canvas3 = canvas2;
            float f3 = rectFDrawBoxWithShadow.top;
            float fHeight = rectFDrawBoxWithShadow.height() / i3;
            float f4 = f3;
            for (int i5 = 1; i5 < i3; i5++) {
                f4 += fHeight;
                canvas3.drawLine(0.0f, f4, iMax2, f4, paint);
            }
            try {
                Drawable fullResIcon = this.mIconCache.getFullResIcon(info.provider.getPackageName(), info.icon);
                if (fullResIcon != null) {
                    int iMin2 = (int) Math.min(launcher.getDeviceProfile().iconSizePx * f, Math.min(rectFDrawBoxWithShadow.width(), rectFDrawBoxWithShadow.height()));
                    Drawable drawableMutateOnMainThread2 = mutateOnMainThread(fullResIcon);
                    int i6 = (iMax2 - iMin2) / 2;
                    int i7 = (iMax - iMin2) / 2;
                    drawableMutateOnMainThread2.setBounds(i6, i7, i6 + iMin2, iMin2 + i7);
                    canvas = canvas3;
                    try {
                        drawableMutateOnMainThread2.draw(canvas);
                    } catch (Resources.NotFoundException unused) {
                        bitmap = null;
                        z = false;
                    }
                } else {
                    canvas = canvas3;
                }
                z = z3;
                bitmap = null;
            } catch (Resources.NotFoundException unused2) {
                canvas = canvas3;
            }
            canvas.setBitmap(bitmap);
            z3 = z;
        }
        return new Pair<>(bitmapCreateBitmap, Boolean.valueOf(z3));
    }

    private RectF drawBoxWithShadow(Canvas c, int width, int height) {
        Resources resources = this.mContext.getResources();
        ShadowGenerator.Builder builder = new ShadowGenerator.Builder(-1);
        builder.shadowBlur = resources.getDimension(R.dimen.widget_preview_shadow_blur);
        builder.radius = resources.getDimension(R.dimen.widget_preview_corner_radius);
        builder.keyShadowDistance = resources.getDimension(R.dimen.widget_preview_key_shadow_distance);
        builder.bounds.set(builder.shadowBlur, builder.shadowBlur, width - builder.shadowBlur, (height - builder.shadowBlur) - builder.keyShadowDistance);
        builder.drawShadow(c);
        return builder.bounds;
    }

    private Bitmap generateShortcutPreview(BaseActivity launcher, ShortcutConfigActivityInfo info, int maxWidth, int maxHeight, Bitmap preview) {
        int i = launcher.getDeviceProfile().allAppsIconSizePx;
        int dimensionPixelSize = launcher.getResources().getDimensionPixelSize(R.dimen.widget_preview_shortcut_padding);
        int i2 = (dimensionPixelSize * 2) + i;
        if (maxHeight < i2 || maxWidth < i2) {
            throw new RuntimeException("Max size is too small for preview");
        }
        Canvas canvas = new Canvas();
        if (preview == null || preview.getWidth() < i2 || preview.getHeight() < i2) {
            preview = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
            canvas.setBitmap(preview);
        } else {
            if (preview.getWidth() > i2 || preview.getHeight() > i2) {
                preview.reconfigure(i2, i2, preview.getConfig());
            }
            canvas.setBitmap(preview);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        RectF rectFDrawBoxWithShadow = drawBoxWithShadow(canvas, i2, i2);
        LauncherIcons launcherIconsObtain = LauncherIcons.obtain(this.mContext);
        Bitmap bitmap = launcherIconsObtain.createBadgedIconBitmap(mutateOnMainThread(info.getFullResIcon(this.mIconCache)), Process.myUserHandle(), 0).icon;
        launcherIconsObtain.recycle();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        float f = i;
        rectFDrawBoxWithShadow.set(0.0f, 0.0f, f, f);
        float f2 = dimensionPixelSize;
        rectFDrawBoxWithShadow.offset(f2, f2);
        canvas.drawBitmap(bitmap, rect, rectFDrawBoxWithShadow, new Paint(3));
        canvas.setBitmap(null);
        return preview;
    }

    private Drawable mutateOnMainThread(final Drawable drawable) {
        try {
            LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
            Objects.requireNonNull(drawable);
            return (Drawable) looperExecutor.submit(new Callable() { // from class: com.android.launcher3.WidgetPreviewLoader$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return drawable.mutate();
                }
            }).get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new RuntimeException(e);
        } catch (ExecutionException e2) {
            throw new RuntimeException(e2);
        }
    }

    long[] getPackageVersion(String packageName) {
        long[] jArr;
        synchronized (this.mPackageVersions) {
            jArr = this.mPackageVersions.get(packageName);
            if (jArr == null) {
                jArr = new long[2];
                try {
                    PackageInfo packageInfo = this.mContext.getPackageManager().getPackageInfo(packageName, 8192);
                    jArr[0] = packageInfo.versionCode;
                    jArr[1] = packageInfo.lastUpdateTime;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e(TAG, "PackageInfo not found", e);
                }
                this.mPackageVersions.put(packageName, jArr);
            }
        }
        return jArr;
    }

    public class PreviewLoadTask extends AsyncTask<Void, Void, Bitmap> implements CancellationSignal.OnCancelListener {
        private final BaseActivity mActivity;
        Bitmap mBitmapToRecycle;
        private final WidgetCell mCaller;
        private final WidgetItem mInfo;
        final WidgetCacheKey mKey;
        private final int mPreviewHeight;
        private final int mPreviewWidth;
        private boolean mSaveToDB = false;
        long[] mVersions;

        PreviewLoadTask(WidgetCacheKey key, WidgetItem info, int previewWidth, int previewHeight, WidgetCell caller) {
            this.mKey = key;
            this.mInfo = info;
            this.mPreviewHeight = previewHeight;
            this.mPreviewWidth = previewWidth;
            this.mCaller = caller;
            this.mActivity = BaseActivity.fromContext(caller.getContext());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(Void... params) throws Throwable {
            Bitmap bitmapCreateBitmap;
            if (isCancelled()) {
                return null;
            }
            synchronized (WidgetPreviewLoader.this.mUnusedBitmaps) {
                Iterator<Bitmap> it = WidgetPreviewLoader.this.mUnusedBitmaps.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        bitmapCreateBitmap = null;
                        break;
                    }
                    bitmapCreateBitmap = it.next();
                    if (bitmapCreateBitmap != null && bitmapCreateBitmap.isMutable() && bitmapCreateBitmap.getWidth() == this.mPreviewWidth && bitmapCreateBitmap.getHeight() == this.mPreviewHeight) {
                        WidgetPreviewLoader.this.mUnusedBitmaps.remove(bitmapCreateBitmap);
                        break;
                    }
                }
            }
            if (bitmapCreateBitmap == null) {
                bitmapCreateBitmap = Bitmap.createBitmap(this.mPreviewWidth, this.mPreviewHeight, Bitmap.Config.ARGB_8888);
            }
            Bitmap bitmap = bitmapCreateBitmap;
            if (isCancelled()) {
                return bitmap;
            }
            Bitmap fromDb = WidgetPreviewLoader.this.readFromDb(this.mKey, bitmap, this);
            if (isCancelled() || fromDb != null) {
                return fromDb;
            }
            this.mVersions = (this.mInfo.activityInfo == null || this.mInfo.activityInfo.isPersistable()) ? WidgetPreviewLoader.this.getPackageVersion(this.mKey.componentName.getPackageName()) : null;
            Pair pairGeneratePreview = WidgetPreviewLoader.this.generatePreview(this.mActivity, this.mInfo, bitmap, this.mPreviewWidth, this.mPreviewHeight);
            Bitmap bitmap2 = (Bitmap) pairGeneratePreview.first;
            this.mSaveToDB = ((Boolean) pairGeneratePreview.second).booleanValue();
            return bitmap2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(final Bitmap preview) {
            this.mCaller.applyPreview(preview);
            if (this.mVersions != null) {
                Executors.MODEL_EXECUTOR.post(new Runnable() { // from class: com.android.launcher3.WidgetPreviewLoader.PreviewLoadTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!PreviewLoadTask.this.isCancelled() && PreviewLoadTask.this.mSaveToDB) {
                            WidgetPreviewLoader.this.writeToDb(PreviewLoadTask.this.mKey, PreviewLoadTask.this.mVersions, preview);
                            PreviewLoadTask.this.mBitmapToRecycle = preview;
                        } else {
                            synchronized (WidgetPreviewLoader.this.mUnusedBitmaps) {
                                WidgetPreviewLoader.this.mUnusedBitmaps.add(preview);
                            }
                        }
                    }
                });
            } else {
                this.mBitmapToRecycle = preview;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onCancelled(final Bitmap preview) {
            if (preview != null) {
                Executors.MODEL_EXECUTOR.post(new Runnable() { // from class: com.android.launcher3.WidgetPreviewLoader.PreviewLoadTask.2
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (WidgetPreviewLoader.this.mUnusedBitmaps) {
                            WidgetPreviewLoader.this.mUnusedBitmaps.add(preview);
                        }
                    }
                });
            }
        }

        @Override // android.os.CancellationSignal.OnCancelListener
        public void onCancel() {
            cancel(true);
            if (this.mBitmapToRecycle != null) {
                Executors.MODEL_EXECUTOR.post(new Runnable() { // from class: com.android.launcher3.WidgetPreviewLoader.PreviewLoadTask.3
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (WidgetPreviewLoader.this.mUnusedBitmaps) {
                            WidgetPreviewLoader.this.mUnusedBitmaps.add(PreviewLoadTask.this.mBitmapToRecycle);
                        }
                        PreviewLoadTask.this.mBitmapToRecycle = null;
                    }
                });
            }
        }
    }

    private static final class WidgetCacheKey extends ComponentKey {
        final String size;

        public WidgetCacheKey(ComponentName componentName, UserHandle user, String size) {
            super(componentName, user);
            this.size = size;
        }

        @Override // com.android.launcher3.util.ComponentKey
        public int hashCode() {
            return this.size.hashCode() ^ super.hashCode();
        }

        @Override // com.android.launcher3.util.ComponentKey
        public boolean equals(Object o) {
            return super.equals(o) && ((WidgetCacheKey) o).size.equals(this.size);
        }
    }
}

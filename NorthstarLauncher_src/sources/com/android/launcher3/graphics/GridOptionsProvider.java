package com.android.launcher3.graphics;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.util.Log;
import android.util.Xml;
import androidx.core.app.NotificationCompat;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: GridOptionsProvider.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0004H\u0016J/\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00062\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000fH\u0016¢\u0006\u0002\u0010\u0010J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u001c\u0010\u0012\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u000e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0002JK\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u000b\u001a\u00020\f2\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000f2\b\u0010\r\u001a\u0004\u0018\u00010\u00062\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0002\u0010\u001eJ9\u0010\u001f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010 \u001a\u0004\u0018\u00010\u00142\b\u0010\r\u001a\u0004\u0018\u00010\u00062\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000fH\u0016¢\u0006\u0002\u0010!¨\u0006#"}, d2 = {"Lcom/android/launcher3/graphics/GridOptionsProvider;", "Landroid/content/ContentProvider;", "()V", NotificationCompat.CATEGORY_CALL, "Landroid/os/Bundle;", "method", "", "arg", "extras", "delete", "", "uri", "Landroid/net/Uri;", "selection", "selectionArgs", "", "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I", "getType", "insert", "initialValues", "Landroid/content/ContentValues;", "onCreate", "", "parseAllGridOptions", "", "Lcom/android/launcher3/InvariantDeviceProfile$GridOption;", "query", "Landroid/database/Cursor;", "projection", "sortOrder", "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "update", "values", "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class GridOptionsProvider extends ContentProvider {
    private static final String KEY_COLS = "cols";
    private static final String KEY_DEFAULT_GRID = "/default_grid";
    private static final String KEY_IS_DEFAULT = "is_default";
    private static final String KEY_LIST_OPTIONS = "/list_options";
    private static final String KEY_NAME = "name";
    private static final String KEY_PREVIEW_COUNT = "preview_count";
    private static final String KEY_ROWS = "rows";
    private static final String METHOD_GET_PREVIEW = "get_preview";
    private static final String TAG = "GridOptionsProvider";

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return "vnd.android.cursor.dir/launcher_grid";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues initialValues) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        if (!Intrinsics.areEqual(KEY_LIST_OPTIONS, uri.getPath())) {
            return null;
        }
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"name", KEY_ROWS, KEY_COLS, KEY_PREVIEW_COUNT, KEY_IS_DEFAULT});
        InvariantDeviceProfile invariantDeviceProfileM166x39265fe7 = InvariantDeviceProfile.INSTANCE.m166x39265fe7(getContext());
        for (InvariantDeviceProfile.GridOption gridOption : parseAllGridOptions()) {
            boolean z = true;
            MatrixCursor.RowBuilder rowBuilderAdd = matrixCursor.newRow().add("name", gridOption.name).add(KEY_ROWS, Integer.valueOf(gridOption.numRows)).add(KEY_COLS, Integer.valueOf(gridOption.numColumns)).add(KEY_PREVIEW_COUNT, 1);
            if (invariantDeviceProfileM166x39265fe7.numColumns != gridOption.numColumns || invariantDeviceProfileM166x39265fe7.numRows != gridOption.numRows) {
                z = false;
            }
            rowBuilderAdd.add(KEY_IS_DEFAULT, Boolean.valueOf(z));
        }
        return matrixCursor;
    }

    private final List<InvariantDeviceProfile.GridOption> parseAllGridOptions() throws Exception {
        ArrayList arrayList = new ArrayList();
        try {
            Context context = getContext();
            Intrinsics.checkNotNull(context);
            XmlResourceParser xml = context.getResources().getXml(R.xml.device_profiles);
            try {
                XmlResourceParser xmlResourceParser = xml;
                MLog.d(TAG, "parseAllGridOptions() called");
                int depth = xmlResourceParser.getDepth();
                while (true) {
                    int next = xmlResourceParser.next();
                    if ((next == 3 && xmlResourceParser.getDepth() <= depth) || next == 1) {
                        break;
                    }
                    if (next == 2 && Intrinsics.areEqual(InvariantDeviceProfile.GridOption.TAG_NAME, xmlResourceParser.getName())) {
                        arrayList.add(new InvariantDeviceProfile.GridOption(getContext(), Xml.asAttributeSet(xmlResourceParser)));
                    }
                }
                Unit unit = Unit.INSTANCE;
                AutoCloseableKt.closeFinally(xml, null);
                return arrayList;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    AutoCloseableKt.closeFinally(xml, th);
                    throw th2;
                }
            }
        } catch (IOException e) {
            Log.e(TAG, "Error parsing device profile", e);
            return CollectionsKt.emptyList();
        } catch (XmlPullParserException e2) {
            Log.e(TAG, "Error parsing device profile", e2);
            return CollectionsKt.emptyList();
        }
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        InvariantDeviceProfile.GridOption next;
        Intrinsics.checkNotNullParameter(uri, "uri");
        if (!Intrinsics.areEqual(KEY_DEFAULT_GRID, uri.getPath())) {
            return 0;
        }
        Intrinsics.checkNotNull(values);
        String asString = values.getAsString("name");
        Iterator<InvariantDeviceProfile.GridOption> it = parseAllGridOptions().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.areEqual(next.name, asString));
        if (next == null) {
            return 0;
        }
        InvariantDeviceProfile.INSTANCE.m166x39265fe7(getContext()).setCurrentGrid(getContext(), asString);
        return 1;
    }

    @Override // android.content.ContentProvider
    public Bundle call(String method, String arg, Bundle extras) {
        Intrinsics.checkNotNullParameter(method, "method");
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        if (context.checkPermission("android.permission.BIND_WALLPAPER", Binder.getCallingPid(), Binder.getCallingUid()) != 0) {
            return null;
        }
        Intrinsics.areEqual(METHOD_GET_PREVIEW, method);
        return null;
    }
}

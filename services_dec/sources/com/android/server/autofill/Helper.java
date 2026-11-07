package com.android.server.autofill;

import android.app.ActivityManager;
import android.app.assist.AssistStructure;
import android.app.slice.Slice;
import android.app.slice.SliceItem;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.graphics.drawable.Icon;
import android.metrics.LogMaker;
import android.net.Uri;
import android.service.autofill.Dataset;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import android.view.WindowManager;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import android.widget.RemoteViews;
import com.android.internal.util.ArrayUtils;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public final class Helper {
    private static final String TAG = "AutofillHelper";
    public static boolean sDebug = false;
    public static boolean sVerbose = false;
    public static Boolean sFullScreenMode = null;

    /* JADX INFO: Access modifiers changed from: private */
    interface ViewNodeFilter {
        boolean matches(AssistStructure.ViewNode viewNode);
    }

    private Helper() {
        throw new UnsupportedOperationException("contains static members only");
    }

    private static boolean checkRemoteViewUriPermissions(final int userId, RemoteViews rView) {
        final AtomicBoolean permissionsOk = new AtomicBoolean(true);
        rView.visitUris(new Consumer() { // from class: com.android.server.autofill.-$$Lambda$Helper$zDBmvPjLzGasBt9vikVUFLe2L2w
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Helper.lambda$checkRemoteViewUriPermissions$0(userId, permissionsOk, (Uri) obj);
            }
        });
        return permissionsOk.get();
    }

    static /* synthetic */ void lambda$checkRemoteViewUriPermissions$0(int userId, AtomicBoolean permissionsOk, Uri uri) {
        int uriOwnerId = ContentProvider.getUserIdFromUri(uri, userId);
        boolean allowed = uriOwnerId == userId;
        permissionsOk.set(allowed && permissionsOk.get());
    }

    public static RemoteViews sanitizeRemoteView(RemoteViews rView) {
        if (rView == null) {
            return null;
        }
        int userId = ActivityManager.getCurrentUser();
        boolean ok = checkRemoteViewUriPermissions(userId, rView);
        if (!ok) {
            Slog.w(TAG, "sanitizeRemoteView() user: " + userId + " tried accessing resource that does not belong to them");
        }
        if (ok) {
            return rView;
        }
        return null;
    }

    public static Slice sanitizeSlice(Slice slice) {
        if (slice == null) {
            return null;
        }
        int userId = ActivityManager.getCurrentUser();
        for (SliceItem sliceItem : slice.getItems()) {
            if (sliceItem.getFormat().equals("image")) {
                Icon icon = sliceItem.getIcon();
                if (icon.getType() == 4 || icon.getType() == 6) {
                    int iconUriId = ContentProvider.getUserIdFromUri(icon.getUri(), userId);
                    if (iconUriId != userId) {
                        Slog.w(TAG, "sanitizeSlice() user: " + userId + " cannot access icons in Slice");
                        return null;
                    }
                }
            }
        }
        return slice;
    }

    static AutofillId[] toArray(ArraySet<AutofillId> set) {
        if (set == null) {
            return null;
        }
        AutofillId[] array = new AutofillId[set.size()];
        for (int i = 0; i < set.size(); i++) {
            array[i] = set.valueAt(i);
        }
        return array;
    }

    public static String paramsToString(WindowManager.LayoutParams params) {
        StringBuilder builder = new StringBuilder(25);
        params.dumpDimensions(builder);
        return builder.toString();
    }

    static ArrayMap<AutofillId, AutofillValue> getFields(Dataset dataset) {
        ArrayList<AutofillId> ids = dataset.getFieldIds();
        ArrayList<AutofillValue> values = dataset.getFieldValues();
        int size = ids == null ? 0 : ids.size();
        ArrayMap<AutofillId, AutofillValue> fields = new ArrayMap<>(size);
        for (int i = 0; i < size; i++) {
            fields.put(ids.get(i), values.get(i));
        }
        return fields;
    }

    private static LogMaker newLogMaker(int category, String servicePackageName, int sessionId, boolean compatMode) {
        LogMaker log = new LogMaker(category).addTaggedData(908, servicePackageName).addTaggedData(1456, Integer.toString(sessionId));
        if (compatMode) {
            log.addTaggedData(1414, 1);
        }
        return log;
    }

    public static LogMaker newLogMaker(int category, String packageName, String servicePackageName, int sessionId, boolean compatMode) {
        return newLogMaker(category, servicePackageName, sessionId, compatMode).setPackageName(packageName);
    }

    public static LogMaker newLogMaker(int category, ComponentName componentName, String servicePackageName, int sessionId, boolean compatMode) {
        return newLogMaker(category, servicePackageName, sessionId, compatMode).setComponentName(componentName);
    }

    public static void printlnRedactedText(PrintWriter pw, CharSequence text) {
        if (text == null) {
            pw.println("null");
        } else {
            pw.print(text.length());
            pw.println("_chars");
        }
    }

    public static AssistStructure.ViewNode findViewNodeByAutofillId(AssistStructure structure, final AutofillId autofillId) {
        return findViewNode(structure, new ViewNodeFilter() { // from class: com.android.server.autofill.-$$Lambda$Helper$TtUBZMPAXGDYC1ENP1syYgevKoI
            @Override // com.android.server.autofill.Helper.ViewNodeFilter
            public final boolean matches(AssistStructure.ViewNode viewNode) {
                return autofillId.equals(viewNode.getAutofillId());
            }
        });
    }

    private static AssistStructure.ViewNode findViewNode(AssistStructure structure, ViewNodeFilter filter) {
        ArrayDeque<AssistStructure.ViewNode> nodesToProcess = new ArrayDeque<>();
        int numWindowNodes = structure.getWindowNodeCount();
        for (int i = 0; i < numWindowNodes; i++) {
            nodesToProcess.add(structure.getWindowNodeAt(i).getRootViewNode());
        }
        while (!nodesToProcess.isEmpty()) {
            AssistStructure.ViewNode node = nodesToProcess.removeFirst();
            if (filter.matches(node)) {
                return node;
            }
            for (int i2 = 0; i2 < node.getChildCount(); i2++) {
                nodesToProcess.addLast(node.getChildAt(i2));
            }
        }
        return null;
    }

    public static AssistStructure.ViewNode sanitizeUrlBar(AssistStructure structure, final String[] urlBarIds) {
        AssistStructure.ViewNode urlBarNode = findViewNode(structure, new ViewNodeFilter() { // from class: com.android.server.autofill.-$$Lambda$Helper$FGAc-Ln_zXTuSRQJQsEAo7BaPLQ
            @Override // com.android.server.autofill.Helper.ViewNodeFilter
            public final boolean matches(AssistStructure.ViewNode viewNode) {
                return ArrayUtils.contains(urlBarIds, viewNode.getIdEntry());
            }
        });
        if (urlBarNode != null) {
            String domain = urlBarNode.getText().toString();
            if (domain.isEmpty()) {
                if (sDebug) {
                    Slog.d(TAG, "sanitizeUrlBar(): empty on " + urlBarNode.getIdEntry());
                    return null;
                }
                return null;
            }
            urlBarNode.setWebDomain(domain);
            if (sDebug) {
                Slog.d(TAG, "sanitizeUrlBar(): id=" + urlBarNode.getIdEntry() + ", domain=" + urlBarNode.getWebDomain());
            }
        }
        return urlBarNode;
    }

    static int getNumericValue(LogMaker log, int tag) {
        Object value = log.getTaggedData(tag);
        if (!(value instanceof Number)) {
            return 0;
        }
        return ((Number) value).intValue();
    }

    static ArrayList<AutofillId> getAutofillIds(AssistStructure structure, boolean autofillableOnly) {
        ArrayList<AutofillId> ids = new ArrayList<>();
        int size = structure.getWindowNodeCount();
        for (int i = 0; i < size; i++) {
            AssistStructure.WindowNode node = structure.getWindowNodeAt(i);
            addAutofillableIds(node.getRootViewNode(), ids, autofillableOnly);
        }
        return ids;
    }

    private static void addAutofillableIds(AssistStructure.ViewNode node, ArrayList<AutofillId> ids, boolean autofillableOnly) {
        if (!autofillableOnly || node.getAutofillType() != 0) {
            ids.add(node.getAutofillId());
        }
        int size = node.getChildCount();
        for (int i = 0; i < size; i++) {
            AssistStructure.ViewNode child = node.getChildAt(i);
            addAutofillableIds(child, ids, autofillableOnly);
        }
    }
}

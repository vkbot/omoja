package com.android.launcher3.util;

import android.os.Looper;
import android.util.IntProperty;
import android.view.View;
import com.android.launcher3.Utilities;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: ViewEx.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u001a\u0006\u0010\u0004\u001a\u00020\u0005\"\u0016\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00018\u0006X\u0087\u0004¢\u0006\u0002\n\u0000\"\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u00018\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"PADDING_END", "Landroid/util/IntProperty;", "Landroid/view/View;", "PADDING_START", "checkMainThreadNoThrow", "", "NorthstarLauncher_northstarRelease"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ViewExKt {
    public static final IntProperty<View> PADDING_START = new IntProperty<View>() { // from class: com.android.launcher3.util.ViewExKt$PADDING_START$1
        @Override // android.util.IntProperty
        public void setValue(View view, int value) {
            Intrinsics.checkNotNullParameter(view, "view");
            view.setPaddingRelative(value, view.getPaddingTop(), view.getPaddingEnd(), view.getPaddingBottom());
        }

        @Override // android.util.Property
        public Integer get(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            return Integer.valueOf(view.getPaddingStart());
        }
    };
    public static final IntProperty<View> PADDING_END = new IntProperty<View>() { // from class: com.android.launcher3.util.ViewExKt$PADDING_END$1
        @Override // android.util.IntProperty
        public void setValue(View view, int value) {
            Intrinsics.checkNotNullParameter(view, "view");
            view.setPaddingRelative(view.getPaddingStart(), view.getPaddingTop(), value, view.getPaddingBottom());
        }

        @Override // android.util.Property
        public Integer get(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            return Integer.valueOf(view.getPaddingEnd());
        }
    };

    public static final void checkMainThreadNoThrow() {
        if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            return;
        }
        MLog.w("View", "Only the original thread that created a view hierarchy can touch its views. " + Utilities.getStackTraceSingleLine(new Throwable()));
    }
}

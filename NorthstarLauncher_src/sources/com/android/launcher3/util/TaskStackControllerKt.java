package com.android.launcher3.util;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TaskStackController.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"taskStackController", "Lcom/android/launcher3/util/TaskStackController;", "Landroid/content/Context;", "getTaskStackController", "(Landroid/content/Context;)Lcom/android/launcher3/util/TaskStackController;", "NorthstarLauncher_northstarRelease"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class TaskStackControllerKt {
    public static final TaskStackController getTaskStackController(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return TaskStackController.INSTANCE.getInstance(context);
    }
}

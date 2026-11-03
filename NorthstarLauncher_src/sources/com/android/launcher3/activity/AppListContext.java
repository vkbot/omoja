package com.android.launcher3.activity;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.Log;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppListContext.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, d2 = {"Lcom/android/launcher3/activity/AppListContext;", "", "changeTab", "", "tab", "", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface AppListContext {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    boolean changeTab(int tab);

    /* JADX INFO: compiled from: AppListContext.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/android/launcher3/activity/AppListContext$Companion;", "", "()V", "lookupContext", "Lcom/android/launcher3/activity/AppListContext;", "context", "Landroid/content/Context;", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final AppListContext lookupContext(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (context instanceof AppListContext) {
                return (AppListContext) context;
            }
            if (!(context instanceof ContextWrapper)) {
                Log.e("ActivityListContext", "Cannot find ActivityListContext in parent tree. " + ExceptionsKt.stackTraceToString(new Throwable()));
                return null;
            }
            Context baseContext = ((ContextWrapper) context).getBaseContext();
            Intrinsics.checkNotNullExpressionValue(baseContext, "context.baseContext");
            return lookupContext(baseContext);
        }
    }
}

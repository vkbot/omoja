package com.android.server.appop;

import com.android.internal.util.function.TriConsumer;

/* JADX INFO: renamed from: com.android.server.appop.-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw implements TriConsumer {
    public static final /* synthetic */ $$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw INSTANCE = new $$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw();

    private /* synthetic */ $$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw() {
    }

    public final void accept(Object obj, Object obj2, Object obj3) {
        ((AppOpsService) obj).notifyWatchersOfChange(((Integer) obj2).intValue(), ((Integer) obj3).intValue());
    }
}

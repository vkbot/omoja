package com.android.server.appop;

import com.android.internal.util.function.QuintConsumer;

/* JADX INFO: renamed from: com.android.server.appop.-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs implements QuintConsumer {
    public static final /* synthetic */ $$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs INSTANCE = new $$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs();

    private /* synthetic */ $$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs() {
    }

    public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        ((AppOpsService) obj).notifyOpChanged((AppOpsService.ModeCallback) obj2, ((Integer) obj3).intValue(), ((Integer) obj4).intValue(), (String) obj5);
    }
}

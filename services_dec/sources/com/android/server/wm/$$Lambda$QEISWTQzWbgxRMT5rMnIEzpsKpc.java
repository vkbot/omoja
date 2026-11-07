package com.android.server.wm;

import java.util.function.BiPredicate;

/* JADX INFO: renamed from: com.android.server.wm.-$$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc implements BiPredicate {
    public static final /* synthetic */ $$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc INSTANCE = new $$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc();

    private /* synthetic */ $$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc() {
    }

    @Override // java.util.function.BiPredicate
    public final boolean test(Object obj, Object obj2) {
        return ((ActivityRecord) obj).isUid(((Integer) obj2).intValue());
    }
}

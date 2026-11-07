package com.android.server.wm;

import java.util.function.Predicate;

/* JADX INFO: renamed from: com.android.server.wm.-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$DaFwIyqZTBVKE2yTN2iE7CDr8 implements Predicate {
    public static final /* synthetic */ $$Lambda$DaFwIyqZTBVKE2yTN2iE7CDr8 INSTANCE = new $$Lambda$DaFwIyqZTBVKE2yTN2iE7CDr8();

    private /* synthetic */ $$Lambda$DaFwIyqZTBVKE2yTN2iE7CDr8() {
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return ((ActivityRecord) obj).canBeTopRunning();
    }
}

package com.android.server.wm;

import com.android.internal.util.ToBooleanFunction;

/* JADX INFO: renamed from: com.android.server.wm.-$$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho implements ToBooleanFunction {
    public static final /* synthetic */ $$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho INSTANCE = new $$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho();

    private /* synthetic */ $$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho() {
    }

    public final boolean apply(Object obj) {
        return ((WindowState) obj).waitingForReplacement();
    }
}

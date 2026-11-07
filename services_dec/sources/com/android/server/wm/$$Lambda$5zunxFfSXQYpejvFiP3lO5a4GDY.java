package com.android.server.wm;

import java.util.function.BiPredicate;

/* JADX INFO: renamed from: com.android.server.wm.-$$Lambda$5zunxFfSXQYpejvFiP3lO5a4GDY, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$5zunxFfSXQYpejvFiP3lO5a4GDY implements BiPredicate {
    public static final /* synthetic */ $$Lambda$5zunxFfSXQYpejvFiP3lO5a4GDY INSTANCE = new $$Lambda$5zunxFfSXQYpejvFiP3lO5a4GDY();

    private /* synthetic */ $$Lambda$5zunxFfSXQYpejvFiP3lO5a4GDY() {
    }

    @Override // java.util.function.BiPredicate
    public final boolean test(Object obj, Object obj2) {
        return ((Task) obj).isTaskId(((Integer) obj2).intValue());
    }
}

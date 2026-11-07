package com.android.server.people.data;

import java.util.function.Predicate;

/* JADX INFO: renamed from: com.android.server.people.data.-$$Lambda$UserData$TPSEt8UEq8YfkquaYQxcUwkYOog, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$UserData$TPSEt8UEq8YfkquaYQxcUwkYOog implements Predicate {
    public final /* synthetic */ UserData f$0;

    public /* synthetic */ $$Lambda$UserData$TPSEt8UEq8YfkquaYQxcUwkYOog(UserData userData) {
        this.f$0 = userData;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return this.f$0.isDefaultDialer((String) obj);
    }
}

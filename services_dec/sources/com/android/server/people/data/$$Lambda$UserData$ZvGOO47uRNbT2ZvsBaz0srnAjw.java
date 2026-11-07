package com.android.server.people.data;

import java.util.function.Predicate;

/* JADX INFO: renamed from: com.android.server.people.data.-$$Lambda$UserData$ZvGOO47u-RNbT2ZvsBaz0srnAjw, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$UserData$ZvGOO47uRNbT2ZvsBaz0srnAjw implements Predicate {
    public final /* synthetic */ UserData f$0;

    public /* synthetic */ $$Lambda$UserData$ZvGOO47uRNbT2ZvsBaz0srnAjw(UserData userData) {
        this.f$0 = userData;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return this.f$0.isDefaultSmsApp((String) obj);
    }
}

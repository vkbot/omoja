package com.android.server.notification;

/* JADX INFO: loaded from: classes.dex */
public interface RankingHandler {
    void requestReconsideration(RankingReconsideration rankingReconsideration);

    void requestSort();
}

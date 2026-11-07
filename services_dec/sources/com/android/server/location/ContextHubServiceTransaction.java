package com.android.server.location;

import android.hardware.location.ContextHubTransaction;
import android.hardware.location.NanoAppState;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
abstract class ContextHubServiceTransaction {
    private boolean mIsComplete = false;
    private final int mTransactionId;
    private final int mTransactionType;

    abstract int onTransact();

    ContextHubServiceTransaction(int id, int type) {
        this.mTransactionId = id;
        this.mTransactionType = type;
    }

    void onTransactionComplete(int result) {
    }

    void onQueryResponse(int result, List<NanoAppState> nanoAppStateList) {
    }

    int getTransactionId() {
        return this.mTransactionId;
    }

    int getTransactionType() {
        return this.mTransactionType;
    }

    long getTimeout(TimeUnit unit) {
        if (this.mTransactionType == 0) {
            return unit.convert(30L, TimeUnit.SECONDS);
        }
        return unit.convert(5L, TimeUnit.SECONDS);
    }

    void setComplete() {
        this.mIsComplete = true;
    }

    boolean isComplete() {
        return this.mIsComplete;
    }

    public String toString() {
        return ContextHubTransaction.typeToString(this.mTransactionType, true) + " transaction (ID = " + this.mTransactionId + ")";
    }
}

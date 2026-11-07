package com.android.server.wm;

import android.util.ArrayMap;
import android.util.ArraySet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
class BLASTSyncEngine {
    private static final String TAG = "BLASTSyncEngine";
    private int mNextSyncId = 0;
    private final ArrayMap<Integer, SyncState> mPendingSyncs = new ArrayMap<>();

    interface TransactionReadyListener {
        void onTransactionReady(int i, Set<WindowContainer> set);
    }

    class SyncState implements TransactionReadyListener {
        TransactionReadyListener mListener;
        int mSyncId;
        boolean mReady = false;
        Set<WindowContainer> mWindowContainersReady = new ArraySet();
        int mRemainingTransactions = 0;

        private void tryFinish() {
            if (this.mRemainingTransactions == 0 && this.mReady) {
                this.mListener.onTransactionReady(this.mSyncId, this.mWindowContainersReady);
                BLASTSyncEngine.this.mPendingSyncs.remove(Integer.valueOf(this.mSyncId));
            }
        }

        @Override // com.android.server.wm.BLASTSyncEngine.TransactionReadyListener
        public void onTransactionReady(int mSyncId, Set<WindowContainer> windowContainersReady) {
            this.mRemainingTransactions--;
            this.mWindowContainersReady.addAll(windowContainersReady);
            tryFinish();
        }

        void setReady() {
            this.mReady = true;
            tryFinish();
        }

        boolean addToSync(WindowContainer wc) {
            if (wc.prepareForSync(this, this.mSyncId)) {
                this.mRemainingTransactions++;
                return true;
            }
            return false;
        }

        SyncState(TransactionReadyListener l, int id) {
            this.mListener = l;
            this.mSyncId = id;
        }
    }

    BLASTSyncEngine() {
    }

    int startSyncSet(TransactionReadyListener listener) {
        int id = this.mNextSyncId;
        this.mNextSyncId = id + 1;
        SyncState s = new SyncState(listener, id);
        this.mPendingSyncs.put(Integer.valueOf(id), s);
        return id;
    }

    boolean addToSyncSet(int id, WindowContainer wc) {
        SyncState st = this.mPendingSyncs.get(Integer.valueOf(id));
        return st.addToSync(wc);
    }

    void setReady(int id) {
        SyncState st = this.mPendingSyncs.get(Integer.valueOf(id));
        st.setReady();
    }
}

package com.android.server.net;

import android.content.Context;
import android.net.NetworkTemplate;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public class NetworkStatsSubscriptionsMonitor extends SubscriptionManager.OnSubscriptionsChangedListener {
    private final Delegate mDelegate;
    private final Executor mExecutor;
    private final CopyOnWriteArrayList<RatTypeListener> mRatListeners = new CopyOnWriteArrayList<>();
    private final SubscriptionManager mSubscriptionManager;
    private final TelephonyManager mTeleManager;

    public interface Delegate {
        void onCollapsedRatTypeChanged(String str, int i);
    }

    NetworkStatsSubscriptionsMonitor(Context context, Executor executor, Delegate delegate) {
        this.mSubscriptionManager = (SubscriptionManager) context.getSystemService("telephony_subscription_service");
        this.mTeleManager = (TelephonyManager) context.getSystemService("phone");
        this.mExecutor = executor;
        this.mDelegate = delegate;
    }

    @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
    public void onSubscriptionsChanged() {
        List<Integer> newSubs = getActiveSubIdList(this.mSubscriptionManager);
        Iterator<Integer> it = newSubs.iterator();
        while (it.hasNext()) {
            final int subId = it.next().intValue();
            RatTypeListener match = (RatTypeListener) CollectionUtils.find(this.mRatListeners, new Predicate() { // from class: com.android.server.net.-$$Lambda$NetworkStatsSubscriptionsMonitor$V7qNS8_XoZB89tD2CZEL-pj1GG4
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return NetworkStatsSubscriptionsMonitor.lambda$onSubscriptionsChanged$0(subId, (NetworkStatsSubscriptionsMonitor.RatTypeListener) obj);
                }
            });
            if (match == null) {
                String subscriberId = this.mTeleManager.getSubscriberId(subId);
                if (TextUtils.isEmpty(subscriberId)) {
                    Log.d("NetworkStats", "Empty subscriberId for newly added sub " + subId + ", skip listener registration");
                } else {
                    RatTypeListener listener = new RatTypeListener(this.mExecutor, this, subId, subscriberId);
                    this.mRatListeners.add(listener);
                    this.mTeleManager.createForSubscriptionId(subId).listen(listener, 1);
                    Log.d("NetworkStats", "RAT type listener registered for sub " + subId);
                }
            }
        }
        for (final RatTypeListener listener2 : new ArrayList(this.mRatListeners)) {
            Integer match2 = (Integer) CollectionUtils.find(newSubs, new Predicate() { // from class: com.android.server.net.-$$Lambda$NetworkStatsSubscriptionsMonitor$_OvXOdZsJGwkdVoLUZj596VRBFk
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return NetworkStatsSubscriptionsMonitor.lambda$onSubscriptionsChanged$1(listener2, (Integer) obj);
                }
            });
            if (match2 == null) {
                handleRemoveRatTypeListener(listener2);
            }
        }
    }

    static /* synthetic */ boolean lambda$onSubscriptionsChanged$0(int subId, RatTypeListener it) {
        return it.mSubId == subId;
    }

    static /* synthetic */ boolean lambda$onSubscriptionsChanged$1(RatTypeListener listener, Integer it) {
        return it.intValue() == listener.mSubId;
    }

    private List<Integer> getActiveSubIdList(SubscriptionManager subscriptionManager) {
        ArrayList<Integer> ret = new ArrayList<>();
        int[] ids = subscriptionManager.getCompleteActiveSubscriptionIdList();
        for (int id : ids) {
            ret.add(Integer.valueOf(id));
        }
        return ret;
    }

    public int getRatTypeForSubscriberId(final String subscriberId) {
        RatTypeListener match = (RatTypeListener) CollectionUtils.find(this.mRatListeners, new Predicate() { // from class: com.android.server.net.-$$Lambda$NetworkStatsSubscriptionsMonitor$XcvCOD6rw0Op9pcr-gV3AsYF2rs
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return TextUtils.equals(subscriberId, ((NetworkStatsSubscriptionsMonitor.RatTypeListener) obj).mSubscriberId);
            }
        });
        if (match != null) {
            return match.mLastCollapsedRatType;
        }
        return 0;
    }

    public void start() {
        this.mSubscriptionManager.addOnSubscriptionsChangedListener(this.mExecutor, this);
    }

    public void stop() {
        this.mSubscriptionManager.removeOnSubscriptionsChangedListener(this);
        for (RatTypeListener listener : new ArrayList(this.mRatListeners)) {
            handleRemoveRatTypeListener(listener);
        }
    }

    private void handleRemoveRatTypeListener(RatTypeListener listener) {
        this.mTeleManager.createForSubscriptionId(listener.mSubId).listen(listener, 0);
        Log.d("NetworkStats", "RAT type listener unregistered for sub " + listener.mSubId);
        this.mRatListeners.remove(listener);
        this.mDelegate.onCollapsedRatTypeChanged(listener.mSubscriberId, 0);
    }

    static class RatTypeListener extends PhoneStateListener {
        private volatile int mLastCollapsedRatType;
        private final NetworkStatsSubscriptionsMonitor mMonitor;
        private final int mSubId;
        private final String mSubscriberId;

        RatTypeListener(Executor executor, NetworkStatsSubscriptionsMonitor monitor, int subId, String subscriberId) {
            super(executor);
            this.mLastCollapsedRatType = 0;
            this.mSubId = subId;
            this.mSubscriberId = subscriberId;
            this.mMonitor = monitor;
        }

        @Override // android.telephony.PhoneStateListener
        public void onServiceStateChanged(ServiceState ss) {
            boolean is5GNsa = (ss.getDataNetworkType() == 13 || ss.getDataNetworkType() == 19) && ss.getNrState() == 3;
            int networkType = is5GNsa ? -2 : ss.getDataNetworkType();
            int collapsedRatType = NetworkTemplate.getCollapsedRatType(networkType);
            if (collapsedRatType == this.mLastCollapsedRatType) {
                return;
            }
            if (NetworkStatsService.LOGD) {
                Log.d("NetworkStats", "subtype changed for sub(" + this.mSubId + "): " + this.mLastCollapsedRatType + " -> " + collapsedRatType);
            }
            this.mLastCollapsedRatType = collapsedRatType;
            this.mMonitor.mDelegate.onCollapsedRatTypeChanged(this.mSubscriberId, this.mLastCollapsedRatType);
        }

        public int getSubId() {
            return this.mSubId;
        }
    }
}

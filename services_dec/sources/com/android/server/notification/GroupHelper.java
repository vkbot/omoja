package com.android.server.notification;

import android.service.notification.StatusBarNotification;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.Slog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class GroupHelper {
    protected static final String AUTOGROUP_KEY = "ranker_group";
    private final int mAutoGroupAtCount;
    private final Callback mCallback;
    final ArrayMap<String, ArraySet<String>> mOngoingGroupCount = new ArrayMap<>();
    Map<Integer, Map<String, LinkedHashSet<String>>> mUngroupedNotifications = new HashMap();
    private static final String TAG = "GroupHelper";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);

    protected interface Callback {
        void addAutoGroup(String str);

        void addAutoGroupSummary(int i, String str, String str2);

        void removeAutoGroup(String str);

        void removeAutoGroupSummary(int i, String str);

        void updateAutogroupSummary(String str, boolean z);
    }

    public GroupHelper(int autoGroupAtCount, Callback callback) {
        this.mAutoGroupAtCount = autoGroupAtCount;
        this.mCallback = callback;
    }

    private String generatePackageGroupKey(int userId, String pkg, String group) {
        return userId + "|" + pkg + "|" + group;
    }

    protected int getOngoingGroupCount(int userId, String pkg, String group) {
        String key = generatePackageGroupKey(userId, pkg, group);
        return this.mOngoingGroupCount.getOrDefault(key, new ArraySet<>(0)).size();
    }

    private void addToOngoingGroupCount(StatusBarNotification sbn, boolean add) {
        String group;
        if (sbn.getNotification().isGroupSummary()) {
            return;
        }
        if ((sbn.isOngoing() || !add) && (group = sbn.getGroup()) != null) {
            int userId = sbn.getUser().getIdentifier();
            String key = generatePackageGroupKey(userId, sbn.getPackageName(), group);
            ArraySet<String> notifications = this.mOngoingGroupCount.getOrDefault(key, new ArraySet<>(0));
            if (add) {
                notifications.add(sbn.getKey());
                this.mOngoingGroupCount.put(key, notifications);
            } else {
                notifications.remove(sbn.getKey());
            }
            generatePackageGroupKey(userId, sbn.getPackageName(), group);
            boolean needsOngoingFlag = notifications.size() > 0;
            this.mCallback.updateAutogroupSummary(sbn.getKey(), needsOngoingFlag);
        }
    }

    public void onNotificationUpdated(StatusBarNotification childSbn, boolean autogroupSummaryExists) {
        if (childSbn.getGroup() != AUTOGROUP_KEY || childSbn.getNotification().isGroupSummary()) {
            return;
        }
        if (childSbn.isOngoing()) {
            addToOngoingGroupCount(childSbn, true);
        } else {
            addToOngoingGroupCount(childSbn, false);
        }
    }

    public void onNotificationPosted(StatusBarNotification sbn, boolean autogroupSummaryExists) {
        if (DEBUG) {
            Log.i(TAG, "POSTED " + sbn.getKey());
        }
        try {
            List<String> notificationsToGroup = new ArrayList<>();
            if (autogroupSummaryExists) {
                addToOngoingGroupCount(sbn, true);
            }
            if (!sbn.isAppGroup()) {
                synchronized (this.mUngroupedNotifications) {
                    Map<String, LinkedHashSet<String>> ungroupedNotificationsByUser = this.mUngroupedNotifications.get(Integer.valueOf(sbn.getUserId()));
                    if (ungroupedNotificationsByUser == null) {
                        ungroupedNotificationsByUser = new HashMap();
                    }
                    this.mUngroupedNotifications.put(Integer.valueOf(sbn.getUserId()), ungroupedNotificationsByUser);
                    LinkedHashSet<String> notificationsForPackage = ungroupedNotificationsByUser.get(sbn.getPackageName());
                    if (notificationsForPackage == null) {
                        notificationsForPackage = new LinkedHashSet<>();
                    }
                    notificationsForPackage.add(sbn.getKey());
                    ungroupedNotificationsByUser.put(sbn.getPackageName(), notificationsForPackage);
                    if (notificationsForPackage.size() >= this.mAutoGroupAtCount || autogroupSummaryExists) {
                        notificationsToGroup.addAll(notificationsForPackage);
                    }
                }
                if (notificationsToGroup.size() > 0) {
                    adjustAutogroupingSummary(sbn.getUserId(), sbn.getPackageName(), notificationsToGroup.get(0), true);
                    adjustNotificationBundling(notificationsToGroup, true);
                    return;
                }
                return;
            }
            maybeUngroup(sbn, false, sbn.getUserId());
        } catch (Exception e) {
            Slog.e(TAG, "Failure processing new notification", e);
        }
    }

    public void onNotificationRemoved(StatusBarNotification sbn) {
        try {
            addToOngoingGroupCount(sbn, false);
            maybeUngroup(sbn, true, sbn.getUserId());
        } catch (Exception e) {
            Slog.e(TAG, "Error processing canceled notification", e);
        }
    }

    private void maybeUngroup(StatusBarNotification sbn, boolean notificationGone, int userId) {
        List<String> notificationsToUnAutogroup = new ArrayList<>();
        boolean removeSummary = false;
        synchronized (this.mUngroupedNotifications) {
            Map<String, LinkedHashSet<String>> ungroupedNotificationsByUser = this.mUngroupedNotifications.get(Integer.valueOf(sbn.getUserId()));
            if (ungroupedNotificationsByUser != null && ungroupedNotificationsByUser.size() != 0) {
                LinkedHashSet<String> notificationsForPackage = ungroupedNotificationsByUser.get(sbn.getPackageName());
                if (notificationsForPackage != null && notificationsForPackage.size() != 0) {
                    if (notificationsForPackage.remove(sbn.getKey()) && !notificationGone) {
                        notificationsToUnAutogroup.add(sbn.getKey());
                    }
                    if (notificationsForPackage.size() == 0) {
                        ungroupedNotificationsByUser.remove(sbn.getPackageName());
                        removeSummary = true;
                    }
                    if (removeSummary) {
                        adjustAutogroupingSummary(userId, sbn.getPackageName(), null, false);
                    }
                    if (notificationsToUnAutogroup.size() > 0) {
                        adjustNotificationBundling(notificationsToUnAutogroup, false);
                    }
                }
            }
        }
    }

    private void adjustAutogroupingSummary(int userId, String packageName, String triggeringKey, boolean summaryNeeded) {
        if (summaryNeeded) {
            this.mCallback.addAutoGroupSummary(userId, packageName, triggeringKey);
        } else {
            this.mCallback.removeAutoGroupSummary(userId, packageName);
        }
    }

    private void adjustNotificationBundling(List<String> keys, boolean group) {
        for (String key : keys) {
            if (DEBUG) {
                Log.i(TAG, "Sending grouping adjustment for: " + key + " group? " + group);
            }
            if (group) {
                this.mCallback.addAutoGroup(key);
            } else {
                this.mCallback.removeAutoGroup(key);
            }
        }
    }
}

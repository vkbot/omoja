package com.android.server.notification;

import com.android.internal.logging.InstanceId;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.logging.UiEventLoggerImpl;
import com.android.internal.util.FrameworkStatsLog;

/* JADX INFO: loaded from: classes.dex */
public class NotificationRecordLoggerImpl implements NotificationRecordLogger {
    private UiEventLogger mUiEventLogger = new UiEventLoggerImpl();

    @Override // com.android.server.notification.NotificationRecordLogger
    public void maybeLogNotificationPosted(NotificationRecord r, NotificationRecord old, int position, int buzzBeepBlink, InstanceId groupId) {
        NotificationRecordLogger.NotificationRecordPair p = new NotificationRecordLogger.NotificationRecordPair(r, old);
        if (!p.shouldLogReported(buzzBeepBlink)) {
            return;
        }
        FrameworkStatsLog.write(244, NotificationRecordLogger.NotificationReportedEvent.fromRecordPair(p).getId(), r.getUid(), r.getSbn().getPackageName(), p.getInstanceId(), p.getNotificationIdHash(), p.getChannelIdHash(), p.getGroupIdHash(), groupId == null ? 0 : groupId.getId(), r.getSbn().getNotification().isGroupSummary(), r.getSbn().getNotification().category, p.getStyle(), p.getNumPeople(), position, NotificationRecordLogger.getLoggingImportance(r), buzzBeepBlink, r.getImportanceExplanationCode(), r.getInitialImportance(), r.getInitialImportanceExplanationCode(), r.getAssistantImportance(), p.getAssistantHash(), r.getRankingScore());
    }

    @Override // com.android.server.notification.NotificationRecordLogger
    public void log(UiEventLogger.UiEventEnum event, NotificationRecord r) {
        if (r == null) {
            return;
        }
        this.mUiEventLogger.logWithInstanceId(event, r.getUid(), r.getSbn().getPackageName(), r.getSbn().getInstanceId());
    }

    @Override // com.android.server.notification.NotificationRecordLogger
    public void log(UiEventLogger.UiEventEnum event) {
        this.mUiEventLogger.log(event);
    }
}

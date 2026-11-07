package com.android.server.notification;

import android.app.NotificationChannel;
import android.app.Person;
import android.hardware.audio.common.V2_0.AudioChannelMask;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.os.Bundle;
import com.android.internal.logging.InstanceId;
import com.android.internal.logging.UiEventLogger;
import com.android.server.hdmi.HdmiCecKeycode;
import com.android.server.vr.Vr2dDisplay;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public interface NotificationRecordLogger {
    void log(UiEventLogger.UiEventEnum uiEventEnum);

    void log(UiEventLogger.UiEventEnum uiEventEnum, NotificationRecord notificationRecord);

    void maybeLogNotificationPosted(NotificationRecord notificationRecord, NotificationRecord notificationRecord2, int i, int i2, InstanceId instanceId);

    default void logNotificationCancelled(NotificationRecord r, int reason, int dismissalSurface) {
        log(NotificationCancelledEvent.fromCancelReason(reason, dismissalSurface), r);
    }

    default void logNotificationVisibility(NotificationRecord r, boolean visible) {
        log(NotificationEvent.fromVisibility(visible), r);
    }

    public enum NotificationReportedEvent implements UiEventLogger.UiEventEnum {
        NOTIFICATION_POSTED(CecMessageType.SET_EXTERNAL_TIMER),
        NOTIFICATION_UPDATED(CecMessageType.REPORT_SHORT_AUDIO_DESCRIPTOR);

        private final int mId;

        NotificationReportedEvent(int id) {
            this.mId = id;
        }

        public int getId() {
            return this.mId;
        }

        public static NotificationReportedEvent fromRecordPair(NotificationRecordPair p) {
            return p.old != null ? NOTIFICATION_UPDATED : NOTIFICATION_POSTED;
        }
    }

    public enum NotificationCancelledEvent implements UiEventLogger.UiEventEnum {
        INVALID(0),
        NOTIFICATION_CANCEL_CLICK(CecMessageType.REQUEST_SHORT_AUDIO_DESCRIPTOR),
        NOTIFICATION_CANCEL_USER_OTHER(165),
        NOTIFICATION_CANCEL_USER_CANCEL_ALL(166),
        NOTIFICATION_CANCEL_ERROR(167),
        NOTIFICATION_CANCEL_PACKAGE_CHANGED(168),
        NOTIFICATION_CANCEL_USER_STOPPED(169),
        NOTIFICATION_CANCEL_PACKAGE_BANNED(170),
        NOTIFICATION_CANCEL_APP_CANCEL(171),
        NOTIFICATION_CANCEL_APP_CANCEL_ALL(172),
        NOTIFICATION_CANCEL_LISTENER_CANCEL(173),
        NOTIFICATION_CANCEL_LISTENER_CANCEL_ALL(174),
        NOTIFICATION_CANCEL_GROUP_SUMMARY_CANCELED(175),
        NOTIFICATION_CANCEL_GROUP_OPTIMIZATION(176),
        NOTIFICATION_CANCEL_PACKAGE_SUSPENDED(HdmiCecKeycode.UI_SOUND_PRESENTATION_BASS_STEP_PLUS),
        NOTIFICATION_CANCEL_PROFILE_TURNED_OFF(HdmiCecKeycode.UI_SOUND_PRESENTATION_BASS_NEUTRAL),
        NOTIFICATION_CANCEL_UNAUTOBUNDLED(HdmiCecKeycode.UI_SOUND_PRESENTATION_BASS_STEP_MINUS),
        NOTIFICATION_CANCEL_CHANNEL_BANNED(180),
        NOTIFICATION_CANCEL_SNOOZED(181),
        NOTIFICATION_CANCEL_TIMEOUT(182),
        NOTIFICATION_CANCEL_USER_PEEK(190),
        NOTIFICATION_CANCEL_USER_AOD(191),
        NOTIFICATION_CANCEL_USER_SHADE(CecMessageType.INITIATE_ARC),
        NOTIFICATION_CANCEL_USER_LOCKSCREEN(193);

        private final int mId;

        NotificationCancelledEvent(int id) {
            this.mId = id;
        }

        public int getId() {
            return this.mId;
        }

        public static NotificationCancelledEvent fromCancelReason(int reason, int surface) {
            if (surface == -1) {
                if (NotificationManagerService.DBG) {
                    throw new IllegalArgumentException("Unexpected surface " + surface);
                }
                return INVALID;
            }
            if (surface == 0) {
                if (1 <= reason && reason <= 19) {
                    return values()[reason];
                }
                if (NotificationManagerService.DBG) {
                    throw new IllegalArgumentException("Unexpected cancel reason " + reason);
                }
                return INVALID;
            }
            if (reason != 2) {
                if (NotificationManagerService.DBG) {
                    throw new IllegalArgumentException("Unexpected cancel with surface " + reason);
                }
                return INVALID;
            }
            if (surface != 1) {
                if (surface == 2) {
                    return NOTIFICATION_CANCEL_USER_AOD;
                }
                if (surface == 3) {
                    return NOTIFICATION_CANCEL_USER_SHADE;
                }
                if (NotificationManagerService.DBG) {
                    throw new IllegalArgumentException("Unexpected surface for user-dismiss " + reason);
                }
                return INVALID;
            }
            return NOTIFICATION_CANCEL_USER_PEEK;
        }
    }

    public enum NotificationEvent implements UiEventLogger.UiEventEnum {
        NOTIFICATION_OPEN(CecMessageType.TERMINATE_ARC),
        NOTIFICATION_CLOSE(198),
        NOTIFICATION_SNOOZED(317),
        NOTIFICATION_NOT_POSTED_SNOOZED(AudioChannelMask.OUT_6POINT1),
        NOTIFICATION_CLICKED(Vr2dDisplay.DEFAULT_VIRTUAL_DISPLAY_DPI),
        NOTIFICATION_ACTION_CLICKED(321),
        NOTIFICATION_DETAIL_OPEN_SYSTEM(327),
        NOTIFICATION_DETAIL_CLOSE_SYSTEM(328),
        NOTIFICATION_DETAIL_OPEN_USER(329),
        NOTIFICATION_DETAIL_CLOSE_USER(330),
        NOTIFICATION_DIRECT_REPLIED(331),
        NOTIFICATION_SMART_REPLIED(332),
        NOTIFICATION_SMART_REPLY_VISIBLE(333),
        NOTIFICATION_ACTION_CLICKED_0(450),
        NOTIFICATION_ACTION_CLICKED_1(451),
        NOTIFICATION_ACTION_CLICKED_2(452),
        NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0(453),
        NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_1(454),
        NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_2(455),
        NOTIFICATION_ASSIST_ACTION_CLICKED_0(456),
        NOTIFICATION_ASSIST_ACTION_CLICKED_1(457),
        NOTIFICATION_ASSIST_ACTION_CLICKED_2(458);

        private final int mId;

        NotificationEvent(int id) {
            this.mId = id;
        }

        public int getId() {
            return this.mId;
        }

        public static NotificationEvent fromVisibility(boolean visible) {
            return visible ? NOTIFICATION_OPEN : NOTIFICATION_CLOSE;
        }

        public static NotificationEvent fromExpanded(boolean expanded, boolean userAction) {
            if (userAction) {
                return expanded ? NOTIFICATION_DETAIL_OPEN_USER : NOTIFICATION_DETAIL_CLOSE_USER;
            }
            return expanded ? NOTIFICATION_DETAIL_OPEN_SYSTEM : NOTIFICATION_DETAIL_CLOSE_SYSTEM;
        }

        public static NotificationEvent fromAction(int index, boolean isAssistant, boolean isContextual) {
            if (index < 0 || index > 2) {
                return NOTIFICATION_ACTION_CLICKED;
            }
            if (isAssistant) {
                return values()[NOTIFICATION_ASSIST_ACTION_CLICKED_0.ordinal() + index];
            }
            if (isContextual) {
                return values()[NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0.ordinal() + index];
            }
            return values()[NOTIFICATION_ACTION_CLICKED_0.ordinal() + index];
        }
    }

    public enum NotificationPanelEvent implements UiEventLogger.UiEventEnum {
        NOTIFICATION_PANEL_OPEN(325),
        NOTIFICATION_PANEL_CLOSE(326);

        private final int mId;

        NotificationPanelEvent(int id) {
            this.mId = id;
        }

        public int getId() {
            return this.mId;
        }
    }

    public static class NotificationRecordPair {
        public final NotificationRecord old;
        public final NotificationRecord r;

        NotificationRecordPair(NotificationRecord r, NotificationRecord old) {
            this.r = r;
            this.old = old;
        }

        boolean shouldLogReported(int buzzBeepBlink) {
            NotificationRecord notificationRecord = this.r;
            if (notificationRecord == null) {
                return false;
            }
            if (this.old == null || buzzBeepBlink > 0) {
                return true;
            }
            return (Objects.equals(notificationRecord.getSbn().getChannelIdLogTag(), this.old.getSbn().getChannelIdLogTag()) && Objects.equals(this.r.getSbn().getGroupLogTag(), this.old.getSbn().getGroupLogTag()) && this.r.getSbn().getNotification().isGroupSummary() == this.old.getSbn().getNotification().isGroupSummary() && Objects.equals(this.r.getSbn().getNotification().category, this.old.getSbn().getNotification().category) && this.r.getImportance() == this.old.getImportance() && NotificationRecordLogger.getLoggingImportance(this.r) == NotificationRecordLogger.getLoggingImportance(this.old)) ? false : true;
        }

        public int getStyle() {
            return getStyle(this.r.getSbn().getNotification().extras);
        }

        private int getStyle(Bundle extras) {
            String template;
            if (extras != null && (template = extras.getString("android.template")) != null && !template.isEmpty()) {
                return template.hashCode();
            }
            return 0;
        }

        int getNumPeople() {
            return getNumPeople(this.r.getSbn().getNotification().extras);
        }

        private int getNumPeople(Bundle extras) {
            ArrayList<Person> people;
            if (extras != null && (people = extras.getParcelableArrayList("android.people.list")) != null && !people.isEmpty()) {
                return people.size();
            }
            return 0;
        }

        int getAssistantHash() {
            String assistant = this.r.getAdjustmentIssuer();
            if (assistant == null) {
                return 0;
            }
            return assistant.hashCode();
        }

        int getInstanceId() {
            if (this.r.getSbn().getInstanceId() == null) {
                return 0;
            }
            return this.r.getSbn().getInstanceId().getId();
        }

        int getNotificationIdHash() {
            return SmallHash.hash(Objects.hashCode(this.r.getSbn().getTag()) ^ this.r.getSbn().getId());
        }

        int getChannelIdHash() {
            return SmallHash.hash(this.r.getSbn().getNotification().getChannelId());
        }

        int getGroupIdHash() {
            return SmallHash.hash(this.r.getSbn().getGroup());
        }
    }

    static int getLoggingImportance(NotificationRecord r) {
        int importance = r.getImportance();
        NotificationChannel channel = r.getChannel();
        if (channel == null) {
            return importance;
        }
        return NotificationChannelLogger.getLoggingImportance(channel, importance);
    }
}

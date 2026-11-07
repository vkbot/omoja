package com.android.server.usage;

import android.app.usage.ConfigurationStats;
import android.app.usage.UsageEvents;
import android.app.usage.UsageStats;
import android.content.res.Configuration;
import android.util.ArrayMap;
import android.util.Log;
import com.android.internal.util.XmlUtils;
import com.android.server.am.AssistDataRequester;
import com.android.server.pm.Settings;
import java.io.IOException;
import java.net.ProtocolException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
final class UsageStatsXmlV1 {
    private static final String ACTIVE_ATTR = "active";
    private static final String APP_LAUNCH_COUNT_ATTR = "appLaunchCount";
    private static final String CATEGORY_TAG = "category";
    private static final String CHOOSER_COUNT_TAG = "chosen_action";
    private static final String CLASS_ATTR = "class";
    private static final String CONFIGURATIONS_TAG = "configurations";
    private static final String CONFIG_TAG = "config";
    private static final String COUNT = "count";
    private static final String COUNT_ATTR = "count";
    private static final String END_TIME_ATTR = "endTime";
    private static final String EVENT_LOG_TAG = "event-log";
    private static final String EVENT_TAG = "event";
    private static final String FLAGS_ATTR = "flags";
    private static final String INSTANCE_ID_ATTR = "instanceId";
    private static final String INTERACTIVE_TAG = "interactive";
    private static final String KEYGUARD_HIDDEN_TAG = "keyguard-hidden";
    private static final String KEYGUARD_SHOWN_TAG = "keyguard-shown";
    private static final String LAST_EVENT_ATTR = "lastEvent";
    private static final String LAST_TIME_ACTIVE_ATTR = "lastTimeActive";
    private static final String LAST_TIME_SERVICE_USED_ATTR = "lastTimeServiceUsed";
    private static final String LAST_TIME_VISIBLE_ATTR = "lastTimeVisible";
    private static final String MAJOR_VERSION_ATTR = "majorVersion";
    private static final String MINOR_VERSION_ATTR = "minorVersion";
    private static final String NAME = "name";
    private static final String NON_INTERACTIVE_TAG = "non-interactive";
    private static final String NOTIFICATION_CHANNEL_ATTR = "notificationChannel";
    private static final String PACKAGES_TAG = "packages";
    private static final String PACKAGE_ATTR = "package";
    private static final String PACKAGE_TAG = "package";
    private static final String SHORTCUT_ID_ATTR = "shortcutId";
    private static final String STANDBY_BUCKET_ATTR = "standbyBucket";
    private static final String TAG = "UsageStatsXmlV1";
    private static final String TIME_ATTR = "time";
    private static final String TOTAL_TIME_ACTIVE_ATTR = "timeActive";
    private static final String TOTAL_TIME_SERVICE_USED_ATTR = "timeServiceUsed";
    private static final String TOTAL_TIME_VISIBLE_ATTR = "timeVisible";
    private static final String TYPE_ATTR = "type";

    private static void loadUsageStats(XmlPullParser parser, IntervalStats statsOut) throws XmlPullParserException, IOException {
        String pkg = parser.getAttributeValue(null, Settings.ATTR_PACKAGE);
        if (pkg == null) {
            throw new ProtocolException("no package attribute present");
        }
        UsageStats stats = statsOut.getOrCreateUsageStats(pkg);
        stats.mLastTimeUsed = statsOut.beginTime + XmlUtils.readLongAttribute(parser, LAST_TIME_ACTIVE_ATTR);
        try {
            stats.mLastTimeVisible = statsOut.beginTime + XmlUtils.readLongAttribute(parser, LAST_TIME_VISIBLE_ATTR);
        } catch (IOException e) {
            Log.i(TAG, "Failed to parse mLastTimeVisible");
        }
        try {
            stats.mLastTimeForegroundServiceUsed = statsOut.beginTime + XmlUtils.readLongAttribute(parser, LAST_TIME_SERVICE_USED_ATTR);
        } catch (IOException e2) {
            Log.i(TAG, "Failed to parse mLastTimeForegroundServiceUsed");
        }
        stats.mTotalTimeInForeground = XmlUtils.readLongAttribute(parser, TOTAL_TIME_ACTIVE_ATTR);
        try {
            stats.mTotalTimeVisible = XmlUtils.readLongAttribute(parser, TOTAL_TIME_VISIBLE_ATTR);
        } catch (IOException e3) {
            Log.i(TAG, "Failed to parse mTotalTimeVisible");
        }
        try {
            stats.mTotalTimeForegroundServiceUsed = XmlUtils.readLongAttribute(parser, TOTAL_TIME_SERVICE_USED_ATTR);
            while (true) {
                int eventCode = parser.next();
                if (eventCode != 1) {
                    String tag = parser.getName();
                    if (eventCode != 3 || !tag.equals(Settings.ATTR_PACKAGE)) {
                        if (eventCode == 2 && tag.equals(CHOOSER_COUNT_TAG)) {
                            String action = XmlUtils.readStringAttribute(parser, "name");
                            loadChooserCounts(parser, stats, action);
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
        } catch (IOException e4) {
            Log.i(TAG, "Failed to parse mTotalTimeForegroundServiceUsed");
        }
        stats.mLastEvent = XmlUtils.readIntAttribute(parser, LAST_EVENT_ATTR);
        stats.mAppLaunchCount = XmlUtils.readIntAttribute(parser, APP_LAUNCH_COUNT_ATTR, 0);
    }

    private static void loadCountAndTime(XmlPullParser parser, IntervalStats.EventTracker tracker) throws XmlPullParserException, IOException {
        tracker.count = XmlUtils.readIntAttribute(parser, AssistDataRequester.KEY_RECEIVER_EXTRA_COUNT, 0);
        tracker.duration = XmlUtils.readLongAttribute(parser, TIME_ATTR, 0L);
        XmlUtils.skipCurrentTag(parser);
    }

    private static void loadChooserCounts(XmlPullParser parser, UsageStats usageStats, String action) throws XmlPullParserException, IOException {
        if (action == null) {
            return;
        }
        if (usageStats.mChooserCounts == null) {
            usageStats.mChooserCounts = new ArrayMap();
        }
        if (!usageStats.mChooserCounts.containsKey(action)) {
            ArrayMap<String, Integer> counts = new ArrayMap<>();
            usageStats.mChooserCounts.put(action, counts);
        }
        while (true) {
            int eventCode = parser.next();
            if (eventCode != 1) {
                String tag = parser.getName();
                if (eventCode != 3 || !tag.equals(CHOOSER_COUNT_TAG)) {
                    if (eventCode == 2 && tag.equals(CATEGORY_TAG)) {
                        String category = XmlUtils.readStringAttribute(parser, "name");
                        int count = XmlUtils.readIntAttribute(parser, AssistDataRequester.KEY_RECEIVER_EXTRA_COUNT);
                        ((ArrayMap) usageStats.mChooserCounts.get(action)).put(category, Integer.valueOf(count));
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private static void loadConfigStats(XmlPullParser parser, IntervalStats statsOut) throws XmlPullParserException, IOException {
        Configuration config = new Configuration();
        Configuration.readXmlAttrs(parser, config);
        ConfigurationStats configStats = statsOut.getOrCreateConfigurationStats(config);
        configStats.mLastTimeActive = statsOut.beginTime + XmlUtils.readLongAttribute(parser, LAST_TIME_ACTIVE_ATTR);
        configStats.mTotalTimeActive = XmlUtils.readLongAttribute(parser, TOTAL_TIME_ACTIVE_ATTR);
        configStats.mActivationCount = XmlUtils.readIntAttribute(parser, AssistDataRequester.KEY_RECEIVER_EXTRA_COUNT);
        if (XmlUtils.readBooleanAttribute(parser, ACTIVE_ATTR)) {
            statsOut.activeConfiguration = configStats.mConfiguration;
        }
    }

    private static void loadEvent(XmlPullParser parser, IntervalStats statsOut) throws XmlPullParserException, IOException {
        String packageName = XmlUtils.readStringAttribute(parser, Settings.ATTR_PACKAGE);
        if (packageName == null) {
            throw new ProtocolException("no package attribute present");
        }
        String className = XmlUtils.readStringAttribute(parser, CLASS_ATTR);
        UsageEvents.Event event = statsOut.buildEvent(packageName, className);
        event.mFlags = XmlUtils.readIntAttribute(parser, FLAGS_ATTR, 0);
        event.mTimeStamp = statsOut.beginTime + XmlUtils.readLongAttribute(parser, TIME_ATTR);
        event.mEventType = XmlUtils.readIntAttribute(parser, "type");
        try {
            event.mInstanceId = XmlUtils.readIntAttribute(parser, INSTANCE_ID_ATTR);
        } catch (IOException e) {
            Log.i(TAG, "Failed to parse mInstanceId");
        }
        int i = event.mEventType;
        if (i != 5) {
            if (i == 8) {
                String id = XmlUtils.readStringAttribute(parser, SHORTCUT_ID_ATTR);
                event.mShortcutId = id != null ? id.intern() : null;
            } else if (i == 11) {
                event.mBucketAndReason = XmlUtils.readIntAttribute(parser, STANDBY_BUCKET_ATTR, 0);
            } else if (i == 12) {
                String channelId = XmlUtils.readStringAttribute(parser, NOTIFICATION_CHANNEL_ATTR);
                event.mNotificationChannelId = channelId != null ? channelId.intern() : null;
            }
        } else {
            event.mConfiguration = new Configuration();
            Configuration.readXmlAttrs(parser, event.mConfiguration);
        }
        statsOut.addEvent(event);
    }

    public static void read(XmlPullParser parser, IntervalStats statsOut) throws XmlPullParserException, IOException {
        int outerDepth;
        statsOut.packageStats.clear();
        statsOut.configurations.clear();
        statsOut.activeConfiguration = null;
        statsOut.events.clear();
        statsOut.endTime = statsOut.beginTime + XmlUtils.readLongAttribute(parser, END_TIME_ATTR);
        try {
            try {
                statsOut.majorVersion = XmlUtils.readIntAttribute(parser, MAJOR_VERSION_ATTR);
                while (true) {
                    int eventCode = parser.next();
                    if (eventCode != 1) {
                        if (eventCode != 3 || parser.getDepth() > outerDepth) {
                            if (eventCode == 2) {
                                String tag = parser.getName();
                                switch (tag) {
                                    case "interactive":
                                        loadCountAndTime(parser, statsOut.interactiveTracker);
                                        break;
                                    case "non-interactive":
                                        loadCountAndTime(parser, statsOut.nonInteractiveTracker);
                                        break;
                                    case "keyguard-shown":
                                        loadCountAndTime(parser, statsOut.keyguardShownTracker);
                                        break;
                                    case "keyguard-hidden":
                                        loadCountAndTime(parser, statsOut.keyguardHiddenTracker);
                                        break;
                                    case "package":
                                        loadUsageStats(parser, statsOut);
                                        break;
                                    case "config":
                                        loadConfigStats(parser, statsOut);
                                        break;
                                    case "event":
                                        loadEvent(parser, statsOut);
                                        break;
                                }
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            } catch (IOException e) {
                Log.i(TAG, "Failed to parse majorVersion");
            }
            statsOut.minorVersion = XmlUtils.readIntAttribute(parser, MINOR_VERSION_ATTR);
        } catch (IOException e2) {
            Log.i(TAG, "Failed to parse minorVersion");
        }
        outerDepth = parser.getDepth();
    }

    private UsageStatsXmlV1() {
    }
}

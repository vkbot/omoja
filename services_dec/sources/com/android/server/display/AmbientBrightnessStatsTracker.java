package com.android.server.display;

import android.hardware.display.AmbientBrightnessDayStats;
import android.os.SystemClock;
import android.os.UserManager;
import android.util.Xml;
import com.android.internal.util.FastXmlSerializer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class AmbientBrightnessStatsTracker {
    static final float[] BUCKET_BOUNDARIES_FOR_NEW_STATS = {0.0f, 0.1f, 0.3f, 1.0f, 3.0f, 10.0f, 30.0f, 100.0f, 300.0f, 1000.0f, 3000.0f, 10000.0f};
    private static final boolean DEBUG = false;
    static final int MAX_DAYS_TO_TRACK = 7;
    private static final String TAG = "AmbientBrightnessStatsTracker";
    private final AmbientBrightnessStats mAmbientBrightnessStats;
    private float mCurrentAmbientBrightness;
    private int mCurrentUserId;
    private final Injector mInjector;
    private final Timer mTimer;
    private final UserManager mUserManager;

    interface Clock {
        long elapsedTimeMillis();
    }

    public AmbientBrightnessStatsTracker(UserManager userManager, Injector injector) {
        this.mUserManager = userManager;
        if (injector != null) {
            this.mInjector = injector;
        } else {
            this.mInjector = new Injector();
        }
        this.mAmbientBrightnessStats = new AmbientBrightnessStats();
        this.mTimer = new Timer(new Clock() { // from class: com.android.server.display.-$$Lambda$AmbientBrightnessStatsTracker$vQZYn_dAhbvzT-Un4vvpuyIATII
            @Override // com.android.server.display.AmbientBrightnessStatsTracker.Clock
            public final long elapsedTimeMillis() {
                return this.f$0.lambda$new$0$AmbientBrightnessStatsTracker();
            }
        });
        this.mCurrentAmbientBrightness = -1.0f;
    }

    public /* synthetic */ long lambda$new$0$AmbientBrightnessStatsTracker() {
        return this.mInjector.elapsedRealtimeMillis();
    }

    public synchronized void start() {
        this.mTimer.reset();
        this.mTimer.start();
    }

    public synchronized void stop() {
        if (this.mTimer.isRunning()) {
            this.mAmbientBrightnessStats.log(this.mCurrentUserId, this.mInjector.getLocalDate(), this.mCurrentAmbientBrightness, this.mTimer.totalDurationSec());
        }
        this.mTimer.reset();
        this.mCurrentAmbientBrightness = -1.0f;
    }

    public synchronized void add(int userId, float newAmbientBrightness) {
        if (this.mTimer.isRunning()) {
            if (userId == this.mCurrentUserId) {
                this.mAmbientBrightnessStats.log(this.mCurrentUserId, this.mInjector.getLocalDate(), this.mCurrentAmbientBrightness, this.mTimer.totalDurationSec());
            } else {
                this.mCurrentUserId = userId;
            }
            this.mTimer.reset();
            this.mTimer.start();
            this.mCurrentAmbientBrightness = newAmbientBrightness;
        }
    }

    public synchronized void writeStats(OutputStream stream) throws IOException {
        this.mAmbientBrightnessStats.writeToXML(stream);
    }

    public synchronized void readStats(InputStream stream) throws IOException {
        this.mAmbientBrightnessStats.readFromXML(stream);
    }

    public synchronized ArrayList<AmbientBrightnessDayStats> getUserStats(int userId) {
        return this.mAmbientBrightnessStats.getUserStats(userId);
    }

    public synchronized void dump(PrintWriter pw) {
        pw.println("AmbientBrightnessStats:");
        pw.print(this.mAmbientBrightnessStats);
    }

    class AmbientBrightnessStats {
        private static final String ATTR_BUCKET_BOUNDARIES = "bucket-boundaries";
        private static final String ATTR_BUCKET_STATS = "bucket-stats";
        private static final String ATTR_LOCAL_DATE = "local-date";
        private static final String ATTR_USER = "user";
        private static final String TAG_AMBIENT_BRIGHTNESS_DAY_STATS = "ambient-brightness-day-stats";
        private static final String TAG_AMBIENT_BRIGHTNESS_STATS = "ambient-brightness-stats";
        private Map<Integer, Deque<AmbientBrightnessDayStats>> mStats = new HashMap();

        public AmbientBrightnessStats() {
        }

        public void log(int userId, LocalDate localDate, float ambientBrightness, float durationSec) {
            Deque<AmbientBrightnessDayStats> userStats = getOrCreateUserStats(this.mStats, userId);
            AmbientBrightnessDayStats dayStats = getOrCreateDayStats(userStats, localDate);
            dayStats.log(ambientBrightness, durationSec);
        }

        public ArrayList<AmbientBrightnessDayStats> getUserStats(int userId) {
            if (this.mStats.containsKey(Integer.valueOf(userId))) {
                return new ArrayList<>(this.mStats.get(Integer.valueOf(userId)));
            }
            return null;
        }

        public void writeToXML(OutputStream stream) throws IOException {
            FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
            fastXmlSerializer.setOutput(stream, StandardCharsets.UTF_8.name());
            fastXmlSerializer.startDocument(null, true);
            fastXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
            LocalDate cutOffDate = AmbientBrightnessStatsTracker.this.mInjector.getLocalDate().minusDays(7L);
            fastXmlSerializer.startTag(null, TAG_AMBIENT_BRIGHTNESS_STATS);
            for (Map.Entry<Integer, Deque<AmbientBrightnessDayStats>> entry : this.mStats.entrySet()) {
                for (AmbientBrightnessDayStats userDayStats : entry.getValue()) {
                    int userSerialNumber = AmbientBrightnessStatsTracker.this.mInjector.getUserSerialNumber(AmbientBrightnessStatsTracker.this.mUserManager, entry.getKey().intValue());
                    if (userSerialNumber != -1 && userDayStats.getLocalDate().isAfter(cutOffDate)) {
                        fastXmlSerializer.startTag(null, TAG_AMBIENT_BRIGHTNESS_DAY_STATS);
                        fastXmlSerializer.attribute(null, ATTR_USER, Integer.toString(userSerialNumber));
                        fastXmlSerializer.attribute(null, ATTR_LOCAL_DATE, userDayStats.getLocalDate().toString());
                        StringBuilder bucketBoundariesValues = new StringBuilder();
                        StringBuilder timeSpentValues = new StringBuilder();
                        for (int i = 0; i < userDayStats.getBucketBoundaries().length; i++) {
                            if (i > 0) {
                                bucketBoundariesValues.append(",");
                                timeSpentValues.append(",");
                            }
                            bucketBoundariesValues.append(userDayStats.getBucketBoundaries()[i]);
                            timeSpentValues.append(userDayStats.getStats()[i]);
                        }
                        fastXmlSerializer.attribute(null, ATTR_BUCKET_BOUNDARIES, bucketBoundariesValues.toString());
                        fastXmlSerializer.attribute(null, ATTR_BUCKET_STATS, timeSpentValues.toString());
                        fastXmlSerializer.endTag(null, TAG_AMBIENT_BRIGHTNESS_DAY_STATS);
                    }
                }
            }
            fastXmlSerializer.endTag(null, TAG_AMBIENT_BRIGHTNESS_STATS);
            fastXmlSerializer.endDocument();
            stream.flush();
        }

        public void readFromXML(InputStream stream) throws IOException {
            int type;
            int i;
            String str;
            String str2 = ",";
            try {
                Map<Integer, Deque<AmbientBrightnessDayStats>> parsedStats = new HashMap<>();
                XmlPullParser parser = Xml.newPullParser();
                try {
                    parser.setInput(stream, StandardCharsets.UTF_8.name());
                    do {
                        type = parser.next();
                        i = 1;
                        if (type == 1) {
                            break;
                        }
                    } while (type != 2);
                    String tag = parser.getName();
                    if (!TAG_AMBIENT_BRIGHTNESS_STATS.equals(tag)) {
                        throw new XmlPullParserException("Ambient brightness stats not found in tracker file " + tag);
                    }
                    LocalDate cutOffDate = AmbientBrightnessStatsTracker.this.mInjector.getLocalDate().minusDays(7L);
                    parser.next();
                    int outerDepth = parser.getDepth();
                    while (true) {
                        int type2 = parser.next();
                        if (type2 == i) {
                            break;
                        }
                        if (type2 == 3 && parser.getDepth() <= outerDepth) {
                            break;
                        }
                        if (type2 == 3) {
                            str = str2;
                        } else if (type2 == 4) {
                            str = str2;
                        } else if (!TAG_AMBIENT_BRIGHTNESS_DAY_STATS.equals(parser.getName())) {
                            str = str2;
                        } else {
                            String userSerialNumber = parser.getAttributeValue(null, ATTR_USER);
                            LocalDate localDate = LocalDate.parse(parser.getAttributeValue(null, ATTR_LOCAL_DATE));
                            String[] bucketBoundaries = parser.getAttributeValue(null, ATTR_BUCKET_BOUNDARIES).split(str2);
                            String[] bucketStats = parser.getAttributeValue(null, ATTR_BUCKET_STATS).split(str2);
                            if (bucketBoundaries.length != bucketStats.length || bucketBoundaries.length < i) {
                                throw new IOException("Invalid brightness stats string.");
                            }
                            float[] parsedBucketBoundaries = new float[bucketBoundaries.length];
                            float[] parsedBucketStats = new float[bucketStats.length];
                            int i2 = 0;
                            while (true) {
                                str = str2;
                                if (i2 >= bucketBoundaries.length) {
                                    break;
                                }
                                parsedBucketBoundaries[i2] = Float.parseFloat(bucketBoundaries[i2]);
                                parsedBucketStats[i2] = Float.parseFloat(bucketStats[i2]);
                                i2++;
                                str2 = str;
                            }
                            int userId = AmbientBrightnessStatsTracker.this.mInjector.getUserId(AmbientBrightnessStatsTracker.this.mUserManager, Integer.parseInt(userSerialNumber));
                            if (userId != -1 && localDate.isAfter(cutOffDate)) {
                                Deque<AmbientBrightnessDayStats> userStats = getOrCreateUserStats(parsedStats, userId);
                                userStats.offer(new AmbientBrightnessDayStats(localDate, parsedBucketBoundaries, parsedBucketStats));
                            }
                        }
                        str2 = str;
                        parser = parser;
                        i = 1;
                    }
                    this.mStats = parsedStats;
                } catch (IOException | NullPointerException | NumberFormatException | DateTimeParseException | XmlPullParserException e) {
                    e = e;
                    throw new IOException("Failed to parse brightness stats file.", e);
                }
            } catch (IOException | NullPointerException | NumberFormatException | DateTimeParseException | XmlPullParserException e2) {
                e = e2;
            }
        }

        public String toString() {
            StringBuilder builder = new StringBuilder();
            for (Map.Entry<Integer, Deque<AmbientBrightnessDayStats>> entry : this.mStats.entrySet()) {
                for (AmbientBrightnessDayStats dayStats : entry.getValue()) {
                    builder.append("  ");
                    builder.append(entry.getKey());
                    builder.append(" ");
                    builder.append(dayStats);
                    builder.append("\n");
                }
            }
            return builder.toString();
        }

        private Deque<AmbientBrightnessDayStats> getOrCreateUserStats(Map<Integer, Deque<AmbientBrightnessDayStats>> stats, int userId) {
            if (!stats.containsKey(Integer.valueOf(userId))) {
                stats.put(Integer.valueOf(userId), new ArrayDeque());
            }
            return stats.get(Integer.valueOf(userId));
        }

        private AmbientBrightnessDayStats getOrCreateDayStats(Deque<AmbientBrightnessDayStats> userStats, LocalDate localDate) {
            AmbientBrightnessDayStats lastBrightnessStats = userStats.peekLast();
            if (lastBrightnessStats != null && lastBrightnessStats.getLocalDate().equals(localDate)) {
                return lastBrightnessStats;
            }
            AmbientBrightnessDayStats dayStats = new AmbientBrightnessDayStats(localDate, AmbientBrightnessStatsTracker.BUCKET_BOUNDARIES_FOR_NEW_STATS);
            if (userStats.size() == 7) {
                userStats.poll();
            }
            userStats.offer(dayStats);
            return dayStats;
        }
    }

    static class Timer {
        private final Clock clock;
        private long startTimeMillis;
        private boolean started;

        public Timer(Clock clock) {
            this.clock = clock;
        }

        public void reset() {
            this.started = false;
        }

        public void start() {
            if (!this.started) {
                this.startTimeMillis = this.clock.elapsedTimeMillis();
                this.started = true;
            }
        }

        public boolean isRunning() {
            return this.started;
        }

        public float totalDurationSec() {
            if (this.started) {
                return (float) ((this.clock.elapsedTimeMillis() - this.startTimeMillis) / 1000.0d);
            }
            return 0.0f;
        }
    }

    static class Injector {
        Injector() {
        }

        public long elapsedRealtimeMillis() {
            return SystemClock.elapsedRealtime();
        }

        public int getUserSerialNumber(UserManager userManager, int userId) {
            return userManager.getUserSerialNumber(userId);
        }

        public int getUserId(UserManager userManager, int userSerialNumber) {
            return userManager.getUserHandle(userSerialNumber);
        }

        public LocalDate getLocalDate() {
            return LocalDate.now();
        }
    }
}

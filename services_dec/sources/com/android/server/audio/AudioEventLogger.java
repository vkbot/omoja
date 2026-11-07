package com.android.server.audio;

import android.util.Log;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public class AudioEventLogger {
    private final LinkedList<Event> mEvents = new LinkedList<>();
    private final int mMemSize;
    private final String mTitle;

    public static abstract class Event {
        public static final int ALOGE = 1;
        public static final int ALOGI = 0;
        public static final int ALOGV = 3;
        public static final int ALOGW = 2;
        private static final SimpleDateFormat sFormat = new SimpleDateFormat("MM-dd HH:mm:ss:SSS");
        private final long mTimestamp = System.currentTimeMillis();

        public abstract String eventToString();

        Event() {
        }

        public String toString() {
            return sFormat.format(new Date(this.mTimestamp)) + " " + eventToString();
        }

        public Event printLog(String tag) {
            return printLog(0, tag);
        }

        public Event printLog(int type, String tag) {
            if (type == 0) {
                Log.i(tag, eventToString());
            } else if (type == 1) {
                Log.e(tag, eventToString());
            } else if (type == 2) {
                Log.w(tag, eventToString());
            } else {
                Log.v(tag, eventToString());
            }
            return this;
        }
    }

    public static class StringEvent extends Event {
        private final String mMsg;

        public StringEvent(String msg) {
            this.mMsg = msg;
        }

        @Override // com.android.server.audio.AudioEventLogger.Event
        public String eventToString() {
            return this.mMsg;
        }
    }

    public AudioEventLogger(int size, String title) {
        this.mMemSize = size;
        this.mTitle = title;
    }

    public synchronized void log(Event evt) {
        if (this.mEvents.size() >= this.mMemSize) {
            this.mEvents.removeFirst();
        }
        this.mEvents.add(evt);
    }

    public synchronized void dump(PrintWriter pw) {
        pw.println("Audio event log: " + this.mTitle);
        for (Event evt : this.mEvents) {
            pw.println(evt.toString());
        }
    }
}

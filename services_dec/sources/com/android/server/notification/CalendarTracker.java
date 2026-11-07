package com.android.server.notification;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.provider.CalendarContract;
import android.service.notification.ZenModeConfig;
import android.util.ArraySet;
import android.util.Log;
import android.util.Slog;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class CalendarTracker {
    private static final String ATTENDEE_SELECTION = "event_id = ? AND attendeeEmail = ?";
    private static final boolean DEBUG_ATTENDEES = false;
    private static final int EVENT_CHECK_LOOKAHEAD = 86400000;
    private static final String INSTANCE_ORDER_BY = "begin ASC";
    private static final String TAG = "ConditionProviders.CT";
    private Callback mCallback;
    private final ContentObserver mObserver = new ContentObserver(null) { // from class: com.android.server.notification.CalendarTracker.1
        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri u) {
            if (CalendarTracker.DEBUG) {
                Log.d(CalendarTracker.TAG, "onChange selfChange=" + selfChange + " uri=" + u + " u=" + CalendarTracker.this.mUserContext.getUserId());
            }
            CalendarTracker.this.mCallback.onChanged();
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            if (CalendarTracker.DEBUG) {
                Log.d(CalendarTracker.TAG, "onChange selfChange=" + selfChange);
            }
        }
    };
    private boolean mRegistered;
    private final Context mSystemContext;
    private final Context mUserContext;
    private static final boolean DEBUG = Log.isLoggable("ConditionProviders", 3);
    private static final String[] INSTANCE_PROJECTION = {"begin", "end", "title", "visible", "event_id", "calendar_displayName", "ownerAccount", "calendar_id", "availability"};
    private static final String[] ATTENDEE_PROJECTION = {"event_id", "attendeeEmail", "attendeeStatus"};

    public interface Callback {
        void onChanged();
    }

    public static class CheckEventResult {
        public boolean inEvent;
        public long recheckAt;
    }

    public CalendarTracker(Context systemContext, Context userContext) {
        this.mSystemContext = systemContext;
        this.mUserContext = userContext;
    }

    public void setCallback(Callback callback) {
        if (this.mCallback == callback) {
            return;
        }
        this.mCallback = callback;
        setRegistered(callback != null);
    }

    public void dump(String prefix, PrintWriter pw) {
        pw.print(prefix);
        pw.print("mCallback=");
        pw.println(this.mCallback);
        pw.print(prefix);
        pw.print("mRegistered=");
        pw.println(this.mRegistered);
        pw.print(prefix);
        pw.print("u=");
        pw.println(this.mUserContext.getUserId());
    }

    private ArraySet<Long> getCalendarsWithAccess() {
        long start = System.currentTimeMillis();
        ArraySet<Long> rt = new ArraySet<>();
        String[] projection = {"_id"};
        Cursor cursor = null;
        try {
            try {
                cursor = this.mUserContext.getContentResolver().query(CalendarContract.Calendars.CONTENT_URI, projection, "calendar_access_level >= 500 AND sync_events = 1", null, null);
                while (cursor != null && cursor.moveToNext()) {
                    rt.add(Long.valueOf(cursor.getLong(0)));
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (SQLiteException e) {
                Slog.w(TAG, "error querying calendar content provider", e);
                if (cursor != null) {
                }
            }
            if (DEBUG) {
                Log.d(TAG, "getCalendarsWithAccess took " + (System.currentTimeMillis() - start));
            }
            return rt;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:115:0x020f  */
    /* JADX WARN: Code duplicated, block: B:60:0x015f  */
    /* JADX WARN: Code duplicated, block: B:63:0x0165 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:91:0x01b5  */
    public CheckEventResult checkEvent(ZenModeConfig.EventInfo filter, long time) throws Throwable {
        CheckEventResult result;
        Cursor cursor;
        String name;
        String owner;
        boolean z;
        boolean meetsCalendar;
        CalendarTracker calendarTracker = this;
        Uri.Builder uriBuilder = CalendarContract.Instances.CONTENT_URI.buildUpon();
        ContentUris.appendId(uriBuilder, time);
        ContentUris.appendId(uriBuilder, time + 86400000);
        Uri uri = uriBuilder.build();
        Cursor cursor2 = null;
        CheckEventResult result2 = new CheckEventResult();
        result2.recheckAt = 86400000 + time;
        try {
            result = result2;
            try {
                cursor2 = calendarTracker.mUserContext.getContentResolver().query(uri, INSTANCE_PROJECTION, null, null, INSTANCE_ORDER_BY);
                try {
                    ArraySet<Long> calendars = getCalendarsWithAccess();
                    while (cursor2 != null && cursor2.moveToNext()) {
                        long begin = cursor2.getLong(0);
                        long end = cursor2.getLong(1);
                        String title = cursor2.getString(2);
                        boolean calendarVisible = cursor2.getInt(3) == 1;
                        int eventId = cursor2.getInt(4);
                        String name2 = cursor2.getString(5);
                        String owner2 = cursor2.getString(6);
                        long calendarId = cursor2.getLong(7);
                        int availability = cursor2.getInt(8);
                        boolean canAccessCal = calendars.contains(Long.valueOf(calendarId));
                        if (DEBUG) {
                            try {
                                Object[] objArr = new Object[10];
                                z = false;
                                objArr[0] = title;
                                try {
                                    objArr[1] = new Date(begin);
                                    objArr[2] = new Date(end);
                                    objArr[3] = Boolean.valueOf(calendarVisible);
                                    objArr[4] = availabilityToString(availability);
                                    objArr[5] = Integer.valueOf(eventId);
                                    name = name2;
                                    objArr[6] = name;
                                    cursor = cursor2;
                                    owner = owner2;
                                    try {
                                        objArr[7] = owner;
                                        objArr[8] = Long.valueOf(calendarId);
                                        objArr[9] = Boolean.valueOf(canAccessCal);
                                        Log.d(TAG, String.format("title=%s time=%s-%s vis=%s availability=%s eventId=%s name=%s owner=%s calId=%s canAccessCal=%s", objArr));
                                    } catch (Exception e) {
                                        e = e;
                                        cursor2 = cursor;
                                        try {
                                            Slog.w(TAG, "error reading calendar", e);
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            return result;
                                        } catch (Throwable th) {
                                            th = th;
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        cursor2 = cursor;
                                        if (cursor2 != null) {
                                            cursor2.close();
                                        }
                                        throw th;
                                    }
                                } catch (Exception e2) {
                                    e = e2;
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            } catch (Exception e3) {
                                e = e3;
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        } else {
                            cursor = cursor2;
                            name = name2;
                            owner = owner2;
                            z = false;
                        }
                        boolean meetsTime = (time < begin || time >= end) ? z : true;
                        if (calendarVisible && canAccessCal) {
                            if (filter.calName != null || filter.calendarId != null) {
                                if (Objects.equals(filter.calendarId, Long.valueOf(calendarId)) || Objects.equals(filter.calName, name)) {
                                }
                                if (availability != 1) {
                                    z = true;
                                }
                                boolean meetsAvailability = z;
                                if (!meetsCalendar && meetsAvailability) {
                                    if (DEBUG) {
                                        Log.d(TAG, "  MEETS CALENDAR & AVAILABILITY");
                                    }
                                    boolean meetsAttendee = calendarTracker.meetsAttendee(filter, eventId, owner);
                                    if (meetsAttendee) {
                                        if (DEBUG) {
                                            Log.d(TAG, "    MEETS ATTENDEE");
                                        }
                                        if (meetsTime) {
                                            if (DEBUG) {
                                                Log.d(TAG, "      MEETS TIME");
                                            }
                                            result.inEvent = true;
                                        }
                                        if (begin > time && begin < result.recheckAt) {
                                            result.recheckAt = begin;
                                        } else if (end > time && end < result.recheckAt) {
                                            result.recheckAt = end;
                                        }
                                    }
                                }
                                calendarTracker = this;
                                cursor2 = cursor;
                                calendars = calendars;
                                uriBuilder = uriBuilder;
                                uri = uri;
                            }
                            meetsCalendar = true;
                            if (availability != 1) {
                                z = true;
                            }
                            boolean meetsAvailability2 = z;
                            if (!meetsCalendar) {
                            }
                            calendarTracker = this;
                            cursor2 = cursor;
                            calendars = calendars;
                            uriBuilder = uriBuilder;
                            uri = uri;
                        }
                        meetsCalendar = z;
                        if (availability != 1) {
                            z = true;
                        }
                        boolean meetsAvailability3 = z;
                        if (!meetsCalendar) {
                        }
                        calendarTracker = this;
                        cursor2 = cursor;
                        calendars = calendars;
                        uriBuilder = uriBuilder;
                        uri = uri;
                    }
                    Cursor cursor3 = cursor2;
                    if (cursor3 != null) {
                        cursor3.close();
                    }
                } catch (Exception e4) {
                    e = e4;
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Exception e5) {
                e = e5;
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (Exception e6) {
            e = e6;
            result = result2;
        } catch (Throwable th7) {
            th = th7;
        }
        return result;
    }

    private boolean meetsAttendee(ZenModeConfig.EventInfo filter, int eventId, String email) {
        long start = System.currentTimeMillis();
        String selection = ATTENDEE_SELECTION;
        int i = 2;
        int i2 = 0;
        int i3 = 1;
        String[] selectionArgs = {Integer.toString(eventId), email};
        Cursor cursor = null;
        try {
            try {
                cursor = this.mUserContext.getContentResolver().query(CalendarContract.Attendees.CONTENT_URI, ATTENDEE_PROJECTION, ATTENDEE_SELECTION, selectionArgs, null);
                try {
                    if (cursor == null || cursor.getCount() == 0) {
                        if (DEBUG) {
                            Log.d(TAG, "No attendees found");
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (!DEBUG) {
                            return true;
                        }
                        Log.d(TAG, "meetsAttendee took " + (System.currentTimeMillis() - start));
                        return true;
                    }
                    boolean rt = false;
                    while (cursor != null && cursor.moveToNext()) {
                        long rowEventId = cursor.getLong(i2);
                        String rowEmail = cursor.getString(i3);
                        int status = cursor.getInt(i);
                        boolean meetsReply = meetsReply(filter.reply, status);
                        if (DEBUG) {
                            StringBuilder sb = new StringBuilder();
                            try {
                                sb.append("");
                                try {
                                    sb.append(String.format("status=%s, meetsReply=%s", attendeeStatusToString(status), Boolean.valueOf(meetsReply)));
                                    Log.d(TAG, sb.toString());
                                } catch (SQLiteException e) {
                                    e = e;
                                } catch (Throwable th) {
                                    e = th;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    if (DEBUG) {
                                        Log.d(TAG, "meetsAttendee took " + (System.currentTimeMillis() - start));
                                    }
                                    throw e;
                                }
                            } catch (SQLiteException e2) {
                                e = e2;
                            } catch (Throwable th2) {
                                e = th2;
                            }
                        }
                        boolean eventMeets = rowEventId == ((long) eventId) && Objects.equals(rowEmail, email) && meetsReply;
                        rt |= eventMeets;
                        selectionArgs = selectionArgs;
                        selection = selection;
                        i = 2;
                        i2 = 0;
                        i3 = 1;
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (DEBUG) {
                        Log.d(TAG, "meetsAttendee took " + (System.currentTimeMillis() - start));
                    }
                    return rt;
                } catch (SQLiteException e3) {
                    e = e3;
                }
            } catch (Throwable th3) {
                e = th3;
            }
        } catch (SQLiteException e4) {
            e = e4;
        } catch (Throwable th4) {
            e = th4;
        }
        Slog.w(TAG, "error querying attendees content provider", e);
        if (cursor != null) {
            cursor.close();
        }
        if (!DEBUG) {
            return false;
        }
        Log.d(TAG, "meetsAttendee took " + (System.currentTimeMillis() - start));
        return false;
    }

    private void setRegistered(boolean registered) {
        if (this.mRegistered == registered) {
            return;
        }
        ContentResolver cr = this.mSystemContext.getContentResolver();
        int userId = this.mUserContext.getUserId();
        if (this.mRegistered) {
            if (DEBUG) {
                Log.d(TAG, "unregister content observer u=" + userId);
            }
            cr.unregisterContentObserver(this.mObserver);
        }
        this.mRegistered = registered;
        if (DEBUG) {
            Log.d(TAG, "mRegistered = " + registered + " u=" + userId);
        }
        if (this.mRegistered) {
            if (DEBUG) {
                Log.d(TAG, "register content observer u=" + userId);
            }
            cr.registerContentObserver(CalendarContract.Instances.CONTENT_URI, true, this.mObserver, userId);
            cr.registerContentObserver(CalendarContract.Events.CONTENT_URI, true, this.mObserver, userId);
            cr.registerContentObserver(CalendarContract.Calendars.CONTENT_URI, true, this.mObserver, userId);
        }
    }

    private static String attendeeStatusToString(int status) {
        if (status == 0) {
            return "ATTENDEE_STATUS_NONE";
        }
        if (status == 1) {
            return "ATTENDEE_STATUS_ACCEPTED";
        }
        if (status == 2) {
            return "ATTENDEE_STATUS_DECLINED";
        }
        if (status == 3) {
            return "ATTENDEE_STATUS_INVITED";
        }
        if (status == 4) {
            return "ATTENDEE_STATUS_TENTATIVE";
        }
        return "ATTENDEE_STATUS_UNKNOWN_" + status;
    }

    private static String availabilityToString(int availability) {
        if (availability == 0) {
            return "AVAILABILITY_BUSY";
        }
        if (availability == 1) {
            return "AVAILABILITY_FREE";
        }
        if (availability == 2) {
            return "AVAILABILITY_TENTATIVE";
        }
        return "AVAILABILITY_UNKNOWN_" + availability;
    }

    private static boolean meetsReply(int reply, int attendeeStatus) {
        if (reply == 0) {
            return attendeeStatus != 2;
        }
        if (reply != 1) {
            return reply == 2 && attendeeStatus == 1;
        }
        return attendeeStatus == 1 || attendeeStatus == 4;
    }
}

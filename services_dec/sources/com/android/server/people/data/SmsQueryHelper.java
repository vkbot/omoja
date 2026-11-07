package com.android.server.people.data;

import android.content.Context;
import android.database.Cursor;
import android.os.Binder;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Slog;
import android.util.SparseIntArray;
import com.android.server.voiceinteraction.DatabaseHelper;
import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes.dex */
class SmsQueryHelper {
    private static final SparseIntArray SMS_TYPE_TO_EVENT_TYPE;
    private static final String TAG = "SmsQueryHelper";
    private final Context mContext;
    private final String mCurrentCountryIso;
    private final BiConsumer<String, Event> mEventConsumer;
    private long mLastMessageTimestamp;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        SMS_TYPE_TO_EVENT_TYPE = sparseIntArray;
        sparseIntArray.put(1, 9);
        SMS_TYPE_TO_EVENT_TYPE.put(2, 8);
    }

    SmsQueryHelper(Context context, BiConsumer<String, Event> eventConsumer) {
        this.mContext = context;
        this.mEventConsumer = eventConsumer;
        this.mCurrentCountryIso = Utils.getCurrentCountryIso(context);
    }

    boolean querySince(long sinceTime) {
        String address = "_id";
        String str = "date";
        String str2 = DatabaseHelper.SoundModelContract.KEY_TYPE;
        String[] projection = {"_id", "date", DatabaseHelper.SoundModelContract.KEY_TYPE, "address"};
        String[] selectionArgs = {Long.toString(sinceTime)};
        boolean hasResults = false;
        Binder.allowBlockingForCurrentThread();
        try {
            Cursor cursor = this.mContext.getContentResolver().query(Telephony.Sms.CONTENT_URI, projection, "date > ?", selectionArgs, null);
            try {
                if (cursor == null) {
                    Slog.w(TAG, "Cursor is null when querying SMS table.");
                    if (cursor != null) {
                        cursor.close();
                    }
                    Binder.defaultBlockingForCurrentThread();
                    return false;
                }
                while (cursor.moveToNext()) {
                    int msgIdIndex = cursor.getColumnIndex(address);
                    cursor.getString(msgIdIndex);
                    int dateIndex = cursor.getColumnIndex(str);
                    long date = cursor.getLong(dateIndex);
                    int typeIndex = cursor.getColumnIndex(str2);
                    int type = cursor.getInt(typeIndex);
                    int addressIndex = cursor.getColumnIndex("address");
                    String str3 = address;
                    String str4 = str;
                    String address2 = PhoneNumberUtils.formatNumberToE164(cursor.getString(addressIndex), this.mCurrentCountryIso);
                    String str5 = str2;
                    this.mLastMessageTimestamp = Math.max(this.mLastMessageTimestamp, date);
                    if (address2 != null && addEvent(address2, date, type)) {
                        hasResults = true;
                    }
                    address = str3;
                    str = str4;
                    str2 = str5;
                }
                if (cursor != null) {
                    cursor.close();
                }
                Binder.defaultBlockingForCurrentThread();
                return hasResults;
            } catch (Throwable th) {
                if (cursor == null) {
                    throw th;
                }
                try {
                    cursor.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        } catch (Throwable th3) {
            Binder.defaultBlockingForCurrentThread();
            throw th3;
        }
    }

    long getLastMessageTimestamp() {
        return this.mLastMessageTimestamp;
    }

    private boolean addEvent(String phoneNumber, long date, int type) {
        if (!validateEvent(phoneNumber, date, type)) {
            return false;
        }
        int eventType = SMS_TYPE_TO_EVENT_TYPE.get(type);
        this.mEventConsumer.accept(phoneNumber, new Event(date, eventType));
        return true;
    }

    private boolean validateEvent(String phoneNumber, long date, int type) {
        return !TextUtils.isEmpty(phoneNumber) && date > 0 && SMS_TYPE_TO_EVENT_TYPE.indexOfKey(type) >= 0;
    }
}

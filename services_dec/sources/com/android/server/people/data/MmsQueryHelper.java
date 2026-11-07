package com.android.server.people.data;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Slog;
import android.util.SparseIntArray;
import com.android.server.voiceinteraction.DatabaseHelper;
import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes.dex */
class MmsQueryHelper {
    private static final long MILLIS_PER_SECONDS = 1000;
    private static final SparseIntArray MSG_BOX_TO_EVENT_TYPE;
    private static final String TAG = "MmsQueryHelper";
    private final Context mContext;
    private String mCurrentCountryIso;
    private final BiConsumer<String, Event> mEventConsumer;
    private long mLastMessageTimestamp;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        MSG_BOX_TO_EVENT_TYPE = sparseIntArray;
        sparseIntArray.put(1, 9);
        MSG_BOX_TO_EVENT_TYPE.put(2, 8);
    }

    MmsQueryHelper(Context context, BiConsumer<String, Event> eventConsumer) {
        this.mContext = context;
        this.mEventConsumer = eventConsumer;
        this.mCurrentCountryIso = Utils.getCurrentCountryIso(context);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x009e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:? A[Catch: all -> 0x00a8, SYNTHETIC, TRY_LEAVE, TryCatch #2 {all -> 0x00a8, blocks: (B:40:0x00a7, B:39:0x00a4, B:29:0x0091, B:35:0x009e), top: B:51:0x002f, inners: #0 }] */
    boolean querySince(long sinceTime) throws Throwable {
        Throwable th;
        String[] projection = {"_id", "date", "msg_box"};
        long j = 1000;
        String[] selectionArgs = {Long.toString(sinceTime / 1000)};
        boolean hasResults = false;
        Binder.allowBlockingForCurrentThread();
        try {
            Cursor cursor = this.mContext.getContentResolver().query(Telephony.Mms.CONTENT_URI, projection, "date > ?", selectionArgs, null);
            try {
                if (cursor == null) {
                    try {
                        Slog.w(TAG, "Cursor is null when querying MMS table.");
                        if (cursor != null) {
                            try {
                                cursor.close();
                            } catch (Throwable th2) {
                                th = th2;
                                Binder.defaultBlockingForCurrentThread();
                                throw th;
                            }
                        }
                        Binder.defaultBlockingForCurrentThread();
                        return false;
                    } catch (Throwable th3) {
                        th = th3;
                        if (cursor != null) {
                            throw th;
                        }
                        try {
                            cursor.close();
                            throw th;
                        } catch (Throwable th4) {
                            th.addSuppressed(th4);
                            throw th;
                        }
                    }
                }
                while (cursor.moveToNext()) {
                    try {
                        int msgIdIndex = cursor.getColumnIndex("_id");
                        String msgId = cursor.getString(msgIdIndex);
                        int dateIndex = cursor.getColumnIndex("date");
                        String[] projection2 = projection;
                        long date = cursor.getLong(dateIndex) * j;
                        try {
                            int msgBoxIndex = cursor.getColumnIndex("msg_box");
                            int msgBox = cursor.getInt(msgBoxIndex);
                            this.mLastMessageTimestamp = Math.max(this.mLastMessageTimestamp, date);
                            String address = getMmsAddress(msgId, msgBox);
                            if (address != null && addEvent(address, date, msgBox)) {
                                hasResults = true;
                            }
                            projection = projection2;
                            j = 1000;
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                Binder.defaultBlockingForCurrentThread();
                return hasResults;
                if (cursor != null) {
                    throw th;
                }
                cursor.close();
                throw th;
            } catch (Throwable th7) {
                th = th7;
                Binder.defaultBlockingForCurrentThread();
                throw th;
            }
        } catch (Throwable th8) {
            th = th8;
        }
    }

    long getLastMessageTimestamp() {
        return this.mLastMessageTimestamp;
    }

    private String getMmsAddress(String msgId, int msgBox) {
        Uri addressUri = Telephony.Mms.Addr.getAddrUriForMessage(msgId);
        String[] projection = {"address", DatabaseHelper.SoundModelContract.KEY_TYPE};
        String address = null;
        Cursor cursor = this.mContext.getContentResolver().query(addressUri, projection, null, null, null);
        try {
            if (cursor == null) {
                Slog.w(TAG, "Cursor is null when querying MMS address table.");
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
            while (cursor.moveToNext()) {
                int typeIndex = cursor.getColumnIndex(DatabaseHelper.SoundModelContract.KEY_TYPE);
                int type = cursor.getInt(typeIndex);
                if ((msgBox == 1 && type == 137) || (msgBox == 2 && type == 151)) {
                    int addrIndex = cursor.getColumnIndex("address");
                    address = cursor.getString(addrIndex);
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            if (!Telephony.Mms.isPhoneNumber(address)) {
                return null;
            }
            return PhoneNumberUtils.formatNumberToE164(address, this.mCurrentCountryIso);
        } catch (Throwable th) {
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private boolean addEvent(String phoneNumber, long date, int msgBox) {
        if (!validateEvent(phoneNumber, date, msgBox)) {
            return false;
        }
        int eventType = MSG_BOX_TO_EVENT_TYPE.get(msgBox);
        this.mEventConsumer.accept(phoneNumber, new Event(date, eventType));
        return true;
    }

    private boolean validateEvent(String phoneNumber, long date, int msgBox) {
        return !TextUtils.isEmpty(phoneNumber) && date > 0 && MSG_BOX_TO_EVENT_TYPE.indexOfKey(msgBox) >= 0;
    }
}

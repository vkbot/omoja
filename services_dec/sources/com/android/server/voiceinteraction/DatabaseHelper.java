package com.android.server.voiceinteraction;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.hardware.soundtrigger.SoundTrigger;
import android.text.TextUtils;
import android.util.Slog;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class DatabaseHelper extends SQLiteOpenHelper {
    private static final String CREATE_TABLE_SOUND_MODEL = "CREATE TABLE sound_model(model_uuid TEXT,vendor_uuid TEXT,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT,model_version INTEGER,PRIMARY KEY (keyphrase_id,locale,users))";
    static final boolean DBG = false;
    private static final String NAME = "sound_model.db";
    static final String TAG = "SoundModelDBHelper";
    private static final int VERSION = 7;

    public interface SoundModelContract {
        public static final String KEY_DATA = "data";
        public static final String KEY_HINT_TEXT = "hint_text";
        public static final String KEY_KEYPHRASE_ID = "keyphrase_id";
        public static final String KEY_LOCALE = "locale";
        public static final String KEY_MODEL_UUID = "model_uuid";
        public static final String KEY_MODEL_VERSION = "model_version";
        public static final String KEY_RECOGNITION_MODES = "recognition_modes";
        public static final String KEY_TYPE = "type";
        public static final String KEY_USERS = "users";
        public static final String KEY_VENDOR_UUID = "vendor_uuid";
        public static final String TABLE = "sound_model";
    }

    public DatabaseHelper(Context context) {
        super(context, NAME, (SQLiteDatabase.CursorFactory) null, 7);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(CREATE_TABLE_SOUND_MODEL);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        if (oldVersion < 4) {
            db.execSQL("DROP TABLE IF EXISTS sound_model");
            onCreate(db);
        } else if (oldVersion == 4) {
            Slog.d(TAG, "Adding vendor UUID column");
            db.execSQL("ALTER TABLE sound_model ADD COLUMN vendor_uuid TEXT");
            oldVersion++;
        }
        if (oldVersion == 5) {
            Cursor c = db.rawQuery("SELECT * FROM sound_model", null);
            List<SoundModelRecord> old_records = new ArrayList<>();
            try {
                if (c.moveToFirst()) {
                    do {
                        try {
                            old_records.add(new SoundModelRecord(5, c));
                        } catch (Exception e) {
                            Slog.e(TAG, "Failed to extract V5 record", e);
                        }
                    } while (c.moveToNext());
                }
                c.close();
                db.execSQL("DROP TABLE IF EXISTS sound_model");
                onCreate(db);
                for (SoundModelRecord record : old_records) {
                    if (record.ifViolatesV6PrimaryKeyIsFirstOfAnyDuplicates(old_records)) {
                        try {
                            long return_value = record.writeToDatabase(6, db);
                            if (return_value == -1) {
                                Slog.e(TAG, "Database write failed " + record.modelUuid + ": " + return_value);
                            }
                        } catch (Exception e2) {
                            Slog.e(TAG, "Failed to update V6 record " + record.modelUuid, e2);
                        }
                    }
                }
                oldVersion++;
            } catch (Throwable th) {
                c.close();
                throw th;
            }
        }
        if (oldVersion == 6) {
            Slog.d(TAG, "Adding model version column");
            db.execSQL("ALTER TABLE sound_model ADD COLUMN model_version INTEGER DEFAULT -1");
            int i = oldVersion + 1;
        }
    }

    public boolean updateKeyphraseSoundModel(SoundTrigger.KeyphraseSoundModel soundModel) {
        synchronized (this) {
            SQLiteDatabase db = getWritableDatabase();
            ContentValues values = new ContentValues();
            values.put("model_uuid", soundModel.getUuid().toString());
            if (soundModel.getVendorUuid() != null) {
                values.put("vendor_uuid", soundModel.getVendorUuid().toString());
            }
            values.put(SoundModelContract.KEY_TYPE, (Integer) 0);
            values.put("data", soundModel.getData());
            values.put("model_version", Integer.valueOf(soundModel.getVersion()));
            if (soundModel.getKeyphrases() == null || soundModel.getKeyphrases().length != 1) {
                return false;
            }
            values.put(SoundModelContract.KEY_KEYPHRASE_ID, Integer.valueOf(soundModel.getKeyphrases()[0].getId()));
            values.put(SoundModelContract.KEY_RECOGNITION_MODES, Integer.valueOf(soundModel.getKeyphrases()[0].getRecognitionModes()));
            values.put(SoundModelContract.KEY_USERS, getCommaSeparatedString(soundModel.getKeyphrases()[0].getUsers()));
            values.put(SoundModelContract.KEY_LOCALE, soundModel.getKeyphrases()[0].getLocale().toLanguageTag());
            values.put(SoundModelContract.KEY_HINT_TEXT, soundModel.getKeyphrases()[0].getText());
            try {
                boolean z = db.insertWithOnConflict(SoundModelContract.TABLE, null, values, 5) != -1;
                db.close();
                return z;
            } catch (Throwable th) {
                db.close();
                throw th;
            }
        }
    }

    public boolean deleteKeyphraseSoundModel(int keyphraseId, int userHandle, String bcp47Locale) {
        String bcp47Locale2 = Locale.forLanguageTag(bcp47Locale).toLanguageTag();
        synchronized (this) {
            SoundTrigger.KeyphraseSoundModel soundModel = getKeyphraseSoundModel(keyphraseId, userHandle, bcp47Locale2);
            if (soundModel == null) {
                return false;
            }
            SQLiteDatabase db = getWritableDatabase();
            String soundModelClause = "model_uuid='" + soundModel.getUuid().toString() + "'";
            try {
                boolean z = db.delete(SoundModelContract.TABLE, soundModelClause, null) != 0;
                db.close();
                return z;
            } catch (Throwable th) {
                db.close();
                throw th;
            }
        }
    }

    public SoundTrigger.KeyphraseSoundModel getKeyphraseSoundModel(int keyphraseId, int userHandle, String bcp47Locale) {
        SoundTrigger.KeyphraseSoundModel validKeyphraseSoundModelForUser;
        String bcp47Locale2 = Locale.forLanguageTag(bcp47Locale).toLanguageTag();
        synchronized (this) {
            String selectQuery = "SELECT  * FROM sound_model WHERE keyphrase_id= '" + keyphraseId + "' AND " + SoundModelContract.KEY_LOCALE + "='" + bcp47Locale2 + "'";
            validKeyphraseSoundModelForUser = getValidKeyphraseSoundModelForUser(selectQuery, userHandle);
        }
        return validKeyphraseSoundModelForUser;
    }

    public SoundTrigger.KeyphraseSoundModel getKeyphraseSoundModel(String keyphrase, int userHandle, String bcp47Locale) {
        SoundTrigger.KeyphraseSoundModel validKeyphraseSoundModelForUser;
        String bcp47Locale2 = Locale.forLanguageTag(bcp47Locale).toLanguageTag();
        synchronized (this) {
            String selectQuery = "SELECT  * FROM sound_model WHERE hint_text= '" + keyphrase + "' AND " + SoundModelContract.KEY_LOCALE + "='" + bcp47Locale2 + "'";
            validKeyphraseSoundModelForUser = getValidKeyphraseSoundModelForUser(selectQuery, userHandle);
        }
        return validKeyphraseSoundModelForUser;
    }

    private SoundTrigger.KeyphraseSoundModel getValidKeyphraseSoundModelForUser(String selectQuery, int userHandle) throws Throwable {
        SQLiteDatabase db = getReadableDatabase();
        Cursor c = db.rawQuery(selectQuery, null);
        try {
            if (c.moveToFirst()) {
                do {
                    int type = c.getInt(c.getColumnIndex(SoundModelContract.KEY_TYPE));
                    if (type == 0) {
                        String modelUuid = c.getString(c.getColumnIndex("model_uuid"));
                        if (modelUuid == null) {
                            Slog.w(TAG, "Ignoring SoundModel since it doesn't specify an ID");
                        } else {
                            int vendorUuidColumn = c.getColumnIndex("vendor_uuid");
                            String vendorUuidString = vendorUuidColumn != -1 ? c.getString(vendorUuidColumn) : null;
                            int keyphraseId = c.getInt(c.getColumnIndex(SoundModelContract.KEY_KEYPHRASE_ID));
                            byte[] data = c.getBlob(c.getColumnIndex("data"));
                            int recognitionModes = c.getInt(c.getColumnIndex(SoundModelContract.KEY_RECOGNITION_MODES));
                            int[] users = getArrayForCommaSeparatedString(c.getString(c.getColumnIndex(SoundModelContract.KEY_USERS)));
                            Locale modelLocale = Locale.forLanguageTag(c.getString(c.getColumnIndex(SoundModelContract.KEY_LOCALE)));
                            String text = c.getString(c.getColumnIndex(SoundModelContract.KEY_HINT_TEXT));
                            int version = c.getInt(c.getColumnIndex("model_version"));
                            if (users != null) {
                                boolean isAvailableForCurrentUser = false;
                                for (int user : users) {
                                    if (userHandle == user) {
                                        isAvailableForCurrentUser = true;
                                        break;
                                    }
                                }
                                if (isAvailableForCurrentUser) {
                                    SoundTrigger.Keyphrase[] keyphrases = {new SoundTrigger.Keyphrase(keyphraseId, recognitionModes, modelLocale, text, users)};
                                    UUID vendorUuid = vendorUuidString != null ? UUID.fromString(vendorUuidString) : null;
                                    SoundTrigger.KeyphraseSoundModel model = new SoundTrigger.KeyphraseSoundModel(UUID.fromString(modelUuid), vendorUuid, data, keyphrases, version);
                                    c.close();
                                    db.close();
                                    return model;
                                }
                                th = th;
                                c.close();
                                db.close();
                                throw th;
                            }
                            Slog.w(TAG, "Ignoring SoundModel since it doesn't specify users");
                        }
                    }
                    try {
                    } catch (Throwable th) {
                        th = th;
                    }
                } while (c.moveToNext());
            }
            c.close();
            db.close();
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static String getCommaSeparatedString(int[] users) {
        if (users == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < users.length; i++) {
            if (i != 0) {
                sb.append(',');
            }
            sb.append(users[i]);
        }
        return sb.toString();
    }

    private static int[] getArrayForCommaSeparatedString(String text) {
        if (TextUtils.isEmpty(text)) {
            return null;
        }
        String[] usersStr = text.split(",");
        int[] users = new int[usersStr.length];
        for (int i = 0; i < usersStr.length; i++) {
            users[i] = Integer.parseInt(usersStr[i]);
        }
        return users;
    }

    private static class SoundModelRecord {
        public final byte[] data;
        public final String hintText;
        public final int keyphraseId;
        public final String locale;
        public final String modelUuid;
        public final int recognitionModes;
        public final int type;
        public final String users;
        public final String vendorUuid;

        public SoundModelRecord(int version, Cursor c) {
            this.modelUuid = c.getString(c.getColumnIndex("model_uuid"));
            if (version >= 5) {
                this.vendorUuid = c.getString(c.getColumnIndex("vendor_uuid"));
            } else {
                this.vendorUuid = null;
            }
            this.keyphraseId = c.getInt(c.getColumnIndex(SoundModelContract.KEY_KEYPHRASE_ID));
            this.type = c.getInt(c.getColumnIndex(SoundModelContract.KEY_TYPE));
            this.data = c.getBlob(c.getColumnIndex("data"));
            this.recognitionModes = c.getInt(c.getColumnIndex(SoundModelContract.KEY_RECOGNITION_MODES));
            this.locale = c.getString(c.getColumnIndex(SoundModelContract.KEY_LOCALE));
            this.hintText = c.getString(c.getColumnIndex(SoundModelContract.KEY_HINT_TEXT));
            this.users = c.getString(c.getColumnIndex(SoundModelContract.KEY_USERS));
        }

        private boolean V6PrimaryKeyMatches(SoundModelRecord record) {
            return this.keyphraseId == record.keyphraseId && stringComparisonHelper(this.locale, record.locale) && stringComparisonHelper(this.users, record.users);
        }

        public boolean ifViolatesV6PrimaryKeyIsFirstOfAnyDuplicates(List<SoundModelRecord> records) {
            for (SoundModelRecord record : records) {
                if (this != record && V6PrimaryKeyMatches(record) && !Arrays.equals(this.data, record.data)) {
                    return false;
                }
            }
            Iterator<SoundModelRecord> it = records.iterator();
            while (it.hasNext()) {
                SoundModelRecord record2 = it.next();
                if (V6PrimaryKeyMatches(record2)) {
                    return this == record2;
                }
            }
            return true;
        }

        public long writeToDatabase(int version, SQLiteDatabase db) {
            ContentValues values = new ContentValues();
            values.put("model_uuid", this.modelUuid);
            if (version >= 5) {
                values.put("vendor_uuid", this.vendorUuid);
            }
            values.put(SoundModelContract.KEY_KEYPHRASE_ID, Integer.valueOf(this.keyphraseId));
            values.put(SoundModelContract.KEY_TYPE, Integer.valueOf(this.type));
            values.put("data", this.data);
            values.put(SoundModelContract.KEY_RECOGNITION_MODES, Integer.valueOf(this.recognitionModes));
            values.put(SoundModelContract.KEY_LOCALE, this.locale);
            values.put(SoundModelContract.KEY_HINT_TEXT, this.hintText);
            values.put(SoundModelContract.KEY_USERS, this.users);
            return db.insertWithOnConflict(SoundModelContract.TABLE, null, values, 5);
        }

        private static boolean stringComparisonHelper(String a, String b) {
            if (a != null) {
                return a.equals(b);
            }
            return a == b;
        }
    }

    public void dump(PrintWriter pw) {
        synchronized (this) {
            SQLiteDatabase db = getReadableDatabase();
            Cursor c = db.rawQuery("SELECT  * FROM sound_model", null);
            try {
                pw.println("  Enrolled KeyphraseSoundModels:");
                if (c.moveToFirst()) {
                    String[] columnNames = c.getColumnNames();
                    do {
                        for (String name : columnNames) {
                            int colNameIndex = c.getColumnIndex(name);
                            int type = c.getType(colNameIndex);
                            if (type != 0) {
                                if (type == 1) {
                                    pw.printf("    %s: %d\n", name, Integer.valueOf(c.getInt(colNameIndex)));
                                } else if (type == 2) {
                                    pw.printf("    %s: %f\n", name, Float.valueOf(c.getFloat(colNameIndex)));
                                } else if (type == 3) {
                                    pw.printf("    %s: %s\n", name, c.getString(colNameIndex));
                                } else if (type == 4) {
                                    pw.printf("    %s: data blob\n", name);
                                }
                            } else {
                                pw.printf("    %s: null\n", name);
                            }
                        }
                        pw.println();
                    } while (c.moveToNext());
                }
                c.close();
                db.close();
            } catch (Throwable th) {
                c.close();
                db.close();
                throw th;
            }
        }
    }
}

package com.android.launcher3.util;

import android.content.Context;
import android.content.ContextWrapper;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: classes.dex */
public abstract class NoLocaleSQLiteHelper extends SQLiteOpenHelper {
    private static final boolean ATLEAST_P = true;

    /* JADX WARN: Illegal instructions before constructor call */
    public NoLocaleSQLiteHelper(Context context, String str, int i) {
        boolean z = ATLEAST_P;
        super(z ? context : new NoLocalContext(context), str, (SQLiteDatabase.CursorFactory) null, i);
        if (z) {
            setOpenParams(new SQLiteDatabase.OpenParams.Builder().addOpenFlags(16).build());
        }
    }

    private static class NoLocalContext extends ContextWrapper {
        public NoLocalContext(Context context) {
            super(context);
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public SQLiteDatabase openOrCreateDatabase(String str, int i, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
            return super.openOrCreateDatabase(str, i | 16, cursorFactory, databaseErrorHandler);
        }
    }
}

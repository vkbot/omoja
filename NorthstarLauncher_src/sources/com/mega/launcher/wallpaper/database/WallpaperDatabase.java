package com.mega.launcher.wallpaper.database;

import android.content.Context;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WallpaperDatabase.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&¨\u0006\u0006"}, d2 = {"Lcom/mega/launcher/wallpaper/database/WallpaperDatabase;", "Landroidx/room/RoomDatabase;", "()V", "wallpaperDao", "Lcom/mega/launcher/wallpaper/database/WallpaperDao;", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class WallpaperDatabase extends RoomDatabase {
    private static WallpaperDatabase INSTANCE;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final WallpaperDatabase$Companion$MIGRATION_1_2$1 MIGRATION_1_2 = new Migration() { // from class: com.mega.launcher.wallpaper.database.WallpaperDatabase$Companion$MIGRATION_1_2$1
        @Override // androidx.room.migration.Migration
        public void migrate(SupportSQLiteDatabase database) {
            Intrinsics.checkNotNullParameter(database, "database");
            database.execSQL("ALTER TABLE Wallpaper ADD COLUMN wallpaperId TEXT");
        }
    };
    private static final WallpaperDatabase$Companion$MIGRATION_2_3$1 MIGRATION_2_3 = new Migration() { // from class: com.mega.launcher.wallpaper.database.WallpaperDatabase$Companion$MIGRATION_2_3$1
        @Override // androidx.room.migration.Migration
        public void migrate(SupportSQLiteDatabase database) {
            Intrinsics.checkNotNullParameter(database, "database");
            database.execSQL("ALTER TABLE Wallpaper ADD COLUMN hide INTEGER");
        }
    };
    private static final WallpaperDatabase$Companion$MIGRATION_3_4$1 MIGRATION_3_4 = new Migration() { // from class: com.mega.launcher.wallpaper.database.WallpaperDatabase$Companion$MIGRATION_3_4$1
        @Override // androidx.room.migration.Migration
        public void migrate(SupportSQLiteDatabase database) {
            Intrinsics.checkNotNullParameter(database, "database");
            database.execSQL("ALTER TABLE Wallpaper ADD COLUMN rank INTEGER NOT NULL DEFAULT 0;");
            database.execSQL("ALTER TABLE Wallpaper ADD COLUMN flags INTEGER NOT NULL DEFAULT 0;");
        }
    };
    private static final WallpaperDatabase$Companion$MIGRATION_4_5$1 MIGRATION_4_5 = new Migration() { // from class: com.mega.launcher.wallpaper.database.WallpaperDatabase$Companion$MIGRATION_4_5$1
        @Override // androidx.room.migration.Migration
        public void migrate(SupportSQLiteDatabase database) {
            Intrinsics.checkNotNullParameter(database, "database");
            database.execSQL("ALTER TABLE Wallpaper ADD COLUMN day_path TEXT;");
            database.execSQL("ALTER TABLE Wallpaper ADD COLUMN night_path TEXT;");
        }
    };

    public abstract WallpaperDao wallpaperDao();

    /* JADX INFO: compiled from: WallpaperDatabase.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000*\u0004\u0006\t\f\u000f\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u0010\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR\u0010\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/mega/launcher/wallpaper/database/WallpaperDatabase$Companion;", "", "()V", "INSTANCE", "Lcom/mega/launcher/wallpaper/database/WallpaperDatabase;", "MIGRATION_1_2", "com/mega/launcher/wallpaper/database/WallpaperDatabase$Companion$MIGRATION_1_2$1", "Lcom/mega/launcher/wallpaper/database/WallpaperDatabase$Companion$MIGRATION_1_2$1;", "MIGRATION_2_3", "com/mega/launcher/wallpaper/database/WallpaperDatabase$Companion$MIGRATION_2_3$1", "Lcom/mega/launcher/wallpaper/database/WallpaperDatabase$Companion$MIGRATION_2_3$1;", "MIGRATION_3_4", "com/mega/launcher/wallpaper/database/WallpaperDatabase$Companion$MIGRATION_3_4$1", "Lcom/mega/launcher/wallpaper/database/WallpaperDatabase$Companion$MIGRATION_3_4$1;", "MIGRATION_4_5", "com/mega/launcher/wallpaper/database/WallpaperDatabase$Companion$MIGRATION_4_5$1", "Lcom/mega/launcher/wallpaper/database/WallpaperDatabase$Companion$MIGRATION_4_5$1;", "getDatabase", "context", "Landroid/content/Context;", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WallpaperDatabase getDatabase(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (WallpaperDatabase.INSTANCE == null) {
                synchronized (WallpaperDatabase.class) {
                    if (WallpaperDatabase.INSTANCE == null) {
                        Companion companion = WallpaperDatabase.INSTANCE;
                        WallpaperDatabase.INSTANCE = (WallpaperDatabase) Room.databaseBuilder(context.getApplicationContext(), WallpaperDatabase.class, "wallpaper.db").allowMainThreadQueries().fallbackToDestructiveMigrationOnDowngrade().addMigrations(WallpaperDatabase.MIGRATION_1_2).addMigrations(WallpaperDatabase.MIGRATION_2_3).addMigrations(WallpaperDatabase.MIGRATION_3_4).addMigrations(WallpaperDatabase.MIGRATION_4_5).build();
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
            WallpaperDatabase wallpaperDatabase = WallpaperDatabase.INSTANCE;
            Intrinsics.checkNotNull(wallpaperDatabase);
            return wallpaperDatabase;
        }
    }
}

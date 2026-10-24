.class public abstract Landroidx/work/impl/WorkDatabase;
.super Landroidx/room/q;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Landroidx/room/Database;
    entities = {
        Landroidx/work/impl/model/Dependency;,
        Landroidx/work/impl/model/WorkSpec;,
        Landroidx/work/impl/model/WorkTag;,
        Landroidx/work/impl/model/SystemIdInfo;,
        Landroidx/work/impl/model/WorkName;,
        Landroidx/work/impl/model/WorkProgress;,
        Landroidx/work/impl/model/Preference;
    }
    version = 0xc
.end annotation

.annotation build Landroidx/room/TypeConverters;
    value = {
        Landroidx/work/Data;,
        Landroidx/work/impl/model/WorkTypeConverters;
    }
.end annotation


# static fields
.field private static final PRUNE_SQL_FORMAT_PREFIX:Ljava/lang/String; = "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < "

.field private static final PRUNE_SQL_FORMAT_SUFFIX:Ljava/lang/String; = " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

.field private static final PRUNE_THRESHOLD_MILLIS:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/WorkDatabase;->PRUNE_THRESHOLD_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/q;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
    .locals 19
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    new-instance v3, Landroidx/room/n;

    invoke-direct {v3, v0, v1}, Landroidx/room/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v2, v3, Landroidx/room/n;->h:Z

    :goto_0
    move-object/from16 v4, p1

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/work/impl/WorkDatabasePathHelper;->getWorkDatabaseName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Landroidx/room/n;

    invoke-direct {v4, v0, v3}, Landroidx/room/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Landroidx/work/impl/WorkDatabase$1;

    invoke-direct {v3, v0}, Landroidx/work/impl/WorkDatabase$1;-><init>(Landroid/content/Context;)V

    iput-object v3, v4, Landroidx/room/n;->g:Lt0/d;

    move-object v3, v4

    goto :goto_0

    :goto_1
    iput-object v4, v3, Landroidx/room/n;->e:Ljava/util/concurrent/Executor;

    invoke-static {}, Landroidx/work/impl/WorkDatabase;->generateCleanupCallback()Landroidx/room/o;

    move-result-object v4

    iget-object v5, v3, Landroidx/room/n;->d:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Landroidx/room/n;->d:Ljava/util/ArrayList;

    :cond_1
    iget-object v5, v3, Landroidx/room/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v4, v2, [Lr0/a;

    sget-object v5, Landroidx/work/impl/WorkDatabaseMigrations;->MIGRATION_1_2:Lr0/a;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroidx/room/n;->a([Lr0/a;)V

    new-array v4, v2, [Lr0/a;

    new-instance v5, Landroidx/work/impl/WorkDatabaseMigrations$RescheduleMigration;

    const/4 v7, 0x2

    const/4 v8, 0x3

    invoke-direct {v5, v0, v7, v8}, Landroidx/work/impl/WorkDatabaseMigrations$RescheduleMigration;-><init>(Landroid/content/Context;II)V

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroidx/room/n;->a([Lr0/a;)V

    new-array v4, v2, [Lr0/a;

    sget-object v5, Landroidx/work/impl/WorkDatabaseMigrations;->MIGRATION_3_4:Lr0/a;

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroidx/room/n;->a([Lr0/a;)V

    new-array v4, v2, [Lr0/a;

    sget-object v5, Landroidx/work/impl/WorkDatabaseMigrations;->MIGRATION_4_5:Lr0/a;

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroidx/room/n;->a([Lr0/a;)V

    new-array v4, v2, [Lr0/a;

    new-instance v5, Landroidx/work/impl/WorkDatabaseMigrations$RescheduleMigration;

    const/4 v7, 0x5

    const/4 v8, 0x6

    invoke-direct {v5, v0, v7, v8}, Landroidx/work/impl/WorkDatabaseMigrations$RescheduleMigration;-><init>(Landroid/content/Context;II)V

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroidx/room/n;->a([Lr0/a;)V

    new-array v4, v2, [Lr0/a;

    sget-object v5, Landroidx/work/impl/WorkDatabaseMigrations;->MIGRATION_6_7:Lr0/a;

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroidx/room/n;->a([Lr0/a;)V

    new-array v4, v2, [Lr0/a;

    sget-object v5, Landroidx/work/impl/WorkDatabaseMigrations;->MIGRATION_7_8:Lr0/a;

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroidx/room/n;->a([Lr0/a;)V

    new-array v4, v2, [Lr0/a;

    sget-object v5, Landroidx/work/impl/WorkDatabaseMigrations;->MIGRATION_8_9:Lr0/a;

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroidx/room/n;->a([Lr0/a;)V

    new-array v4, v2, [Lr0/a;

    new-instance v5, Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration9To10;

    invoke-direct {v5, v0}, Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration9To10;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroidx/room/n;->a([Lr0/a;)V

    new-array v4, v2, [Lr0/a;

    new-instance v5, Landroidx/work/impl/WorkDatabaseMigrations$RescheduleMigration;

    const/16 v7, 0xa

    const/16 v8, 0xb

    invoke-direct {v5, v0, v7, v8}, Landroidx/work/impl/WorkDatabaseMigrations$RescheduleMigration;-><init>(Landroid/content/Context;II)V

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroidx/room/n;->a([Lr0/a;)V

    new-array v0, v2, [Lr0/a;

    sget-object v4, Landroidx/work/impl/WorkDatabaseMigrations;->MIGRATION_11_12:Lr0/a;

    aput-object v4, v0, v6

    invoke-virtual {v3, v0}, Landroidx/room/n;->a([Lr0/a;)V

    iput-boolean v6, v3, Landroidx/room/n;->j:Z

    iput-boolean v2, v3, Landroidx/room/n;->k:Z

    iget-object v8, v3, Landroidx/room/n;->c:Landroid/content/Context;

    if-eqz v8, :cond_9

    iget-object v0, v3, Landroidx/room/n;->a:Ljava/lang/Class;

    if-eqz v0, :cond_8

    iget-object v4, v3, Landroidx/room/n;->e:Ljava/util/concurrent/Executor;

    if-nez v4, :cond_2

    iget-object v5, v3, Landroidx/room/n;->f:Ljava/util/concurrent/Executor;

    if-nez v5, :cond_2

    sget-object v4, Lg/b;->c:Lg/a;

    iput-object v4, v3, Landroidx/room/n;->f:Ljava/util/concurrent/Executor;

    iput-object v4, v3, Landroidx/room/n;->e:Ljava/util/concurrent/Executor;

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    iget-object v5, v3, Landroidx/room/n;->f:Ljava/util/concurrent/Executor;

    if-nez v5, :cond_3

    iput-object v4, v3, Landroidx/room/n;->f:Ljava/util/concurrent/Executor;

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    iget-object v4, v3, Landroidx/room/n;->f:Ljava/util/concurrent/Executor;

    if-eqz v4, :cond_4

    iput-object v4, v3, Landroidx/room/n;->e:Ljava/util/concurrent/Executor;

    :cond_4
    :goto_2
    iget-object v4, v3, Landroidx/room/n;->g:Lt0/d;

    if-nez v4, :cond_5

    new-instance v4, Ly1/e;

    const/16 v5, 0x9

    invoke-direct {v4, v5, v1}, Ly1/e;-><init>(ILjava/lang/Object;)V

    iput-object v4, v3, Landroidx/room/n;->g:Lt0/d;

    :cond_5
    new-instance v1, Landroidx/room/a;

    iget-object v9, v3, Landroidx/room/n;->b:Ljava/lang/String;

    iget-object v10, v3, Landroidx/room/n;->g:Lt0/d;

    iget-object v11, v3, Landroidx/room/n;->l:Landroidx/room/p;

    iget-object v12, v3, Landroidx/room/n;->d:Ljava/util/ArrayList;

    iget-boolean v13, v3, Landroidx/room/n;->h:Z

    iget-object v4, v3, Landroidx/room/n;->i:Landroidx/room/RoomDatabase$JournalMode;

    invoke-virtual {v4, v8}, Landroidx/room/RoomDatabase$JournalMode;->resolve(Landroid/content/Context;)Landroidx/room/RoomDatabase$JournalMode;

    move-result-object v14

    iget-object v15, v3, Landroidx/room/n;->e:Ljava/util/concurrent/Executor;

    iget-object v4, v3, Landroidx/room/n;->f:Ljava/util/concurrent/Executor;

    iget-boolean v5, v3, Landroidx/room/n;->j:Z

    iget-boolean v3, v3, Landroidx/room/n;->k:Z

    move-object v7, v1

    move-object/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v3

    invoke-direct/range {v7 .. v18}, Landroidx/room/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lt0/d;Landroidx/room/p;Ljava/util/ArrayList;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZ)V

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    const/16 v6, 0x5f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_Impl"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v3, v2

    goto :goto_4

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v0, Landroidx/room/q;

    invoke-virtual {v0, v1}, Landroidx/room/q;->init(Landroidx/room/a;)V

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    return-object v0

    :catch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create an instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot access the constructor"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cannot find implementation for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not exist"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot provide null context for the database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateCleanupCallback()Landroidx/room/o;
    .locals 1

    new-instance v0, Landroidx/work/impl/WorkDatabase$2;

    invoke-direct {v0}, Landroidx/work/impl/WorkDatabase$2;-><init>()V

    return-object v0
.end method

.method public static getPruneDate()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroidx/work/impl/WorkDatabase;->PRUNE_THRESHOLD_MILLIS:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPruneSQL()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/impl/WorkDatabase;->getPruneDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract dependencyDao()Landroidx/work/impl/model/DependencyDao;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract preferenceDao()Landroidx/work/impl/model/PreferenceDao;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract rawWorkInfoDao()Landroidx/work/impl/model/RawWorkInfoDao;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract systemIdInfoDao()Landroidx/work/impl/model/SystemIdInfoDao;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract workNameDao()Landroidx/work/impl/model/WorkNameDao;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract workProgressDao()Landroidx/work/impl/model/WorkProgressDao;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract workSpecDao()Landroidx/work/impl/model/WorkSpecDao;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract workTagDao()Landroidx/work/impl/model/WorkTagDao;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

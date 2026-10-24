.class public final Landroidx/work/impl/model/WorkSpecDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/model/WorkSpecDao;


# instance fields
.field private final __db:Landroidx/room/q;

.field private final __insertionAdapterOfWorkSpec:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDelete:Landroidx/room/y;

.field private final __preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/y;

.field private final __preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/y;

.field private final __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/y;

.field private final __preparedStmtOfResetScheduledState:Landroidx/room/y;

.field private final __preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/y;

.field private final __preparedStmtOfSetOutput:Landroidx/room/y;

.field private final __preparedStmtOfSetPeriodStartTime:Landroidx/room/y;


# direct methods
.method public constructor <init>(Landroidx/room/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$1;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/q;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/room/b;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/q;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/y;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/q;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/y;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$4;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$4;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/q;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Landroidx/room/y;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$5;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$5;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/q;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/y;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$6;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$6;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/q;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/y;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$7;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$7;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/q;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/y;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$8;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$8;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/q;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/y;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$9;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$9;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/q;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/y;

    return-void
.end method

.method private __fetchRelationshipWorkProgressAsandroidxWorkData(Lk/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lk/b;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lk/g;

    invoke-virtual {v0}, Lk/g;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p1, Lk/j;->c:I

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    if-le v1, v2, :cond_4

    new-instance v0, Lk/b;

    invoke-direct {v0, v2}, Lk/b;-><init>(I)V

    iget v1, p1, Lk/j;->c:I

    move v4, v3

    move v5, v4

    :cond_1
    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {p1, v4}, Lk/j;->h(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lk/j;->j(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v7}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_1

    invoke-direct {p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Lk/b;)V

    new-instance v0, Lk/b;

    invoke-direct {v0, v2}, Lk/b;-><init>(I)V

    move v5, v3

    goto :goto_0

    :cond_2
    if-lez v5, :cond_3

    invoke-direct {p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Lk/b;)V

    :cond_3
    return-void

    :cond_4
    const-string v1, "SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN ("

    invoke-static {v1}, La/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lk/g;->size()I

    move-result v2

    invoke-static {v1, v2}, Ls0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v2, v3

    invoke-static {v2, v1}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v1

    invoke-virtual {v0}, Lk/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_5

    invoke-virtual {v1, v2}, Landroidx/room/u;->u(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v2, v4}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-static {p0, v1, v3}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v0, "work_spec_id"

    invoke-static {p0, v0}, Ls0/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :cond_7
    :goto_3
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private __fetchRelationshipWorkTagAsjavaLangString(Lk/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lk/b;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lk/g;

    invoke-virtual {v0}, Lk/g;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p1, Lk/j;->c:I

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    if-le v1, v2, :cond_4

    new-instance v0, Lk/b;

    invoke-direct {v0, v2}, Lk/b;-><init>(I)V

    iget v1, p1, Lk/j;->c:I

    move v4, v3

    move v5, v4

    :cond_1
    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {p1, v4}, Lk/j;->h(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lk/j;->j(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v7}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_1

    invoke-direct {p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Lk/b;)V

    new-instance v0, Lk/b;

    invoke-direct {v0, v2}, Lk/b;-><init>(I)V

    move v5, v3

    goto :goto_0

    :cond_2
    if-lez v5, :cond_3

    invoke-direct {p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Lk/b;)V

    :cond_3
    return-void

    :cond_4
    const-string v1, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    invoke-static {v1}, La/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lk/g;->size()I

    move-result v2

    invoke-static {v1, v2}, Ls0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v2, v3

    invoke-static {v2, v1}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v1

    invoke-virtual {v0}, Lk/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_5

    invoke-virtual {v1, v2}, Landroidx/room/u;->u(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v2, v4}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-static {p0, v1, v3}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v0, "work_spec_id"

    invoke-static {p0, v0}, Ls0/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :cond_7
    :goto_3
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public static synthetic access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/q;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    return-object p0
.end method

.method public static synthetic access$100(Landroidx/work/impl/model/WorkSpecDao_Impl;Lk/b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Lk/b;)V

    return-void
.end method

.method public static synthetic access$200(Landroidx/work/impl/model/WorkSpecDao_Impl;Lk/b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Lk/b;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/y;

    invoke-virtual {v0}, Landroidx/room/y;->acquire()Lt0/g;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move-object p1, v0

    check-cast p1, Lu0/f;

    invoke-virtual {p1, v1}, Lu0/f;->q(I)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    check-cast v2, Lu0/f;

    invoke-virtual {v2, v1, p1}, Lu0/f;->u(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    move-object p1, v0

    check-cast p1, Lu0/g;

    invoke-virtual {p1}, Lu0/g;->B()I

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v1}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/y;

    invoke-virtual {p0, p1}, Landroidx/room/y;->release(Lt0/g;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v1}, Landroidx/room/q;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/y;

    invoke-virtual {p0, v0}, Landroidx/room/y;->release(Lt0/g;)V

    throw p1
.end method

.method public getAllEligibleWorkSpecsForScheduling(I)Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?"

    const/4 v2, 0x1

    invoke-static {v2, v1}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v1

    move/from16 v3, p1

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/u;->q(IJ)V

    iget-object v3, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v3}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v4, v0}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "requires_charging"

    invoke-static {v4, v5}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    invoke-static {v4, v6}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    invoke-static {v4, v7}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    invoke-static {v4, v8}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    invoke-static {v4, v9}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    invoke-static {v4, v10}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    invoke-static {v4, v11}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    invoke-static {v4, v12}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    invoke-static {v4, v13}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    invoke-static {v4, v14}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    invoke-static {v4, v15}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input"

    invoke-static {v4, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "output"

    invoke-static {v4, v3}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "initial_delay"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "interval_duration"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "flex_duration"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "run_attempt_count"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "backoff_policy"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "backoff_delay_duration"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "period_start_time"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "minimum_retention_duration"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "schedule_requested_at"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "run_in_foreground"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v27, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v28, v12

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v29, v14

    new-instance v14, Landroidx/work/Constraints;

    invoke-direct {v14}, Landroidx/work/Constraints;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v31, v0

    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v14, v0}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v14, v0}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v14, v0}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v14, v0}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    move v0, v5

    move/from16 v30, v6

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    new-instance v5, Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v5, v3, v12}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v3

    iput-object v3, v5, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v3

    iput-object v3, v5, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    move/from16 v3, v27

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-static {v6}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v6

    iput-object v6, v5, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    move/from16 v6, p1

    move/from16 p1, v2

    move/from16 v27, v3

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v5, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move v12, v6

    move v3, v7

    move/from16 v2, v17

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move/from16 v17, v2

    move v7, v3

    move/from16 v6, v18

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v5, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move/from16 v2, v19

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v5, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v3, v20

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v19, v0

    invoke-static/range {v18 .. v18}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v0

    iput-object v0, v5, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v5, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move v3, v6

    move/from16 v21, v7

    move/from16 v2, v22

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move/from16 v22, v2

    move v7, v3

    move/from16 v6, v23

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v5, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move/from16 v23, v6

    move v3, v7

    move/from16 v2, v24

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v6, v25

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    :goto_5
    iput-boolean v7, v5, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    move/from16 v7, v26

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v25, v0

    invoke-static/range {v24 .. v24}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v0

    iput-object v0, v5, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    iput-object v14, v5, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v24, v2

    move/from16 v26, v7

    move/from16 v5, v19

    move/from16 v7, v21

    move/from16 v21, v25

    move/from16 v14, v29

    move/from16 v0, v31

    move/from16 v2, p1

    move/from16 v25, v6

    move/from16 p1, v12

    move/from16 v19, v18

    move/from16 v12, v28

    move/from16 v6, v30

    move/from16 v18, v3

    goto/16 :goto_0

    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/u;->B()V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/u;->B()V

    throw v0
.end method

.method public getAllUnfinishedWork()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v2}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-static {p0, v0, v1}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    throw v1
.end method

.method public getAllWorkSpecIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id FROM workspec"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v2}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-static {p0, v0, v1}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    throw v1
.end method

.method public getAllWorkSpecIdsLiveData()Landroidx/lifecycle/t;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/t;"
        }
    .end annotation

    const-string v0, "SELECT id FROM workspec"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v1}, Landroidx/room/q;->getInvalidationTracker()Landroidx/room/i;

    move-result-object v1

    const-string v2, "workspec"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$10;

    invoke-direct {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$10;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/u;)V

    const/4 p0, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroidx/room/i;->b([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/room/w;

    move-result-object p0

    return-object p0
.end method

.method public getEligibleWorkForScheduling(I)Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    const/4 v2, 0x1

    invoke-static {v2, v1}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v1

    move/from16 v3, p1

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/u;->q(IJ)V

    iget-object v3, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v3}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v4, v0}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "requires_charging"

    invoke-static {v4, v5}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    invoke-static {v4, v6}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    invoke-static {v4, v7}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    invoke-static {v4, v8}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    invoke-static {v4, v9}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    invoke-static {v4, v10}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    invoke-static {v4, v11}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    invoke-static {v4, v12}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    invoke-static {v4, v13}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    invoke-static {v4, v14}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    invoke-static {v4, v15}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input"

    invoke-static {v4, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "output"

    invoke-static {v4, v3}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "initial_delay"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "interval_duration"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "flex_duration"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "run_attempt_count"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "backoff_policy"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "backoff_delay_duration"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "period_start_time"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "minimum_retention_duration"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "schedule_requested_at"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "run_in_foreground"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v27, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v28, v12

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v29, v14

    new-instance v14, Landroidx/work/Constraints;

    invoke-direct {v14}, Landroidx/work/Constraints;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v31, v0

    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v14, v0}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v14, v0}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v14, v0}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v14, v0}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    move v0, v5

    move/from16 v30, v6

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    new-instance v5, Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v5, v3, v12}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v3

    iput-object v3, v5, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v3

    iput-object v3, v5, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    move/from16 v3, v27

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-static {v6}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v6

    iput-object v6, v5, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    move/from16 v6, p1

    move/from16 p1, v2

    move/from16 v27, v3

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v5, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move v12, v6

    move v3, v7

    move/from16 v2, v17

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move/from16 v17, v2

    move v7, v3

    move/from16 v6, v18

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v5, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move/from16 v2, v19

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v5, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v3, v20

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v19, v0

    invoke-static/range {v18 .. v18}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v0

    iput-object v0, v5, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v5, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move v3, v6

    move/from16 v21, v7

    move/from16 v2, v22

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move/from16 v22, v2

    move v7, v3

    move/from16 v6, v23

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v5, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move/from16 v23, v6

    move v3, v7

    move/from16 v2, v24

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v6, v25

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    :goto_5
    iput-boolean v7, v5, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    move/from16 v7, v26

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v25, v0

    invoke-static/range {v24 .. v24}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v0

    iput-object v0, v5, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    iput-object v14, v5, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v24, v2

    move/from16 v26, v7

    move/from16 v5, v19

    move/from16 v7, v21

    move/from16 v21, v25

    move/from16 v14, v29

    move/from16 v0, v31

    move/from16 v2, p1

    move/from16 v25, v6

    move/from16 p1, v12

    move/from16 v19, v18

    move/from16 v12, v28

    move/from16 v6, v30

    move/from16 v18, v3

    goto/16 :goto_0

    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/u;->B()V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/u;->B()V

    throw v0
.end method

.method public getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/Data;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->u(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    throw p1
.end method

.method public getRecentlyCompletedWork(J)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC"

    const/4 v2, 0x1

    invoke-static {v2, v1}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v1

    move-wide/from16 v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/u;->q(IJ)V

    iget-object v3, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v3}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v4, v0}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "requires_charging"

    invoke-static {v4, v5}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    invoke-static {v4, v6}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    invoke-static {v4, v7}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    invoke-static {v4, v8}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    invoke-static {v4, v9}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    invoke-static {v4, v10}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    invoke-static {v4, v11}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    invoke-static {v4, v12}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    invoke-static {v4, v13}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    invoke-static {v4, v14}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    invoke-static {v4, v15}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input"

    invoke-static {v4, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "output"

    invoke-static {v4, v3}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "initial_delay"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "interval_duration"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p2, v1

    const-string v1, "flex_duration"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "run_attempt_count"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "backoff_policy"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "backoff_delay_duration"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "period_start_time"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "minimum_retention_duration"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "schedule_requested_at"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "run_in_foreground"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v26, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v27, v12

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v28, v14

    new-instance v14, Landroidx/work/Constraints;

    invoke-direct {v14}, Landroidx/work/Constraints;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v30, v0

    invoke-static/range {v29 .. v29}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v14, v0}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v14, v0}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v14, v0}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v14, v0}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    move v0, v5

    move/from16 v29, v6

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    new-instance v5, Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v5, v3, v12}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v3

    iput-object v3, v5, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v3

    iput-object v3, v5, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    move/from16 v3, v26

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-static {v6}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v6

    iput-object v6, v5, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    move/from16 v6, p1

    move/from16 p1, v2

    move/from16 v26, v3

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v5, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move/from16 v2, p2

    move v3, v6

    move/from16 p2, v7

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move v7, v2

    move v12, v3

    move/from16 v6, v17

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v5, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move/from16 v2, v18

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v5, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v3, v19

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v18, v0

    invoke-static/range {v17 .. v17}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v0

    iput-object v0, v5, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    move/from16 v17, v2

    move/from16 v19, v3

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v5, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move v3, v6

    move/from16 v20, v7

    move/from16 v2, v21

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move/from16 v21, v2

    move v7, v3

    move/from16 v6, v22

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v5, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move/from16 v22, v6

    move v3, v7

    move/from16 v2, v23

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v6, v24

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    :goto_5
    iput-boolean v7, v5, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    move/from16 v7, v25

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v24, v0

    invoke-static/range {v23 .. v23}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v0

    iput-object v0, v5, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    iput-object v14, v5, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v2

    move/from16 v25, v7

    move/from16 v5, v18

    move/from16 v14, v28

    move/from16 v0, v30

    move/from16 v2, p1

    move/from16 v7, p2

    move/from16 p1, v12

    move/from16 v18, v17

    move/from16 p2, v20

    move/from16 v20, v24

    move/from16 v12, v27

    move/from16 v17, v3

    move/from16 v24, v6

    move/from16 v6, v29

    goto/16 :goto_0

    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/u;->B()V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/u;->B()V

    throw v0
.end method

.method public getRunningWork()Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=1"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v1

    iget-object v3, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v3}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-static {v0, v1, v2}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v3, v0}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "requires_charging"

    invoke-static {v3, v4}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "requires_device_idle"

    invoke-static {v3, v5}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_battery_not_low"

    invoke-static {v3, v6}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_storage_not_low"

    invoke-static {v3, v7}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "trigger_content_update_delay"

    invoke-static {v3, v8}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_max_content_delay"

    invoke-static {v3, v9}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "content_uri_triggers"

    invoke-static {v3, v10}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "id"

    invoke-static {v3, v11}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "state"

    invoke-static {v3, v12}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "worker_class_name"

    invoke-static {v3, v13}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "input_merger_class_name"

    invoke-static {v3, v14}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input"

    invoke-static {v3, v15}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "output"

    invoke-static {v3, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "initial_delay"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p0, v1

    const-string v1, "interval_duration"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "flex_duration"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "run_attempt_count"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "backoff_policy"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "backoff_delay_duration"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "period_start_time"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "minimum_retention_duration"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "schedule_requested_at"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "run_in_foreground"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v27, v2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v28, v11

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v29, v13

    new-instance v13, Landroidx/work/Constraints;

    invoke-direct {v13}, Landroidx/work/Constraints;-><init>()V

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v31, v0

    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v30, 0x1

    if-eqz v0, :cond_0

    move/from16 v0, v30

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v13, v0}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v0, v30

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v13, v0}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move/from16 v0, v30

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v13, v0}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move/from16 v0, v30

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v13, v0}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    move v0, v4

    move/from16 v32, v5

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-static {v4}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    new-instance v4, Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v4, v2, v11}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v2

    iput-object v2, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v2

    iput-object v2, v4, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    move/from16 v2, v27

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v5

    iput-object v5, v4, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    move/from16 v5, p0

    move/from16 p0, v6

    move v11, v7

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move/from16 v6, v17

    move/from16 v17, v8

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move v8, v5

    move/from16 v7, v18

    move/from16 v18, v6

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move/from16 v5, v19

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v6, v20

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    invoke-static/range {v19 .. v19}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v0

    iput-object v0, v4, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    move/from16 v19, v5

    move/from16 v0, v21

    move/from16 v21, v6

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move/from16 v5, v22

    move/from16 v22, v7

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move/from16 v6, v23

    move/from16 v23, v8

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move v8, v5

    move/from16 v7, v24

    move/from16 v24, v6

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v5, v25

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_4

    move/from16 v6, v30

    goto :goto_5

    :cond_4
    const/4 v6, 0x0

    :goto_5
    iput-boolean v6, v4, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    move/from16 v6, v26

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v26, v0

    invoke-static/range {v25 .. v25}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v0

    iput-object v0, v4, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    iput-object v13, v4, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v27, v2

    move/from16 v25, v5

    move/from16 v4, v20

    move/from16 v20, v21

    move/from16 v21, v26

    move/from16 v13, v29

    move/from16 v0, v31

    move/from16 v5, v32

    move/from16 v26, v6

    move/from16 v6, p0

    move/from16 p0, v23

    move/from16 v23, v24

    move/from16 v24, v7

    move v7, v11

    move/from16 v11, v28

    move/from16 v33, v22

    move/from16 v22, v8

    move/from16 v8, v17

    move/from16 v17, v18

    move/from16 v18, v33

    goto/16 :goto_0

    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/u;->B()V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/u;->B()V

    throw v0
.end method

.method public getScheduleRequestedAtLiveData(Ljava/lang/String;)Landroidx/lifecycle/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/t;"
        }
    .end annotation

    const-string v0, "SELECT schedule_requested_at FROM workspec WHERE id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->u(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->getInvalidationTracker()Landroidx/room/i;

    move-result-object p1

    const-string v1, "workspec"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/model/WorkSpecDao_Impl$14;

    invoke-direct {v2, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$14;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/u;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v1, p0, v2}, Landroidx/room/i;->b([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/room/w;

    move-result-object p0

    return-object p0
.end method

.method public getScheduledWork()Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v1

    iget-object v3, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v3}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-static {v0, v1, v2}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v3, v0}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "requires_charging"

    invoke-static {v3, v4}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "requires_device_idle"

    invoke-static {v3, v5}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_battery_not_low"

    invoke-static {v3, v6}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_storage_not_low"

    invoke-static {v3, v7}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "trigger_content_update_delay"

    invoke-static {v3, v8}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_max_content_delay"

    invoke-static {v3, v9}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "content_uri_triggers"

    invoke-static {v3, v10}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "id"

    invoke-static {v3, v11}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "state"

    invoke-static {v3, v12}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "worker_class_name"

    invoke-static {v3, v13}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "input_merger_class_name"

    invoke-static {v3, v14}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input"

    invoke-static {v3, v15}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "output"

    invoke-static {v3, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "initial_delay"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p0, v1

    const-string v1, "interval_duration"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "flex_duration"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "run_attempt_count"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "backoff_policy"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "backoff_delay_duration"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "period_start_time"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "minimum_retention_duration"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "schedule_requested_at"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "run_in_foreground"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v3, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v27, v2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v28, v11

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v29, v13

    new-instance v13, Landroidx/work/Constraints;

    invoke-direct {v13}, Landroidx/work/Constraints;-><init>()V

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v31, v0

    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v30, 0x1

    if-eqz v0, :cond_0

    move/from16 v0, v30

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v13, v0}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v0, v30

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v13, v0}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move/from16 v0, v30

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v13, v0}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move/from16 v0, v30

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v13, v0}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    move v0, v4

    move/from16 v32, v5

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-static {v4}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    new-instance v4, Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v4, v2, v11}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v2

    iput-object v2, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v2

    iput-object v2, v4, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    move/from16 v2, v27

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v5

    iput-object v5, v4, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    move/from16 v5, p0

    move/from16 p0, v6

    move v11, v7

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move/from16 v6, v17

    move/from16 v17, v8

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move v8, v5

    move/from16 v7, v18

    move/from16 v18, v6

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move/from16 v5, v19

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v6, v20

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    invoke-static/range {v19 .. v19}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v0

    iput-object v0, v4, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    move/from16 v19, v5

    move/from16 v0, v21

    move/from16 v21, v6

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move/from16 v5, v22

    move/from16 v22, v7

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move/from16 v6, v23

    move/from16 v23, v8

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move v8, v5

    move/from16 v7, v24

    move/from16 v24, v6

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v5, v25

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_4

    move/from16 v6, v30

    goto :goto_5

    :cond_4
    const/4 v6, 0x0

    :goto_5
    iput-boolean v6, v4, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    move/from16 v6, v26

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v26, v0

    invoke-static/range {v25 .. v25}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v0

    iput-object v0, v4, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    iput-object v13, v4, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v27, v2

    move/from16 v25, v5

    move/from16 v4, v20

    move/from16 v20, v21

    move/from16 v21, v26

    move/from16 v13, v29

    move/from16 v0, v31

    move/from16 v5, v32

    move/from16 v26, v6

    move/from16 v6, p0

    move/from16 p0, v23

    move/from16 v23, v24

    move/from16 v24, v7

    move v7, v11

    move/from16 v11, v28

    move/from16 v33, v22

    move/from16 v22, v8

    move/from16 v8, v17

    move/from16 v17, v18

    move/from16 v18, v33

    goto/16 :goto_0

    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/u;->B()V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/u;->B()V

    throw v0
.end method

.method public getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;
    .locals 2

    const-string v0, "SELECT state FROM workspec WHERE id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->u(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    throw p1
.end method

.method public getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->u(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    throw p1
.end method

.method public getUnfinishedWorkWithTag(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->u(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    throw p1
.end method

.method public getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE id=?"

    const/4 v3, 0x1

    invoke-static {v3, v2}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v2

    if-nez v1, :cond_0

    invoke-virtual {v2, v3}, Landroidx/room/u;->u(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v1}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_0
    iget-object v1, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v1}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v4, v0}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "requires_charging"

    invoke-static {v4, v5}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    invoke-static {v4, v6}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    invoke-static {v4, v7}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    invoke-static {v4, v8}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    invoke-static {v4, v9}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    invoke-static {v4, v10}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    invoke-static {v4, v11}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    invoke-static {v4, v12}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    invoke-static {v4, v13}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    invoke-static {v4, v14}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    invoke-static {v4, v15}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "input"

    invoke-static {v4, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "output"

    invoke-static {v4, v3}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "initial_delay"

    invoke-static {v4, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "interval_duration"

    invoke-static {v4, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "flex_duration"

    invoke-static {v4, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "run_attempt_count"

    invoke-static {v4, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "backoff_policy"

    invoke-static {v4, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "backoff_delay_duration"

    invoke-static {v4, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "period_start_time"

    invoke-static {v4, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "minimum_retention_duration"

    invoke-static {v4, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "schedule_requested_at"

    invoke-static {v4, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "run_in_foreground"

    invoke-static {v4, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v4, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v26, v2

    new-instance v2, Landroidx/work/Constraints;

    invoke-direct {v2}, Landroidx/work/Constraints;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v2, v0}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v2, v0}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v0, v12, v14}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v5

    iput-object v5, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v1

    iput-object v1, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v1

    iput-object v1, v0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    move/from16 v1, p1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move/from16 v1, v17

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move/from16 v1, v18

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move/from16 v1, v19

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v1, v20

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v1

    iput-object v1, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    move/from16 v1, v21

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move/from16 v1, v22

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move/from16 v1, v23

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move/from16 v1, v24

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v1, v25

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    iput-boolean v3, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    move/from16 v1, v26

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v1

    iput-object v1, v0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    iput-object v2, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/u;->B()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/u;->B()V

    throw v0
.end method

.method public getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$IdAndState;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->u(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "id"

    invoke-static {p0, p1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string v1, "state"

    invoke-static {p0, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroidx/work/impl/model/WorkSpec$IdAndState;

    invoke-direct {v3}, Landroidx/work/impl/model/WorkSpec$IdAndState;-><init>()V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v4

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    throw p1
.end method

.method public getWorkSpecs(Ljava/util/List;)[Landroidx/work/impl/model/WorkSpec;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Landroidx/work/impl/model/WorkSpec;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM workspec WHERE id IN ("

    invoke-static {v1}, La/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ls0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    add-int/2addr v2, v3

    invoke-static {v2, v1}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_0

    invoke-virtual {v1, v4}, Landroidx/room/u;->u(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v4, v5}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v2}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-static {v0, v1, v3}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v2, v0}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "requires_charging"

    invoke-static {v2, v3}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "requires_device_idle"

    invoke-static {v2, v4}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "requires_battery_not_low"

    invoke-static {v2, v5}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_storage_not_low"

    invoke-static {v2, v6}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "trigger_content_update_delay"

    invoke-static {v2, v7}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "trigger_max_content_delay"

    invoke-static {v2, v8}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "content_uri_triggers"

    invoke-static {v2, v9}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "id"

    invoke-static {v2, v10}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "state"

    invoke-static {v2, v11}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "worker_class_name"

    invoke-static {v2, v12}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "input_merger_class_name"

    invoke-static {v2, v13}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "input"

    invoke-static {v2, v14}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "output"

    invoke-static {v2, v15}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "initial_delay"

    invoke-static {v2, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p0, v1

    const-string v1, "interval_duration"

    invoke-static {v2, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "flex_duration"

    invoke-static {v2, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "run_attempt_count"

    invoke-static {v2, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "backoff_policy"

    invoke-static {v2, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "backoff_delay_duration"

    invoke-static {v2, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "period_start_time"

    invoke-static {v2, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "minimum_retention_duration"

    invoke-static {v2, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "schedule_requested_at"

    invoke-static {v2, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "run_in_foreground"

    invoke-static {v2, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v2, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Landroidx/work/impl/model/WorkSpec;

    const/16 v26, 0x0

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v27

    if-eqz v27, :cond_7

    move-object/from16 v27, v1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v28, v10

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v29, v12

    new-instance v12, Landroidx/work/Constraints;

    invoke-direct {v12}, Landroidx/work/Constraints;-><init>()V

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v31, v0

    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v12, v0}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v12, v0}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v12, v0}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v12, v0}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    move v0, v3

    move/from16 v30, v4

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    new-instance v3, Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v3, v1, v10}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v1

    iput-object v1, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v1

    iput-object v1, v3, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v1

    iput-object v1, v3, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    move/from16 v1, p0

    move/from16 p0, v5

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move/from16 v4, p1

    move/from16 p1, v0

    move v5, v1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move v1, v4

    move v10, v5

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move/from16 v4, v18

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v5, v19

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v18, v0

    invoke-static/range {v17 .. v17}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v0

    iput-object v0, v3, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    move/from16 v17, v4

    move/from16 v19, v5

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move/from16 v20, v0

    move v5, v1

    move/from16 v4, v21

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move/from16 v21, v4

    move v1, v5

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move/from16 v22, v0

    move v5, v1

    move/from16 v4, v23

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v0, v24

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    iput-boolean v1, v3, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    move/from16 v1, v25

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v24, v0

    invoke-static/range {v23 .. v23}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v0

    iput-object v0, v3, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    iput-object v12, v3, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    aput-object v3, v27, v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v26, v26, 0x1

    move/from16 v3, p1

    move/from16 v25, v1

    move/from16 v23, v4

    move/from16 p1, v5

    move-object/from16 v1, v27

    move/from16 v12, v29

    move/from16 v4, v30

    move/from16 v0, v31

    move/from16 v5, p0

    move/from16 p0, v10

    move/from16 v10, v28

    move/from16 v32, v18

    move/from16 v18, v17

    move/from16 v17, v32

    goto/16 :goto_2

    :cond_7
    move-object/from16 v27, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/u;->B()V

    return-object v27

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/u;->B()V

    throw v0
.end method

.method public getWorkStatusPojoForId(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .locals 10

    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->u(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-static {p1, v0, v1}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "id"

    invoke-static {p1, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "state"

    invoke-static {p1, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "output"

    invoke-static {p1, v3}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "run_attempt_count"

    invoke-static {p1, v4}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lk/b;

    invoke-direct {v5}, Lk/b;-><init>()V

    new-instance v6, Lk/b;

    invoke-direct {v6}, Lk/b;-><init>()V

    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v7, v9}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7, v8}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-direct {p0, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Lk/b;)V

    invoke-direct {p0, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Lk/b;)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    goto :goto_2

    :cond_4
    move-object v5, v8

    :goto_2
    if-nez v5, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/util/ArrayList;

    :cond_6
    if-nez v8, :cond_7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    new-instance v6, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v6}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v1

    iput-object v1, v6, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v1

    iput-object v1, v6, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    iput-object v5, v6, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    iput-object v8, v6, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    move-object v8, v6

    :cond_8
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v1}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    return-object v8

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    throw p1
.end method

.method public getWorkStatusPojoForIds(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN ("

    invoke-static {v0}, La/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ls0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Landroidx/room/u;->u(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2, v3}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-static {p1, v0, v1}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "id"

    invoke-static {p1, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "state"

    invoke-static {p1, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "output"

    invoke-static {p1, v3}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "run_attempt_count"

    invoke-static {p1, v4}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lk/b;

    invoke-direct {v5}, Lk/b;-><init>()V

    new-instance v6, Lk/b;

    invoke-direct {v6}, Lk/b;-><init>()V

    :cond_2
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v7, v9}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7, v8}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const/4 v7, -0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-direct {p0, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Lk/b;)V

    invoke-direct {p0, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Lk/b;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    goto :goto_4

    :cond_5
    move-object v9, v8

    :goto_4
    if-nez v9, :cond_6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    goto :goto_5

    :cond_7
    move-object v10, v8

    :goto_5
    if-nez v10, :cond_8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    new-instance v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v11}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v12

    iput-object v12, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    invoke-static {v12}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v12

    iput-object v12, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    iput-object v9, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    iput-object v10, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v1}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    return-object v7

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    throw p1
.end method

.method public getWorkStatusPojoForName(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->u(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-static {p1, v0, v1}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "id"

    invoke-static {p1, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "state"

    invoke-static {p1, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "output"

    invoke-static {p1, v3}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "run_attempt_count"

    invoke-static {p1, v4}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lk/b;

    invoke-direct {v5}, Lk/b;-><init>()V

    new-instance v6, Lk/b;

    invoke-direct {v6}, Lk/b;-><init>()V

    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v7, v9}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7, v8}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-direct {p0, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Lk/b;)V

    invoke-direct {p0, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Lk/b;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    goto :goto_3

    :cond_4
    move-object v9, v8

    :goto_3
    if-nez v9, :cond_5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    goto :goto_4

    :cond_6
    move-object v10, v8

    :goto_4
    if-nez v10, :cond_7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    new-instance v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v11}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v12

    iput-object v12, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    invoke-static {v12}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v12

    iput-object v12, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    iput-object v9, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    iput-object v10, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v1}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    return-object v7

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    throw p1
.end method

.method public getWorkStatusPojoForTag(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->u(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-static {p1, v0, v1}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "id"

    invoke-static {p1, v1}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "state"

    invoke-static {p1, v2}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "output"

    invoke-static {p1, v3}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "run_attempt_count"

    invoke-static {p1, v4}, Ls0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lk/b;

    invoke-direct {v5}, Lk/b;-><init>()V

    new-instance v6, Lk/b;

    invoke-direct {v6}, Lk/b;-><init>()V

    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v7, v9}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7, v8}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-direct {p0, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Lk/b;)V

    invoke-direct {p0, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Lk/b;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    goto :goto_3

    :cond_4
    move-object v9, v8

    :goto_3
    if-nez v9, :cond_5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    goto :goto_4

    :cond_6
    move-object v10, v8

    :goto_4
    if-nez v10, :cond_7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    new-instance v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v11}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v12

    iput-object v12, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    invoke-static {v12}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v12

    iput-object v12, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    iput-object v9, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    iput-object v10, v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v1}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    return-object v7

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    throw p1
.end method

.method public getWorkStatusPojoLiveDataForIds(Ljava/util/List;)Landroidx/lifecycle/t;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/t;"
        }
    .end annotation

    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN ("

    invoke-static {v0}, La/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ls0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Landroidx/room/u;->u(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2, v3}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->getInvalidationTracker()Landroidx/room/i;

    move-result-object p1

    const-string v2, "workspec"

    const-string v3, "WorkTag"

    const-string v4, "WorkProgress"

    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$11;

    invoke-direct {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$11;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/u;)V

    invoke-virtual {p1, v2, v1, v3}, Landroidx/room/i;->b([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/room/w;

    move-result-object p0

    return-object p0
.end method

.method public getWorkStatusPojoLiveDataForName(Ljava/lang/String;)Landroidx/lifecycle/t;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/t;"
        }
    .end annotation

    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->u(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->getInvalidationTracker()Landroidx/room/i;

    move-result-object p1

    const-string v2, "WorkTag"

    const-string v3, "WorkProgress"

    const-string v4, "workspec"

    const-string v5, "workname"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$13;

    invoke-direct {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$13;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/u;)V

    invoke-virtual {p1, v2, v1, v3}, Landroidx/room/i;->b([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/room/w;

    move-result-object p0

    return-object p0
.end method

.method public getWorkStatusPojoLiveDataForTag(Ljava/lang/String;)Landroidx/lifecycle/t;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/t;"
        }
    .end annotation

    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->u(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->getInvalidationTracker()Landroidx/room/i;

    move-result-object p1

    const-string v2, "WorkTag"

    const-string v3, "WorkProgress"

    const-string v4, "workspec"

    const-string v5, "worktag"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$12;

    invoke-direct {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$12;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/u;)V

    invoke-virtual {p1, v2, v1, v3}, Landroidx/room/i;->b([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/room/w;

    move-result-object p0

    return-object p0
.end method

.method public hasUnfinishedWork()Z
    .locals 3

    const-string v0, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v2}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-static {p0, v0, v1}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    throw v1
.end method

.method public incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/y;

    invoke-virtual {v0}, Landroidx/room/y;->acquire()Lt0/g;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move-object p1, v0

    check-cast p1, Lu0/f;

    invoke-virtual {p1, v1}, Lu0/f;->q(I)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    check-cast v2, Lu0/f;

    invoke-virtual {v2, v1, p1}, Lu0/f;->u(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    move-object p1, v0

    check-cast p1, Lu0/g;

    invoke-virtual {p1}, Lu0/g;->B()I

    move-result v1

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v2}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/y;

    invoke-virtual {p0, p1}, Landroidx/room/y;->release(Lt0/g;)V

    return v1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v1}, Landroidx/room/q;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/y;

    invoke-virtual {p0, v0}, Landroidx/room/y;->release(Lt0/g;)V

    throw p1
.end method

.method public insertWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    throw p1
.end method

.method public markWorkSpecScheduled(Ljava/lang/String;J)I
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/y;

    invoke-virtual {v0}, Landroidx/room/y;->acquire()Lt0/g;

    move-result-object v0

    const/4 v1, 0x1

    move-object v2, v0

    check-cast v2, Lu0/f;

    invoke-virtual {v2, v1, p2, p3}, Lu0/f;->p(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    move-object p1, v0

    check-cast p1, Lu0/f;

    invoke-virtual {p1, p2}, Lu0/f;->q(I)V

    goto :goto_0

    :cond_0
    move-object p3, v0

    check-cast p3, Lu0/f;

    invoke-virtual {p3, p2, p1}, Lu0/f;->u(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    move-object p1, v0

    check-cast p1, Lu0/g;

    invoke-virtual {p1}, Lu0/g;->B()I

    move-result p1

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p2}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p2}, Landroidx/room/q;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/y;

    invoke-virtual {p0, v0}, Landroidx/room/y;->release(Lt0/g;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p2}, Landroidx/room/q;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/y;

    invoke-virtual {p0, v0}, Landroidx/room/y;->release(Lt0/g;)V

    throw p1
.end method

.method public pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast()V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/y;

    invoke-virtual {v0}, Landroidx/room/y;->acquire()Lt0/g;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v1}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    move-object v1, v0

    check-cast v1, Lu0/g;

    invoke-virtual {v1}, Lu0/g;->B()I

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v2}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/y;

    invoke-virtual {p0, v1}, Landroidx/room/y;->release(Lt0/g;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v2}, Landroidx/room/q;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/y;

    invoke-virtual {p0, v0}, Landroidx/room/y;->release(Lt0/g;)V

    throw v1
.end method

.method public resetScheduledState()I
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/y;

    invoke-virtual {v0}, Landroidx/room/y;->acquire()Lt0/g;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v1}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    move-object v1, v0

    check-cast v1, Lu0/g;

    invoke-virtual {v1}, Lu0/g;->B()I

    move-result v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v3}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/y;

    invoke-virtual {p0, v1}, Landroidx/room/y;->release(Lt0/g;)V

    return v2

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v2}, Landroidx/room/q;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/y;

    invoke-virtual {p0, v0}, Landroidx/room/y;->release(Lt0/g;)V

    throw v1
.end method

.method public resetWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/y;

    invoke-virtual {v0}, Landroidx/room/y;->acquire()Lt0/g;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move-object p1, v0

    check-cast p1, Lu0/f;

    invoke-virtual {p1, v1}, Lu0/f;->q(I)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    check-cast v2, Lu0/f;

    invoke-virtual {v2, v1, p1}, Lu0/f;->u(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    move-object p1, v0

    check-cast p1, Lu0/g;

    invoke-virtual {p1}, Lu0/g;->B()I

    move-result v1

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v2}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/y;

    invoke-virtual {p0, p1}, Landroidx/room/y;->release(Lt0/g;)V

    return v1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v1}, Landroidx/room/q;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/y;

    invoke-virtual {p0, v0}, Landroidx/room/y;->release(Lt0/g;)V

    throw p1
.end method

.method public setOutput(Ljava/lang/String;Landroidx/work/Data;)V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/y;

    invoke-virtual {v0}, Landroidx/room/y;->acquire()Lt0/g;

    move-result-object v0

    invoke-static {p2}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    move-result-object p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move-object p2, v0

    check-cast p2, Lu0/f;

    invoke-virtual {p2, v1}, Lu0/f;->q(I)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    check-cast v2, Lu0/f;

    invoke-virtual {v2, p2, v1}, Lu0/f;->d([BI)V

    :goto_0
    const/4 p2, 0x2

    if-nez p1, :cond_1

    move-object p1, v0

    check-cast p1, Lu0/f;

    invoke-virtual {p1, p2}, Lu0/f;->q(I)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    check-cast v1, Lu0/f;

    invoke-virtual {v1, p2, p1}, Lu0/f;->u(ILjava/lang/String;)V

    :goto_1
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    move-object p1, v0

    check-cast p1, Lu0/g;

    invoke-virtual {p1}, Lu0/g;->B()I

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p2}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p2}, Landroidx/room/q;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/y;

    invoke-virtual {p0, p1}, Landroidx/room/y;->release(Lt0/g;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p2}, Landroidx/room/q;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/y;

    invoke-virtual {p0, v0}, Landroidx/room/y;->release(Lt0/g;)V

    throw p1
.end method

.method public setPeriodStartTime(Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Landroidx/room/y;

    invoke-virtual {v0}, Landroidx/room/y;->acquire()Lt0/g;

    move-result-object v0

    const/4 v1, 0x1

    move-object v2, v0

    check-cast v2, Lu0/f;

    invoke-virtual {v2, v1, p2, p3}, Lu0/f;->p(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    move-object p1, v0

    check-cast p1, Lu0/f;

    invoke-virtual {p1, p2}, Lu0/f;->q(I)V

    goto :goto_0

    :cond_0
    move-object p3, v0

    check-cast p3, Lu0/f;

    invoke-virtual {p3, p2, p1}, Lu0/f;->u(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    move-object p1, v0

    check-cast p1, Lu0/g;

    invoke-virtual {p1}, Lu0/g;->B()I

    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Landroidx/room/y;

    invoke-virtual {p0, v0}, Landroidx/room/y;->release(Lt0/g;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p2}, Landroidx/room/q;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Landroidx/room/y;

    invoke-virtual {p0, v0}, Landroidx/room/y;->release(Lt0/g;)V

    throw p1
.end method

.method public varargs setState(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE workspec SET state=? WHERE id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-static {v0, v1}, Ls0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v1, v0}, Landroidx/room/q;->compileStatement(Ljava/lang/String;)Lt0/g;

    move-result-object v0

    invoke-static {p1}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result p1

    int-to-long v1, p1

    move-object p1, v0

    check-cast p1, Lu0/f;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v1, v2}, Lu0/f;->p(IJ)V

    array-length p1, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v3, p2, v2

    if-nez v3, :cond_0

    move-object v3, v0

    check-cast v3, Lu0/f;

    invoke-virtual {v3, v1}, Lu0/f;->q(I)V

    goto :goto_1

    :cond_0
    move-object v4, v0

    check-cast v4, Lu0/f;

    invoke-virtual {v4, v1, v3}, Lu0/f;->u(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    check-cast v0, Lu0/g;

    invoke-virtual {v0}, Lu0/g;->B()I

    move-result p1

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p2}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    throw p1
.end method

.class public final Landroidx/room/t;
.super Ls0/b;
.source "SourceFile"


# instance fields
.field public b:Landroidx/room/a;

.field public final c:Landroidx/room/r;


# direct methods
.method public constructor <init>(Landroidx/room/a;Landroidx/room/r;)V
    .locals 1

    iget v0, p2, Landroidx/room/r;->version:I

    invoke-direct {p0, v0}, Ls0/b;-><init>(I)V

    iput-object p1, p0, Landroidx/room/t;->b:Landroidx/room/a;

    iput-object p2, p0, Landroidx/room/t;->c:Landroidx/room/r;

    return-void
.end method


# virtual methods
.method public final b(Lt0/b;II)V
    .locals 11

    iget-object v0, p0, Landroidx/room/t;->b:Landroidx/room/a;

    iget-object v1, p0, Landroidx/room/t;->c:Landroidx/room/r;

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    iget-object v0, v0, Landroidx/room/a;->d:Landroidx/room/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    if-ne p2, p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_7

    :cond_0
    if-le p3, p2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, p2

    :cond_2
    if-eqz v4, :cond_3

    if-ge v6, p3, :cond_a

    goto :goto_1

    :cond_3
    if-le v6, p3, :cond_a

    :goto_1
    iget-object v7, v0, Landroidx/room/p;->a:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/TreeMap;

    if-nez v7, :cond_4

    goto :goto_6

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v7}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v8

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v4, :cond_7

    if-gt v9, p3, :cond_8

    if-le v9, v6, :cond_8

    goto :goto_3

    :cond_7
    if-lt v9, p3, :cond_8

    if-ge v9, v6, :cond_8

    :goto_3
    move v10, v3

    goto :goto_4

    :cond_8
    move v10, v2

    :goto_4
    if-eqz v10, :cond_6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v3

    move v6, v9

    goto :goto_5

    :cond_9
    move v7, v2

    :goto_5
    if-nez v7, :cond_2

    :goto_6
    const/4 v0, 0x0

    goto :goto_7

    :cond_a
    move-object v0, v5

    :goto_7
    if-eqz v0, :cond_d

    invoke-virtual {v1, p1}, Landroidx/room/r;->onPreMigrate(Ls0/a;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq0/a;

    invoke-virtual {v2, p1}, Lq0/a;->migrate(Ls0/a;)V

    goto :goto_8

    :cond_b
    invoke-virtual {v1, p1}, Landroidx/room/r;->onValidateSchema(Ls0/a;)Landroidx/room/s;

    move-result-object v0

    iget-boolean v2, v0, Landroidx/room/s;->a:Z

    if-eqz v2, :cond_c

    invoke-virtual {v1, p1}, Landroidx/room/r;->onPostMigrate(Ls0/a;)V

    invoke-virtual {p0, p1}, Landroidx/room/t;->c(Lt0/b;)V

    move v2, v3

    goto :goto_9

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Migration didn\'t properly handle: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v0, Landroidx/room/s;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_9
    if-nez v2, :cond_f

    iget-object v0, p0, Landroidx/room/t;->b:Landroidx/room/a;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p2, p3}, Landroidx/room/a;->a(II)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v1, p1}, Landroidx/room/r;->dropAllTables(Ls0/a;)V

    invoke-virtual {v1, p1}, Landroidx/room/r;->createAllTables(Ls0/a;)V

    goto :goto_a

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A migration from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_a
    return-void
.end method

.method public final c(Lt0/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {p1, v0}, Lt0/b;->M(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'c103703e120ae8cc73c9248622f3cd1e\')"

    invoke-virtual {p1, v0}, Lt0/b;->M(Ljava/lang/String;)V

    return-void
.end method

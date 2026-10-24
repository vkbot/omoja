.class public final Landroidx/room/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/f;
.implements Ljava/io/Closeable;


# static fields
.field public static final j:Ljava/util/TreeMap;


# instance fields
.field public volatile b:Ljava/lang/String;

.field public final c:[J

.field public final d:[D

.field public final e:[Ljava/lang/String;

.field public final f:[[B

.field public final g:[I

.field public final h:I

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Landroidx/room/u;->j:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/room/u;->h:I

    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/room/u;->g:[I

    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/u;->c:[J

    new-array v0, p1, [D

    iput-object v0, p0, Landroidx/room/u;->d:[D

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/room/u;->e:[Ljava/lang/String;

    new-array p1, p1, [[B

    iput-object p1, p0, Landroidx/room/u;->f:[[B

    return-void
.end method

.method public static M(ILjava/lang/String;)Landroidx/room/u;
    .locals 3

    sget-object v0, Landroidx/room/u;->j:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/u;

    iput-object p1, v1, Landroidx/room/u;->b:Ljava/lang/String;

    iput p0, v1, Landroidx/room/u;->i:I

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroidx/room/u;

    invoke-direct {v0, p0}, Landroidx/room/u;-><init>(I)V

    iput-object p1, v0, Landroidx/room/u;->b:Ljava/lang/String;

    iput p0, v0, Landroidx/room/u;->i:I

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final J(Lt0/f;)V
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/room/u;->i:I

    if-gt v1, v2, :cond_5

    iget-object v2, p0, Landroidx/room/u;->g:[I

    aget v2, v2, v1

    if-eq v2, v0, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroidx/room/u;->f:[[B

    aget-object v2, v2, v1

    invoke-virtual {p1, v2, v1}, Lt0/f;->z([BI)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/room/u;->e:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v1, v2}, Lt0/f;->O(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/room/u;->d:[D

    aget-wide v3, v2, v1

    invoke-virtual {p1, v3, v4, v1}, Lt0/f;->J(DI)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroidx/room/u;->c:[J

    aget-wide v3, v2, v1

    invoke-virtual {p1, v1, v3, v4}, Lt0/f;->M(IJ)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v1}, Lt0/f;->N(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final N(IJ)V
    .locals 2

    iget-object v0, p0, Landroidx/room/u;->g:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    iget-object v0, p0, Landroidx/room/u;->c:[J

    aput-wide p2, v0, p1

    return-void
.end method

.method public final O(I)V
    .locals 2

    iget-object v0, p0, Landroidx/room/u;->g:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public final P(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/room/u;->g:[I

    const/4 v1, 0x4

    aput v1, v0, p1

    iget-object v0, p0, Landroidx/room/u;->e:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public final Q()V
    .locals 4

    sget-object v0, Landroidx/room/u;->j:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/room/u;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v1, v3

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/room/u;->b:Ljava/lang/String;

    return-object v0
.end method

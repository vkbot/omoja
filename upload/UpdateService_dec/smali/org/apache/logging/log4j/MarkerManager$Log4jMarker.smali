.class public Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;
.super Ljava/lang/Object;
.source "MarkerManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/Marker;
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/MarkerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Log4jMarker"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x64L


# instance fields
.field private final name:Ljava/lang/String;

.field private volatile parents:[Lorg/apache/logging/log4j/Marker;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->name:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const-string v0, "Marker name cannot be null."

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/MarkerManager;->access$000(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->name:Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    .line 143
    return-void
.end method

.method private static varargs addParentInfo(Ljava/lang/StringBuilder;[Lorg/apache/logging/log4j/Marker;)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "parents"    # [Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "parents"
        }
    .end annotation

    .line 385
    const-string v0, "[ "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const/4 v0, 0x1

    .line 388
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "parentsLength":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 389
    aget-object v3, p1, v1

    .line 390
    .local v3, "marker":Lorg/apache/logging/log4j/Marker;
    if-nez v0, :cond_0

    .line 391
    const-string v4, ", "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_0
    const/4 v0, 0x0

    .line 394
    invoke-interface {v3}, Lorg/apache/logging/log4j/Marker;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    instance-of v4, v3, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;

    iget-object v4, v4, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lorg/apache/logging/log4j/Marker;->getParents()[Lorg/apache/logging/log4j/Marker;

    move-result-object v4

    .line 396
    .local v4, "p":[Lorg/apache/logging/log4j/Marker;
    :goto_1
    if-eqz v4, :cond_2

    .line 397
    invoke-static {p0, v4}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->addParentInfo(Ljava/lang/StringBuilder;[Lorg/apache/logging/log4j/Marker;)V

    .line 388
    .end local v3    # "marker":Lorg/apache/logging/log4j/Marker;
    .end local v4    # "p":[Lorg/apache/logging/log4j/Marker;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v1    # "i":I
    .end local v2    # "parentsLength":I
    :cond_3
    const-string v1, " ]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    return-void
.end method

.method private static checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z
    .locals 7
    .param p0, "parent"    # Lorg/apache/logging/log4j/Marker;
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parent",
            "marker"
        }
    .end annotation

    .line 309
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 310
    return v0

    .line 312
    :cond_0
    instance-of v1, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;

    iget-object v1, v1, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    goto :goto_0

    .line 313
    :cond_1
    invoke-interface {p0}, Lorg/apache/logging/log4j/Marker;->getParents()[Lorg/apache/logging/log4j/Marker;

    move-result-object v1

    :goto_0
    nop

    .line 314
    .local v1, "localParents":[Lorg/apache/logging/log4j/Marker;
    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 315
    array-length v3, v1

    .line 316
    .local v3, "localParentsLength":I
    if-ne v3, v0, :cond_2

    .line 317
    aget-object v0, v1, v2

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0

    .line 319
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 320
    aget-object v4, v1, v2

    invoke-static {v4, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v4

    if-nez v4, :cond_4

    aget-object v4, v1, v0

    invoke-static {v4, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :cond_4
    :goto_1
    return v0

    .line 323
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_7

    .line 324
    aget-object v5, v1, v4

    .line 325
    .local v5, "localParent":Lorg/apache/logging/log4j/Marker;
    invoke-static {v5, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 326
    return v0

    .line 323
    .end local v5    # "localParent":Lorg/apache/logging/log4j/Marker;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 330
    .end local v3    # "localParentsLength":I
    .end local v4    # "i":I
    :cond_7
    return v2
.end method

.method private static varargs contains(Lorg/apache/logging/log4j/Marker;[Lorg/apache/logging/log4j/Marker;)Z
    .locals 4
    .param p0, "parent"    # Lorg/apache/logging/log4j/Marker;
    .param p1, "localParents"    # [Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parent",
            "localParents"
        }
    .end annotation

    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "localParentsLength":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 341
    aget-object v2, p1, v0

    .line 342
    .local v2, "marker":Lorg/apache/logging/log4j/Marker;
    if-ne v2, p0, :cond_0

    .line 343
    const/4 v3, 0x1

    return v3

    .line 340
    .end local v2    # "marker":Lorg/apache/logging/log4j/Marker;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    .end local v0    # "i":I
    .end local v1    # "localParentsLength":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public varargs declared-synchronized addParents([Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/Marker;
    .locals 9
    .param p1, "parentMarkers"    # [Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parentMarkers"
        }
    .end annotation

    monitor-enter p0

    .line 149
    :try_start_0
    const-string v0, "A parent marker must be specified"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/MarkerManager;->access$000(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    .line 154
    .local v0, "localParents":[Lorg/apache/logging/log4j/Marker;
    const/4 v1, 0x0

    .line 155
    .local v1, "count":I
    array-length v2, p1

    .line 156
    .local v2, "size":I
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 157
    array-length v4, p1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, p1, v5

    .line 158
    .local v6, "parent":Lorg/apache/logging/log4j/Marker;
    invoke-static {v6, v0}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->contains(Lorg/apache/logging/log4j/Marker;[Lorg/apache/logging/log4j/Marker;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v6, p0}, Lorg/apache/logging/log4j/Marker;->isInstanceOf(Lorg/apache/logging/log4j/Marker;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 159
    add-int/lit8 v1, v1, 0x1

    .line 157
    .end local v6    # "parent":Lorg/apache/logging/log4j/Marker;
    .end local p0    # "this":Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 162
    :cond_1
    if-nez v1, :cond_2

    .line 163
    monitor-exit p0

    return-object p0

    .line 165
    .restart local p0    # "this":Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;
    :cond_2
    :try_start_1
    array-length v4, v0

    add-int v2, v4, v1

    .line 167
    .end local p0    # "this":Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;
    :cond_3
    new-array v4, v2, [Lorg/apache/logging/log4j/Marker;

    .line 168
    .local v4, "markers":[Lorg/apache/logging/log4j/Marker;
    if-eqz v0, :cond_4

    .line 171
    array-length v5, v0

    invoke-static {v0, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    :cond_4
    if-nez v0, :cond_5

    move v5, v3

    goto :goto_1

    :cond_5
    array-length v5, v0

    .line 174
    .local v5, "index":I
    :goto_1
    array-length v6, p1

    :goto_2
    if-ge v3, v6, :cond_8

    aget-object v7, p1, v3

    .line 175
    .local v7, "parent":Lorg/apache/logging/log4j/Marker;
    if-eqz v0, :cond_6

    invoke-static {v7, v0}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->contains(Lorg/apache/logging/log4j/Marker;[Lorg/apache/logging/log4j/Marker;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-interface {v7, p0}, Lorg/apache/logging/log4j/Marker;->isInstanceOf(Lorg/apache/logging/log4j/Marker;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 176
    :cond_6
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "index":I
    .local v8, "index":I
    aput-object v7, v4, v5

    move v5, v8

    .line 174
    .end local v7    # "parent":Lorg/apache/logging/log4j/Marker;
    .end local v8    # "index":I
    .restart local v5    # "index":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 179
    :cond_8
    iput-object v4, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    monitor-exit p0

    return-object p0

    .line 148
    .end local v0    # "localParents":[Lorg/apache/logging/log4j/Marker;
    .end local v1    # "count":I
    .end local v2    # "size":I
    .end local v4    # "markers":[Lorg/apache/logging/log4j/Marker;
    .end local v5    # "index":I
    .end local p1    # "parentMarkers":[Lorg/apache/logging/log4j/Marker;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 351
    if-ne p0, p1, :cond_0

    .line 352
    const/4 v0, 0x1

    return v0

    .line 354
    :cond_0
    if-eqz p1, :cond_2

    instance-of v0, p1, Lorg/apache/logging/log4j/Marker;

    if-nez v0, :cond_1

    goto :goto_0

    .line 357
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/Marker;

    .line 358
    .local v0, "marker":Lorg/apache/logging/log4j/Marker;
    iget-object v1, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->name:Ljava/lang/String;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Marker;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 355
    .end local v0    # "marker":Lorg/apache/logging/log4j/Marker;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    .line 378
    .local v0, "localParents":[Lorg/apache/logging/log4j/Marker;
    if-eqz v0, :cond_0

    .line 379
    invoke-static {p1, v0}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->addParentInfo(Ljava/lang/StringBuilder;[Lorg/apache/logging/log4j/Marker;)V

    .line 381
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParents()[Lorg/apache/logging/log4j/Marker;
    .locals 2

    .line 234
    iget-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    .line 235
    .local v0, "parentsSnapshot":[Lorg/apache/logging/log4j/Marker;
    if-nez v0, :cond_0

    .line 236
    const/4 v1, 0x0

    return-object v1

    .line 238
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/logging/log4j/Marker;

    return-object v1
.end method

.method public hasParents()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 363
    iget-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isInstanceOf(Ljava/lang/String;)Z
    .locals 8
    .param p1, "markerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "markerName"
        }
    .end annotation

    .line 277
    const-string v0, "A marker name is required"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/MarkerManager;->access$000(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 279
    return v1

    .line 282
    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/MarkerManager;->access$100()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/Marker;

    .line 283
    .local v0, "marker":Lorg/apache/logging/log4j/Marker;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 284
    return v2

    .line 286
    :cond_1
    iget-object v3, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    .line 287
    .local v3, "localParents":[Lorg/apache/logging/log4j/Marker;
    if-eqz v3, :cond_7

    .line 288
    array-length v4, v3

    .line 289
    .local v4, "localParentsLength":I
    if-ne v4, v1, :cond_2

    .line 290
    aget-object v1, v3, v2

    invoke-static {v1, v0}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v1

    return v1

    .line 292
    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 293
    aget-object v5, v3, v2

    invoke-static {v5, v0}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v5

    if-nez v5, :cond_4

    aget-object v5, v3, v1

    invoke-static {v5, v0}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    return v1

    .line 296
    :cond_5
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_7

    .line 297
    aget-object v6, v3, v5

    .line 298
    .local v6, "localParent":Lorg/apache/logging/log4j/Marker;
    invoke-static {v6, v0}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 299
    return v1

    .line 296
    .end local v6    # "localParent":Lorg/apache/logging/log4j/Marker;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 304
    .end local v4    # "localParentsLength":I
    .end local v5    # "i":I
    :cond_7
    return v2
.end method

.method public isInstanceOf(Lorg/apache/logging/log4j/Marker;)Z
    .locals 7
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "marker"
        }
    .end annotation

    .line 249
    const-string v0, "A marker parameter is required"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/MarkerManager;->access$000(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 251
    return v0

    .line 253
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    .line 254
    .local v1, "localParents":[Lorg/apache/logging/log4j/Marker;
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 256
    array-length v3, v1

    .line 257
    .local v3, "localParentsLength":I
    if-ne v3, v0, :cond_1

    .line 258
    aget-object v0, v1, v2

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0

    .line 260
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 261
    aget-object v4, v1, v2

    invoke-static {v4, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v4

    if-nez v4, :cond_3

    aget-object v4, v1, v0

    invoke-static {v4, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    return v0

    .line 264
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_6

    .line 265
    aget-object v5, v1, v4

    .line 266
    .local v5, "localParent":Lorg/apache/logging/log4j/Marker;
    invoke-static {v5, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 267
    return v0

    .line 264
    .end local v5    # "localParent":Lorg/apache/logging/log4j/Marker;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 271
    .end local v3    # "localParentsLength":I
    .end local v4    # "i":I
    :cond_6
    return v2
.end method

.method public declared-synchronized remove(Lorg/apache/logging/log4j/Marker;)Z
    .locals 9
    .param p1, "parent"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parent"
        }
    .end annotation

    monitor-enter p0

    .line 185
    :try_start_0
    const-string v0, "A parent marker must be specified"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/MarkerManager;->access$000(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .local v0, "localParents":[Lorg/apache/logging/log4j/Marker;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 188
    monitor-exit p0

    return v1

    .line 190
    :cond_0
    :try_start_1
    array-length v2, v0

    .line 191
    .local v2, "localParentsLength":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 192
    aget-object v4, v0, v1

    invoke-interface {v4, p1}, Lorg/apache/logging/log4j/Marker;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    monitor-exit p0

    return v3

    .line 196
    .end local p0    # "this":Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;
    :cond_1
    monitor-exit p0

    return v1

    .line 198
    :cond_2
    const/4 v4, 0x0

    .line 199
    .local v4, "index":I
    add-int/lit8 v5, v2, -0x1

    :try_start_2
    new-array v5, v5, [Lorg/apache/logging/log4j/Marker;

    .line 201
    .local v5, "markers":[Lorg/apache/logging/log4j/Marker;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_5

    .line 202
    aget-object v7, v0, v6

    .line 203
    .local v7, "marker":Lorg/apache/logging/log4j/Marker;
    invoke-interface {v7, p1}, Lorg/apache/logging/log4j/Marker;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_4

    .line 204
    add-int/lit8 v8, v2, -0x1

    if-ne v4, v8, :cond_3

    .line 206
    monitor-exit p0

    return v1

    .line 208
    .restart local p0    # "this":Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;
    :cond_3
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "index":I
    .local v8, "index":I
    :try_start_3
    aput-object v7, v5, v4

    move v4, v8

    .line 201
    .end local v7    # "marker":Lorg/apache/logging/log4j/Marker;
    .end local v8    # "index":I
    .end local p0    # "this":Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;
    .restart local v4    # "index":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 211
    .end local v6    # "i":I
    :cond_5
    iput-object v5, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    monitor-exit p0

    return v3

    .line 184
    .end local v0    # "localParents":[Lorg/apache/logging/log4j/Marker;
    .end local v2    # "localParentsLength":I
    .end local v4    # "index":I
    .end local v5    # "markers":[Lorg/apache/logging/log4j/Marker;
    .end local p1    # "parent":Lorg/apache/logging/log4j/Marker;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs setParents([Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/Marker;
    .locals 3
    .param p1, "markers"    # [Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "markers"
        }
    .end annotation

    .line 217
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/logging/log4j/Marker;

    .line 221
    .local v0, "array":[Lorg/apache/logging/log4j/Marker;
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iput-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    goto :goto_1

    .line 218
    .end local v0    # "array":[Lorg/apache/logging/log4j/Marker;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    .line 224
    :goto_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->formatTo(Ljava/lang/StringBuilder;)V

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

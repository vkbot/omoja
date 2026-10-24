.class Lcom/mega/update/manager/TaskScheduler$3;
.super Ljava/util/HashMap;
.source "TaskScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/manager/TaskScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 6

    .line 241
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 242
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v2, v3, v0

    invoke-virtual {p0, v1, v3}, Lcom/mega/update/manager/TaskScheduler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    invoke-virtual {p0, v1, v4}, Lcom/mega/update/manager/TaskScheduler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [I

    aput v2, v5, v0

    invoke-virtual {p0, v4, v5}, Lcom/mega/update/manager/TaskScheduler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v3, [I

    fill-array-data v5, :array_1

    invoke-virtual {p0, v4, v5}, Lcom/mega/update/manager/TaskScheduler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v3, [I

    fill-array-data v5, :array_2

    invoke-virtual {p0, v4, v5}, Lcom/mega/update/manager/TaskScheduler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v3, [I

    fill-array-data v5, :array_3

    invoke-virtual {p0, v4, v5}, Lcom/mega/update/manager/TaskScheduler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v3, [I

    fill-array-data v5, :array_4

    invoke-virtual {p0, v4, v5}, Lcom/mega/update/manager/TaskScheduler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v1, [I

    fill-array-data v5, :array_5

    invoke-virtual {p0, v4, v5}, Lcom/mega/update/manager/TaskScheduler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const/16 v4, 0x16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    invoke-virtual {p0, v4, v1}, Lcom/mega/update/manager/TaskScheduler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v3, [I

    fill-array-data v3, :array_7

    invoke-virtual {p0, v1, v3}, Lcom/mega/update/manager/TaskScheduler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [I

    aput v2, v3, v0

    invoke-virtual {p0, v1, v3}, Lcom/mega/update/manager/TaskScheduler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [I

    aput v2, v3, v0

    invoke-virtual {p0, v1, v3}, Lcom/mega/update/manager/TaskScheduler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xa
    .end array-data

    :array_2
    .array-data 4
        0xb
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x1
        0xa
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x15
    .end array-data

    :array_5
    .array-data 4
        0x17
        0x19
        0x16
    .end array-data

    :array_6
    .array-data 4
        0x17
        0x18
        0x19
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x15
    .end array-data
.end method

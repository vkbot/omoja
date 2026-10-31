.class final Lcom/sun/jna/CallbackReference$CallbackReferenceDisposer;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/CallbackReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallbackReferenceDisposer"
.end annotation


# instance fields
.field private cbstruct:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/sun/jna/CallbackReference$CallbackReferenceDisposer;->cbstruct:Lcom/sun/jna/Pointer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/CallbackReference$CallbackReferenceDisposer;->cbstruct:Lcom/sun/jna/Pointer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    :try_start_1
    iget-wide v4, v0, Lcom/sun/jna/Pointer;->peer:J

    .line 10
    .line 11
    invoke-static {v4, v5}, Lcom/sun/jna/Native;->freeNativeCallback(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    .line 13
    .line 14
    :try_start_2
    invoke-static {}, Lcom/sun/jna/CallbackReference;->access$200()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v4, p0, Lcom/sun/jna/CallbackReference$CallbackReferenceDisposer;->cbstruct:Lcom/sun/jna/Pointer;

    .line 19
    .line 20
    iget-wide v4, v4, Lcom/sun/jna/Pointer;->peer:J

    .line 21
    .line 22
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/sun/jna/CallbackReference$CallbackReferenceDisposer;->cbstruct:Lcom/sun/jna/Pointer;

    .line 30
    .line 31
    iput-wide v2, v0, Lcom/sun/jna/Pointer;->peer:J

    .line 32
    .line 33
    iput-object v1, p0, Lcom/sun/jna/CallbackReference$CallbackReferenceDisposer;->cbstruct:Lcom/sun/jna/Pointer;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :catchall_1
    move-exception v0

    .line 39
    invoke-static {}, Lcom/sun/jna/CallbackReference;->access$200()Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iget-object v5, p0, Lcom/sun/jna/CallbackReference$CallbackReferenceDisposer;->cbstruct:Lcom/sun/jna/Pointer;

    .line 44
    .line 45
    iget-wide v5, v5, Lcom/sun/jna/Pointer;->peer:J

    .line 46
    .line 47
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget-object v4, p0, Lcom/sun/jna/CallbackReference$CallbackReferenceDisposer;->cbstruct:Lcom/sun/jna/Pointer;

    .line 55
    .line 56
    iput-wide v2, v4, Lcom/sun/jna/Pointer;->peer:J

    .line 57
    .line 58
    iput-object v1, p0, Lcom/sun/jna/CallbackReference$CallbackReferenceDisposer;->cbstruct:Lcom/sun/jna/Pointer;

    .line 59
    .line 60
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :cond_0
    :goto_0
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    throw v0
.end method

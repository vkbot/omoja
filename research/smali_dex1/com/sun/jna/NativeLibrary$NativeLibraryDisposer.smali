.class final Lcom/sun/jna/NativeLibrary$NativeLibraryDisposer;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/NativeLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeLibraryDisposer"
.end annotation


# instance fields
.field private handle:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/sun/jna/NativeLibrary$NativeLibraryDisposer;->handle:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lcom/sun/jna/NativeLibrary$NativeLibraryDisposer;->handle:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-eqz v4, :cond_15

    .line 9
    .line 10
    :try_start_9
    invoke-static {v0, v1}, Lcom/sun/jna/Native;->close(J)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    .line 11
    .line 12
    .line 13
    :try_start_c
    iput-wide v2, p0, Lcom/sun/jna/NativeLibrary$NativeLibraryDisposer;->handle:J

    .line 14
    .line 15
    goto :goto_15

    .line 16
    :catchall_f
    move-exception v0

    .line 17
    goto :goto_17

    .line 18
    :catchall_11
    move-exception v0

    .line 19
    iput-wide v2, p0, Lcom/sun/jna/NativeLibrary$NativeLibraryDisposer;->handle:J

    .line 20
    .line 21
    throw v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_f

    .line 22
    :cond_15
    :goto_15
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_f

    .line 25
    throw v0
.end method

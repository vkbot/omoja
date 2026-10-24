.class public final Lt0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt0/c$a;
    }
.end annotation


# static fields
.field public static b:Lt0/c;


# instance fields
.field public final a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lt0/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lt0/c;->a:Ljava/util/Vector;

    return-void
.end method

.method public static declared-synchronized a()Lt0/c;
    .locals 2

    const-class v0, Lt0/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lt0/c;->b:Lt0/c;

    if-nez v1, :cond_0

    new-instance v1, Lt0/c;

    invoke-direct {v1}, Lt0/c;-><init>()V

    sput-object v1, Lt0/c;->b:Lt0/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lt0/c;->b:Lt0/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

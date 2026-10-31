.class public abstract Ly7/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ly7/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    :try_start_0
    sget-object v0, Ly7/a;->a:Ly7/e;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_f

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    sput-object v0, Ly7/b;->a:Ly7/e;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/NullPointerException;

    .line 9
    .line 10
    const-string v1, "Scheduler Callable returned null"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_f

    .line 16
    :catchall_f
    move-exception v0

    .line 17
    invoke-static {v0}, Lp8/d;->c(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    throw v0
.end method

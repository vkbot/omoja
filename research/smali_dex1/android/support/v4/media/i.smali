.class public final Landroid/support/v4/media/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final b:Z


# instance fields
.field public final a:Landroid/support/v4/media/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "MediaBrowserCompat"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Landroid/support/v4/media/i;->b:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/d;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1a

    .line 7
    .line 8
    if-lt v0, v1, :cond_11

    .line 9
    .line 10
    new-instance v0, Landroid/support/v4/media/f;

    .line 11
    .line 12
    invoke-direct {v0, p1, p2, p3}, Landroid/support/v4/media/e;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/d;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroid/support/v4/media/i;->a:Landroid/support/v4/media/e;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_11
    new-instance v0, Landroid/support/v4/media/e;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2, p3}, Landroid/support/v4/media/e;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/d;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/support/v4/media/i;->a:Landroid/support/v4/media/e;

    .line 24
    .line 25
    return-void
.end method

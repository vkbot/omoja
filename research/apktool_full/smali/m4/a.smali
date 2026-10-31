.class public final Lm4/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final b:Lm4/a;

.field public static final c:Lm4/a;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lm4/m;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sput-object v1, Lm4/a;->c:Lm4/a;

    .line 7
    .line 8
    sput-object v1, Lm4/a;->b:Lm4/a;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Lm4/a;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v0, v2, v1}, Lm4/a;-><init>(ZLjava/lang/RuntimeException;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lm4/a;->c:Lm4/a;

    .line 18
    .line 19
    new-instance v0, Lm4/a;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {v0, v2, v1}, Lm4/a;-><init>(ZLjava/lang/RuntimeException;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lm4/a;->b:Lm4/a;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(ZLjava/lang/RuntimeException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lm4/a;->a:Ljava/lang/Throwable;

    .line 5
    .line 6
    return-void
.end method

.class public final Lm0/b3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/b3;->b:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Lm0/b3;->a:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lm0/b3;->a:Z

    .line 11
    iput-object p2, p0, Lm0/b3;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lm0/b3;
    .locals 2

    .line 1
    new-instance v0, Lm0/b3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p0}, Lm0/b3;-><init>(ZLjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

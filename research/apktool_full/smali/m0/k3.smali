.class public final Lm0/k3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J

.field public final e:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lm0/k3;->a:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lm0/k3;->b:Ljava/lang/String;

    .line 11
    .line 12
    iput-wide p3, p0, Lm0/k3;->c:J

    .line 13
    .line 14
    iput-wide p5, p0, Lm0/k3;->d:J

    .line 15
    .line 16
    iput-object p7, p0, Lm0/k3;->e:Ljava/io/File;

    .line 17
    .line 18
    return-void
.end method

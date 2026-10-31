.class public final La6/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p5, p0, La6/a;->a:Z

    .line 5
    .line 6
    const/4 p5, 0x0

    .line 7
    invoke-static {p5, p1}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, La6/a;->b:I

    .line 12
    .line 13
    invoke-static {p5, p2}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, La6/a;->c:I

    .line 18
    .line 19
    const-string p1, ""

    .line 20
    .line 21
    if-nez p3, :cond_0

    .line 22
    .line 23
    move-object p3, p1

    .line 24
    :cond_0
    iput-object p3, p0, La6/a;->d:Ljava/lang/Object;

    .line 25
    .line 26
    if-nez p4, :cond_1

    .line 27
    .line 28
    move-object p4, p1

    .line 29
    :cond_1
    iput-object p4, p0, La6/a;->e:Ljava/io/Serializable;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Lf6/b;[Lz5/o;ZII)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, La6/a;->d:Ljava/lang/Object;

    .line 34
    iput-object p2, p0, La6/a;->e:Ljava/io/Serializable;

    .line 35
    iput-boolean p3, p0, La6/a;->a:Z

    .line 36
    iput p4, p0, La6/a;->b:I

    .line 37
    iput p5, p0, La6/a;->c:I

    return-void
.end method

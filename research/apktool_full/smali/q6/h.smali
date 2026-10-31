.class public final Lq6/h;
.super Lq6/j;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq6/j;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lq6/h;->b:Ljava/lang/String;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lq6/h;->d:Z

    .line 8
    .line 9
    iput p1, p0, Lq6/h;->c:I

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lq6/j;-><init>(I)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lq6/h;->d:Z

    .line 14
    iput p3, p0, Lq6/h;->c:I

    .line 15
    iput-object p2, p0, Lq6/h;->b:Ljava/lang/String;

    return-void
.end method

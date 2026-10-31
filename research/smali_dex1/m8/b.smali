.class public final Lm8/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:I

.field public final b:[Lm8/c;

.field public c:J


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lm8/b;->a:I

    .line 5
    .line 6
    new-array v0, p1, [Lm8/c;

    .line 7
    .line 8
    iput-object v0, p0, Lm8/b;->b:[Lm8/c;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_a
    if-ge v0, p1, :cond_18

    .line 12
    .line 13
    iget-object v1, p0, Lm8/b;->b:[Lm8/c;

    .line 14
    .line 15
    new-instance v2, Lm8/c;

    .line 16
    .line 17
    invoke-direct {v2, p2}, Lm8/j;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 18
    .line 19
    .line 20
    aput-object v2, v1, v0

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_a

    .line 25
    :cond_18
    return-void
.end method

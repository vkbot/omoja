.class public final Lo7/i4;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ZIILjava/lang/Object;)V
    .registers 5

    .line 1
    iput-boolean p1, p0, Lo7/i4;->a:Z

    .line 2
    .line 3
    iput p2, p0, Lo7/i4;->b:I

    .line 4
    .line 5
    iput p3, p0, Lo7/i4;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lo7/i4;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static a(Lo7/i4;Lo7/i4;)Lo7/i4;
    .registers 7

    .line 1
    iget-object v0, p0, Lo7/i4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_b

    .line 8
    :cond_7
    iget-object v0, p1, Lo7/i4;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    :goto_b
    new-instance v1, Lo7/i4;

    .line 13
    .line 14
    iget-boolean v2, p0, Lo7/i4;->a:Z

    .line 15
    .line 16
    if-eqz v2, :cond_17

    .line 17
    .line 18
    iget-boolean v2, p1, Lo7/i4;->a:Z

    .line 19
    .line 20
    if-eqz v2, :cond_17

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 v2, 0x0

    .line 25
    :goto_18
    iget v3, p0, Lo7/i4;->b:I

    .line 26
    .line 27
    iget v4, p1, Lo7/i4;->b:I

    .line 28
    .line 29
    add-int/2addr v3, v4

    .line 30
    iget p0, p0, Lo7/i4;->c:I

    .line 31
    .line 32
    iget p1, p1, Lo7/i4;->c:I

    .line 33
    .line 34
    add-int/2addr p0, p1

    .line 35
    invoke-direct {v1, v2, v3, p0, v0}, Lo7/i4;-><init>(ZIILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-object v1
.end method

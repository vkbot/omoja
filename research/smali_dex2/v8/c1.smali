.class public Lv8/c1;
.super Lv8/h1;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final d:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lv8/h1;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Lv8/h1;->z(Lv8/z0;)V

    .line 7
    .line 8
    .line 9
    sget-object v2, Lv8/h1;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 10
    .line 11
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lv8/h;

    .line 16
    .line 17
    instance-of v4, v3, Lv8/i;

    .line 18
    .line 19
    if-eqz v4, :cond_17

    .line 20
    .line 21
    check-cast v3, Lv8/i;

    .line 22
    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move-object v3, v1

    .line 25
    :goto_18
    const/4 v4, 0x0

    .line 26
    if-eqz v3, :cond_3f

    .line 27
    .line 28
    invoke-virtual {v3}, Lv8/d1;->i()Lv8/h1;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-nez v3, :cond_22

    .line 33
    .line 34
    goto :goto_3f

    .line 35
    :cond_22
    invoke-virtual {v3}, Lv8/h1;->t()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_29

    .line 40
    .line 41
    goto :goto_40

    .line 42
    :cond_29
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lv8/h;

    .line 47
    .line 48
    instance-of v5, v3, Lv8/i;

    .line 49
    .line 50
    if-eqz v5, :cond_36

    .line 51
    .line 52
    check-cast v3, Lv8/i;

    .line 53
    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move-object v3, v1

    .line 56
    :goto_37
    if-eqz v3, :cond_3f

    .line 57
    .line 58
    invoke-virtual {v3}, Lv8/d1;->i()Lv8/h1;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-nez v3, :cond_22

    .line 63
    .line 64
    :cond_3f
    :goto_3f
    move v0, v4

    .line 65
    :goto_40
    iput-boolean v0, p0, Lv8/c1;->d:Z

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final t()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lv8/c1;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final u()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

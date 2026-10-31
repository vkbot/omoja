.class public final synthetic Lf5/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lb8/b;
.implements Lb8/d;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lf5/g;


# direct methods
.method public synthetic constructor <init>(Lf5/g;I)V
    .registers 3

    .line 1
    iput p2, p0, Lf5/e;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lf5/e;->c:Lf5/g;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget v0, p0, Lf5/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_14

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Throwable;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iget-object v0, p0, Lf5/e;->c:Lf5/g;

    .line 10
    .line 11
    iput-object p1, v0, Lf5/g;->d:Ly5/i;

    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Lf5/e;->c:Lf5/g;

    .line 15
    .line 16
    check-cast p1, Ly5/i;

    .line 17
    .line 18
    iput-object p1, v0, Lf5/g;->d:Ly5/i;

    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public test(Ljava/lang/Object;)Z
    .registers 9

    .line 1
    check-cast p1, Ly5/i;

    .line 2
    .line 3
    iget-object v0, p0, Lf5/e;->c:Lf5/g;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ly5/i;->p()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    iget-object p1, v0, Lf5/g;->c:Li5/a;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    new-instance p1, Ljava/io/File;

    .line 22
    .line 23
    iget-object v0, v0, Lf5/g;->b:Landroid/app/Application;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v5, "fiam_eligible_campaigns_cache_file"

    .line 34
    .line 35
    invoke-direct {p1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v5, 0x0

    .line 39
    .line 40
    cmp-long v0, v1, v5

    .line 41
    .line 42
    if-eqz v0, :cond_30

    .line 43
    .line 44
    cmp-long p1, v3, v1

    .line 45
    .line 46
    if-gez p1, :cond_43

    .line 47
    .line 48
    goto :goto_45

    .line 49
    :cond_30
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_45

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    const-wide/32 v5, 0x5265c00

    .line 60
    .line 61
    .line 62
    add-long/2addr v0, v5

    .line 63
    cmp-long p1, v3, v0

    .line 64
    .line 65
    if-gez p1, :cond_43

    .line 66
    .line 67
    goto :goto_45

    .line 68
    :cond_43
    const/4 p1, 0x0

    .line 69
    return p1

    .line 70
    :cond_45
    :goto_45
    const/4 p1, 0x1

    .line 71
    return p1
.end method

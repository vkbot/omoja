.class public final Lo4/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Ls2/b;->a:I

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 22
    :goto_1
    if-nez v0, :cond_2

    .line 23
    .line 24
    iput-object p1, p0, Lo4/h;->b:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p2, p0, Lo4/h;->a:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p3, p0, Lo4/h;->c:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p4, p0, Lo4/h;->d:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p5, p0, Lo4/h;->e:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p6, p0, Lo4/h;->f:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p7, p0, Lo4/h;->g:Ljava/lang/String;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    const-string p1, "ApplicationId must be set."

    .line 40
    .line 41
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    throw p1
.end method

.method public static a(Landroid/content/Context;)Lo4/h;
    .locals 9

    .line 1
    new-instance v0, Ll/d;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Ll/d;-><init>(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    const-string p0, "google_app_id"

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ll/d;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance v1, Lo4/h;

    .line 23
    .line 24
    const-string p0, "google_api_key"

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ll/d;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string p0, "firebase_database_url"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ll/d;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-string p0, "ga_trackingId"

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ll/d;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const-string p0, "gcm_defaultSenderId"

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ll/d;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const-string p0, "google_storage_bucket"

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ll/d;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    const-string p0, "project_id"

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ll/d;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-direct/range {v1 .. v8}, Lo4/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lo4/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Lo4/h;

    .line 7
    .line 8
    iget-object v0, p0, Lo4/h;->b:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p1, Lo4/h;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lr2/a;->d(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lo4/h;->a:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p1, Lo4/h;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lr2/a;->d(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lo4/h;->c:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v1, p1, Lo4/h;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0, v1}, Lr2/a;->d(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lo4/h;->d:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v1, p1, Lo4/h;->d:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, v1}, Lr2/a;->d(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lo4/h;->e:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v1, p1, Lo4/h;->e:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v0, v1}, Lr2/a;->d(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lo4/h;->f:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v1, p1, Lo4/h;->f:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v0, v1}, Lr2/a;->d(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Lo4/h;->g:Ljava/lang/String;

    .line 69
    .line 70
    iget-object p1, p1, Lo4/h;->g:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v0, p1}, Lr2/a;->d(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    return p1

    .line 80
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 81
    return p1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-object v5, p0, Lo4/h;->f:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v6, p0, Lo4/h;->g:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lo4/h;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lo4/h;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lo4/h;->c:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Lo4/h;->d:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, p0, Lo4/h;->e:Ljava/lang/String;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ll/d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ll/d;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "applicationId"

    .line 7
    .line 8
    iget-object v2, p0, Lo4/h;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Ll/d;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "apiKey"

    .line 14
    .line 15
    iget-object v2, p0, Lo4/h;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Ll/d;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "databaseUrl"

    .line 21
    .line 22
    iget-object v2, p0, Lo4/h;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Ll/d;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "gcmSenderId"

    .line 28
    .line 29
    iget-object v2, p0, Lo4/h;->e:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Ll/d;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "storageBucket"

    .line 35
    .line 36
    iget-object v2, p0, Lo4/h;->f:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Ll/d;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "projectId"

    .line 42
    .line 43
    iget-object v2, p0, Lo4/h;->g:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Ll/d;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ll/d;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

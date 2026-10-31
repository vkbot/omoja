.class public final Lf5/m0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lf5/l0;

.field public b:Z

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(Lf5/l0;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lf5/m0;->d:I

    .line 6
    .line 7
    iput-object p1, p0, Lf5/m0;->a:Lf5/l0;

    .line 8
    .line 9
    iget-object v1, p1, Lf5/l0;->a:Lo4/f;

    .line 10
    .line 11
    invoke-virtual {v1}, Lo4/f;->a()V

    .line 12
    .line 13
    .line 14
    iget-object v1, v1, Lo4/f;->a:Landroid/content/Context;

    .line 15
    .line 16
    check-cast v1, Landroid/app/Application;

    .line 17
    .line 18
    const-string v2, "com.google.firebase.inappmessaging"

    .line 19
    .line 20
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v3, "fresh_install"

    .line 25
    .line 26
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x1

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1, v3, v5}, Lf5/l0;->a(Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iput-boolean v5, p0, Lf5/m0;->c:Z

    .line 42
    .line 43
    iget-object v1, p1, Lf5/l0;->a:Lo4/f;

    .line 44
    .line 45
    invoke-virtual {v1}, Lo4/f;->a()V

    .line 46
    .line 47
    .line 48
    iget-object v1, v1, Lo4/f;->a:Landroid/content/Context;

    .line 49
    .line 50
    check-cast v1, Landroid/app/Application;

    .line 51
    .line 52
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "test_device"

    .line 57
    .line 58
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p1, v2, v0}, Lf5/l0;->a(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    :goto_1
    iput-boolean v0, p0, Lf5/m0;->b:Z

    .line 73
    .line 74
    return-void
.end method

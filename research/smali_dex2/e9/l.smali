.class public abstract Le9/l;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Landroid/support/v4/media/h;

.field public static final b:Landroid/support/v4/media/h;

.field public static final c:Landroid/support/v4/media/h;

.field public static final d:Landroid/support/v4/media/h;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    sget-object v0, Le9/k;->c:Le9/k;

    .line 2
    .line 3
    sget-boolean v1, Li9/m;->a:Z

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-boolean v1, Li9/m;->a:Z

    .line 9
    .line 10
    const/16 v2, 0x14

    .line 11
    .line 12
    const/16 v3, 0x12

    .line 13
    .line 14
    new-instance v4, Landroid/support/v4/media/h;

    .line 15
    .line 16
    if-eqz v1, :cond_15

    .line 17
    .line 18
    invoke-direct {v4, v3, v0}, Landroid/support/v4/media/h;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    goto :goto_18

    .line 22
    :cond_15
    invoke-direct {v4, v2, v0}, Landroid/support/v4/media/h;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    :goto_18
    sput-object v4, Le9/l;->a:Landroid/support/v4/media/h;

    .line 26
    .line 27
    sget-object v0, Le9/k;->d:Le9/k;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    if-eqz v1, :cond_27

    .line 33
    .line 34
    new-instance v2, Landroid/support/v4/media/h;

    .line 35
    .line 36
    invoke-direct {v2, v3, v0}, Landroid/support/v4/media/h;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2d

    .line 40
    :cond_27
    new-instance v3, Landroid/support/v4/media/h;

    .line 41
    .line 42
    invoke-direct {v3, v2, v0}, Landroid/support/v4/media/h;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    move-object v2, v3

    .line 46
    :goto_2d
    sput-object v2, Le9/l;->b:Landroid/support/v4/media/h;

    .line 47
    .line 48
    sget-object v0, Le9/j;->c:Le9/j;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const/16 v2, 0x15

    .line 54
    .line 55
    const/16 v3, 0x13

    .line 56
    .line 57
    new-instance v4, Landroid/support/v4/media/h;

    .line 58
    .line 59
    if-eqz v1, :cond_40

    .line 60
    .line 61
    invoke-direct {v4, v3, v0}, Landroid/support/v4/media/h;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 62
    .line 63
    .line 64
    goto :goto_43

    .line 65
    :cond_40
    invoke-direct {v4, v2, v0}, Landroid/support/v4/media/h;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 66
    .line 67
    .line 68
    :goto_43
    sput-object v4, Le9/l;->c:Landroid/support/v4/media/h;

    .line 69
    .line 70
    sget-object v0, Le9/j;->d:Le9/j;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    if-eqz v1, :cond_52

    .line 76
    .line 77
    new-instance v1, Landroid/support/v4/media/h;

    .line 78
    .line 79
    invoke-direct {v1, v3, v0}, Landroid/support/v4/media/h;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 80
    .line 81
    .line 82
    goto :goto_57

    .line 83
    :cond_52
    new-instance v1, Landroid/support/v4/media/h;

    .line 84
    .line 85
    invoke-direct {v1, v2, v0}, Landroid/support/v4/media/h;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 86
    .line 87
    .line 88
    :goto_57
    sput-object v1, Le9/l;->d:Landroid/support/v4/media/h;

    .line 89
    .line 90
    return-void
.end method

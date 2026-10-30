.class public final synthetic Lm0/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lm0/i;

.field public final synthetic c:I

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/lang/Integer;

.field public final synthetic f:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lm0/i;ILandroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/f;->b:Lm0/i;

    .line 5
    .line 6
    iput p2, p0, Lm0/f;->c:I

    .line 7
    .line 8
    iput-object p3, p0, Lm0/f;->d:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lm0/f;->e:Ljava/lang/Integer;

    .line 11
    .line 12
    iput-object p5, p0, Lm0/f;->f:Ljava/lang/Integer;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lm0/f;->b:Lm0/i;

    .line 2
    .line 3
    iget v1, p0, Lm0/f;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Lm0/f;->d:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, p0, Lm0/f;->e:Ljava/lang/Integer;

    .line 8
    .line 9
    iget-object v4, p0, Lm0/f;->f:Ljava/lang/Integer;

    .line 10
    .line 11
    iget v5, v0, Lm0/i;->j:I

    .line 12
    .line 13
    if-ne v1, v5, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, v0, Lm0/i;->d:Landroid/widget/TextView;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const v5, 0x7f1300b8

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, " "

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    new-array v2, v2, [B

    .line 49
    .line 50
    const/16 v3, -0x75

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    aput-byte v3, v2, v5

    .line 54
    .line 55
    const/16 v3, 0x8

    .line 56
    .line 57
    new-array v3, v3, [B

    .line 58
    .line 59
    fill-array-data v3, :array_0

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    return-void

    .line 80
    nop

    .line 81
    :array_0
    .array-data 1
        -0x5ct
        -0x28t
        0x5t
        0x56t
        -0x50t
        -0x77t
        -0x59t
        0x1at
    .end array-data
.end method

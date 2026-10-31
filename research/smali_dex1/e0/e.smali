.class public final synthetic Le0/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/u0;


# direct methods
.method public synthetic constructor <init>(Ls1/u0;I)V
    .registers 3

    .line 1
    iput p2, p0, Le0/e;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/e;->c:Ls1/u0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget v0, p0, Le0/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_58

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le0/e;->c:Ls1/u0;

    .line 7
    .line 8
    invoke-virtual {v0}, Ls1/u0;->h()V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, v0, Ls1/u0;->f:Z

    .line 12
    .line 13
    if-eqz v1, :cond_19

    .line 14
    .line 15
    iget-object v1, v0, Ls1/u0;->i:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_19

    .line 22
    .line 23
    invoke-virtual {v0}, Ls1/u0;->j()V

    .line 24
    .line 25
    .line 26
    :cond_19
    return-void

    .line 27
    :pswitch_1a
    iget-object v0, p0, Le0/e;->c:Ls1/u0;

    .line 28
    .line 29
    invoke-virtual {v0}, Ls1/u0;->h()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_20
    iget-object v0, p0, Le0/e;->c:Ls1/u0;

    .line 34
    .line 35
    invoke-virtual {v0}, Ls1/u0;->h()V

    .line 36
    .line 37
    .line 38
    iget-boolean v1, v0, Ls1/u0;->n:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2c

    .line 41
    .line 42
    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    const/high16 v1, 0x3f000000    # 0.5f

    .line 46
    .line 47
    :goto_2e
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_32
    iget-object v0, p0, Le0/e;->c:Ls1/u0;

    .line 52
    .line 53
    iget-boolean v1, v0, Ls1/u0;->n:Z

    .line 54
    .line 55
    xor-int/lit8 v2, v1, 0x1

    .line 56
    .line 57
    iput-boolean v2, v0, Ls1/u0;->n:Z

    .line 58
    .line 59
    if-nez v1, :cond_40

    .line 60
    .line 61
    invoke-virtual {v0}, Ls1/u0;->l()V

    .line 62
    .line 63
    .line 64
    goto :goto_43

    .line 65
    :cond_40
    invoke-virtual {v0}, Ls1/u0;->g()V

    .line 66
    .line 67
    .line 68
    :goto_43
    iget-object v1, v0, Ls1/u0;->c:Landroid/widget/ScrollView;

    .line 69
    .line 70
    iget-boolean v2, v0, Ls1/u0;->n:Z

    .line 71
    .line 72
    if-eqz v2, :cond_4b

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    goto :goto_4d

    .line 76
    :cond_4b
    const/16 v2, 0x8

    .line 77
    .line 78
    :goto_4d
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ls1/u0;->c()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ls1/u0;->h()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_32
        :pswitch_20
        :pswitch_1a
    .end packed-switch
.end method

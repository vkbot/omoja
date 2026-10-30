.class public final Lz1/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/github/clans/fab/FloatingActionButton;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/github/clans/fab/FloatingActionMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Lz1/g;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lz1/g;->e:Lcom/github/clans/fab/FloatingActionMenu;

    .line 4
    .line 5
    iput-object p2, p0, Lz1/g;->c:Lcom/github/clans/fab/FloatingActionButton;

    .line 6
    .line 7
    iput-boolean p3, p0, Lz1/g;->d:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lz1/g;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lz1/g;->e:Lcom/github/clans/fab/FloatingActionMenu;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/github/clans/fab/FloatingActionMenu;->k:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 14
    .line 15
    iget-boolean v1, p0, Lz1/g;->d:Z

    .line 16
    .line 17
    iget-object v2, p0, Lz1/g;->c:Lcom/github/clans/fab/FloatingActionButton;

    .line 18
    .line 19
    if-eq v2, v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/github/clans/fab/FloatingActionButton;->g(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    const v0, 0x7f0901fa

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lz1/k;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-boolean v2, v0, Lz1/k;->r:Z

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, v0, Lz1/k;->p:Landroid/view/animation/Animation;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v1, v0, Lz1/k;->o:Landroid/view/animation/Animation;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lz1/k;->p:Landroid/view/animation/Animation;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    const/4 v1, 0x4

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lz1/g;->e:Lcom/github/clans/fab/FloatingActionMenu;

    .line 61
    .line 62
    iget-boolean v1, v0, Lcom/github/clans/fab/FloatingActionMenu;->k:Z

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 68
    .line 69
    iget-boolean v1, p0, Lz1/g;->d:Z

    .line 70
    .line 71
    iget-object v2, p0, Lz1/g;->c:Lcom/github/clans/fab/FloatingActionButton;

    .line 72
    .line 73
    if-eq v2, v0, :cond_5

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Lcom/github/clans/fab/FloatingActionButton;->m(Z)V

    .line 76
    .line 77
    .line 78
    :cond_5
    const v0, 0x7f0901fa

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lz1/k;

    .line 86
    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    iget-boolean v2, v0, Lz1/k;->r:Z

    .line 90
    .line 91
    if-eqz v2, :cond_7

    .line 92
    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    iget-object v1, v0, Lz1/k;->o:Landroid/view/animation/Animation;

    .line 96
    .line 97
    if-eqz v1, :cond_6

    .line 98
    .line 99
    iget-object v1, v0, Lz1/k;->p:Landroid/view/animation/Animation;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lz1/k;->o:Landroid/view/animation/Animation;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    .line 108
    .line 109
    :cond_6
    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    :cond_7
    :goto_1
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lm0/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Ll0/b;

.field public final synthetic f:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lm0/i;IZLjava/lang/String;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lm0/d;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lm0/d;->e:Ll0/b;

    .line 8
    .line 9
    iput p2, p0, Lm0/d;->c:I

    .line 10
    .line 11
    iput-boolean p3, p0, Lm0/d;->d:Z

    .line 12
    .line 13
    iput-object p4, p0, Lm0/d;->f:Ljava/io/Serializable;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Lm0/n3;ILjava/util/ArrayList;Z)V
    .registers 6

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lm0/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/d;->e:Ll0/b;

    iput p2, p0, Lm0/d;->c:I

    iput-object p3, p0, Lm0/d;->f:Ljava/io/Serializable;

    iput-boolean p4, p0, Lm0/d;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget v0, p0, Lm0/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_58

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm0/d;->e:Ll0/b;

    .line 7
    .line 8
    check-cast v0, Lm0/n3;

    .line 9
    .line 10
    iget v1, p0, Lm0/d;->c:I

    .line 11
    .line 12
    iget-object v2, p0, Lm0/d;->f:Ljava/io/Serializable;

    .line 13
    .line 14
    check-cast v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-boolean v3, p0, Lm0/d;->d:Z

    .line 17
    .line 18
    iget-object v4, v0, Lm0/n3;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget v5, v0, Lm0/n3;->g:I

    .line 21
    .line 22
    if-ne v1, v5, :cond_2a

    .line 23
    .line 24
    iget-object v1, v0, Lm0/n3;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    if-nez v1, :cond_1c

    .line 27
    .line 28
    goto :goto_2a

    .line 29
    :cond_1c
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, v0, Lm0/n3;->t:Z

    .line 37
    .line 38
    iput-boolean v3, v0, Lm0/n3;->u:Z

    .line 39
    .line 40
    invoke-virtual {v0}, Lm0/n3;->u()V

    .line 41
    .line 42
    .line 43
    :cond_2a
    :goto_2a
    return-void

    .line 44
    :pswitch_2b
    iget-object v0, p0, Lm0/d;->e:Ll0/b;

    .line 45
    .line 46
    check-cast v0, Lm0/i;

    .line 47
    .line 48
    iget v1, p0, Lm0/d;->c:I

    .line 49
    .line 50
    iget-boolean v2, p0, Lm0/d;->d:Z

    .line 51
    .line 52
    iget-object v3, p0, Lm0/d;->f:Ljava/io/Serializable;

    .line 53
    .line 54
    check-cast v3, Ljava/lang/String;

    .line 55
    .line 56
    iget v4, v0, Lm0/i;->j:I

    .line 57
    .line 58
    if-ne v1, v4, :cond_57

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_42

    .line 65
    .line 66
    goto :goto_57

    .line 67
    :cond_42
    const/4 v1, 0x0

    .line 68
    iput-boolean v1, v0, Lm0/i;->i:Z

    .line 69
    .line 70
    if-eqz v2, :cond_49

    .line 71
    .line 72
    iput-boolean v1, v0, Lm0/i;->h:Z

    .line 73
    .line 74
    :cond_49
    iget-object v1, v0, Lm0/i;->b:Landroid/widget/Spinner;

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lm0/i;->u()V

    .line 81
    .line 82
    .line 83
    iget-object v0, v0, Lm0/i;->d:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    :cond_57
    :goto_57
    return-void

    .line 89
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_2b
    .end packed-switch
.end method

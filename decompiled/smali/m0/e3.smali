.class public final synthetic Lm0/e3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/n3;

.field public final synthetic d:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Lm0/n3;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;Landroid/widget/ListView;I)V
    .locals 0

    .line 1
    iput p5, p0, Lm0/e3;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/e3;->c:Lm0/n3;

    .line 4
    .line 5
    iput-object p2, p0, Lm0/e3;->d:Landroidx/appcompat/app/AlertDialog;

    .line 6
    .line 7
    iput-object p3, p0, Lm0/e3;->e:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object p4, p0, Lm0/e3;->f:Landroid/widget/ListView;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Lm0/e3;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lm0/e3;->c:Lm0/n3;

    .line 7
    .line 8
    iget-object v2, v1, Lm0/n3;->n:Lcom/bumptech/glide/manager/t;

    .line 9
    .line 10
    iget v4, v1, Lm0/n3;->s:I

    .line 11
    .line 12
    iget-object p1, v1, Lm0/n3;->o:Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    new-instance v0, Lm0/f3;

    .line 15
    .line 16
    iget-object v3, p0, Lm0/e3;->d:Landroidx/appcompat/app/AlertDialog;

    .line 17
    .line 18
    iget-object v5, p0, Lm0/e3;->e:Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object v6, p0, Lm0/e3;->f:Landroid/widget/ListView;

    .line 21
    .line 22
    invoke-direct/range {v0 .. v6}, Lm0/f3;-><init>(Lm0/n3;Lcom/bumptech/glide/manager/t;Landroidx/appcompat/app/AlertDialog;ILandroid/widget/TextView;Landroid/widget/ListView;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object p1, p0, Lm0/e3;->c:Lm0/n3;

    .line 30
    .line 31
    iget-object v0, p1, Lm0/n3;->n:Lcom/bumptech/glide/manager/t;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lm0/e3;->d:Landroidx/appcompat/app/AlertDialog;

    .line 41
    .line 42
    iget-object v2, p0, Lm0/e3;->e:Landroid/widget/TextView;

    .line 43
    .line 44
    iget-object v3, p0, Lm0/e3;->f:Landroid/widget/ListView;

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1, v2, v3}, Lm0/n3;->v(Ljava/io/File;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;Landroid/widget/ListView;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_1
    iget-object p1, p0, Lm0/e3;->c:Lm0/n3;

    .line 51
    .line 52
    iget-object v0, p1, Lm0/n3;->r:Ljava/io/File;

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    iget-object v0, p1, Lm0/n3;->r:Ljava/io/File;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Lm0/e3;->d:Landroidx/appcompat/app/AlertDialog;

    .line 69
    .line 70
    iget-object v2, p0, Lm0/e3;->e:Landroid/widget/TextView;

    .line 71
    .line 72
    iget-object v3, p0, Lm0/e3;->f:Landroid/widget/ListView;

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1, v2, v3}, Lm0/n3;->v(Ljava/io/File;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;Landroid/widget/ListView;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lm0/g3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lm0/n3;

.field public final synthetic c:Lcom/bumptech/glide/manager/t;

.field public final synthetic d:Ljava/io/File;

.field public final synthetic e:I

.field public final synthetic f:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Lm0/n3;Lcom/bumptech/glide/manager/t;Ljava/io/File;ILandroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;Landroid/widget/ListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/g3;->b:Lm0/n3;

    .line 5
    .line 6
    iput-object p2, p0, Lm0/g3;->c:Lcom/bumptech/glide/manager/t;

    .line 7
    .line 8
    iput-object p3, p0, Lm0/g3;->d:Ljava/io/File;

    .line 9
    .line 10
    iput p4, p0, Lm0/g3;->e:I

    .line 11
    .line 12
    iput-object p5, p0, Lm0/g3;->f:Landroidx/appcompat/app/AlertDialog;

    .line 13
    .line 14
    iput-object p6, p0, Lm0/g3;->g:Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object p7, p0, Lm0/g3;->h:Landroid/widget/ListView;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v6, p0, Lm0/g3;->c:Lcom/bumptech/glide/manager/t;

    .line 2
    .line 3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v7, p0, Lm0/g3;->d:Ljava/io/File;

    .line 7
    .line 8
    invoke-static {v7}, Lcom/bumptech/glide/manager/t;->h(Ljava/io/File;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    new-instance v8, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    check-cast v2, Ljava/io/File;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, p0, Lm0/g3;->b:Lm0/n3;

    .line 45
    .line 46
    iget-object v10, v1, Lm0/n3;->d:Landroid/os/Handler;

    .line 47
    .line 48
    new-instance v0, Lm0/h3;

    .line 49
    .line 50
    iget v2, p0, Lm0/g3;->e:I

    .line 51
    .line 52
    iget-object v3, p0, Lm0/g3;->f:Landroidx/appcompat/app/AlertDialog;

    .line 53
    .line 54
    iget-object v5, p0, Lm0/g3;->g:Landroid/widget/TextView;

    .line 55
    .line 56
    iget-object v9, p0, Lm0/g3;->h:Landroid/widget/ListView;

    .line 57
    .line 58
    invoke-direct/range {v0 .. v9}, Lm0/h3;-><init>(Lm0/n3;ILandroidx/appcompat/app/AlertDialog;Ljava/util/ArrayList;Landroid/widget/TextView;Lcom/bumptech/glide/manager/t;Ljava/io/File;Ljava/util/ArrayList;Landroid/widget/ListView;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method

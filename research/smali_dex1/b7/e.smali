.class public final Lb7/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lb7/e;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lb7/e;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final b()V
    .registers 1

    .line 1
    return-void
.end method

.method private final d(Ljava/lang/Exception;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final f()V
    .registers 1

    .line 1
    return-void
.end method

.method private final h()V
    .registers 1

    .line 1
    return-void
.end method

.method private final i()V
    .registers 1

    .line 1
    return-void
.end method

.method private final k()V
    .registers 1

    .line 1
    return-void
.end method

.method private final l()V
    .registers 1

    .line 1
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget v0, p0, Lb7/e;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lb7/e;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_34

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_8
    check-cast v1, Lb7/j;

    .line 10
    .line 11
    iget-boolean v0, v1, Lb7/j;->k:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1a

    .line 14
    .line 15
    const-string v0, "j"

    .line 16
    .line 17
    const-string v2, "Camera closed; finishing activity"

    .line 18
    .line 19
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, v1, Lb7/j;->a:Lcom/journeyapps/barcodescanner/CaptureActivity;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    :cond_1a
    return-void

    .line 28
    :pswitch_1b
    check-cast v1, Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 29
    .line 30
    iget-object v0, v1, Lb7/f;->k:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x0

    .line 37
    :goto_24
    if-ge v2, v1, :cond_32

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    check-cast v3, Lb7/e;

    .line 46
    .line 47
    invoke-virtual {v3}, Lb7/e;->a()V

    .line 48
    .line 49
    .line 50
    goto :goto_24

    .line 51
    :cond_32
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_8
    .end packed-switch
.end method

.method public final c(Ljava/lang/Exception;)V
    .registers 6

    .line 1
    iget v0, p0, Lb7/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_32

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_6
    iget-object p1, p0, Lb7/e;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lb7/j;

    .line 10
    .line 11
    iget-object v0, p1, Lb7/j;->a:Lcom/journeyapps/barcodescanner/CaptureActivity;

    .line 12
    .line 13
    const v1, 0x7f130509

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Lb7/j;->b(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_17
    iget-object v0, p0, Lb7/e;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 27
    .line 28
    iget-object v0, v0, Lb7/f;->k:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_22
    if-ge v2, v1, :cond_30

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    check-cast v3, Lb7/e;

    .line 44
    .line 45
    invoke-virtual {v3, p1}, Lb7/e;->c(Ljava/lang/Exception;)V

    .line 46
    .line 47
    .line 48
    goto :goto_22

    .line 49
    :cond_30
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_17
        :pswitch_6
    .end packed-switch
.end method

.method public final e()V
    .registers 5

    .line 1
    iget v0, p0, Lb7/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb7/e;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/journeyapps/barcodescanner/ViewfinderView;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/journeyapps/barcodescanner/ViewfinderView;->j:Lb7/f;

    .line 11
    .line 12
    if-nez v1, :cond_e

    .line 13
    .line 14
    goto :goto_20

    .line 15
    :cond_e
    invoke-virtual {v1}, Lb7/f;->getFramingRect()Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, v0, Lcom/journeyapps/barcodescanner/ViewfinderView;->j:Lb7/f;

    .line 20
    .line 21
    invoke-virtual {v2}, Lb7/f;->getPreviewSize()Lb7/u;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v1, :cond_20

    .line 26
    .line 27
    if-eqz v2, :cond_20

    .line 28
    .line 29
    iput-object v1, v0, Lcom/journeyapps/barcodescanner/ViewfinderView;->k:Landroid/graphics/Rect;

    .line 30
    .line 31
    iput-object v2, v0, Lcom/journeyapps/barcodescanner/ViewfinderView;->l:Lb7/u;

    .line 32
    .line 33
    :cond_20
    :goto_20
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 34
    .line 35
    .line 36
    :pswitch_23
    return-void

    .line 37
    :pswitch_24
    iget-object v0, p0, Lb7/e;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 40
    .line 41
    iget-object v0, v0, Lb7/f;->k:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x0

    .line 48
    :goto_2f
    if-ge v2, v1, :cond_3d

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    check-cast v3, Lb7/e;

    .line 57
    .line 58
    invoke-virtual {v3}, Lb7/e;->e()V

    .line 59
    .line 60
    .line 61
    goto :goto_2f

    .line 62
    :cond_3d
    return-void

    .line 63
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
    .end packed-switch
.end method

.method public final g()V
    .registers 5

    .line 1
    iget v0, p0, Lb7/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_20

    .line 4
    .line 5
    .line 6
    :pswitch_5
    return-void

    .line 7
    :pswitch_6
    iget-object v0, p0, Lb7/e;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 10
    .line 11
    iget-object v0, v0, Lb7/f;->k:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_11
    if-ge v2, v1, :cond_1f

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    check-cast v3, Lb7/e;

    .line 27
    .line 28
    invoke-virtual {v3}, Lb7/e;->g()V

    .line 29
    .line 30
    .line 31
    goto :goto_11

    .line 32
    :cond_1f
    return-void

    .line 33
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final j()V
    .registers 5

    .line 1
    iget v0, p0, Lb7/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_20

    .line 4
    .line 5
    .line 6
    :pswitch_5
    return-void

    .line 7
    :pswitch_6
    iget-object v0, p0, Lb7/e;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 10
    .line 11
    iget-object v0, v0, Lb7/f;->k:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_11
    if-ge v2, v1, :cond_1f

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    check-cast v3, Lb7/e;

    .line 27
    .line 28
    invoke-virtual {v3}, Lb7/e;->j()V

    .line 29
    .line 30
    .line 31
    goto :goto_11

    .line 32
    :cond_1f
    return-void

    .line 33
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.class public Lcom/mega/engineeringmode/function/camera/CameraTestActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic w:I


# instance fields
.field public i:Landroid/widget/Button;

.field public j:Landroid/widget/Button;

.field public k:Landroid/widget/Button;

.field public l:Landroid/widget/Button;

.field public m:Landroid/widget/Button;

.field public n:Landroid/widget/Button;

.field public o:Landroid/widget/Button;

.field public p:Landroid/widget/Button;

.field public q:Landroid/widget/Button;

.field public r:Landroid/widget/Button;

.field public s:Landroid/widget/Button;

.field public final t:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lcom/mega/engineeringmode/function/camera/CameraTestActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->t:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->u:Landroid/util/SparseArray;

    new-instance v0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity$a;-><init>(Lcom/mega/engineeringmode/function/camera/CameraTestActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->v:Lcom/mega/engineeringmode/function/camera/CameraTestActivity$a;

    return-void
.end method


# virtual methods
.method public final n(I)V
    .locals 3

    iget-object v0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->t:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1200a0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "open_camera_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final o(I)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Li1/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Li1/b;-><init>(Lcom/mega/engineeringmode/function/BaseFunctionActivity;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->r:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->r:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->p:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->p:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_4
    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_5
    const/16 v0, 0x9

    if-ne p1, v0, :cond_6

    iget-object v2, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->j:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->j:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_6
    const/16 v2, 0xa

    if-ne p1, v2, :cond_7

    iget-object v2, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->k:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->k:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_7
    const/16 v2, 0x71

    if-ne p1, v2, :cond_8

    iget-object v2, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->o:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->o:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_8
    const/4 v2, 0x7

    if-ne p1, v2, :cond_9

    iget-object v2, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->m:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->m:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_9
    const/16 v2, 0xb

    if-ne p1, v2, :cond_a

    iget-object v2, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->l:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->l:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_a
    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->n:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->n:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x9

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->n(I)V

    goto :goto_0

    :sswitch_1
    const/16 p1, 0x71

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->n(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->n(I)V

    goto :goto_0

    :sswitch_3
    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->n(I)V

    goto :goto_0

    :sswitch_4
    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->n(I)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->n(I)V

    goto :goto_0

    :sswitch_6
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->n(I)V

    goto :goto_0

    :sswitch_7
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->n(I)V

    goto :goto_0

    :sswitch_8
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->n(I)V

    goto :goto_0

    :sswitch_9
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->n(I)V

    goto :goto_0

    :sswitch_a
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->n(I)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0064 -> :sswitch_a
        0x7f0a0072 -> :sswitch_9
        0x7f0a0073 -> :sswitch_8
        0x7f0a0074 -> :sswitch_7
        0x7f0a0075 -> :sswitch_6
        0x7f0a009f -> :sswitch_5
        0x7f0a011c -> :sswitch_4
        0x7f0a0154 -> :sswitch_3
        0x7f0a02b8 -> :sswitch_2
        0x7f0a02bd -> :sswitch_1
        0x7f0a031e -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0055

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {p0}, Lmega/car/MegaCarProperty;->getInstance(Landroid/content/Context;)Lmega/car/MegaCarProperty;

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->j()V

    const p1, 0x7f0a0073

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->s:Landroid/widget/Button;

    const p1, 0x7f0a0075

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->p:Landroid/widget/Button;

    const p1, 0x7f0a0072

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->q:Landroid/widget/Button;

    const p1, 0x7f0a0074

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->r:Landroid/widget/Button;

    const p1, 0x7f0a0154

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->i:Landroid/widget/Button;

    const p1, 0x7f0a02b8

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->j:Landroid/widget/Button;

    const p1, 0x7f0a031e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->k:Landroid/widget/Button;

    const p1, 0x7f0a02bd

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->o:Landroid/widget/Button;

    const p1, 0x7f0a0064

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->m:Landroid/widget/Button;

    const p1, 0x7f0a011c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->l:Landroid/widget/Button;

    const p1, 0x7f0a009f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->n:Landroid/widget/Button;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->s:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->p:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->q:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->r:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->i:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->j:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->k:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->o:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->m:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->l:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->n:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "CameraTestActivity"

    const-string v0, "get camera count="

    const-string v1, "camera"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x3

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v0, v6

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v8

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    const-string v9, "cameraID = %s, facing = %s"

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v10, "put camera id face id="

    const-string/jumbo v11, "put camera id cameraId="

    const/16 v12, 0x9

    if-eq v9, v12, :cond_2

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v13, 0xa

    if-eq v9, v13, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v13, 0x7

    if-eq v9, v13, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v13, 0xb

    if-eq v9, v13, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v12, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v4, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v12, 0x4

    if-eq v9, v12, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v3, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v2, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v12, 0xd

    if-ne v9, v12, :cond_3

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->u:Landroid/util/SparseArray;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_2
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->o(I)V

    iget-object v9, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->t:Landroid/util/SparseArray;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    invoke-static {}, Ln2/d;->c()Ln2/d;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->v:Lcom/mega/engineeringmode/function/camera/CameraTestActivity$a;

    invoke-static {v4, p1}, Ln2/d;->d(ILn0/b$a;)V

    invoke-static {}, Ln2/d;->c()Ln2/d;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, ""

    invoke-static {v3, v2, p1}, Ln2/d;->a(IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f1201c5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    invoke-static {}, Ln2/d;->c()Ln2/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->v:Lcom/mega/engineeringmode/function/camera/CameraTestActivity$a;

    invoke-static {v0, p0}, Ln2/d;->e(ILn0/b$a;)V

    return-void
.end method

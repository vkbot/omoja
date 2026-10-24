.class public final synthetic Ls0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment$b;
.implements Lk2/a$a;
.implements Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;
.implements Lcom/mega/engineeringmode/function/upgrade/FileAdapter$a;
.implements Lcom/mega/engineeringmode/model/CpuUsageMonitor$b;
.implements Lcom/mega/engineeringmode/ui/a$c;
.implements Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;
.implements Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;
.implements Lm4/b;
.implements Lg5/a0;
.implements Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$ISheetInjector;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls0/e;->c:I

    iput-object p2, p0, Ls0/e;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object p0, p0, Ls0/e;->r:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/ui/MainUnEncryptionFragment;

    sget v0, Lcom/mega/engineeringmode/ui/MainUnEncryptionFragment;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ls0/e;->r:Ljava/lang/Object;

    check-cast p0, Lorg/apache/commons/io/output/j;

    check-cast p1, Lorg/apache/commons/io/output/i;

    sget-object p1, Li4/c;->a:[B

    return-object p0
.end method

.method public final b()V
    .locals 4

    iget v0, p0, Ls0/e;->c:I

    iget-object p0, p0, Ls0/e;->r:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/mega/engineeringmode/function/SystemResetActivity;

    sget v0, Lcom/mega/engineeringmode/function/SystemResetActivity;->k:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lk2/b;

    invoke-direct {v0, p0}, Lk2/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/SystemResetActivity;->i:Lk2/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/SystemResetActivity;->i:Lk2/b;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12031b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lk2/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/SystemResetActivity;->j:Landroid/os/Handler;

    new-instance v1, Lg1/c0;

    invoke-direct {v1, p0}, Lg1/c0;-><init>(Lcom/mega/engineeringmode/function/SystemResetActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    check-cast p0, Lcom/mega/engineeringmode/function/SystemRebootActivity;

    sget v0, Lcom/mega/engineeringmode/function/SystemRebootActivity;->l:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/SystemRebootActivity;->n()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(IZ)V
    .locals 9

    iget-object p0, p0, Ls0/e;->r:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;

    sget v0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->n:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ln2/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/mega/engineeringmode/function/presskey/T1GCKeyCode;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/mega/engineeringmode/function/presskey/KeyCode;

    :goto_0
    const v1, 0x7f0a00b2

    const/4 v2, -0x1

    const v3, 0x7f0a00d2

    const v4, 0x7f0a00b4

    const v5, 0x7f0a00cc

    const v6, 0x7f0a00d4

    if-ne p1, v1, :cond_1

    const-string v1, "CUSTOM"

    invoke-static {v0, v1}, Lb1/a;->l(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    if-ne p1, v6, :cond_2

    const-string v1, "VOLUME_ADD"

    invoke-static {v0, v1}, Lb1/a;->l(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    const v1, 0x7f0a00ba

    if-ne p1, v1, :cond_3

    const-string v1, "LAST_SONG"

    invoke-static {v0, v1}, Lb1/a;->l(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_3
    if-ne p1, v5, :cond_4

    const-string v1, "OK"

    invoke-static {v0, v1}, Lb1/a;->l(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_4
    const v1, 0x7f0a00d0

    if-ne p1, v1, :cond_5

    const-string v1, "NEXT_SONG"

    invoke-static {v0, v1}, Lb1/a;->l(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_5
    const v1, 0x7f0a00d5

    if-ne p1, v1, :cond_6

    const-string v1, "VOICE"

    invoke-static {v0, v1}, Lb1/a;->l(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_6
    if-ne p1, v4, :cond_7

    const-string v1, "VOLUME_SUB"

    invoke-static {v0, v1}, Lb1/a;->l(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_7
    if-ne p1, v3, :cond_8

    const-string v1, "SWITCH"

    invoke-static {v0, v1}, Lb1/a;->l(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_8
    move v0, v2

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v1, v7, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v7, "simulate,id = %s, keyCode  = %s, status = %s"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "KeySimulationActivity"

    invoke-static {v7, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln2/c;->b()Z

    move-result v1

    const/4 v8, 0x1

    if-eqz v1, :cond_b

    if-eq p1, v6, :cond_9

    if-ne p1, v4, :cond_b

    :cond_9
    if-eqz p2, :cond_10

    const/16 p1, 0xb

    if-ne v0, p1, :cond_a

    move v2, v8

    :cond_a
    iget-object p0, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->l:Ln2/i;

    if-eqz p0, :cond_10

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/16 p2, 0x1f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "keyCode"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "rotaryTimes"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sendKeyMsg  "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MessageCenterUtil"

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Ln2/i;->g([B)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string p2, "KeyInput/RotaryEvent"

    invoke-virtual {p0, p2, p1}, Ln2/i;->d(Ljava/lang/String;Ljava/util/ArrayList;)Z

    goto :goto_3

    :cond_b
    if-ne p1, v3, :cond_c

    iget-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->k:Lmega/car/MegaCarProperty;

    if-eqz p1, :cond_d

    const-string/jumbo p1, "onTouch  change"

    invoke-static {v7, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->k:Lmega/car/MegaCarProperty;

    const v1, 0x2c00000c

    invoke-virtual {p1, v1, p2}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    goto :goto_2

    :cond_c
    if-ne p1, v5, :cond_d

    const-string/jumbo p1, "onTouch  ok"

    invoke-static {v7, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->k:Lmega/car/MegaCarProperty;

    const v1, 0x2b000006

    invoke-virtual {p1, v1, p2}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    :cond_d
    :goto_2
    if-eq v0, v2, :cond_10

    invoke-static {}, Ln2/c;->b()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p1

    const v1, 0x670000b5

    invoke-virtual {p1, v1}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result p1

    if-ne p1, v8, :cond_f

    const/16 p1, 0x9

    if-eq v0, p1, :cond_e

    const/16 p1, 0xa

    if-ne v0, p1, :cond_f

    :cond_e
    iget-object p0, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->l:Ln2/i;

    if-eqz p0, :cond_10

    const-string p1, "KeyInput/Event/Sic"

    invoke-virtual {p0, p1, v0, p2}, Ln2/i;->c(Ljava/lang/String;IZ)Z

    goto :goto_3

    :cond_f
    iget-object p0, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->l:Ln2/i;

    if-eqz p0, :cond_10

    const-string p1, "KeyInput/Event"

    invoke-virtual {p0, p1, v0, p2}, Ln2/i;->c(Ljava/lang/String;IZ)Z

    :cond_10
    :goto_3
    return-void
.end method

.method public final dividerPaint(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Ls0/e;->r:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-static {p0, p1, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->b(Landroid/graphics/Paint;ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public final drawableProvider(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Ls0/e;->r:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->a(Landroid/graphics/drawable/Drawable;ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ls0/e;->r:Ljava/lang/Object;

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeSheetData(Ljava/io/OutputStream;)V
    .locals 0

    iget-object p0, p0, Ls0/e;->r:Ljava/lang/Object;

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->a(Lorg/apache/poi/xssf/streaming/SXSSFSheet;Ljava/io/OutputStream;)V

    return-void
.end method

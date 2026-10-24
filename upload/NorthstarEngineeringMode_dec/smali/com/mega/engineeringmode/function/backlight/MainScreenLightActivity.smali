.class public Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# instance fields
.field public final i:Landroid/net/Uri;

.field public j:Landroid/widget/EditText;

.field public k:I

.field public l:I

.field public m:Landroid/content/ContentResolver;

.field public n:Z

.field public final o:Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity$a;

.field public p:Ln2/i;

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    const-string v0, "main_control_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->i:Landroid/net/Uri;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->k:I

    iput v0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->l:I

    new-instance v0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity$a;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity$a;-><init>(Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->o:Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->q:Z

    return-void
.end method


# virtual methods
.method public final n()I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "main_control_brightness"

    invoke-static {p0, v2, v0, v1}, Lt2/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const-string v0, "getCurrentLight value "

    const-string v1, "MainScreenLightActivity"

    invoke-static {v0, p0, v1}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public final o(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBrightness: brightness=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainScreenLightActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "main_control_auto"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iput-boolean v2, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->n:Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "main_control_brightness"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f1201f5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const p1, 0x7f0a0444

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->j:Landroid/widget/EditText;

    const p1, 0x7f0a0348

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lq0/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lq0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->n()I

    move-result p1

    iput p1, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->k:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "init mLightValue "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainScreenLightActivity"

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->m:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->i:Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->o:Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity$a;

    invoke-static {p1, v0, v2, v1}, Lb1/a;->r(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    new-instance p1, Ln2/i;

    invoke-direct {p1}, Ln2/i;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->p:Ln2/i;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    const-string v0, "MainScreenLightActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->m:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->o:Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity$a;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onStop()V
    .locals 6

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const-string v0, "MainScreenLightActivity"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->n()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "resetLight mLightValue "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->k:I

    const-string v4, " currentLight "

    const-string v5, "  mSetLightValue "

    invoke-static {v2, v3, v4, v1, v5}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v3, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->l:I

    invoke-static {v2, v3, v0}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->k:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v3, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->l:I

    if-eq v3, v2, :cond_0

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->o(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "main_control_auto"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->p:Ln2/i;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->q:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ln2/i;->b(II)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->q:Z

    :cond_2
    return-void
.end method

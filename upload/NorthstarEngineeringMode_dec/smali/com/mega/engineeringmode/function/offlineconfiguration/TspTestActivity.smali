.class public Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic v:I


# instance fields
.field public i:Landroid/widget/Button;

.field public j:Landroid/widget/Button;

.field public k:Landroid/widget/EditText;

.field public l:Landroid/widget/EditText;

.field public m:Landroid/widget/EditText;

.field public n:Landroid/widget/EditText;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/Button;

.field public q:Ln2/i;

.field public r:Landroid/view/View;

.field public final s:Landroid/net/Uri;

.field public final t:Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity$a;

.field public u:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    const-string v0, "TspGlobalId"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->s:Landroid/net/Uri;

    new-instance v0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity$a;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity$a;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->t:Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity$a;

    return-void
.end method


# virtual methods
.method public final n()Z
    .locals 4

    invoke-static {}, Ln2/c;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "persist.sys.chery.sim.active"

    invoke-static {p0, v2}, Ld/f;->z(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sys.tsp.sim.activation"

    const/4 v3, -0x2

    invoke-static {p0, v0, v2, v3}, Lt2/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const v0, 0x7f0d004b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->j()V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->i:Landroid/widget/Button;

    const v0, 0x7f0a00aa

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->j:Landroid/widget/Button;

    const v0, 0x7f0a0184

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->k:Landroid/widget/EditText;

    const v0, 0x7f0a0182

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->l:Landroid/widget/EditText;

    const v0, 0x7f0a017d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->m:Landroid/widget/EditText;

    const v0, 0x7f0a017c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->n:Landroid/widget/EditText;

    const v0, 0x7f0a03d7

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0a00b1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->p:Landroid/widget/Button;

    const v0, 0x7f0a00cd

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->r:Landroid/view/View;

    const v0, 0x7f0a0360

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->u:Landroid/widget/Spinner;

    invoke-static {}, Ln2/c;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->u:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f030007

    const v2, 0x7f0d008c

    invoke-static {p0, v0, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const v2, 0x7f0d0102

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->u:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->u:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->t:Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity$a;

    iget-object v3, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->s:Landroid/net/Uri;

    invoke-virtual {v0, v3, p1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->i:Landroid/widget/Button;

    new-instance v2, Lv1/k;

    invoke-direct {v2, p0, v1}, Lv1/k;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->j:Landroid/widget/Button;

    new-instance v2, Lv1/l;

    invoke-direct {v2, p0, v1}, Lv1/l;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00a2

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lx0/b;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0}, Lx0/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->p:Landroid/widget/Button;

    new-instance v1, Lv1/k;

    invoke-direct {v1, p0, p1}, Lv1/k;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->r:Landroid/view/View;

    new-instance v1, Lv1/l;

    invoke-direct {v1, p0, p1}, Lv1/l;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->u:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->u:Landroid/widget/Spinner;

    new-instance v0, Lv1/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    new-instance p1, Ln2/i;

    invoke-direct {p1}, Ln2/i;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->q:Ln2/i;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->t:Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity$a;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onResume()V
    .locals 7

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onResume()V

    sget-object v0, Ln2/b;->b:Ln2/b;

    const-string v1, "TestVin"

    invoke-virtual {v0, v1}, Ln2/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v1, "TestSn"

    invoke-virtual {v0, v1}, Ln2/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v1, "TestIccId"

    invoke-virtual {v0, v1}, Ln2/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v1, "TestHuId"

    invoke-virtual {v0, v1}, Ln2/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const-string v1, "isTestMode"

    invoke-virtual {v0, v1}, Ln2/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->i:Landroid/widget/Button;

    const v4, 0x7f08008a

    const v5, 0x7f08008b

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_0

    :cond_4
    move v1, v4

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v1, "isTestDev"

    invoke-virtual {v0, v1}, Ln2/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->j:Landroid/widget/Button;

    if-eqz v2, :cond_5

    move v2, v5

    goto :goto_1

    :cond_5
    move v2, v4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->n()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "simCarStatus = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "TspTestActivity"

    invoke-static {v6, v3}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->p:Landroid/widget/Button;

    if-eqz v2, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lt2/a;->b(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-static {}, Ln2/c;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v1}, Ln2/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "0"

    :cond_8
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_a

    if-gez v0, :cond_9

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->u:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_4

    :cond_a
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wrong i = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void
.end method

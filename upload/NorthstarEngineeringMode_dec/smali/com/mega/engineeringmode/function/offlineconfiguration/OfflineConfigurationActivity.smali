.class public Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity$SpacesItemDecoration;
    }
.end annotation


# static fields
.field public static final synthetic D:I


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public final C:Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity$a;

.field public i:Landroidx/recyclerview/widget/RecyclerView;

.field public j:Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;

.field public k:Landroid/widget/Button;

.field public l:Landroid/widget/Button;

.field public m:Landroid/widget/Button;

.field public n:Landroid/widget/Button;

.field public o:Landroid/widget/Button;

.field public p:Landroid/widget/Button;

.field public q:Landroid/widget/Button;

.field public r:Landroid/widget/Button;

.field public s:Landroid/widget/Button;

.field public t:Landroid/view/View;

.field public final u:Landroid/os/Handler;

.field public v:Ln0/a;

.field public w:Ln2/i;

.field public final x:I

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->u:Landroid/os/Handler;

    const/4 v0, 0x3

    iput v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->x:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->y:I

    new-instance v0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity$a;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->C:Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity$a;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->B:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "readDidData "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineConfigurationActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "result  "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getValue  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " dataValue "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->v:Ln0/a;

    if-eqz p0, :cond_0

    const/4 v2, 0x3

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p0, v2, v3, p1}, Ln0/a;->D(IILjava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setValue  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineConfigurationActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->v:Ln0/a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ln0/a;->L(Ljava/lang/String;)I

    move-result p0

    const-string/jumbo p1, "result  "

    invoke-static {p1, p0, v1}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0040

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    const-string v2, "eamp_value"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "eampValue = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OfflineConfigurationActivity"

    invoke-static {v6, v5}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    if-ne v4, v1, :cond_0

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->y:I

    goto :goto_1

    :cond_1
    :goto_0
    iput v4, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->y:I

    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget v2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->y:I

    if-ne v2, v3, :cond_4

    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "config"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v5, "0"

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v2, v7, v5}, [Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "ready to write name = %s, value = %s, config = %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object v2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->z:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->A:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iput-object v2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->z:Ljava/lang/String;

    iput-object v5, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->A:Ljava/lang/String;

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    const v2, 0x7f1201cc

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    const p1, 0x7f0a0138

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->k:Landroid/widget/Button;

    new-instance v2, Lv1/g;

    invoke-direct {v2, p0, v0}, Lv1/g;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0139

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->l:Landroid/widget/Button;

    new-instance v2, Lv1/g;

    invoke-direct {v2, p0, v1}, Lv1/g;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a013a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->m:Landroid/widget/Button;

    new-instance v2, Lv1/h;

    invoke-direct {v2, p0, v1}, Lv1/h;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a013b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->n:Landroid/widget/Button;

    new-instance v2, Lv1/i;

    invoke-direct {v2, p0, v1}, Lv1/i;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a013c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->o:Landroid/widget/Button;

    new-instance v1, Lv1/g;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lv1/g;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a013d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->p:Landroid/widget/Button;

    new-instance v1, Lv1/h;

    invoke-direct {v1, p0, v2}, Lv1/h;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a013e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->q:Landroid/widget/Button;

    new-instance v1, Lv1/i;

    invoke-direct {v1, p0, v2}, Lv1/i;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0135

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->r:Landroid/widget/Button;

    new-instance v1, Lv1/g;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lv1/g;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0136

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->s:Landroid/widget/Button;

    new-instance v1, Lv1/h;

    invoke-direct {v1, p0, v2}, Lv1/h;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0137

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->t:Landroid/view/View;

    new-instance v1, Lv1/i;

    invoke-direct {v1, p0, v2}, Lv1/i;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a046a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lv1/h;

    invoke-direct {v1, p0, v0}, Lv1/h;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0306

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lv1/i;

    invoke-direct {v1, p0, v0}, Lv1/i;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0105

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->i:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/16 v0, 0x9

    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->i:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity$SpacesItemDecoration;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity$SpacesItemDecoration;->a:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;

    invoke-direct {p1, p0}, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->j:Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-static {}, Ln2/d;->b()Ln0/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->v:Ln0/a;

    if-eqz p1, :cond_6

    :try_start_0
    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->C:Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity$a;

    invoke-interface {p1, v2, p0}, Ln0/a;->B(ILn0/b;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_3
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->v:Ln0/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->C:Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity$a;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p0}, Ln0/a;->H(ILn0/b$a;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onResume()V

    iget v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "701a"

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->z:Ljava/lang/String;

    sget-object v1, Lv1/f;->b:Landroid/util/ArrayMap;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "OfflineConfigurationActivity"

    const-string v0, "get did is null!"

    invoke-static {p0, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->n(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateReadData did = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineConfigurationActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->u:Landroid/os/Handler;

    new-instance v1, Lf/l;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, p0, p2}, Lf/l;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final q()V
    .locals 7

    const-string/jumbo v0, "writeDidData did "

    iget-object v1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->j:Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;

    const-string v2, "OfflineConfigurationActivity"

    if-nez v1, :cond_0

    const-string p0, " writeDidData mAdapter null "

    invoke-static {v2, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->c:Lv1/a;

    if-nez v1, :cond_1

    const-string/jumbo p0, "writeDidData  config err"

    invoke-static {v2, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v3, v1, Lv1/a;->a:Ljava/lang/String;

    iget-object v4, v1, Lv1/a;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p0, "configuration value null"

    invoke-static {v2, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lv1/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lv1/f;->b(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "value"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "did"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " jsonObject "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->o(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

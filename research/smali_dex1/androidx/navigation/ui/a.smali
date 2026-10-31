.class public final synthetic Landroidx/navigation/ui/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput p1, p0, Landroidx/navigation/ui/a;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/navigation/ui/a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/navigation/ui/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v1, Landroidx/navigation/ui/a;->b:I

    const/16 v3, 0x1a

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, -0x1

    const/16 v7, 0xe

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0x8

    iget-object v12, v1, Landroidx/navigation/ui/a;->d:Ljava/lang/Object;

    iget-object v13, v1, Landroidx/navigation/ui/a;->c:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_824

    check-cast v13, Lx0/c;

    check-cast v12, Lx0/m;

    .line 1
    iget-object v0, v13, Lx0/c;->i:Ljava/util/HashMap;

    iget-object v2, v12, Lx0/m;->a:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v10

    rem-int/lit8 v2, v2, 0x4

    .line 2
    iget-object v4, v12, Lx0/m;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v2, :cond_6f

    .line 3
    iget-object v4, v13, Lx0/c;->c:Lx0/o;

    iget-object v4, v4, Lx0/o;->u:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_45
    :goto_45
    if-ge v9, v5, :cond_6f

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v9, v9, 0x1

    check-cast v6, Lx0/m;

    .line 4
    invoke-static {v6}, Lx0/c;->i(Lx0/m;)Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-static {v6}, Lx0/c;->n(Lx0/m;)I

    move-result v8

    invoke-static {v12}, Lx0/c;->n(Lx0/m;)I

    move-result v11

    if-ne v8, v11, :cond_45

    invoke-static {v6}, Lx0/c;->h(Lx0/m;)Z

    move-result v8

    invoke-static {v12}, Lx0/c;->h(Lx0/m;)Z

    move-result v11

    if-eq v8, v11, :cond_45

    iget-object v6, v6, Lx0/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    .line 5
    :cond_6f
    invoke-virtual {v13}, Lx0/c;->j()V

    .line 6
    iget v0, v13, Lx0/c;->g:I

    add-int/2addr v0, v10

    iput v0, v13, Lx0/c;->g:I

    .line 7
    sget-object v0, Lx0/c;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Landroidx/activity/f;

    invoke-direct {v3, v13, v2, v12, v7}, Landroidx/activity/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 8
    :pswitch_82
    check-cast v13, Lx0/c;

    check-cast v12, Lj0/e;

    .line 9
    invoke-virtual {v13, v12}, Lx0/c;->m(Lj0/e;)V

    return-void

    .line 10
    :pswitch_8a
    check-cast v13, Lw0/q0;

    check-cast v12, Lw0/p0;

    .line 11
    iget-object v0, v13, Lw0/q0;->a:Ljava/util/List;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-eq v2, v6, :cond_a3

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13
    invoke-virtual {v13, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v13, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_a3
    return-void

    .line 15
    :pswitch_a4
    check-cast v13, Lt1/h;

    check-cast v12, Lru/transfer/MessageData;

    .line 16
    iget-object v0, v13, Lt1/h;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 17
    iget-object v0, v13, Lt1/h;->k:Lt1/g;

    if-eqz v0, :cond_14f

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14f

    .line 18
    iget-object v0, v13, Lt1/h;->k:Lt1/g;

    new-instance v14, Lru/transfer/MessageData;

    invoke-virtual {v12}, Lru/transfer/MessageData;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Lru/transfer/MessageData;->gethasReply()Z

    move-result v16

    invoke-virtual {v12}, Lru/transfer/MessageData;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v12}, Lru/transfer/MessageData;->getSender()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    invoke-direct/range {v14 .. v20}, Lru/transfer/MessageData;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    check-cast v0, Lm0/n1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    sget-object v2, Lm0/n1;->e:Lcom/example/navistart/Notik;

    if-eqz v2, :cond_142

    .line 20
    iget-object v3, v2, Lcom/example/navistart/Notik;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    invoke-virtual {v14}, Lru/transfer/MessageData;->gethasReply()Z

    move-result v0

    if-eqz v0, :cond_142

    .line 22
    invoke-virtual {v14}, Lru/transfer/MessageData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/example/navistart/Notik;->c(Ljava/lang/String;)Lru/transfer/MessageData;

    move-result-object v4

    if-eqz v4, :cond_142

    .line 23
    sget-object v0, Lcom/example/navistart/Notik;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v14}, Lru/transfer/MessageData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :try_start_fc
    iget-object v0, v2, Lcom/example/navistart/Notik;->f:Ly0/h;

    new-array v6, v7, [B

    fill-array-data v6, :array_85a

    new-array v7, v11, [B

    fill-array-data v7, :array_866

    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-static {v14}, Lcom/bumptech/glide/c;->i(Lru/transfer/MessageData;)Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-virtual {v0, v6, v7}, Ly0/h;->y(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_113
    .catch Lorg/json/JSONException; {:try_start_fc .. :try_end_113} :catch_116
    .catch Ljava/lang/RuntimeException; {:try_start_fc .. :try_end_113} :catch_114

    goto :goto_142

    :catch_114
    move-exception v0

    goto :goto_117

    :catch_116
    move-exception v0

    .line 28
    :goto_117
    invoke-virtual {v14}, Lru/transfer/MessageData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v2, v4}, Lcom/example/navistart/Notik;->a(Lru/transfer/MessageData;)V

    .line 30
    new-array v2, v5, [B

    fill-array-data v2, :array_86e

    new-array v3, v11, [B

    fill-array-data v3, :array_876

    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1c

    new-array v3, v3, [B

    fill-array-data v3, :array_87e

    new-array v4, v11, [B

    fill-array-data v4, :array_890

    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    :cond_142
    :goto_142
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 32
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14f

    .line 33
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_14f
    return-void

    .line 34
    :pswitch_150
    check-cast v13, Lcom/example/navistart/mainview/HeatManSetView;

    check-cast v12, Landroid/content/Context;

    sget v0, Lcom/example/navistart/mainview/HeatManSetView;->t:I

    .line 35
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, v13, Lcom/example/navistart/mainview/HeatManSetView;->o:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, v13, Lcom/example/navistart/mainview/HeatManSetView;->p:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f070084

    .line 39
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 40
    :pswitch_176
    check-cast v13, Lt0/d;

    check-cast v12, Lt0/c;

    .line 41
    iget-object v0, v13, Lt0/d;->a:Ljava/util/List;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-eq v2, v6, :cond_18f

    .line 42
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 43
    invoke-virtual {v13, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v13, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_18f
    return-void

    .line 45
    :pswitch_190
    check-cast v13, Ls1/u0;

    check-cast v12, Le4/o;

    .line 46
    invoke-virtual {v13, v12}, Ls1/u0;->f(Le4/o;)V

    return-void

    .line 47
    :pswitch_198
    check-cast v13, Ls1/n;

    iget-object v0, v13, Ls1/n;->b:Ls1/r;

    check-cast v12, Lj0/e;

    .line 48
    invoke-virtual {v13}, Ls1/n;->j()V

    .line 49
    iget-object v2, v12, Lj0/e;->a:Lj0/d;

    sget-object v3, Lj0/d;->b:Lj0/d;

    if-ne v2, v3, :cond_269

    iget-object v2, v12, Lj0/e;->b:Ln0/d;

    if-nez v2, :cond_1ad

    goto/16 :goto_269

    .line 50
    :cond_1ad
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x3

    .line 51
    new-array v3, v3, [B

    fill-array-data v3, :array_898

    new-array v4, v11, [B

    fill-array-data v4, :array_89e

    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lh0/b;->a()Lh0/b;

    invoke-static {}, Lh0/b;->n()Lcom/example/navistart/cores/ProLanProxy;

    move-result-object v4

    invoke-interface {v4}, Lcom/example/navistart/cores/ProLanProxy;->getGuDisplayID()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 52
    iget-object v3, v12, Lj0/e;->b:Ln0/d;

    sget-object v4, Ln0/d;->l:Ln0/d;

    if-ne v3, v4, :cond_1d8

    .line 53
    const-class v3, Lm0/o;

    goto :goto_1f8

    .line 54
    :cond_1d8
    sget-object v4, Ln0/d;->h0:Ln0/d;

    if-ne v3, v4, :cond_1df

    .line 55
    const-class v3, Lm0/k2;

    goto :goto_1f8

    .line 56
    :cond_1df
    sget-object v4, Ln0/d;->A0:Ln0/d;

    if-ne v3, v4, :cond_269

    const/16 v3, 0x14

    .line 57
    new-array v3, v3, [B

    fill-array-data v3, :array_8a6

    new-array v4, v11, [B

    fill-array-data v4, :array_8b4

    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v3, Lm0/w1;

    .line 58
    :goto_1f8
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/example/navistart/W;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v5, 0x11

    .line 59
    new-array v5, v5, [B

    fill-array-data v5, :array_8bc

    new-array v6, v11, [B

    fill-array-data v6, :array_8ca

    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [B

    fill-array-data v6, :array_8d2

    new-array v8, v11, [B

    fill-array-data v8, :array_8de

    invoke-static {v6, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    new-array v5, v7, [B

    fill-array-data v5, :array_8e6

    new-array v6, v11, [B

    fill-array-data v6, :array_8f2

    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0xd

    .line 61
    new-array v3, v3, [B

    fill-array-data v3, :array_8fa

    new-array v5, v11, [B

    fill-array-data v5, :array_906

    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v2, 0x18000000

    .line 62
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    iget-object v0, v0, Ls1/r;->a:Landroid/content/SharedPreferences;

    .line 65
    sget-object v2, Ls1/r;->h:Ljava/lang/String;

    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_265

    .line 66
    invoke-virtual {v13, v9}, Ls1/n;->m(Z)V

    .line 67
    :cond_265
    invoke-virtual {v13}, Ls1/n;->l()V

    goto :goto_298

    .line 68
    :cond_269
    :goto_269
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Le0/j2;

    const/16 v4, 0x19

    invoke-direct {v3, v4, v13, v12}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x16

    new-array v4, v4, [B

    fill-array-data v4, :array_90e

    new-array v5, v11, [B

    fill-array-data v5, :array_91e

    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 70
    iget-object v0, v0, Ls1/r;->a:Landroid/content/SharedPreferences;

    .line 71
    sget-object v2, Ls1/r;->h:Ljava/lang/String;

    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_295

    .line 72
    invoke-virtual {v13, v9}, Ls1/n;->m(Z)V

    .line 73
    :cond_295
    invoke-virtual {v13}, Ls1/n;->l()V

    :goto_298
    return-void

    .line 74
    :pswitch_299
    check-cast v13, Lm7/f;

    check-cast v12, Landroid/net/wifi/ScanResult;

    .line 75
    iget-object v0, v13, Lm7/f;->d:Lm7/b;

    iget-object v0, v0, Lm7/b;->a:Lcom/woha/wifim/MainWifiManadger;

    sget-object v2, Lcom/woha/wifim/MainWifiManadger;->v:Ljava/lang/String;

    .line 76
    iget-object v2, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 77
    sput-object v2, Lcom/woha/wifim/MainWifiManadger;->v:Ljava/lang/String;

    .line 78
    iget-object v3, v12, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, ""

    if-eqz v3, :cond_2ae

    goto :goto_2af

    :cond_2ae
    move-object v3, v4

    :goto_2af
    iput-object v3, v0, Lcom/woha/wifim/MainWifiManadger;->o:Ljava/lang/String;

    .line 79
    iget-object v3, v0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_32f

    .line 80
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2bd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 81
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_2bd

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-array v8, v10, [B

    const/16 v12, -0x16

    aput-byte v12, v8, v9

    new-array v12, v11, [B

    fill-array-data v12, :array_926

    .line 82
    invoke-static {v8, v12, v7, v2}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 83
    new-array v8, v10, [B

    const/16 v12, -0x71

    aput-byte v12, v8, v9

    new-array v12, v11, [B

    fill-array-data v12, :array_92e

    invoke-static {v8, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2bd

    .line 84
    iget-object v3, v0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 85
    iget-object v3, v0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    iget v4, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v10}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 86
    iget-object v3, v0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 87
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f1304e4

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v3, v0}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_36c

    .line 89
    :cond_32f
    iget-object v3, v0, Lcom/woha/wifim/MainWifiManadger;->o:Ljava/lang/String;

    invoke-static {v3}, Lcom/woha/wifim/MainWifiManadger;->u(Ljava/lang/String;)Z

    move-result v3

    .line 90
    iget-object v5, v0, Lcom/woha/wifim/MainWifiManadger;->o:Ljava/lang/String;

    if-eqz v3, :cond_33d

    .line 91
    invoke-virtual {v0, v2, v4, v5}, Lcom/woha/wifim/MainWifiManadger;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36c

    :cond_33d
    if-eqz v5, :cond_367

    .line 92
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [B

    fill-array-data v4, :array_936

    new-array v5, v11, [B

    fill-array-data v5, :array_93c

    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_367

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1304e7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v2, v0}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_36c

    .line 95
    :cond_367
    iget-object v3, v0, Lcom/woha/wifim/MainWifiManadger;->o:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/woha/wifim/MainWifiManadger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_36c
    return-void

    .line 96
    :pswitch_36d
    check-cast v13, Lm0/l3;

    check-cast v12, Lm0/k3;

    .line 97
    iget-object v0, v13, Lm0/l3;->b:Lm0/n3;

    .line 98
    :try_start_373
    invoke-static {}, Lm0/n3;->t()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_37f

    goto/16 :goto_421

    .line 99
    :cond_37f
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 100
    iget-object v4, v12, Lm0/k3;->e:Ljava/io/File;

    iget-object v6, v12, Lm0/k3;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3f9

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_394

    goto :goto_3f9

    .line 101
    :cond_394
    iget-object v7, v0, Lm0/n3;->n:Lcom/bumptech/glide/manager/t;

    invoke-virtual {v7, v4}, Lcom/bumptech/glide/manager/t;->d(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 102
    new-instance v7, Landroid/content/Intent;

    new-array v3, v3, [B

    fill-array-data v3, :array_944

    new-array v8, v11, [B

    fill-array-data v8, :array_956

    invoke-static {v3, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_95e

    new-array v8, v11, [B

    fill-array-data v8, :array_96a

    invoke-static {v3, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v7, 0x7

    new-array v7, v7, [B

    fill-array-data v7, :array_972

    new-array v8, v11, [B

    fill-array-data v8, :array_97a

    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v7

    .line 103
    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 104
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    new-array v5, v5, [B

    fill-array-data v5, :array_982

    new-array v7, v11, [B

    fill-array-data v7, :array_98a

    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 106
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v6, v4}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 107
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_421

    :cond_3f9
    :goto_3f9
    const v3, 0x7f13046a

    .line 108
    invoke-static {v2, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_403
    .catch Landroid/content/ActivityNotFoundException; {:try_start_373 .. :try_end_403} :catch_413
    .catch Ljava/lang/Exception; {:try_start_373 .. :try_end_403} :catch_404

    goto :goto_421

    .line 109
    :catch_404
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f13046e

    invoke-static {v0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_421

    .line 110
    :catch_413
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f130474

    invoke-static {v0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_421
    return-void

    .line 111
    :pswitch_422
    check-cast v13, Lm0/x2;

    check-cast v12, Ljava/io/File;

    .line 112
    iget-object v0, v13, Lm0/x2;->a:Lm0/c3;

    iget-boolean v2, v0, Lm0/c3;->v:Z

    if-eqz v2, :cond_42e

    goto/16 :goto_4cd

    .line 113
    :cond_42e
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_439

    .line 114
    invoke-virtual {v0, v12}, Lm0/c3;->D(Ljava/io/File;)V

    goto/16 :goto_4cd

    .line 115
    :cond_439
    iget-boolean v2, v0, Lm0/c3;->v:Z

    if-nez v2, :cond_4cd

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4cd

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_44b

    goto/16 :goto_4cd

    .line 116
    :cond_44b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-static {v12}, Lm0/c3;->B(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_46e

    const v5, 0x7f13019d

    .line 119
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v5, Lm0/t2;

    invoke-direct {v5, v0, v12, v10}, Lm0/t2;-><init>(Lm0/c3;Ljava/io/File;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_480

    :cond_46e
    const v5, 0x7f13044a

    .line 121
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v5, Lm0/t2;

    invoke-direct {v5, v0, v12, v8}, Lm0/t2;-><init>(Lm0/c3;Ljava/io/File;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_480
    const v5, 0x7f13044b

    .line 123
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v5, Lm0/t2;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v12, v6}, Lm0/t2;-><init>(Lm0/c3;Ljava/io/File;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1402ef

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 126
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v7, 0x7f13042f

    invoke-virtual {v0, v7, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-array v5, v9, [Ljava/lang/String;

    .line 127
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v5, Lb7/h;

    invoke-direct {v5, v8, v3}, Lb7/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f13010a

    .line 128
    invoke-virtual {v0, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_4cd
    :goto_4cd
    return-void

    .line 130
    :pswitch_4ce
    check-cast v13, Le0/v0;

    check-cast v12, Le0/v0;

    sget-object v0, Lm0/e2;->j:Ljava/lang/String;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v13, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v12, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 133
    :pswitch_4e9
    check-cast v13, Le0/v0;

    check-cast v12, Le0/v0;

    sget-object v0, Lm0/e2;->j:Ljava/lang/String;

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v13, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v12, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 136
    :pswitch_504
    check-cast v13, Lm0/v1;

    check-cast v12, Lm0/s1;

    .line 137
    iget-object v0, v13, Lm0/v1;->a:Lm0/w1;

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lh0/b;->o()Lu0/a;

    move-result-object v5

    sget-object v6, Le0/m;->j:[B

    sget-object v7, Le0/p3;->a:[Ljava/lang/String;

    .line 139
    const-string v7, ""

    invoke-static {v6, v5, v7, v2}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/16 v5, 0x9

    .line 140
    new-array v5, v5, [B

    fill-array-data v5, :array_992

    .line 141
    invoke-static {v5, v2}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 142
    sget-object v5, Le0/x1;->q:Ljava/lang/String;

    .line 143
    invoke-static {v2, v5}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {}, Lh0/b;->o()Lu0/a;

    move-result-object v5

    sget-object v6, Le0/m;->f:[B

    .line 145
    invoke-static {v6, v5, v7, v2}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_581

    .line 146
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 147
    invoke-static {}, Lh0/b;->a()Lh0/b;

    move-result-object v2

    invoke-virtual {v2}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    move-result-object v2

    const-wide v7, 0x7fffffffffffffffL

    .line 148
    invoke-static {v7, v8, v2}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    move-result-wide v7

    .line 149
    new-instance v2, Ljava/lang/String;

    invoke-static {}, Lh0/b;->o()Lu0/a;

    move-result-object v5

    invoke-static {}, Lh0/b;->o()Lu0/a;

    move-result-object v13

    .line 150
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v6}, Ljava/lang/String;-><init>([B)V

    .line 151
    sget-object v6, Le0/m;->g:[B

    .line 152
    invoke-static {v6, v13, v14}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 153
    new-array v13, v10, [B

    const/16 v14, 0x6c

    aput-byte v14, v13, v9

    new-array v11, v11, [B

    fill-array-data v11, :array_99c

    .line 154
    invoke-static {v13, v11, v5, v6, v9}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    move-result-object v5

    .line 155
    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v2, v7, v5

    if-gez v2, :cond_57c

    move v9, v10

    :cond_57c
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_583

    .line 156
    :cond_581
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 157
    :goto_583
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_58a

    goto :goto_5f3

    .line 158
    :cond_58a
    :try_start_58a
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v5, v12, Lm0/s1;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_5f3

    .line 159
    iget-object v5, v0, Lm0/w1;->j:[Landroid/view/Display;

    if-eqz v5, :cond_5f3

    iget v6, v0, Lm0/w1;->i:I

    if-ltz v6, :cond_5f3

    array-length v5, v5

    if-lt v6, v5, :cond_5a6

    goto :goto_5f3

    .line 160
    :cond_5a6
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_5bd

    .line 161
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    iget-object v5, v0, Lm0/w1;->j:[Landroid/view/Display;

    iget v6, v0, Lm0/w1;->i:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-static {v3, v5}, Lc5/h;->b(Landroid/app/ActivityOptions;I)Landroid/app/ActivityOptions;

    move-result-object v3

    goto :goto_5be

    :cond_5bd
    move-object v3, v4

    :goto_5be
    const/high16 v5, 0x10000000

    .line 162
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v5, 0x20000

    .line 163
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v5, 0x200000

    .line 164
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v3, :cond_5db

    .line 165
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v4, v2, v3}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_5e2

    .line 166
    :cond_5db
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    .line 167
    invoke-static {v3, v2, v4}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 168
    :goto_5e2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Ll0/a;

    if-eqz v2, :cond_5f3

    .line 169
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Ll0/a;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_5f3
    .catch Ljava/lang/Exception; {:try_start_58a .. :try_end_5f3} :catch_5f3

    :catch_5f3
    :cond_5f3
    :goto_5f3
    return-void

    .line 170
    :pswitch_5f4
    check-cast v13, Lm0/g1;

    check-cast v12, Lm0/f1;

    .line 171
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    .line 172
    iget-object v2, v13, Lm0/g1;->a:Landroidx/fragment/app/h;

    if-eqz v2, :cond_67b

    if-eq v0, v6, :cond_67b

    .line 173
    iget-object v3, v13, Lm0/g1;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm0/h1;

    iget-object v2, v2, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    check-cast v2, Lm0/i1;

    sget-object v4, Lm0/i1;->i:Ljava/lang/String;

    .line 174
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 175
    iget-object v5, v2, Lm0/i1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 176
    iget-object v6, v2, Lm0/i1;->g:Ljava/lang/String;

    const v7, 0x7f1301a4

    .line 177
    invoke-virtual {v2, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v9, 0x7f1301a3

    .line 178
    invoke-virtual {v2, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 179
    iput-boolean v10, v3, Lm0/h1;->i:Z

    .line 180
    new-array v8, v8, [B

    fill-array-data v8, :array_9a4

    new-array v10, v11, [B

    fill-array-data v10, :array_9aa

    invoke-static {v8, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lm0/h1;->j:Ljava/lang/String;

    .line 181
    iget-object v8, v2, Lm0/i1;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 182
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v10, v3, Lm0/h1;->h:Ljava/lang/String;

    .line 183
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    .line 184
    invoke-virtual {v8}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v8

    .line 185
    invoke-static {}, Lh0/b;->a()Lh0/b;

    invoke-static {}, Lh0/b;->m()Lokhttp3/OkHttpClient;

    move-result-object v10

    .line 186
    invoke-virtual {v10, v8}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    new-instance v10, Lm0/e1;

    .line 187
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v2, v10, Lm0/e1;->i:Ljava/lang/Object;

    iput-object v5, v10, Lm0/e1;->c:Ljava/lang/Object;

    iput-object v3, v10, Lm0/e1;->d:Ljava/lang/Object;

    iput-object v7, v10, Lm0/e1;->e:Ljava/io/Serializable;

    iput v0, v10, Lm0/e1;->b:I

    iput-object v4, v10, Lm0/e1;->h:Ljava/lang/Object;

    iput-object v6, v10, Lm0/e1;->f:Ljava/lang/Object;

    iput-object v9, v10, Lm0/e1;->g:Ljava/lang/Object;

    .line 188
    invoke-interface {v8, v10}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :cond_67b
    return-void

    .line 189
    :pswitch_67c
    check-cast v13, Lm0/v0;

    check-cast v12, Lm0/u0;

    .line 190
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    if-eq v0, v6, :cond_6ef

    .line 191
    iget-object v2, v13, Lm0/v0;->b:Landroidx/fragment/app/h;

    iget-object v2, v2, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    check-cast v2, Lm0/z0;

    .line 192
    iget-object v3, v2, Lm0/z0;->b:Ljava/util/ArrayList;

    if-ltz v0, :cond_6ef

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_697

    goto :goto_6ef

    .line 193
    :cond_697
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/t0;

    .line 194
    new-instance v3, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v9}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 195
    sget-object v5, Lj0/c;->c:Ljava/lang/String;

    const/16 v5, 0x10

    int-to-float v5, v5

    .line 196
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 197
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 198
    invoke-static {}, Lh0/b;->a()Lh0/b;

    invoke-static {}, Lh0/b;->f()Lj0/c;

    move-result-object v5

    iget-object v6, v0, Lm0/t0;->b:Lj0/e;

    invoke-virtual {v5, v3, v6}, Lj0/c;->n(Landroid/widget/Spinner;Lj0/e;)V

    .line 199
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f13020e

    .line 200
    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    .line 201
    invoke-virtual {v5, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    .line 202
    invoke-virtual {v5, v6, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lm0/y0;

    invoke-direct {v5, v2, v3, v0, v9}, Lm0/y0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v0, 0x104000a

    .line 203
    invoke-virtual {v4, v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_6ef
    :goto_6ef
    return-void

    .line 205
    :pswitch_6f0
    check-cast v13, Lm0/m0;

    check-cast v12, Lm0/k0;

    .line 206
    iget-object v0, v13, Lm0/m0;->b:Lm0/n0;

    .line 207
    iget-boolean v2, v0, Lm0/n0;->d:Z

    if-eqz v2, :cond_6fb

    goto :goto_723

    .line 208
    :cond_6fb
    :try_start_6fb
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v12, Lm0/k0;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_70f

    .line 209
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_723

    .line 210
    :cond_70f
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_715
    .catch Ljava/lang/Exception; {:try_start_6fb .. :try_end_715} :catch_715

    .line 211
    :catch_715
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f130185

    invoke-static {v0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_723
    return-void

    .line 212
    :pswitch_724
    check-cast v13, Landroid/widget/LinearLayout;

    check-cast v12, Landroid/widget/Button;

    invoke-static {v13, v12, v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->u(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/view/View;)V

    return-void

    :pswitch_72c
    check-cast v13, Lm0/n;

    check-cast v12, Lm0/l;

    iget-object v0, v12, Lm0/l;->b:Ljava/lang/String;

    .line 213
    iget-object v2, v13, Lm0/n;->a:Lm0/o;

    :try_start_734
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_78b

    .line 214
    iget v6, v2, Lm0/o;->e:I

    if-ltz v6, :cond_78b

    iget-object v7, v2, Lm0/o;->f:[Landroid/view/Display;

    array-length v7, v7

    if-ge v6, v7, :cond_78b

    .line 215
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_762

    .line 216
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    iget-object v6, v2, Lm0/o;->f:[Landroid/view/Display;

    iget v7, v2, Lm0/o;->e:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    invoke-static {v3, v6}, Lc5/h;->b(Landroid/app/ActivityOptions;I)Landroid/app/ActivityOptions;

    move-result-object v3

    goto :goto_763

    :cond_762
    move-object v3, v4

    :goto_763
    const v6, 0x18008000

    .line 217
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    invoke-virtual {v2}, Lm0/o;->u()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_78b

    if-eqz v3, :cond_781

    .line 219
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v4, v5, v3}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_788

    .line 220
    :cond_781
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    .line 221
    invoke-static {v3, v5, v4}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 222
    :goto_788
    invoke-static {v2, v0}, Lm0/o;->t(Lm0/o;Ljava/lang/String;)V
    :try_end_78b
    .catch Ljava/lang/Exception; {:try_start_734 .. :try_end_78b} :catch_78b

    :catch_78b
    :cond_78b
    return-void

    .line 223
    :pswitch_78c
    check-cast v13, Lg0/e;

    check-cast v12, Lru/transfer/MessageData;

    .line 224
    iget-object v0, v13, Lg0/e;->i:Lg0/d;

    if-eqz v0, :cond_7a7

    .line 225
    check-cast v0, Lb1/m;

    .line 226
    iget-object v0, v0, Lb1/m;->e:Ljava/lang/Object;

    check-cast v0, Lcom/example/navistart/Notik;

    if-eqz v0, :cond_7a7

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-static {v0, v2}, Lcom/example/navistart/Notik;->f(Landroid/content/Context;Ljava/util/List;)V

    .line 230
    :cond_7a7
    invoke-virtual {v13, v11}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 231
    :pswitch_7ab
    check-cast v13, Lb1/m;

    check-cast v12, Lg0/e;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    invoke-virtual {v12}, Lg0/e;->getMsg()Lru/transfer/MessageData;

    .line 233
    iget-object v0, v13, Lb1/m;->d:Ljava/lang/Object;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    .line 234
    :pswitch_7bd
    check-cast v13, Lcom/example/navistart/TestSpaceActivity;

    check-cast v12, Landroid/widget/Button;

    .line 235
    iget-boolean v0, v13, Lcom/example/navistart/TestSpaceActivity;->e:Z

    if-eqz v0, :cond_7de

    .line 236
    invoke-static {}, Lh0/b;->a()Lh0/b;

    move-result-object v0

    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/example/navistart/cores/InterC;->sl(Lcom/example/navistart/cores/LCRI;)V

    const v0, 0x7f070186

    .line 237
    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 238
    iget-object v0, v13, Lcom/example/navistart/TestSpaceActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iput-boolean v9, v13, Lcom/example/navistart/TestSpaceActivity;->e:Z

    goto :goto_7f8

    :cond_7de
    const v0, 0x7f070185

    .line 240
    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 241
    iget-object v0, v13, Lcom/example/navistart/TestSpaceActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iput-boolean v10, v13, Lcom/example/navistart/TestSpaceActivity;->e:Z

    .line 243
    invoke-static {}, Lh0/b;->a()Lh0/b;

    move-result-object v0

    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    move-result-object v0

    iget-object v2, v13, Lcom/example/navistart/TestSpaceActivity;->g:Landroidx/fragment/app/h;

    invoke-interface {v0, v2}, Lcom/example/navistart/cores/InterC;->sl(Lcom/example/navistart/cores/LCRI;)V

    :goto_7f8
    return-void

    .line 244
    :pswitch_7f9
    check-cast v13, Lcom/example/navistart/PermActivity;

    check-cast v12, Ljava/lang/String;

    sget-object v0, Lcom/example/navistart/PermActivity;->c:Ljava/lang/String;

    .line 245
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0, v10}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 246
    :pswitch_807
    check-cast v13, Lcom/example/navistart/PermActivity;

    check-cast v12, Landroid/content/Intent;

    sget-object v0, Lcom/example/navistart/PermActivity;->c:Ljava/lang/String;

    .line 247
    :try_start_80d
    invoke-virtual {v13, v12, v9}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_810
    .catch Landroid/content/ActivityNotFoundException; {:try_start_80d .. :try_end_810} :catch_810

    :catch_810
    return-void

    .line 248
    :pswitch_811
    check-cast v13, Lcom/example/navistart/MainActivity;

    check-cast v12, Lcom/google/android/material/materialswitch/MaterialSwitch;

    sget-object v0, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 249
    invoke-virtual {v13, v12}, Lcom/example/navistart/MainActivity;->O(Lcom/google/android/material/materialswitch/MaterialSwitch;)V

    return-void

    .line 250
    :pswitch_81b
    check-cast v13, Landroidx/navigation/NavController;

    check-cast v12, Landroidx/navigation/ui/AppBarConfiguration;

    invoke-static {v13, v12, v0}, Landroidx/navigation/ui/NavigationUI;->a(Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_824
    .packed-switch 0x0
        :pswitch_81b
        :pswitch_811
        :pswitch_807
        :pswitch_7f9
        :pswitch_7bd
        :pswitch_7ab
        :pswitch_78c
        :pswitch_72c
        :pswitch_724
        :pswitch_6f0
        :pswitch_67c
        :pswitch_5f4
        :pswitch_504
        :pswitch_4e9
        :pswitch_4ce
        :pswitch_422
        :pswitch_36d
        :pswitch_299
        :pswitch_198
        :pswitch_190
        :pswitch_176
        :pswitch_150
        :pswitch_a4
        :pswitch_8a
        :pswitch_82
    .end packed-switch

    :array_85a
    .array-data 1
        -0x74t
        -0x4ct
        0x2t
        0x28t
        0x73t
        0x6bt
        -0x57t
        0x32t
        -0x31t
        -0x5dt
        0x14t
        0x2bt
        0x7et
        0x75t
    .end array-data

    nop

    :array_866
    .array-data 1
        -0x1ft
        -0x2ft
        0x71t
        0x5bt
        0x12t
        0xct
        -0x34t
        0x41t
    .end array-data

    :array_86e
    .array-data 1
        0x5ft
        0x5ct
        0x1et
        -0x28t
        -0x11t
    .end array-data

    nop

    :array_876
    .array-data 1
        0x11t
        0x33t
        0x6at
        -0x4ft
        -0x7ct
        0x67t
        -0x61t
        -0x76t
    .end array-data

    :array_87e
    .array-data 1
        -0x57t
        0x32t
        0x69t
        0x1at
        0x46t
        0x79t
        0x5ft
        0x30t
        -0x6dt
        0x7ct
        0x7bt
        0x1dt
        0x44t
        0x78t
        0x5ft
        0x29t
        -0x67t
        0x2ft
        0x7bt
        0x19t
        0x4dt
        0x79t
        0x5ft
        0x36t
        -0x67t
        0x2ct
        0x64t
        0x1t
    .end array-data

    :array_890
    .array-data 1
        -0x4t
        0x5ct
        0x8t
        0x78t
        0x2at
        0x1ct
        0x7ft
        0x44t
    .end array-data

    :array_898
    .array-data 1
        0x22t
        0x1et
        0x59t
    .end array-data

    :array_89e
    .array-data 1
        0x46t
        0x77t
        0x2at
        -0x67t
        -0x6t
        -0x58t
        0x57t
        -0x24t
    .end array-data

    :array_8a6
    .array-data 1
        -0x79t
        0x43t
        0x10t
        0x4ft
        0x63t
        0x13t
        0x46t
        -0x80t
        -0x46t
        0x41t
        0x18t
        0x51t
        0x6dt
        0x14t
        0x77t
        -0x74t
        -0x74t
        0x46t
        0x12t
        0x53t
    .end array-data

    :array_8b4
    .array-data 1
        -0x1bt
        0x22t
        0x77t
        0x3dt
        0x2t
        0x66t
        0x28t
        -0x1ct
    .end array-data

    :array_8bc
    .array-data 1
        0x15t
        0x28t
        -0x4ft
        -0x3dt
        -0x7at
        0x1dt
        0x24t
        -0x39t
        0x2ct
        0x8t
        -0x7bt
        -0x16t
        -0x4ct
        0x2ct
        0x13t
        -0x1dt
        0x36t
    .end array-data

    nop

    :array_8ca
    .array-data 1
        0x73t
        0x5at
        -0x30t
        -0x5ct
        -0x15t
        0x78t
        0x4at
        -0x4dt
    .end array-data

    :array_8d2
    .array-data 1
        0xbt
        -0x75t
        -0x66t
        -0x5ct
        -0x4ct
        0x5dt
        0x8t
        0xft
        0x16t
        -0x67t
        -0x75t
        -0x52t
        -0x42t
        0x5dt
    .end array-data

    nop

    :array_8de
    .array-data 1
        0x59t
        -0x22t
        -0x2ct
        -0x5t
        -0x10t
        0x14t
        0x49t
        0x43t
    .end array-data

    :array_8e6
    .array-data 1
        0x64t
        -0x66t
        -0x5ft
        0xct
        -0xat
        -0x8t
        -0x5t
        -0x47t
        0x5dt
        -0x75t
        -0x54t
        0xat
        -0x18t
        -0x12t
    .end array-data

    nop

    :array_8f2
    .array-data 1
        0x2t
        -0x18t
        -0x40t
        0x6bt
        -0x65t
        -0x63t
        -0x6bt
        -0x33t
    .end array-data

    :array_8fa
    .array-data 1
        -0x7at
        -0x16t
        -0x2ct
        -0x20t
        0x50t
        0x60t
        -0x5dt
        0x12t
        -0x41t
        -0x7t
        -0x39t
        -0x20t
        0x4et
    .end array-data

    nop

    :array_906
    .array-data 1
        -0x20t
        -0x68t
        -0x4bt
        -0x79t
        0x3dt
        0x5t
        -0x33t
        0x66t
    .end array-data

    :array_90e
    .array-data 1
        0x2t
        -0x76t
        -0x24t
        -0x1at
        -0x24t
        -0x1et
        -0xet
        0x18t
        0x8t
        -0x79t
        -0x3at
        -0x17t
        -0x35t
        -0x1dt
        -0x7t
        0xdt
        0x5t
        -0x7bt
        -0x39t
        -0x12t
        -0x39t
        -0x1bt
    .end array-data

    nop

    :array_91e
    .array-data 1
        0x44t
        -0x1at
        -0x4dt
        -0x79t
        -0x58t
        -0x75t
        -0x64t
        0x7ft
    .end array-data

    :array_926
    .array-data 1
        -0x38t
        0x50t
        0x14t
        0x65t
        -0x41t
        0x44t
        0x33t
        -0x23t
    .end array-data

    :array_92e
    .array-data 1
        -0x53t
        0x6et
        -0x6ct
        0x5bt
        0x1ft
        0x4ct
        0x46t
        -0x19t
    .end array-data

    :array_936
    .array-data 1
        0x26t
        -0x11t
        -0x6bt
    .end array-data

    :array_93c
    .array-data 1
        0x63t
        -0x52t
        -0x3bt
        -0x46t
        0x1bt
        0x77t
        0x5bt
        -0x1bt
    .end array-data

    :array_944
    .array-data 1
        -0x14t
        0x18t
        0x7t
        0x4ct
        -0x5ct
        -0x63t
        0x6dt
        0x3ft
        -0x1ct
        0x18t
        0x17t
        0x5bt
        -0x5bt
        -0x80t
        0x27t
        0x70t
        -0x12t
        0x2t
        0xat
        0x51t
        -0x5bt
        -0x26t
        0x5ft
        0x58t
        -0x38t
        0x21t
    .end array-data

    nop

    :array_956
    .array-data 1
        -0x73t
        0x76t
        0x63t
        0x3et
        -0x35t
        -0xct
        0x9t
        0x11t
    .end array-data

    :array_95e
    .array-data 1
        -0x12t
        -0x6at
        0x50t
        -0x36t
        0x24t
        -0xet
        0x15t
        -0x2dt
        -0x12t
        -0x78t
        0x56t
        -0x76t
        0x7ct
        -0x13t
        0x1dt
        -0x2bt
    .end array-data

    :array_96a
    .array-data 1
        -0x7ft
        -0x1ct
        0x37t
        -0x1ct
        0x52t
        -0x65t
        0x71t
        -0x4at
    .end array-data

    :array_972
    .array-data 1
        0x28t
        0x2at
        0x2et
        -0x10t
        0x24t
        0x2at
        -0x2t
    .end array-data

    :array_97a
    .array-data 1
        0x5et
        0x43t
        0x4at
        -0x6bt
        0x4bt
        0x5t
        -0x2ct
        0x1bt
    .end array-data

    :array_982
    .array-data 1
        0x22t
        0x4at
        0xet
        -0x46t
        -0x1t
    .end array-data

    nop

    :array_98a
    .array-data 1
        0x56t
        0x23t
        0x7at
        -0x2at
        -0x66t
        0x69t
        -0x26t
        -0x10t
    .end array-data

    :array_992
    .array-data 1
        0x6ct
        0x69t
        0x63t
        0x74t
        0x5ft
        0x72t
        0x69t
        0x75t
        0x65t
    .end array-data

    nop

    :array_99c
    .array-data 1
        0x5ct
        0x43t
        -0x5bt
        0x3ct
        0x7ct
        -0x70t
        -0x2t
        0x7t
    .end array-data

    :array_9a4
    .array-data 1
        -0xbt
        -0x18t
    .end array-data

    nop

    :array_9aa
    .array-data 1
        -0x3bt
        -0x33t
        -0x2ft
        -0x6bt
        -0x6dt
        -0x6et
        -0x4at
        0x45t
    .end array-data
.end method

.class public final synthetic Lw1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;

.field public final synthetic r:I

.field public final synthetic x:Ljava/lang/Class;

.field public final synthetic y:Z


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;ILjava/lang/Class;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/b;->c:Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;

    iput p2, p0, Lw1/b;->r:I

    iput-object p3, p0, Lw1/b;->x:Ljava/lang/Class;

    iput-boolean p4, p0, Lw1/b;->y:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget v0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->q:I

    iget-object v0, p0, Lw1/b;->c:Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "CUSTOM"

    iget-object v2, p0, Lw1/b;->x:Ljava/lang/Class;

    invoke-static {v2, v1}, Lb1/a;->l(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    iget v3, p0, Lw1/b;->r:I

    iget-boolean p0, p0, Lw1/b;->y:Z

    if-ne v3, v1, :cond_0

    iget-object v0, v0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;->c:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    invoke-virtual {v0, p0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setSelected(Z)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "NEXT_SONG"

    invoke-static {v2, v1}, Lb1/a;->l(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    if-ne v3, v1, :cond_1

    iget-object v0, v0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;->Z:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    invoke-virtual {v0, p0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const-string v1, "LAST_SONG"

    invoke-static {v2, v1}, Lb1/a;->l(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    if-ne v3, v1, :cond_2

    iget-object v0, v0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;->x:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    invoke-virtual {v0, p0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setSelected(Z)V

    goto :goto_0

    :cond_2
    const-string v1, "VOLUME_ADD"

    invoke-static {v2, v1}, Lb1/a;->l(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    if-ne v3, v1, :cond_3

    iget-object v0, v0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;->c1:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    invoke-virtual {v0, p0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setSelected(Z)V

    goto :goto_0

    :cond_3
    const-string v1, "VOLUME_SUB"

    invoke-static {v2, v1}, Lb1/a;->l(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    if-ne v3, v1, :cond_4

    iget-object v0, v0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;->r:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    invoke-virtual {v0, p0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setSelected(Z)V

    goto :goto_0

    :cond_4
    const-string v1, "OK"

    invoke-static {v2, v1}, Lb1/a;->l(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    if-ne v3, v1, :cond_5

    iget-object v0, v0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;->y:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    invoke-virtual {v0, p0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setSelected(Z)V

    goto :goto_0

    :cond_5
    const-string v1, "VOICE"

    invoke-static {v2, v1}, Lb1/a;->l(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    if-ne v3, v1, :cond_6

    iget-object v0, v0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;->d1:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    invoke-virtual {v0, p0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setSelected(Z)V

    goto :goto_0

    :cond_6
    const-string v1, "SWITCH"

    invoke-static {v2, v1}, Lb1/a;->l(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    if-ne v3, v1, :cond_7

    iget-object v0, v0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;->b1:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    invoke-virtual {v0, p0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setSelected(Z)V

    :cond_7
    :goto_0
    return-void
.end method

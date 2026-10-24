.class Lmega/config/util/SleepManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmega/config/util/SleepManager;->generateReceiverBySleepRule(Lmega/config/util/SleepRule;Lmega/config/util/SleepManager$SleepListener;)Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lmega/config/util/SleepManager$SleepListener;

.field final synthetic val$rule:Lmega/config/util/SleepRule;


# direct methods
.method public constructor <init>(Lmega/config/util/SleepRule;Lmega/config/util/SleepManager$SleepListener;)V
    .locals 0

    iput-object p1, p0, Lmega/config/util/SleepManager$1;->val$rule:Lmega/config/util/SleepRule;

    iput-object p2, p0, Lmega/config/util/SleepManager$1;->val$listener:Lmega/config/util/SleepManager$SleepListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object p1, p0, Lmega/config/util/SleepManager$1;->val$rule:Lmega/config/util/SleepRule;

    iget-object p1, p1, Lmega/config/util/SleepRule;->triggers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/config/util/SleepRule$Opt;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Lmega/config/util/SleepRule$Opt;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lmega/config/util/SleepRule$Opt;->retType:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v2, "NOP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lmega/config/util/SleepRule$Opt;->op:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v1, v0, Lmega/config/util/SleepRule$Opt;->retType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "I"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move v4, v3

    :goto_1
    packed-switch v4, :pswitch_data_0

    invoke-static {}, Lmega/config/util/SleepManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unknown trigger type : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lmega/config/util/SleepRule$Opt;->retType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, v0, Lmega/config/util/SleepRule$Opt;->retKey:Ljava/lang/String;

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lmega/config/util/SleepManager$1;->val$listener:Lmega/config/util/SleepManager$SleepListener;

    invoke-static {v0, v1, v2}, Lmega/config/util/SleepManager;->access$000(Lmega/config/util/SleepRule$Opt;Ljava/lang/Object;Lmega/config/util/SleepManager$SleepListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :pswitch_1
    iget-object v1, v0, Lmega/config/util/SleepRule$Opt;->retKey:Ljava/lang/String;

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lmega/config/util/SleepManager$1;->val$listener:Lmega/config/util/SleepManager$SleepListener;

    invoke-static {v0, v1, v2}, Lmega/config/util/SleepManager;->access$000(Lmega/config/util/SleepRule$Opt;Ljava/lang/Object;Lmega/config/util/SleepManager$SleepListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :pswitch_2
    iget-object v1, v0, Lmega/config/util/SleepRule$Opt;->retKey:Ljava/lang/String;

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iget-object v2, p0, Lmega/config/util/SleepManager$1;->val$listener:Lmega/config/util/SleepManager$SleepListener;

    invoke-static {v0, v1, v2}, Lmega/config/util/SleepManager;->access$000(Lmega/config/util/SleepRule$Opt;Ljava/lang/Object;Lmega/config/util/SleepManager$SleepListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_7
    :goto_2
    iget-boolean p1, v0, Lmega/config/util/SleepRule$Opt;->wakeUp:Z

    if-eqz p1, :cond_8

    iget-object p0, p0, Lmega/config/util/SleepManager$1;->val$listener:Lmega/config/util/SleepManager$SleepListener;

    invoke-interface {p0}, Lmega/config/util/SleepManager$SleepListener;->wakeUp()V

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lmega/config/util/SleepManager$1;->val$listener:Lmega/config/util/SleepManager$SleepListener;

    invoke-interface {p0}, Lmega/config/util/SleepManager$SleepListener;->sleep()V

    :cond_9
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x49 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

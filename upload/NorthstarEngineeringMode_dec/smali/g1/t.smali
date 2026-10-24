.class public final synthetic Lg1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mega/engineeringmode/function/StrActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/StrActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg1/t;->a:I

    iput-object p1, p0, Lg1/t;->b:Lcom/mega/engineeringmode/function/StrActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget p1, p0, Lg1/t;->a:I

    const/4 v0, 0x2

    const/16 v1, 0xe

    iget-object p0, p0, Lg1/t;->b:Lcom/mega/engineeringmode/function/StrActivity;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->s:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->s:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const/16 v3, 0x2e8

    if-gt p1, v3, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setSTRSetting  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "TAG"

    invoke-static {v6, v4}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/4 v7, 0x6

    aput-byte v7, v4, v2

    const/4 v7, 0x1

    aput-byte v1, v4, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x3

    if-le v1, v0, :cond_0

    invoke-virtual {v3, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com2  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  com3 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v4, v0

    and-int/lit16 p1, v1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v4, v5

    goto :goto_0

    :cond_0
    aput-byte v2, v4, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v4, v5

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "command[2]  "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v4, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  command[3] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v4, v5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lmega/car/hardware/CarPropertyValue;

    const v0, 0x2d00000a

    invoke-direct {p1, v0, v4}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/StrActivity;->v:Lmega/car/MegaCarProperty;

    invoke-virtual {p0, p1}, Lmega/car/MegaCarProperty;->setRawProp(Lmega/car/hardware/CarPropertyValue;)V

    goto :goto_1

    :cond_1
    const p1, 0x7f1202fb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const p1, 0x7f1202f5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    return-void

    :pswitch_0
    sget p1, Lcom/mega/engineeringmode/function/StrActivity;->y:I

    const/4 p1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/mega/engineeringmode/function/StrActivity;->n(BB)V

    return-void

    :pswitch_1
    sget p1, Lcom/mega/engineeringmode/function/StrActivity;->y:I

    invoke-virtual {p0, v1, v0}, Lcom/mega/engineeringmode/function/StrActivity;->n(BB)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter$IcmDataViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter$IcmDataViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter$IcmDataViewHolder;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mega/engineeringmode/function/icmdata/b;

    if-eqz p2, :cond_12

    iget-object v0, p1, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter$IcmDataViewHolder;->a:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/mega/engineeringmode/function/icmdata/b;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/mega/engineeringmode/function/icmdata/b;->des:Ljava/lang/String;

    iget-object v1, p1, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter$IcmDataViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p2, Lcom/mega/engineeringmode/function/icmdata/b;->a:I

    iget-object p2, p2, Lcom/mega/engineeringmode/function/icmdata/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "transformationValue "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IcmDataAdapter"

    invoke-static {v2, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "-1.0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "--"

    goto/16 :goto_3

    :cond_0
    const v1, 0x50000016    # 8.5899571E9f

    const-string v2, "2"

    const-string v3, "1"

    if-ne v0, v1, :cond_5

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "ON"

    :goto_0
    move-object p2, p0

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "ACC"

    goto :goto_0

    :cond_2
    const-string p0, "3"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "4"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, ""

    goto :goto_0

    :cond_4
    :goto_1
    const-string p0, "OFF"

    goto :goto_0

    :cond_5
    const v1, 0x50000012

    const-string v4, "NAN"

    const-string v5, "0"

    if-ne v0, v1, :cond_8

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "Fault"

    goto :goto_0

    :cond_6
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "Normal"

    goto :goto_0

    :cond_7
    move-object p2, v4

    goto/16 :goto_3

    :cond_8
    const v1, 0x50000013

    if-ne v0, v1, :cond_a

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "Slow"

    goto :goto_0

    :cond_9
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "Fast"

    goto :goto_0

    :cond_a
    const v1, 0x50000014

    if-ne v0, v1, :cond_d

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "No warning"

    if-eqz p0, :cond_c

    :cond_b
    move-object p2, v0

    goto :goto_3

    :cond_c
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "Warning"

    goto :goto_0

    :cond_d
    const v1, 0x5000001c

    if-eq v0, v1, :cond_f

    const v1, 0x5000001b    # 8.5899622E9f

    if-eq v0, v1, :cond_f

    const v1, 0x5000001a

    if-eq v0, v1, :cond_f

    const v1, 0x50000019

    if-eq v0, v1, :cond_f

    const v1, 0x50000018

    if-eq v0, v1, :cond_f

    const v1, 0x50000017

    if-eq v0, v1, :cond_f

    const v1, 0x5000003b    # 8.589995E9f

    if-eq v0, v1, :cond_f

    const v1, 0x5000003c    # 8.589996E9f

    if-ne v0, v1, :cond_e

    goto :goto_2

    :cond_e
    const p0, 0x5000000c    # 8.5899469E9f

    if-ne v0, p0, :cond_11

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_f
    :goto_2
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iget-object p0, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter;->a:Landroid/content/Context;

    if-eqz p2, :cond_10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f120172

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f120171

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_11
    :goto_3
    iget-object p0, p1, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter$IcmDataViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter;->a:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p1, 0x0

    const p2, 0x7f0d0089

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter$IcmDataViewHolder;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p2, 0x7f0a01c5

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter$IcmDataViewHolder;->a:Landroid/widget/TextView;

    const p2, 0x7f0a01c3

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter$IcmDataViewHolder;->b:Landroid/widget/TextView;

    const p2, 0x7f0a01c6

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p1, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter$IcmDataViewHolder;->c:Landroid/widget/TextView;

    return-object p1
.end method

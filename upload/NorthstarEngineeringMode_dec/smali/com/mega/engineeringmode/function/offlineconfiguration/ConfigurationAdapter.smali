.class public Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lv1/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public c:Lv1/a;

.field public final d:Ljava/util/HashMap;

.field public e:Landroid/app/AlertDialog;

.field public f:Landroid/widget/Button;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/Button;

.field public k:Landroid/widget/Button;

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->l:I

    iput v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->m:I

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->b:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->l:I

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f12015c

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->b:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lk2/d;->a(Landroid/content/Context;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ConfigurationAdapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "null value"

    invoke-static {v1, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "submitValue "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->c:Lv1/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "no such name:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv1/e;

    iget-object v0, p1, Lv1/e;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lv1/d;

    invoke-direct {p1, v2}, Lv1/d;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_2
    iget v0, p1, Lv1/e;->d:I

    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "TextUtilsHelper"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_0
    int-to-double v5, v0

    cmpl-double v3, v5, v3

    if-gtz v3, :cond_4

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    iput-object p2, p1, Lv1/e;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " submitValue  "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->c:Lv1/a;

    invoke-static {p2, p1}, Lv1/f;->c(Lv1/a;Lv1/e;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lv1/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    sget-object p0, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const-string p1, "invalid value"

    invoke-static {p0, p1, v2}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_5
    return v2
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter$a;

    iget-object v0, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter$a;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv1/e;

    iget-object v2, v2, Lv1/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1/e;

    iget-object v0, v0, Lv1/e;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lv1/b;

    invoke-direct {v0, p0, p2}, Lv1/b;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;I)V

    iget-object p0, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter$a;->a:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->b:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p1, 0x0

    const p2, 0x7f0d005a

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter$a;

    invoke-direct {p1, p0}, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter$a;-><init>(Landroid/view/View;)V

    return-object p1
.end method
